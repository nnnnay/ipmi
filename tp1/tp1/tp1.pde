PImage miImagen ;

void setup() {
  size(800,400);
  miImagen = loadImage("estatua.jpg");

  
}

void draw() {
  //fondo
  background(#E8DEDE);
  image(miImagen, 0, 0, 400, 400);

  //torso
  fill(#5F4D42) ;
  noStroke(); ;
  quad(551, 400, 650, 400, 651, 291, 568, 141) ;
  noStroke() ;
  ellipse(585, 400, 80, 100);
  noStroke();
  quad(554, 366, 512, 293, 535, 143, 575, 135);
  noStroke();
  quad(649, 294, 660, 265, 641, 160, 626, 155);
  noStroke();
  triangle(628, 155, 606, 136, 601, 152);
  noStroke();
  quad(568, 140, 627, 152, 652, 280, 610, 309);
  

  //hombro
  fill(#5F4D42);
  noStroke() ;
  ellipse(542, 175, 65, 70);
  noStroke();
 triangle(510, 180, 513, 224, 535, 229);
  noStroke();
  triangle(517, 189, 516, 214, 542, 199);
  noStroke();
  quad(643, 172, 650, 175, 649, 193, 648, 207);


  //brazo
  fill(#5F4D42);
  noStroke();
  quad(514, 166, 490, 267, 510, 345, 537, 287);
  noStroke();
  triangle(490, 265, 485, 339, 511, 344); 
  noStroke();
  quad(485, 336, 487, 400, 516, 400, 511, 343);
  noStroke();
  triangle(515, 205, 516, 266, 540, 222);
  noStroke();
  ellipse(489, 344, 10, 25);
  
  //brazo y mano
  fill(#5F4D42);
  noStroke();
  triangle(647, 338, 665, 346, 647, 367);
  noStroke();
  triangle(665, 346, 665, 367, 646, 367);
  noStroke();
  quad(663, 346, 677, 342, 677, 382, 648, 381);
  noStroke();
  triangle(645, 383, 646, 345, 668, 356);
  noStroke();
  quad(676, 344, 680, 328, 687, 328, 688, 345);
  noStroke();
  quad(675, 342, 698, 331, 706, 382, 676, 382);
  noStroke();
  ellipse(689, 378, 30, 20);
  
  //cuello y cabeza
  fill(#271919);
  noStroke();
  quad(556, 134, 564, 50, 569, 40, 579, 138);
  noStroke();
  quad(607, 127, 616, 130, 630, 122, 625, 35);

  
  fill(#5F4D42);
  noStroke();
  quad(573, 142, 576, 124, 609, 120, 607, 150);

  fill(#271919);
  ellipse(595, 68, 65, 140);
  noStroke();
  
  fill(#5F4D42);
  ellipse(595, 68, 55, 100);
  
  
  //gorro
  fill(#271919);
  noStroke();
  quad(567, 49, 573, 45, 582, 39, 572, 27);
  noStroke();
  quad(582, 39, 592, 32, 600, 31, 597, 8);
  noStroke();
  quad(600, 31, 606, 32, 612, 35, 611, 20);
  noStroke();
  triangle(610, 35, 618, 40, 611, 22);
  noStroke();
  quad(570, 34, 582, 38, 595, 27, 591, 9);
  noStroke();
  triangle(595, 10, 599, 32, 609, 24);
  
  
  //barba
  fill(#271919);
  noStroke();
  ellipse(594, 117, 15, 20);
  noStroke();
  ellipse(584, 109, 15, 20);
  noStroke();
  ellipse(574, 94, 15, 20);
  noStroke();
  ellipse(580, 98, 15, 20);
  noStroke();
  ellipse(603, 111, 15, 20);
  noStroke();
  ellipse(595, 104, 15, 20);
  noStroke();
  ellipse(610, 104, 15, 20);
  noStroke();
  ellipse(615, 93, 15, 20);
  noStroke();
  ellipse(588, 95, 15, 20);
  noStroke();
  ellipse(602, 97, 15, 20);
  noStroke();
  ellipse(582, 88, 10, 20);
  noStroke();
  ellipse(589, 81, 10, 20);
  noStroke();
  ellipse(597, 76, 10, 15);
  noStroke();
  ellipse(603, 80, 10, 15);
  noStroke();
  ellipse(607, 86, 10, 15);
  
  //cara
  stroke(2);
  line(590, 86, 601, 86);
  line(597, 65, 599, 61);
  line(599, 61, 596, 48);
  line(590, 43, 587, 40);
  line(587, 40, 576, 43);
  line(601, 43, 604, 40);
  line(604, 40, 616, 43);
  
  fill(255);
  noStroke();
  ellipse(583, 49, 10, 6);
  noStroke();
  ellipse(607, 49, 10, 6);
  
  fill(#29160A);
  noStroke();
  ellipse(583, 49, 4, 10);
  noStroke();
  ellipse(607, 49, 4, 10);
  
  //lineas
  stroke(1);
  line(649, 288, 628, 275);
  line(628, 275, 621, 218);
  line(524, 313, 534, 278);
  line(534, 278, 538, 217);
  line(538, 217, 543, 213);
  line(543, 213, 563, 270);
  line(563, 270, 570, 273);
  line(570, 273, 600, 267);
  line(547, 141, 560, 147);
  line(620, 400, 620, 279);
  line(547, 278, 573, 293);
  line(553, 306, 578, 323);
  line(561, 334, 586, 345);
  line(572, 368, 582, 400);
  line(679, 345, 684, 345);
  line(690, 347, 697, 344);
  line(692, 355, 700, 353);
  line(692, 367, 701, 366);
  line(694, 375,702, 379);
  line(682, 348, 687, 375);
  
}
