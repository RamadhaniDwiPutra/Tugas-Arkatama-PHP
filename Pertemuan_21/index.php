<?php

require_once 'Animal.php';
require_once 'Cat.php';
require_once 'Dog.php';

echo "<br><br>";

$animal = new Animal("Beruang", "Karnivora.");
$animal->getinfo(); 
echo "<br><br>";

$cat = new Cat("Snooby");
$cat->getinfo();
echo "<br><br>";

$dog = new Dog("Jerry");
$dog->getinfo();

?>