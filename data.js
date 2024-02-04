const bcrypt = require ('bcrypt');
var defaultHashedPW;
const utilisateurs=[];
(async () =>{
const salt = await bcrypt.genSalt(10);
defaultHashedPW =await bcrypt.hash("1234" , salt);
 utilisateurs.push({
  id : 1 ,
  nom: "Louis Musole",
  email: "louis@drcmind.com",
  password: defaultHashedPW,

 })
 utilisateurs.push({
  id :2,
  nom: "Amani Bisimwa",
  email: "amani@drcmind.com",
  password: defaultHashedPW,

 })
 utilisateurs.push({
  id :3,
  nom: "fatma aba",
  email: "fatma@drcmind.com",
  password: defaultHashedPW,

 })
})()




 const cours = [
    {
      id: 1,
      titre: "tomates",
      minititre: "prix moyen:",
      mintitre: "1Dt/Kg",
      prixParKilo: 1, // Ajout du prix par kilo

      lienThumbnail: "/images/thumbnail/tomate.jpg",
    },
    {
      id: 2,
      titre: "pomme de terre ",
      minititre: "prix moyen:",
      mintitre: "2Dt/Kg",
      prixParKilo: 2, // Ajout du prix par kilo

      lienThumbnail: "/images/thumbnail/batat.jpg",
    },
    {
      id: 3,
      titre: "piment",
      minititre: "prix moyen:",
      mintitre: "2Dt/Kg",
      prixParKilo: 2, // Ajout du prix par kilo
      desc: `Gérer vos données avec la base de données non relationnelle MongoDB`,
      lienVideo: "public/video/mongoose.mp4",
      lienThumbnail: "/images/thumbnail/felfel.jpg",
    },
    {
      id: 4,
      titre: "carottes",
      minititre: "prix moyen:",
      mintitre: "2Dt/Kg",
      prixParKilo: 2, // Ajout du prix par kilo
      desc: `Dans ce cours, vous apprendrez les notions fondamentales sur l'utilisation de la bibliothèque mongoose pour gérer la base de données MongoDB`,
      lienVideo: "public/video/mongoose.mp4",
      lienThumbnail: "/images/thumbnail/seneriya.jpg",
    },
  
{ 
      titre: "NodeJs pour débutants",
      desc: `Dans ce cous vous apprendrez les notions fondamentales sur 
          l'utilisation de la bibliothèque mongoose pour gérer la base de données MongoDB`,
      lienVideo: "public/video/mongoose.mp4",
      lienThumbnail: "/images/thumbnail/nodejs.jpg",
    },
    {
      titre: "Créer une API avec NodeJs et MongoDB",
      desc: `Dans ce cous vous apprendrez les notions fondamentales sur 
          l'utilisation de la bibliothèque mongoose pour gérer la base de données MongoDB`,
      lienVideo: "public/video/mongoose.mp4",
      lienThumbnail: "/images/thumbnail/restapi.jpg",
    },
    {
      titre: "Créer des applications NodeJs Sécurisées",
      desc: `Dans ce cous vous apprendrez les notions fondamentales sur 
          l'utilisation de la bibliothèque mongoose pour gérer la base de données MongoDB`,
      lienVideo: "public/video/mongoose.mp4",
      lienThumbnail: "/images/thumbnail/safenodejs.jpg",
    },
    {
      titre: "Cloner Youtube avec Flutter Web",
      desc: `Dans ce cous vous apprendrez les notions fondamentales sur 
          l'utilisation de la bibliothèque mongoose pour gérer la base de données MongoDB`,
      lienVideo: "public/video/mongoose.mp4",
      lienThumbnail: "/images/thumbnail/youtubeclone.jpg",
    },
  
  {
    titre: "Cloner Youtube avec Flutter Webb",
    desc: `Dans ce cous vous apprendrez les notions fondamentales sur 
        l'utilisation de la bibliothèque mongoose pour gérer la base de données MongoDB`,
    lienVideo: "public/video/mongoose.mp4",
    lienThumbnail: "/images/thumbnail/youtubeclone.jpg",
  },
 ]
 module.exports = { cours };