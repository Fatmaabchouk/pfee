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
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');
const crypto = require('crypto');
require('dotenv').config(); // Charge les variables d'environnement depuis le fichier .env

const transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'abchoukfatma18@gmail.com',
    pass: process.env.EMAIL_PASSWORD,
  }
});





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
      // Vérifier si l'utilisateur est l'administrateur
      if (email.toLowerCase() === 'admin@gmail.com' && password === 'admin123') {
        // Rediriger vers la page d'administration
        return res.redirect("/admin");
      }

      // Si ce n'est pas l'administrateur, effectuez la vérification normale
      db.query('SELECT * FROM utulisateurs WHERE email = ?', [email], async (err, rows) => {
        if (err) {
          console.error('Erreur lors de la recherche de l\'utilisateur : ' + err.message);
          req.flash("error", "Erreur serveur");
          return res.redirect("/connexion");
        }

        if (rows.length > 0) {
          const utilisateur = rows[0];
          const validPw = await bcrypt.compare(password, utilisateur.password);

          if (validPw) {
            req.session.idUtilisateur = utilisateur.id;
            console.log('Session après connexion:', req.session);

            // Rediriger vers la page d'accueil normale
            res.render("index", { cours, utilisateur, em });
          } else {
            req.flash("error", "Mot de passe incorrect");
            res.redirect("/connexion");
          }
        } else {
          req.flash("error", "Utilisateur non trouvé");
          res.redirect("/connexion");
        }
      });
    } catch (error) {
      console.error('Erreur lors de la comparaison des mots de passe : ' + error.message);
      req.flash("error", "Erreur serveur");
      res.redirect("/connexion");
    }
  } else {
    req.flash("error", "Veuillez remplir tous les champs.");
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

  // Check if the email already exists in the database
  db.query('SELECT * FROM utulisateurs WHERE email = ?', [email], async (error, results) => {
    if (error) {
      console.log(error);
      return res.status(500).send("Erreur interne du serveur");
    }

    if (results.length > 0) {
      // Email already exists, set a flash message
      req.flash("error", "Cet email est déjà utilisé, veuillez choisir un autre.");
      return res.redirect("/inscription");
    }

    // Validate password - should be at least 6 characters, include lowercase, uppercase, and a number
    const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
    if (!password.match(passwordRegex)) {
      req.flash("error", "Le mot de passe doit contenir au moins 6 caractères, une lettre majuscule, une lettre minuscule et un chiffre.");
      return res.redirect("/inscription");
    }

    // Continue with the registration process if the email and password meet the criteria
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
              req.flash("error", "Erreur d'inscription, veuillez réessayer.");
              return res.redirect("/inscription");
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
        req.flash("error", "Erreur interne du serveur, veuillez réessayer.");
        return res.redirect("/inscription");
      }
    } else {
      req.flash("error", "Veuillez remplir tous les champs.");
      return res.redirect("/inscription");
    }
  });
});




app.get("/pannier", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("pannier", {utilisateur});
});

