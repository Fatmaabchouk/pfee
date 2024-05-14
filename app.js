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
const twilio = require('twilio');
require('dotenv').config(); 
const multer = require('multer'); /// Charge les variables d'environnement depuis le fichier .env
const htmlToImage = require('html-to-image');
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
  database: 'utulisateur',

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


app.get("/", (req, res) => {
  const { utilisateur } = res.locals;

  getCoursesFromDatabase((courses) => {
    res.render("index", { cours: courses, utilisateur: utilisateur   });
  });
});


app.get("/connexion", (req, res) => {
  res.render("connexion");
});
app.post("/connexion", async (req, res) => {
  const { email, password } = req.body;

  if (email && password) {
    try {
      // Vérifier si l'utilisateur est l'administrateur
      if (email === "admin1@gmail.com" && password === "Admin123456") {
        // Si l'email et le mot de passe correspondent à ceux de l'administrateur, rediriger vers la page a.html
        return res.redirect("/a");
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

const getCoursesFromDatabase = (callback) => {
  db.query('SELECT * FROM cours', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données :', err.message);
      callback([]);
    } else {
      callback(results);
    }
  });
};



// Configurer le stockage pour multer
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'public/images/thumbnail'); // Définir le dossier de destination pour les fichiers téléchargés
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + '-' + file.originalname); // Définir le nom de fichier pour le fichier téléchargé
  }
});

// Créer un middleware d'upload avec Multer
const upload = multer({ storage: storage });

// Route pour ajouter un cours
app.post('/addcourse', upload.single('selectedImage'), (req, res) => {
  const { courseTitle, minititre,  prixParKilo,type,details } = req.body;
  const selectedImage = req.file ? '/images/thumbnail/' + req.file.filename : '';

  // Enregistrez les données du formulaire dans la session
  req.session.formData = { courseTitle, minititre,  prixParKilo, selectedImage,type,details };
  req.session.selectedImage = selectedImage;
  // Enregistrez les données dans la base de données
  db.query(
      'INSERT INTO cours (titre, minititre,  prixParKilo, lienThumbnail,type, details) VALUES (?,?, ?, ?, ?,?)',
      [courseTitle, minititre,  prixParKilo, selectedImage,type,details],
      (err, result) => {
          if (err) {
              console.error('Erreur lors de l\'ajout du cours à la base de données :', err);
              return res.status(500).send('Erreur serveur');
          }
          res.send('Cours ajouté avec succès à la base de données');
      }
  );
});






