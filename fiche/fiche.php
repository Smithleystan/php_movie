base de donnée avec injection de donnée

condition
<!-- si la super variable poste n'est pas vide -->
if (!empty($_POST)){
$"non de la variable" = trim(strip_tags($_POST["nom de l'input ou non de la variable"]))
$"non de la variable1" = trim(strip_tags($_POST["nom de l'input1 ou non de la variable1"]))


$sdn= "mysql=host:localhost;dbase:nom de la base de donnée"
$db= new PDO($sdn, "root", "")

$query= $db->prepare("INSERT INTO nomdelabase.nomdelatable (nom de la colonne) VALUE(:non de l'input) ")
$query-bindParam("nom de la colonne" , $nom de la variable)
si le type est une date
$query-bindParam("nom de la colonne" , $nom de la variable, PDO::PARAM_STR)
si le type est un number
$query-bindParam("nom de la colonne" , $nom de la variable, PDO::PARAM_INT)

if (query-execute()){
header("location : index.php")
<!-- pour retourner a la page d'accueil a la fin de la requète -->
}
}