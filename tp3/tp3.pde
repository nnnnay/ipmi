//link del video: https://youtu.be/uxBKPrQUVjI

PImage obra;

boolean vibracionActiva = true;
boolean rotacionActiva = true;

void setup() {
  size(800, 400);
  obra = loadImage("34.jpg");
}

void mousePressed() {

  if (mouseButton == LEFT) {
    vibracionActiva = !vibracionActiva;
  }

  if (mouseButton == RIGHT) {
    rotacionActiva = !rotacionActiva;
  }

  if (mouseButton == CENTER) {
    vibracionActiva = true;
    rotacionActiva = true;
  }
}


void draw() {

  boolean dentroZona = mouseX > 400 && mouseX < 800 &&
                       mouseY > 0 && mouseY < 400;

  if (dentroZona) {
    background(0);
  } else {
    background(255);
  }

  image(obra, 0, 0, 400, 400);

  pushMatrix();

  translate(600, 200);
  scale(1.17);

  for (int i = 0; i < 12; i++) {

    pushMatrix();

    float d = dist(mouseX, mouseY, 600, 200);
    float vib = 0;

    if (vibracionActiva) {

      for (int a = 0; a < 3; a++) {
        for (int b = 0; b < 3; b++) {

          float local = map(d, 0, 300, 2, 0);
          vib += local * 0.1;
        }
      }
    }

    translate(random(-vib, vib), random(-vib, vib));

    float rot = 0.15 + i * 0.09;

    if (rotacionActiva && i >= 6) {
      rot += calcularRotacion(dentroZona);
    }

    rotate(rot);
    aplicarColor(i, dentroZona);
    rectMode(CENTER);

    int tam = 300 - i * 25;
    rect(0, 0, tam, tam);

    popMatrix();
  }

  popMatrix();
}


void aplicarColor(int i, boolean dentroZona) {

  if (i % 2 == 0) {
    fill(dentroZona ? 255 : 0);
  } else {
    fill(dentroZona ? 0 : 255);
  }
}


float calcularRotacion(boolean dentroZona) {

  if (dentroZona) {
    float rot = map(mouseX, 600, 800, 0, 0.4);
    return constrain(rot, 0, 0.4);
  }

  return 0;
}
