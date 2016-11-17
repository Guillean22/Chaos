<!DOCTYPE html>
	<html>
		<meta charset="utf-8">
		<link rel="stylesheet" href="/Projets/Chaos/style.css">	<!-- création du lien vers la page css -->
		<?php
		//*/
			$servername= "127.0.0.1";
			$username= "root";
			$password="";

			try{
				$conn = new PDO("mysql:host=$servername;dbname=Chaos.sql", $username, $password);
				// set the PDO error mode to exception
				$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				echo "Connected successfully";
			}
			catch(PDOException $e){
				echo "Connexion failed: " . $e->getMessage();
			}
		//*/
		?>
		<head>
			<title>Project Chaos</title>
		</head>