// Route pour enregistrer les données des légumes
app.post('/enregistrerLegumes', (req, res) => {
  const data = req.body;

  
  res.send('Données des légumes enregistrées avec succès.');
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
              password: pwToSave,
              panier: {}
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


// Route pour récupérer les articles du panier de l'utilisateur depuis la base de données
app.get("/pannier", (req, res) => {
  const { utilisateur } = res.locals;

  if (utilisateur) {
    // Récupérer les articles du panier de l'utilisateur depuis la base de données en filtrant par utilisateur_id
    db.query('SELECT * FROM panier WHERE utilisateur_id = ?', [utilisateur.id], (err, results) => {
      if (err) {
        console.error('Erreur lors de la récupération des articles du panier :', err.message);
        // Gérer l'erreur appropriée ici
        return res.status(500).send('Erreur serveur');
      }
      // Envoyer les résultats à la vue
      res.render("pannier", { utilisateur: utilisateur, produits: results }); // Passer les résultats à la vue comme "produits"
    });
  } else {
    // Gérer le cas où l'utilisateur n'est pas connecté
    res.redirect("/connexion");
  }
});


app.post('/updateCart', (req, res) => {
  const { userId, productTitle, minititre, lienThumbnail, prixParKilo, courseId, quantity, totalPrice } = req.body;

  // Vérifiez d'abord si l'utilisateur existe dans la base de données
  db.query('SELECT * FROM utulisateurs WHERE id = ?', [userId], (err, userRows) => {
    if (err) {
      console.error('Erreur lors de la recherche de l\'utilisateur : ' + err.message);
      return res.status(500).json({ error: 'Erreur serveur' });
    }

    if (userRows.length === 0) {
      // L'utilisateur n'existe pas, renvoyez une erreur
      return res.status(400).json({ error: 'L\'utilisateur spécifié n\'existe pas.' });
    }

    // L'utilisateur existe, vous pouvez procéder à l'insertion dans la table panier
    db.query(
      'INSERT INTO panier (utilisateur_id, produit_id, quantite, titre, prix_total, lienThumbnail) VALUES (?, ?, ?, ?, ?, ?)',
      [userId, courseId, quantity, productTitle, totalPrice, lienThumbnail],
      (err, result) => {
        if (err) {
          console.error('Erreur lors de l\'ajout de l\'article au panier : ' + err.message);
          return res.status(500).json({ error: 'Erreur serveur' });
        } else {
          // Mettre à jour la session de l'utilisateur avec les données du panier
          const item = {
            produit_id: courseId,
            quantite: quantity,
            titre: productTitle,
            prix_total: totalPrice,
            lienThumbnail: lienThumbnail
          };
          req.session.panier = req.session.panier || [];
          req.session.panier.push(item);

          res.json({ success: true });
        }
      }
    );
  });
});
// Route pour supprimer un article du panier de l'utilisateur
app.post('/removeCartItem', (req, res) => {
  const { userId, cartItemId } = req.body;

  // Effectuer la suppression de l'article de la table du panier
  db.query('DELETE FROM panier WHERE id = ? AND utilisateur_id = ?', [cartItemId, userId], (err, result) => {
      if (err) {
          console.error('Erreur lors de la suppression de l\'article du panier : ' + err.message);
          return res.status(500).json({ error: 'Erreur serveur' });
      } else {
          // Envoyer une réponse JSON pour indiquer que l'article a été supprimé avec succès
          res.json({ success: true });
      }
  });
});
 // Route pour vider le panier de l'utilisateur
app.post('/clearCart', (req, res) => {
  const { userId } = req.body;

  
    // L'utilisateur existe, vous pouvez procéder à la suppression du panier
    db.query('DELETE FROM panier WHERE utilisateur_id = ?', [userId], (err, result) => {
      if (err) {
        console.error('Erreur lors de la suppression du panier : ' + err.message);
        return res.status(500).json({ error: 'Erreur serveur' });
      } else {
        // Supprimer également les éléments du panier de la session de l'utilisateur, le cas échéant
        req.session.panier = [];

        // Envoyer une réponse JSON pour indiquer que le panier a été vidé avec succès
        res.json({ success: true });
      }
    });
  });

  app.get("/fruits", (req, res) => {
    const { utilisateur } = res.locals;
    db.query('SELECT * FROM cours WHERE type = "fruits"', (err, results) => {
      if (err) {
        console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
        // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
        return res.status(500).send('Erreur serveur');
      }
      res.render("fruits", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
    });
  });
  

app.get("/legumes", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "legumes"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("legumes", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});
app.get("/details", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "legumes"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("details", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});
// Route pour récupérer les détails d'un cours par son identifiant
app.get('/api/courses/:id', (req, res) => {
  const courseId = req.params.id;

  // Effectuez une requête SQL pour récupérer les détails du cours depuis la base de données
  db.query('SELECT * FROM cours WHERE id = ?', [courseId], (err, result) => {
      if (err) {
          console.error('Erreur lors de la récupération des détails du cours :', err);
          return res.status(500).json({ error: 'Erreur serveur' });
      }

      if (result.length === 0) {
          return res.status(404).json({ error: 'Aucun cours trouvé avec cet identifiant' });
      }

      const course = result[0];
      res.json(course);
  });
});

app.get("/freshbox", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "box"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("freshbox", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});
app.get("/mixbox", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "mixbox"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("mixbox", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});

app.get("/fruitsbox", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "fruitsbox"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("fruitsbox", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});
app.get("/legumesbox", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "legumesbox"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("legumesbox", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});
app.get("/boxpersonaliser", (req, res) => {
  const { utilisateur } = res.locals;
  db.query('SELECT * FROM cours WHERE type = "box-personalise"', (err, results) => {
    if (err) {
      console.error('Erreur lors de la récupération des cours depuis la base de données : ' + err.message);
      // Vous pouvez gérer l'erreur en rendant une page d'erreur ou en renvoyant une réponse adaptée
      return res.status(500).send('Erreur serveur');
    }
    res.render("boxpersonaliser", { cours: results, utilisateur }); // Passer les données cours à la vue fruits.html
  });
});
app.get("/admin", (req, res) => {
  const {utilisateur} = res.locals;
  res.render("admin", {utilisateur});
});
app.get("/a",  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("a", {utilisateur});
});
// Route pour récupérer les utilisateurs
app.get('/get-users', (req, res) => {
  // Requête SQL pour sélectionner les utilisateurs avec les champs spécifiés
  db.query('SELECT nom, email,  phone, Adress1 , Adress2 FROM utulisateurs', (err, users) => {
      if (err) {
          console.error('Erreur lors de la récupération des utilisateurs : ' + err.message);
          return res.status(500).send('Erreur serveur');
      }

      // Envoyer les utilisateurs en tant que réponse JSON
      res.json(users);
  });
});
app.get('/get-products', (req, res) => {
  db.query('SELECT * FROM cours', (err, results) => {
      if (err) {
          console.error('Erreur lors de la récupération des produits depuis la base de données :', err);
          return res.status(500).send('Erreur serveur');
      }
      res.json(results); // Envoyer les produits en tant que réponse JSON
  });
});
app.get("/modifier", (req, res) => {
  const {utilisateur} = res.locals;
  res.render("modifier", {utilisateur});
});
// Route pour récupérer les détails d'un article par son ID
app.get('/get-product/:id', (req, res) => {
  const productId = req.params.id;
  // Requête SQL pour sélectionner les détails de l'article par son ID
  db.query('SELECT * FROM cours WHERE id = ?', [productId], (err, product) => {
      if (err) {
          console.error('Erreur lors de la récupération des détails de l\'article :', err);
          return res.status(500).json({ error: 'Erreur serveur' });
      }
      if (product.length === 0) {
          return res.status(404).json({ error: 'Article non trouvé' });
      }
      // Envoyer les détails de l'article en tant que réponse JSON
      res.json(product[0]);
  });
});

app.post('/update-product/:id', (req, res) => {
  const productId = req.params.id;
  const updatedData = req.body; // Données mises à jour du formulaire

  // Effectuer la mise à jour dans la base de données
  db.query('UPDATE cours SET ? WHERE id = ?', [updatedData, productId], (err, result) => {
      if (err) {
          console.error('Erreur lors de la mise à jour de l\'article :', err);
          return res.status(500).json({ error: 'Erreur serveur' });
      }
      // Envoyer une réponse indiquant que la mise à jour a réussi
      res.json({ message: 'Mise à jour réussie' });
  });
});
app.delete('/delete-product/:id', (req, res) => {
  const productId = req.params.id;
  // Supprimer le produit avec l'ID correspondant de la base de données
  db.query('DELETE FROM cours WHERE id = ?', [productId], (err, result) => {
      if (err) {
          console.error('Erreur lors de la suppression du produit:', err);
          return res.status(500).json({ error: 'Erreur serveur' });
      }
      res.json({ message: 'Produit supprimé avec succès' });
  });
});
app.get('/get-commandes', (req, res) => {
  db.query('SELECT * FROM valider', (err, result) => {
      if (err) {
          console.error('Erreur lors de la récupération des commandes :', err);
          return res.status(500).json({ error: 'Erreur serveur' });
      }
      // Renvoyer les commandes au format JSON
      res.json(result);
  });
});
app.get("/Fact",  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("Fact", {utilisateur});
});

// Example: Node.js with Express
// Example: Node.js with Express
app.get('/get-Facture-details', (req, res) => {
  const referenceCommande = req.query.reference;

  // Query the database to get all the commandes details matching the referenceCommande
  db.query('SELECT * FROM commaande WHERE referenceCommande = ? ', [referenceCommande], (err, result) => {
      if (err) {
          console.error('Erreur lors de la récupération de la commande :', err);
          return res.status(500).json({ error: 'Erreur serveur' });
      }
      if (result.length === 0) {
          return res.status(404).json({ error: 'Commande non trouvée' });
      }
      // Return the commandes details as JSON
      res.json(result);
  });
});


app.get("/modelivraison", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("modelivraison", {utilisateur});
});
app.get("/paiment", protectionRoute ,  (req, res) => {
  const {utilisateur} = res.locals;
  res.render("paiment", {utilisateur});
});
app.get("/commande", protectionRoute, (req, res) => {
  const { utilisateur } = res.locals;

  // Vérifiez si l'utilisateur est connecté
  if (utilisateur) {
    // Utilisez la référence de commande stockée dans la session pour récupérer les détails de la commande
    const referenceCommande = req.session.referenceCommande;
    const idUtilisateur = utilisateur.id; 
    // Utilisez la référence de commande pour récupérer les détails de la commande depuis la base de données "commande"
    db.query('SELECT utilisateur_id,  referenceCommande, dateCommande , subtotal, frais_livraison, total FROM commaande WHERE referenceCommande = ?', [referenceCommande], (err, results) => {
      if (err) {
        console.error('Erreur lors de la récupération des informations de commande : ' + err.message);
        return res.status(500).send('Erreur serveur');
      }

      if (results.length > 0) {
        const commandeInfo = results[0];
        // Récupérez les informations de commande
        const { utilisateur_id, subtotal, frais_livraison, total } = results[0];

        // Insérez les valeurs dans la table "valider" de la base de données
        const sql = 'INSERT INTO valider (referenceCommande, id_utilisateur, subtotal, deliveryCost, totalSum) VALUES (?, ?, ?, ?, ?)';
        const values = [referenceCommande, utilisateur_id, subtotal, frais_livraison, total];

        // Insérer les valeurs dans la table "valider"
        db.query(sql, values, (err, result) => {
          if (err) {
            console.error('Erreur lors de l\'insertion des détails de commande dans la table "valider" : ' + err.message);
            return res.status(500).send('Erreur serveur');
          }

          // Passez les informations à la vue et affichez-les sur la page commande
          return res.render("commande", {
            referenceCommande: commandeInfo.referenceCommande,
            dateCommande: commandeInfo.dateCommande,
            idUtilisateur: utilisateur_id,
            subtotal: subtotal,
            fraisLivraison: frais_livraison,
            total: total
          });
        });
      } else {
        // Gérer le cas où aucune commande n'est trouvée pour la référence donnée
        return res.status(404).send('Aucune commande trouvée pour la référence donnée');
      }
    });
  } else {
    // Gérer le cas où l'utilisateur n'est pas connecté
    return res.redirect("/connexion");
  }
});









