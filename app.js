const express = require("express");
const ejs = require("ejs");
const path = require("path");
const mysql = require("mysql");
const fs = require("fs");
const { cours } = require("./data");
require("dotenv").config();
const session = require('express-session');
const flash = require("express-flash");
const bcrypt = require("bcrypt");

const app = express();
const db = mysql.createConnection({
  host:'localhost',
  user: 'root',
  password: '',
  database: 'utulisateurs',

});
db.connect((error)=>{
  if(error){





    

console.log(error)        
  }else {

      console.log("MYSQL Connected...")
  }





})

app.engine("html", ejs.__express);
app.use(session({
  name : process.env.SESSION_NAME,
  resave:false,
  saveUninitialized:false,
  secret:process.env.SESSION_SECRET,
  cookie:{
    maxAge:1000 * 60 * 60 * 24 *  7,
    secure:false ,
  }
}))
app.use(flash());
app.use(express.urlencoded({extended : true}));
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));


app.set("view engine", "html");
app.set("views", path.join(__dirname, "views"));

const protectionRoute = (req, res , next)=>{
if(!req.session.idUtilisateur){
  res.redirect("/connexion")
}else{
  next();
}

};
app.use((req, res, next) => {
  const { idUtilisateur } = req.session;
  
  if (idUtilisateur) {
    db.query('SELECT nom FROM utulisateurs WHERE id = ?', [idUtilisateur], (err, results) => {
      if (err) {
        console.error('Erreur lors de la récupération du nom d\'utilisateur : ' + err.message);
        return next();
      }

      if (results.length > 0) {
        res.locals.utilisateur = {
          id: idUtilisateur,
          nom: results[0].nom
        };
      }
      next();
    });
  } else {
    next();
  }
});


// ... Autres middlewares et routes ...

app.get("/", (req, res) => {
  const {utilisateur} = res.locals;
  console.log(utilisateur);
  res.render("index", { cours,utilisateur , em});
});

app.get("/connexion", (req, res) => {
  res.render("connexion");
});

app.post("/connexion", async (req, res) => {
  const { email, password } = req.body;

  if (email && password) {
    try {
      db.query('SELECT * FROM utulisateurs WHERE email = ?', [email], async (err, rows) => {
        if (err) {
          console.error('Erreur lors de la recherche de l\'utilisateur : ' + err.message);
          res.status(500).send('Erreur serveur');
          return;
        }

        if (rows.length > 0) {
          const utilisateur = rows[0];
          const validPw = await bcrypt.compare(password, utilisateur.password);

          if (validPw) {
            req.session.idUtilisateur = utilisateur.id;
            console.log('Session après connexion:', req.session);
            res.render("index", { cours, utilisateur , em });
          } else {
            console.log("Mot de passe incorrect");
            res.redirect("/connexion");
          }
        } else {
          console.log("Utilisateur non trouvé");
          res.redirect("/connexion");
        }
      });
    } catch (error) {
      console.error('Erreur lors de la comparaison des mots de passe : ' + error.message);
      res.status(500).send('Erreur serveur');
    }
  } else {
    res.redirect("/connexion");
  }
});




app.get("/inscription", (req, res) => {
  res.render("inscription");
});
app.get("/acc", (req, res) => {
  const { utilisateur } = res.locals;
  if (utilisateur) {
    // Déclarer la variable nouvelUtilisateur avec toutes les propriétés nécessaires
    const nouvelUtilisateur = {
      id: utilisateur.id,
      nom: utilisateur.nom,
      email: utilisateur.email,  // Ajoutez cette ligne
      // Ajoutez d'autres propriétés si nécessaire
    };

    return res.render("acc", { cours, utilisateur: nouvelUtilisateur });
  } else {
    // Gérer le cas où l'utilisateur n'est pas connecté
    res.redirect("/connexion");
  }
});

