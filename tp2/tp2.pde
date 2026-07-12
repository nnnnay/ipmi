PFont miFuente;

int tiempoPantalla;
int numPantalla;

PImage img, img2, img3, img4, img5 ;
PImage bg;

String texto = "Otra vuelta de Tuerca.";
String texto2 = "Trata sobre una institutriz que llega a una mansión aislada para cuidar a dos niños., Allí comienza a ver supuestos fantasmas y cree que intentan influir sobre ellos., La novela juega constantemente con la duda entre si los fantasmas son reales o si, todo ocurre en la mente de la institutriz.";
String texto3 = "Institutriz. Es la persona contratada para cuidar a los niños. Una joven soltera de veinte años, la hija menor de un clérigo pobre, que sale por primera vez de su casa familiar en el campo para entrevistarse en Londres aspirando al puesto de institutriz. Allí queda prendada del tío de los pequeños y quiere ganar su afecto teniendo éxito en su trabajo.";
String texto4 = "Son dos hermanos, Miles y Flora, cuyos padres han muerto en la India.Los niños nunca hablan de sus padres y no se sabe si han olvidado todo sobre ellos. No se menciona el tiempo que hace que son huérfanos. Su tío dice que son hijos de su hermano pero no se dice qué ha sido de la madre. Nadie habla de ella.Los niños son ambos encantadores y aparentemente buenos.";
String texto5 = "Señorita Jessel. Es la fallecida institutriz que mantiene una amistad con Flora.Es joven y de gran belleza y atractivo, pálida y muy alta y siempre va vestida de luto con un atuendo negro.Psicológicamente es temible y una manipuladora ya que hace lo que quiere con los niños. Es malvada e infame y, tras su muerte, desea poseer a la niña.Es una dama y, a pesar de ello, establece con Peter Quint una relación viciosa y socialmente desigual que acaba mal.";
String texto6 = "Peter Quint. Es el fallecido criado, hombre de confianza y ayuda de cámara del señor, enviado al campo por presuntos problemas de salud.Es descrito como inteligente, agudo y malvado, impúdico, seguro de sí mismo, maleducado y depravado.Es extraordinariamente atractivo, alto, de aspecto vigoroso y muy erguido.Es pelirrojo, pálido y con bigote y viste elegantemente porque lleva la ropa de su señor, pero no es un caballero.Mantuvo una relación con la anterior institutriz de los niños, Miss Jessel, en la que saltaron las barreras de rango y condición social.";

float y1 = 0;
float y2;
float velocidad = 2;
float yTextoPantalla1 = 600;
float xTextoPantalla2 = -400 ;
float yTextoPantalla3 = 700;
float xImagenPantalla2 = 700 ;
float yImagenPantalla3 = -300;

float opacidadPantalla4 = 0;

void setup() {
  size(640, 480);

  cargarRecursos();

  y2 = -height; 
}