app.get('/articles-commandes', (req, res) => {
  const { utilisateur } = res.locals;
  
  // Extraire l'ID de l'utilisateur de l'objet utilisateur
  const utilisateurId = utilisateur.id;

  // Requête SQL pour sélectionner les articles dans le panier de l'utilisateur
  const sqlArticles = `
    SELECT 
      p.quantite, 
      p.titre, 
      c.prixParKilo,
      p.prix_total 
    FROM panier p 
    INNER JOIN cours c ON p.produit_id = c.id 
    WHERE p.utilisateur_id = ?
  `;

  db.query(sqlArticles, [utilisateurId], (error, results) => {
    if (error) {
      console.error('Erreur lors de la récupération des articles du panier depuis la base de données :', error.message);
      return res.status(500).json({ error: 'Erreur serveur' });
    }

    // Récupérer les informations de l'utilisateur depuis la base de données
    const sqlUtilisateur = 'SELECT nom, phone, Adress1, Adress2, zip FROM utulisateurs WHERE id = ?';
    db.query(sqlUtilisateur, [utilisateurId], (error, utilisateurInfo) => {
      if (error) {
        console.error('Erreur lors de la récupération des informations de l\'utilisateur depuis la base de données :', error.message);
        return res.status(500).json({ error: 'Erreur serveur' });
      }

      // Ajouter les informations de l'utilisateur à l'objet de la facture
      const facture = {
        articles: results,
        nomUtilisateur: utilisateurInfo[0].nom,
        numeroUtilisateur: utilisateurInfo[0].phone,
        adresseUtilisateur: `${utilisateurInfo[0].Adress1}, ${utilisateurInfo[0].Adress2}`,
       moyenPaiement: "Comptant à la livraison" ,
      };

      res.json(facture);
    });
  });
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
app.get("/info", protectionRoute, (req, res) => {
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
        res.render("info", { utilisateur: userInformation });
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
// Fonction pour générer une référence de commande unique
function generateReference() {
  const date = new Date();
  const reference = 'CMD' + date.getFullYear() + ('0' + (date.getMonth() + 1)).slice(-2) + ('0' + date.getDate()).slice(-2) + ('0' + date.getHours()).slice(-2) + ('0' + date.getMinutes()).slice(-2) + ('0' + date.getSeconds()).slice(-2);
  return reference;
}
let commandeCounter = 0; // Variable pour suivre le nombre de commandes enregistrées

// Route pour enregistrer une commande
app.post('/enregistrer-commande', (req, res) => {
  console.log("Received request body:", req.body); // Log the entire request body to see if values are present
  const { panier, commandeData } = req.body;
    
  const { utilisateur } = res.locals;
  const { articles, nomUtilisateur, numeroUtilisateur, adresseUtilisateur, moyenPaiement  } = panier;

  // Extraire les données de commande de commandeData
  const { subtotal, deliveryCost, totalSum } = commandeData;
   
  req.session.commandeCounter = commandeCounter;
  req.session.subtotal = subtotal;
  req.session.deliveryCost = deliveryCost;
  req.session.totalSum = totalSum;

  // Incrémente le compteur de commande
  commandeCounter++;

  // Générer une référence de commande unique
  const referenceCommande = generateReference();
  req.session.referenceCommande = referenceCommande;

  // Insérer les détails de la commande dans la table "Commande"
  const sqlInsertCommande = 'INSERT INTO commaande (id_commande, utilisateur_id, quantite, titre, prixParKilo, prix_total, nomUtilisateur, numeroUtilisateur, adresseUtilisateur, referenceCommande, moyenPaiement,subtotal,frais_livraison,total) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?)';

  // Insérer les détails de la commande dans la table "Valide"
  // Parcourir les articles de la commande et les insérer dans les tables "Commande" et "Valide"
  articles.forEach(article => {
      const { quantite, titre, prixParKilo, prix_total } = article;
      // Insérer l'ID de commande à partir de la session
      db.query(sqlInsertCommande, [req.session.commandeCounter, utilisateur.id, quantite, titre, prixParKilo, prix_total, nomUtilisateur, numeroUtilisateur, adresseUtilisateur, referenceCommande, moyenPaiement, subtotal, deliveryCost, totalSum], (error, result) => {
          if (error) {
              console.error('Erreur lors de l\'enregistrement de la commande :', error.message);
              return res.status(500).json({ error: 'Erreur serveur' });
          }
           // Insérer les détails de la commande dans la table "Valide"
      });
  });

  // Envoyer un e-mail à l'utilisateur
  const userEmailQuery = 'SELECT email FROM utulisateurs WHERE id = ?';
  db.query(userEmailQuery, [utilisateur.id], (error, results) => {
    if (error) {
      console.error('Erreur lors de la récupération de l\'adresse e-mail de l\'utilisateur :', error.message);
      return res.status(500).json({ error: 'Erreur serveur' });
    }

    if (results.length === 0 || !results[0].email) {
      console.error('Adresse e-mail non trouvée pour l\'utilisateur connecté.');
      return res.status(400).json({ error: 'Adresse e-mail non trouvée pour l\'utilisateur connecté' });
    }

    const userEmail = results[0].email;
    const subject = 'Votre commande a été passée';
    const text = 'Merci pour votre commande. Votre référence de commande est : ' + referenceCommande  + ''; // Vous pouvez personnaliser ce message
    sendEmail(userEmail, subject, text);

    // Répondre au client avec la référence de commande générée
    res.json({ message: 'Commande enregistrée avec succès', referenceCommande: referenceCommande });
  });
});

// Function to send email
function sendEmail(email, subject, text) {
  const mailOptions = {
    from: 'abchoukfatma18@gmail.com',
    to: email,
    subject: subject,
    text: text
  };

  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      console.error('Erreur lors de l\'envoi de l\'e-mail :', error);
    } else {
      console.log('E-mail envoyé :', info.response);
    }
  });
}


// Function to send email
function sendEmail(email, subject, text) {
  const mailOptions = {
    from: 'abchoukfatma18@gmail.com',
    to: email,
    subject: subject,
    text: text
  };

  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      console.error('Erreur lors de l\'envoi de l\'e-mail :', error);
    } else {
      console.log('E-mail envoyé :', info.response);
    }
  });
}
 
