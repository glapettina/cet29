<?php

	class Conexion{

		static public function conectar(){

			$link = new PDO("mysql:host=localhost;dbname=dbcet29","root","");

			$link -> exec("set names utf8");

			return $link;
		}

	}