app.post("/inscription", async (req, res) => {
  const { nom, email, password } = req.body;

  if (nom && email && password) {
    try {
      const salt = await bcrypt.genSalt(10);
      const pwToSave = await bcrypt.hash(password, salt);

      db.query(
        'INSERT INTO utulisateurs (nom, email, password) VALUES (?, ?, ?)',
        [nom, email, pwToSave],
        (err, result) => {
          if (err) {
            console.error('Erreur lors de l\'inscription : ' + err.message);
            res.status(500).send('Erreur serveur');
            return;
          }

          const nouvelUtilisateur = {
            id: result.insertId,
            nom,
            email,
            password: pwToSave
          };

          req.session.idUtilisateur = nouvelUtilisateur.id;
          res.render("index", { cours, utilisateur: nouvelUtilisateur });
        }
      );
    } catch (error) {
      console.error('Erreur lors de la génération du mot de passe hashé : ' + error.message);
      res.status(500).send('Erreur serveur');
    }
  } else {
    res.redirect("/inscription");
  }
});


app.get("/pannier", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("pannier", {utilisateur});
});
app.get("/modelivraison", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("modelivraison", {utilisateur});
});
app.get("/paiment", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("paiment", {utilisateur});
});
app.get("/commande", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("commande", {utilisateur});
});
app.get("/info", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("info", {utilisateur});
});
app.get("/informations", protectionRoute, (req, res) => {
  const { utilisateur } = res.locals;

  if (utilisateur) {
    // Utilisez l'ID de l'utilisateur pour récupérer les informations spécifiques de la base de données
    db.query('SELECT nom, email, phone, Adress1, Adress2, zip FROM utulisateurs WHERE id = ?', [utilisateur.id], (err, results) => {
      if (err) {
        console.error('Erreur lors de la récupération des informations de l\'utilisateur : ' + err.message);
        return res.status(500).send('Erreur serveur');
      }

      if (results.length > 0) {
        // Récupérez les informations de la base de données
        const userInformation = results[0];

        // Passez les informations à la vue et affichez la page informations.html
        res.render("informations", { utilisateur: userInformation });
      } else {
        // Gérer le cas où l'utilisateur n'est pas trouvé dans la base de données
        res.status(404).send('Utilisateur non trouvé');
      }
    });
  } else {
    // Gérer le cas où l'utilisateur n'est pas connecté
    res.redirect("/connexion");
  }
});

app.post("/deconnexion", (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      console.error('Erreur lors de la destruction de la session : ' + err.message);
      res.status(500).send('Erreur serveur');
      return;
    }

    res.clearCookie(process.env.SESSION_NAME);
    res.redirect("/");
  });
});




app.post("/update-account", async (req, res) => {
  const { EEmail, phone, zip, Adress1, Adress2 } = req.body;
  const { utilisateur } = res.locals;
  console.log('utilisateur:', utilisateur);
  console.log('EEmail:', EEmail);

  try {
    // Vérifiez si l'email existe dans la base de données
    db.query('SELECT * FROM utulisateurs WHERE email = ?', [EEmail], async (error, results) => {
      if (error) {
        console.log(error);
        return res.status(500).send("Erreur interne du serveur");
      }

// ...

if (results.length === 0) {
 // Utilisez req.flash pour stocker le message d'erreur
 req.flash("error", "Votre email est incorrect");
 // Redirigez vers la page du compte
 return res.redirect("/acc") ;// Assurez-vous de passer également l'objet utilisateur
  };


// ...


db.query('UPDATE utulisateurs SET phone = ?, Adress1 = ?, Adress2 = ?, zip = ? WHERE email = ?',
[phone, Adress1, Adress2, zip, EEmail], (updateError) => {
  if (updateError) {
    console.error(updateError);
    return res.status(500).send("Erreur interne du serveur");
  }

  req.flash("error", "Mise à jour du compte réussie");
  // Redirigez vers la page du compte
  return res.redirect("/acc") ;
}
);


    });
  } catch (error) {
    console.error('Erreur lors de la mise à jour du compte : ' + error.message);
    res.status(500).send('Erreur serveur');
  }
});

const em = {
  lienpost: '/images/thumbnail/post.png',
  lienfruit:'/images/thumbnail/fruits.png',
  lienlegume:'/images/thumbnail/legumes.png'
  // Autres propriétés du cours...
};

app.listen(4001);
console.log("L'application tourne au port 4001");