// Route pour récupérer les commandes de l'utilisateur connecté
app.get("/factures", protectionRoute, (req, res) => {
  const { utilisateur } = res.locals;

  if (utilisateur) {
    const idUtilisateur = utilisateur.id;

    // Requête SQL pour sélectionner les commandes de l'utilisateur connecté
    db.query('SELECT * FROM valider WHERE id_utilisateur = ?', [idUtilisateur], (err, commandes) => {
      if (err) {
        console.error('Erreur lors de la récupération des commandes de l\'utilisateur : ' + err.message);
        return res.status(500).send('Erreur serveur');
      }

      // Renvoyer les commandes à la page facture.html
      res.render("factures", { commandes });
    });
  } else {
    // Rediriger vers la page de connexion si l'utilisateur n'est pas connecté
    res.redirect("/connexion");
  }
});

// Route pour afficher les détails de la commande
app.get('/details-commande', (req, res) => {
  // Récupérer la référence de commande depuis les paramètres de requête
  const referenceCommande = req.query.referenceCommande;

  // Requête SQL paramétrée pour sélectionner les détails de la commande correspondante
  db.query('SELECT * FROM commaande WHERE referenceCommande = ?', [referenceCommande], (err, rows) => {
      if (err) {
          console.error('Erreur lors de la récupération des détails de la commande : ' + err.message);
          return res.status(500).send('Erreur serveur');
      }

      // Vérifier si des données ont été trouvées
      if (rows.length === 0) {
          return res.status(404).send('Commande non trouvée');
      }

      // Afficher les détails de la commande sur la page details-commande.html
      res.render('details-commande', { detailsCommande: rows });
  });
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
  const userId = req.session.idUtilisateur; // Récupérer l'ID de l'utilisateur depuis la session

  try {
    // Requête pour obtenir l'e-mail de l'utilisateur à partir de son ID
    db.query('SELECT email FROM utulisateurs WHERE id = ?', [userId], async (err, rows) => {
      if (err) {
        console.error('Erreur lors de la recherche de l\'utilisateur : ' + err.message);
        req.flash("error", "Erreur serveur");
        return res.redirect("/acc");
      }

      if (rows.length > 0) {
        const userEmail = rows[0].email;

        // Comparer l'e-mail récupéré avec l'e-mail fourni dans la requête
        if (userEmail !== EEmail) {
          req.flash("error", "Votre e-mail est incorrect");
          return res.redirect("/acc");
        }

        // Effectuer la mise à jour dans la base de données
        db.query(
          'UPDATE utulisateurs SET phone = ?, Adress1 = ?, Adress2 = ?, zip = ? WHERE email = ?',
          [phone, Adress1, Adress2, zip, EEmail],
          (updateError) => {
            if (updateError) {
              console.error(updateError);
              req.flash("error", "Erreur interne du serveur");
              return res.redirect("/acc");
            }

            req.flash("success", "Mise à jour du compte réussie");
            return res.redirect("/acc");
          }
        );
      } else {
        req.flash("error", "Utilisateur non trouvé");
        res.redirect("/acc");
      }
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

app.get("/detail_item", (req, res) => {
  res.render("detail_item");
});

// ...
// Add this route after the reset-password route
app.post("/reset-password1", async (req, res) => {
  const { phoneNumber } = req.body;

  // Check if the phone number exists in the database
  db.query('SELECT * FROM utulisateurs WHERE phone = ?', [phoneNumber], async (error, results) => {
    if (error) {
      console.log(error);
      return res.status(500).send("Erreur interne du serveur");
    }

    if (results.length > 0) {
      const user = results[0];
      const confirmationMessage = `Est-ce que vous êtes l'utilisateur de ce numéro : ${phoneNumber}, monsieur ou madame ${user.nom}?`;

      // Show confirmation alert with Yes and No buttons
      res.render("confirmation-alert", { message: confirmationMessage, userId: user.id });
    } else {
      // Phone number not found in the database, show error message
      req.flash("error", "Numéro invalide");
      return res.redirect("/reset-password1");
    }
  });
});
app.get("/send-sms-code/:userId", (req, res) => {
  const { userId } = req.params;

  // Add logic to send SMS code and handle the response
  // You can use a third-party SMS service to send the code

  // For example, redirect to the verify-code1 route
  res.redirect(`/verify-code1/${userId}`);
});





app.get("/verify-code1/:userId", (req, res) => {
  const { userId } = req.params;

  // Render the verify-code1 page with the user's ID
  res.render("verify-code1", { userId });
});

// Add this route after the verify-code route
app.post("/verify-code1", async (req, res) => {
  const { code } = req.body;

  // Compare the entered code with the code stored in the session
  const storedCode = req.session.resetCode;

  if (storedCode && code === storedCode) {
    // Codes match, redirect to nouveau-mot-passe1.html
    res.redirect("/nouveau-mot-passe1");
  } else {
    // Codes do not match, display an error message
    req.flash("error", "Code invalide");
    res.redirect("/verify-code1");
  }
});


app.get("/nouveau-mot-passe1", (req, res) => {
  const { phoneNumber } = req.query;
  res.render("nouveau-mot-passe1", { phoneNumber });
});

// Add this route after the update-password route
app.post("/update-password1", async (req, res) => {
  const { newPassword } = req.body;
  req.session.resetCode = null; // Clear the reset code from the session

  try {
    // Hash the new password
    const salt = await bcrypt.genSalt(10);
    const hashedNewPassword = await bcrypt.hash(newPassword, salt);

    // Update the password in the database
    // Implement your database query here

    req.flash("success", "Nouveau mot de passe enregistré avec succès");
    res.redirect("/connexion");
  } catch (error) {
    console.error('Erreur lors du hachage du nouveau mot de passe :', error);
    req.flash("error", "Erreur interne du serveur");
    res.redirect("/reset-password1");
  }
});

// Configurez votre client Twilio
const twilioClient = twilio(process.env.TWILIO_ACCOUNT_SID, process.env.TWILIO_AUTH_TOKEN);
app.get("/send-sms-code/:userId", async (req, res) => {
  const { userId } = req.params;

  // Récupérez le numéro de téléphone de l'utilisateur depuis la base de données
  db.query('SELECT phone FROM utulisateurs WHERE id = ?', [userId], async (error, results) => {
    if (error) {
      console.log(error);
      return res.status(500).send("Erreur interne du serveur");
    }

    if (results.length > 0) {
      const phoneNumber = results[0].phone;

      // Générez un code SMS aléatoire
      const smsCode = Math.floor(10000 + Math.random() * 90000).toString();

      // Enregistrez le code dans la session
      req.session.resetCode = smsCode;

      // Envoyez le code par SMS en utilisant Twilio
      twilioClient.messages.create({
        body: `Votre code de vérification est : ${smsCode}`,
        to: phoneNumber, // Utilisez le numéro de téléphone de l'utilisateur
        from: process.env.TWILIO_PHONE_NUMBER,
      })
      .then(() => {
        // Redirigez vers la page de vérification avec l'ID utilisateur
        res.redirect(`/verify-code1/${userId}`);
      })
      .catch((twilioError) => {
        console.error('Erreur lors de l\'envoi du code SMS via Twilio :', twilioError);
        return res.status(500).send("Erreur interne du serveur");
      });
    } else {
      // Gérer le cas où l'utilisateur n'est pas trouvé
      res.status(404).send('Utilisateur non trouvé');
    }
  });
});


// ...

async function generateAndSendCode(userId, req) {
  try {
    // Generate a random SMS code
    const generatedCode = Math.floor(10000 + Math.random() * 90000).toString();

    // Get the user's phone number from the database
    const user = await dbQueryAsync('SELECT phone FROM utulisateurs WHERE id = ?', [userId]);

    if (user.length > 0) {
      const phoneNumber = user[0].phone.toString(); // Ensure the number is a string

      // Ensure the phone number is in the correct format for Twilio
      const phoneRegex = /^\+216\d{8}$/;
      if (!phoneRegex.test(phoneNumber)) {
        console.error('Invalid phone number:', phoneNumber);
        throw new Error('Invalid phone number');
      }

      // Send the code via Twilio
      await twilioClient.messages.create({
        body: `Your verification code is: ${generatedCode}`,
        to: phoneNumber,
        from: process.env.TWILIO_PHONE_NUMBER,
      });

      // Save the code in the session
      req.session.resetCode = generatedCode;

      return generatedCode;
    } else {
      console.error('User not found in the database');
      throw new Error('User not found');
    }
  } catch (error) {
    console.error('Error generating and sending code:', error);
    throw error;
  }
}

function isValidPhoneNumber(phoneNumber) {
  // Replace the placeholder with your actual validation logic
  // For example, check if the phone number matches the expected format
  const phoneRegex = /^\+\d{1,3}\s\d{1,15}$/; // Modify this regex based on your expected format
  return phoneRegex.test(phoneNumber);
}

// ...


// Add this route after the reset-password1 route
app.post("/generate-and-send-code/:userId", async (req, res) => {
  const { userId } = req.params;

  try {
    const generatedCode = await generateAndSendCode(userId, req);

    // Respond with JSON indicating success
    res.json({ success: true });
  } catch (error) {
    console.error('Error generating and sending code:', error);
    // Respond with JSON indicating failure
    res.status(500).json({ success: false, error: 'Internal Server Error' });
  }
});



// ...




app.listen(4001);
console.log("L'application tourne au port 4001");