void draw() {
  image(bg, 0, y1,  width, height);
  image(bg, 0, y2, width, height);

  y1 += velocidad;
  y2 += velocidad;

  if (y1 >= height) {
    y1 = -height;
  }
  if (y2 >= height) {
    y2 = -height;
  }

  if ( numPantalla == 0 ) {
       
    textAlign(CENTER, CENTER);
    fill(#FF0A0A);
    textSize(40);

    text(texto, width/2, 120);
    
    textAlign(CENTER, CENTER);
    textSize(24);
    fill(#FF0A0A); 
    text("¡ iniciar !", width/2, height/2);
    fill(#FF0A0A); 

    if (  
      mouseX > width/2 - 100 &&
      mouseX < width/2 + 100 &&
      mouseY > height/2 - 20 &&
      mouseY < height/2 + 20
    ) {
       fill(0); 
       text("¡ iniciar !", width/2, height/2); 
       textAlign(CENTER, CENTER);
       textSize(24);
       noFill();
    } else {
       noFill();
    }
   
  } else if (numPantalla == 1) {
     image(img,40,yTextoPantalla1 - 20,270,510);

     fill(0, 120);
     noStroke();
     rect(330,yTextoPantalla1 - 20,270,520);

     fill(#FF0A0A);
     text(texto2,350,yTextoPantalla1,250,510);

     if (yTextoPantalla1 > 5) {
        yTextoPantalla1 -= 2;
     }
   
     if (millis() - tiempoPantalla > 10000) {
        numPantalla = 2;
        tiempoPantalla = millis();
     }
   
  } else if (numPantalla == 2) {
    image(img2,xImagenPantalla2,80,270,350);

    if (xImagenPantalla2 > 330) {
        xImagenPantalla2 -= 3;
    }

    fill(0, 120);
    noStroke();

    rect(xTextoPantalla2 - 20,0,270,height);

    fill(#FF0A0A);
    textSize(20);
    textAlign(LEFT, TOP);

    text(texto3,xTextoPantalla2 +20,40,200,450);

    if (xTextoPantalla2 < 5) {
       xTextoPantalla2 += 2;
    }
    
    if (millis() - tiempoPantalla > 10000) {
       numPantalla = 3;
       tiempoPantalla = millis();
    }

  } else if (numPantalla == 3) {
     image(img3,70,yImagenPantalla3,500,220);

     if (yImagenPantalla3 < 40) {
        yImagenPantalla3 += 3;
     }

    fill(0, 120);
    noStroke();

    rect(40,yTextoPantalla3,560,170);

    fill(#FF0A0A);
    textSize(19);
    textAlign(LEFT, TOP);

    text(texto4,60,yTextoPantalla3 + 20,520,140);

    if (yTextoPantalla3 > 290) {
        yTextoPantalla3 -= 3;
    }
    
    if (millis() - tiempoPantalla > 10000) {
       numPantalla = 4;
       tiempoPantalla = millis();
    }   

  } else if (numPantalla == 4) {
    tint(255, opacidadPantalla4);

    image(img4, 40, 40, 180, 160);
    image(img5, 40, 240, 180, 160);

    noTint();

    fill(0, opacidadPantalla4 / 2);
    rect(240, 40, 340, 160);
    rect(240, 240, 340, 160);
 
    fill(255, 0, 0, opacidadPantalla4);
    textSize(10);
    text(texto5, 260, 60, 300, 130);
    text(texto6, 260, 260, 300, 130);
   
    fill(#FF0A0A);
    textSize(28);
    textAlign(CENTER, CENTER);

    text("REINICIAR", width/2, 450);

    if (opacidadPantalla4 < 255) {
       opacidadPantalla4 += 2;
    }
  }
}

void mousePressed() {
  if (numPantalla == 0) {
    if (
      mouseX > width/2 - 100 &&
      mouseX < width/2 + 100 &&
      mouseY > height/2 - 20 &&
      mouseY < height/2 + 20
    ) {
      numPantalla = 1;
      tiempoPantalla = millis();
    }
  }

  if (numPantalla == 4) {
    if (
      mouseX > width/2 - 120 &&
      mouseX < width/2 + 120 &&
      mouseY > 430 &&
      mouseY < 470
    ) {
      reiniciarAnimaciones();
    }
  }
}

void reiniciarAnimaciones() {
  numPantalla = 0;
  

  yTextoPantalla1 = 600;
  xTextoPantalla2 = -400;
  xImagenPantalla2 = 700;
  yImagenPantalla3 = -300;
  yTextoPantalla3 = 700;
  opacidadPantalla4 = 0;
  

  y1 = 0;
  y2 = -height;
}

void cargarRecursos() {
  miFuente = loadFont("ArialMT-48.vlw");
  
  bg   = loadImage("fondo.jpg");
  img = loadImage("finca.jpg");
  img2 = loadImage("institutriz.png");
  img3 = loadImage("niños.png");
  img4 = loadImage("fantasma1.png");
  img5 = loadImage("fantasma2.png");
  
}
