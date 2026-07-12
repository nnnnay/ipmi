//link del nuevo video:https://youtu.be/I6U4jAXeoqc

PImage obra;

float rotacionMaxima = 1.2;
float factorInteraccion = 1.0;
boolean resetActivo = false;

void setup() {
  size(800, 400);
  obra = loadImage("34.jpg");
}

void draw() {
  boolean dentroZona = mouseX > 400 && mouseX < 800 &&
                       mouseY > 0 && mouseY < 400;

  if (!dentroZona) {
    resetActivo = false;
  }

  if (resetActivo) {
    background(255);
  } else {
    if (dentroZona) {
      background(0);
    } else {
      background(255);
    }
  }

  pushMatrix();
  translate(600, 200);
  scale(1.2);

  for (int i = 0; i < 12; i++) {
    pushMatrix();

    float rot = 0.15 + i * 0.09;

    if (!resetActivo) {
      rot += calcularRotacionIndividual(i, dentroZona);
    }

    rotate(rot);

    aplicarColor(i, dentroZona && !resetActivo);

    rectMode(CENTER);
    noStroke();

    int tam = 300 - i * 25;
    rect(0, 0, tam, tam);

    popMatrix();
  }
  popMatrix();

image(obra, 0, 0, 400, 400);
}

void aplicarColor(int i, boolean dentroZona) {
  int colorFinal = (i % 2 == 0) ? 0 : 255;
  int repeticiones = dentroZona ? 1 : 2;

  for (int a = 0; a < repeticiones; a++) {
    for (int b = 0; b < 1; b++) {
      if (colorFinal == 0) {
        colorFinal = 255;
      } else {
        colorFinal = 0;
      }
    }
  }
  fill(colorFinal);
}

float calcularRotacionIndividual(int i, boolean dentroZona) {
  float distanciaMouse = dist(mouseX, mouseY, 600, 200);

  int tam = 300 - i * 25;
  float radioCuadrado = (tam / 2.0) * 1.2; 

  float distanciaAlBorde = distanciaMouse - radioCuadrado;

  if (distanciaAlBorde < 0) {
    distanciaAlBorde = distanciaAlBorde * -1;
  }

  float expansionIndividual = 0;

  if (dentroZona && distanciaAlBorde < 20) {
    expansionIndividual = map(distanciaAlBorde, 20, 0, 0, 0.3);
  }

  float sentido = (i % 2 == 0) ? 1 : -1;
  float factorAzar = random(0.97, 1.03);

  return expansionIndividual * rotacionMaxima * sentido * factorInteraccion * factorAzar;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetActivo = true; 
  }
}