app.get("/fruits", (req, res) => {
  const {utilisateur} = res.locals;
  console.log(utilisateur);
  res.render("fruits", { cours,utilisateur , em});
});
app.get("/legumes", (req, res) => {
  const {utilisateur} = res.locals;
  console.log(utilisateur);
  res.render("legumes", { cours,utilisateur , em});
});
app.get("/freshbox", (req, res) => {
  const {utilisateur} = res.locals;
  console.log(utilisateur);
  res.render("freshbox", { cours,utilisateur , em});
});
app.get("/admin", (req, res) => {
  res.render("admin");
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



let randomString; // Déclarez randomString à la portée globale
app.get("/reset-password", (req, res) => {
  res.render("reset-password");
});

app.post("/reset-password", async (req, res) => {
  const { email } = req.body;

  try {
    // Générer un code aléatoire
    const randomCode = crypto.randomBytes(5).toString('hex');
    console.log('Code généré :', randomCode);

    // Enregistrez le code dans la table reset_codes
    db.query(
      'INSERT INTO reset_codes (email, code, expirationDate) VALUES (?, ?, NOW() + INTERVAL 1 HOUR)',
      [email, randomCode],
      (error, results) => {
        if (error) {
          console.error('Erreur lors de l\'insertion du code de réinitialisation :', error);
          req.flash("error", "Erreur interne du serveur");
          return res.redirect("/reset-password");
        }

        // Envoyer le code par e-mail à l'utilisateur
        const mailOptions = {
          from: 'abchoukfatma18@gmail.com',
          to: email,
          subject: 'Code de réinitialisation du mot de passe',
          text: `Votre code de vérification est : ${randomCode}`,
        };

        transporter.sendMail(mailOptions, function (error, info) {
          if (error) {
            console.error('Erreur lors de l\'envoi de l\'e-mail :', error);
            req.flash("error", "Erreur lors de l'envoi de l'e-mail");
            return res.redirect("/reset-password");
          }

          console.log('E-mail envoyé :', info.response);

          // Stockez le code généré dans la session
          req.session.resetCode = randomCode;

          // Rediriger vers la page de vérification avec l'email de l'utilisateur
          res.redirect(`/verify-code?email=${encodeURIComponent(email)}`);
        });
      }
    );
  } catch (error) {
    console.error('Erreur lors de la génération du code aléatoire :', error);
    req.flash("error", "Erreur interne du serveur");
    res.redirect("/reset-password");
  }
});





app.get("/verify-code", (req, res) => {
  const { email } = req.query;
  res.render("verify-code", { email });
});

app.post("/verify-code", async (req, res) => {
  try {
    const { email, code } = req.body;

    // Récupérez le code stocké dans la session
    const storedCode = req.session.resetCode;

    // Comparez le code stocké avec le code saisi par l'utilisateur
    if (storedCode && code === storedCode) {
      // Le code est correct, redirigez vers la page nouveau-mot-de-passe
      res.redirect(`/nouveau-mot-passe?email=${encodeURIComponent(email)}`);
    } else {
      // Le code est incorrect, affichez un message d'erreur
      req.flash("error", "Code invalide");
      res.redirect(`/verify-code?email=${encodeURIComponent(email)}`);
    }
  } catch (error) {
    console.error('Erreur dans la route verify-code :', error.message);
    req.flash("error", "Erreur interne du serveur");
    res.redirect(`/verify-code?email=${encodeURIComponent(req.body.email)}`);
  }
});



app.get("/nouveau-mot-passe", (req, res) => {
  const { email } = req.query;
  res.render("nouveau-mot-passe", { email });
});



// Fonction utilitaire pour exécuter des requêtes SQL avec des promesses
function dbQueryAsync(sql, values) {
  return new Promise((resolve, reject) => {
    db.query(sql, values, (error, results) => {
      if (error) {
        reject(error);
      } else {
        resolve(results);
      }
    });
  });
}
// Ajoutez cette route après la route "/verify-code"
app.post("/update-password", async (req, res) => {
  const { email, newPassword } = req.body;
  req.session.resetCode = null;
  try {
    // Hasher le nouveau mot de passe
    const salt = await bcrypt.genSalt(10);
    const hashedNewPassword = await bcrypt.hash(newPassword, salt);

    // Mettre à jour le mot de passe dans la table utulisateurs
    db.query('UPDATE utulisateurs SET password = ? WHERE email = ?', [hashedNewPassword, email], (error, results) => {
      if (error) {
        console.error('Erreur lors de la mise à jour du mot de passe :', error);
        req.flash("error", "Erreur interne du serveur");
        return res.redirect("/reset-password");
      }

      req.flash("success", "Nouveau mot de passe enregistré avec succès");
      res.redirect("/connexion");
    });
  } catch (error) {
    console.error('Erreur lors du hachage du nouveau mot de passe :', error);
    req.flash("error", "Erreur interne du serveur");
    res.redirect("/reset-password");
  }
});



// ...






app.listen(4001);
console.log("L'application tourne au port 4001");


