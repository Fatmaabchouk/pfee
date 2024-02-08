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
     
      lienThumbnail: "/images/thumbnail/felfel.jpg",
    },
    {
      id: 4,
      titre: "carottes",
      minititre: "prix moyen:",
      mintitre: "2Dt/Kg",
      prixParKilo: 2, // Ajout du prix par kilo
   
      lienThumbnail: "/images/thumbnail/seneriya.jpg",
    },
  
{ 
      titre: "",

      lienThumbnail: "/images/thumbnail/nodejs.jpg",
    },
    {
      titre: "",
    
      lienThumbnail: "/images/thumbnail/restapi.jpg",
    },
    {
      titre: "",
     
      lienThumbnail: "/images/thumbnail/safenodejs.jpg",
    },
    {
      titre: "",
      lienThumbnail: "/images/thumbnail/youtubeclone.jpg",
    },
  
  {
    titre: "",
   
    lienThumbnail: "",
  },
 ]
 module.exports = { cours };