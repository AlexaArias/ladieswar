import ddf.minim.*;

Minim gestor;
AudioPlayer musica_fondo;

//Variables Globales

//PANTALLAS
int pantalla=0;
int x, y;
float dt;
PFont fuente1;
PFont fuente2;
PFont fuente3;
PFont fuente4;
PFont fuente5;
PFont fuente6;
PFont fuente7;
PFont fuente8;
PFont fuente9;
PFont fuente10;
PFont fuente11;
PFont fuente12;
PFont fuente13;
PFont fuente14;
PFont fuente15;
PFont fuente16;
PFont fuente17;
PFont fuente18;
PFont fuente19;
PFont fuente20;
PFont fuente21;
PFont fuente22;
PFont fuente23;
PFont fuente24;

//JUGADORES
int player1;
int player2;


//Vida
int life1 = 200;
int life2 = 200;

int t=0;


class Clarke {
  //Atributos

  float x, y;
  float v;
  int l;

  //Constructor

  Clarke(int x_, int y_) {
    x = x_;
    y = y_;
    this.v = 5;
    this.l = 8;
  }

  //Métodos

  void display() {
    pushMatrix();

    //Cabello
    fill(216, 218, 55);
    noStroke();
    translate(x, y);

    rect (5*l, l, 5*l, l);
    rect (2*l, 1*l, 10*l, l);
    rect (1*l, 2*l, 6*l, l);
    rect (11*l, 2*l, 2*l, l);
    rect (1*l, 3*l, 4*l, l);
    rect (11*l, 3*l, 2*l, l);
    rect (l, 4*l, 4*l, l);
    rect (11*l, 4*l, 3*l, l);
    rect (1*l, 5*l, l, 2*l);
    rect (12*l, 5*l, l, 2*l);
    rect (l, 7*l, 2*l, l);
    rect (12*l, 7*l, l, l);
    rect (1*l, 8*l, l, l);
    rect (12*l, 8*l, l, l);
    rect (1*l, 9*l, 2*l, l);
    rect (11*l, 9*l, 2*l, l);
    rect (2*l, 10*l, 3*l, l);
    rect (10*l, 10*l, 3*l, l);
    rect (2*l, 11*l, 2*l, l);
    rect (11*l, 11*l, 2*l, l);


    //Cara
    fill(238, 239, 200);
    noStroke();

    rect (2*l, 5*l, 10*l, 4*l);
    rect (3*l, 9*l, 8*l, l);
    rect (4*l, 4*l, 7*l, l);
    rect (5*l, 3*l, 6*l, l);
    rect (7*l, 2*l, 4*l, l);
    rect (6*l, 10*l, 2*l, l);

    //Ojos
    fill (0, 0, 0);
    noStroke();

    ellipse(5*l, 6*l, 2*l, 2*l);
    ellipse(9*l, 6*l, 2*l, 2*l);

    //Cejas
    noFill();
    stroke(210, 213, 97);
    bezier(4*l, 5*l, 5*l, 4*l, 5*l, 4*l, 6*l, 5*l);
    bezier(8*l, 5*l, 9*l, 4*l, 9*l, 4*l, 10*l, 5*l);

    //Nariz
    fill(218, 219, 184);
    noStroke();

    triangle (6*l, 8*l, 7*l, 6*l, 8*l, 8*l);
    triangle (6*l, 11*l, 8*l, 11*l, 7*l, 12*l);

    //Cicatrices
    fill(155, 33, 33);
    noStroke();

    rect (10*l, 7*l, l, l);
    rect (9*l, 8*l, l, l);

    noFill();
    stroke(255, 102, 0);
    line(9*l, 4*l, 10*l, 3*l);

    //Chamarra
    fill(10, 16, 55);
    noStroke();

    rect (5*l, 10*l, l, l);
    rect (8*l, 10*l, 2*l, l);
    rect (4*l, 11*l, 2*l, 2*l);
    rect (8*l, 11*l, 3*l, 2*l);
    rect (5*l, 13*l, l, 2*l);
    rect (8*l, 13*l, l, 2*l);
    rect (3*l, 13*l, l, l);
    rect (3*l, 14*l, l, l);
    rect (3*l, 12*l, l, l);
    rect (10*l, 13*l, 2*l, l);

    //Camisa
    fill(24, 45, 175);
    noStroke();

    triangle (6*l, 11*l, 7*l, 12*l, 6*l, 12*l);
    triangle (8*l, 11*l, 7*l, 12*l, 8*l, 12*l);
    rect (6*l, 12*l, 2*l, 3*l);

    fill (53, 71, 188);
    noStroke();
    rect (6*l, 12*l, 2*l, l);

    fill (255);
    noStroke();

    rect (5*l, 15*l, 4*l, l);

    //Pantalón
    fill (83, 83, 86);
    noStroke ();

    rect (5*l, 16*l, 4*l, l);
    rect (5*l, 18*l, l, l);
    rect (6*l, 17*l, l, l);
    rect (5*l, 19*l, l, 2*l);
    rect (8*l, 19*l, l, 2*l);
    rect (6*l, 19*l, l, 2*l);
    rect (8*l, 17*l, l, l);
    rect (9*l, 18*l, l, 3*l);

    fill(59, 59, 61);
    noStroke();

    rect (6*l, 18*l, l, l);
    rect (5*l, 17*l, l, l);
    rect (8*l, 18*l, l, l);
    rect (9*l, 17*l, l, l);

    //Botas
    fill(15, 12, 11);
    noStroke();

    rect (4*l, 22*l, 3*l, l);
    rect (8*l, 22*l, 3*l, l);
    rect (5*l, 21*l, 2*l, l);
    rect (8*l, 21*l, 2*l, l);

    //Pistola
    fill(49, 49, 55);
    noStroke();

    rect (12.5*l, 12.5*l, l, l);
    rect (12.5*l, 13.5*l, l, l);
    rect (13.5*l, 12.5*l, l, l);
    rect (14.5*l, 12.5*l, l, l);


    //Manos
    fill(238, 239, 200);
    noStroke();

    rect (3*l, 14*l, l, l);
    rect (12*l, 13*l, l, l);

    popMatrix();
  }

  void movimiento(int c_) {
    switch(c_) {
    case 0:
      this.y -= this.v;
      break;
    case 1:
      this.x += this.v;
      break;
    case 2:
      this.x -= this.v;
      break;
    case 3:
      this.y += this.v;
      break;
    }
  }

  void limites() {
    this.x = constrain(this.x, 0+this.l/2, 1150-this.l);
    this.y = constrain(this.y, 0+this.l/2, 600-this.l);
    
  }
}

class Lexa {
  //atributos
  float x, y;
  float v;
  float l;

  //constructor
  Lexa(int x_, int y_) {
    x = x_;
    y = y_;
    this.v = 5;
    this.l = 8;
  }

  //metodos
  void display() {
    pushMatrix();

    //Cabello
    fill (111, 77, 25);
    noStroke ();

    translate(x, y);

    rect (5.5*l, l, 2*l, l);
    rect (4*l, 1*l, 5*l, l);
    rect (2*l, 2*l, 9*l, l);
    rect (4*l, 3*l, 5*l, l);
    rect (1*l, 3*l, l, 3*l);
    rect (11*l, 3*l, l, 3*l);
    rect (1*l, 7.5*l, l, 2*l);
    rect (11*l, 7.5*l, l, 2*l);
    rect (.5*l, 9.5*l, 2*l, l);
    rect (11*l, 9.5*l, 1.5*l, l);
    rect (1*l, 10.5*l, 4.5*l, l);
    rect (8*l, 10.5*l, 4*l, l);
    rect (1.5*l, 11.5*l, 2*l, l);
    rect (9.5*l, 11.5*l, 2*l, l);
    rect (2.5*l, 12.5*l, l, l);
    rect (9.5*l, 12.5*l, l, l);

    //Cara
    fill (223, 193, 141);
    noStroke ();

    rect (2*l, 4*l, 9*l, 6.5*l);
    rect (2*l, 3*l, 2*l, l);
    rect (9*l, 3*l, 2*l, l);
    rect (1*l, 6*l, l, 1.5*l);
    rect (11*l, 6*l, l, 1.5*l);

    //Ojos
    fill (0, 0, 0);
    noStroke();

    ellipse(4*l, 6*l, 2*l, 2*l);
    ellipse(9*l, 6*l, 2*l, 2*l);

    //Simbolo
    fill (222, 210, 38);
    noStroke ();

    ellipse(6.5*l, 5*l, l, l);

    //Cejas
    noFill();
    stroke(164, 160, 106);

    bezier(3*l, 5*l, 4*l, 4*l, 4*l, 4*l, 5*l, 5*l);
    bezier(8*l, 5*l, 9*l, 4*l, 9*l, 4*l, 10*l, 5*l);

    //Nariz
    fill(210, 181, 130);
    noStroke();

    triangle (5.5*l, 8*l, 6.5*l, 6.5*l, 7.5*l, 8*l);

    //Cuello
    fill (210, 181, 130);
    noStroke ();

    rect (5*l, 10.5*l, 3*l, l);

    fill(225, 205, 170);
    noStroke();

    rect (5.5*l, 11.5*l, l, l);
    rect (6.5*l, 11.5*l, .5*l, .5*l);
    rect (5*l, 12.5*l, .5*l, l);
    rect (5.5*l, 12.5*l, .5*l, .5*l);

    //Armadura
    fill (180, 179, 177);
    noStroke ();

    rect (7*l, 11.5*l, 1.5*l, l);
    rect (6.5*l, 12*l, l, l);
    rect (6*l, 12.5*l, l, l);
    rect (5.5*l, 13*l, l, l);
    rect (5*l, 13.5*l, l, l);
    rect (4.5*l, 14*l, l, l);
    rect (1*l, 16.5*l, 1.5*l, 1.5*l);
    rect (10.5*l, 16.5*l, 1.5*l, 1.5*l);
    rect (4.5*l, 21*l, 2*l, l);
    rect (8*l, 21*l, 2*l, l);

    //Partes Oscuras
    fill (128, 127, 125);
    noStroke ();

    rect (3.5*l, 11.5*l, 2*l, l);
    rect (8.5*l, 11.5*l, l, l);
    rect (3.5*l, 12.5*l, 1.5*l, l);
    rect (7.5*l, 12.5*l, 2*l, l);
    rect (7*l, 13*l, .5*l, .5*l);

    //Camisa
    fill(0, 0, 0);
    noStroke ();

    rect (2.5*l, 13.5*l, 2*l, l);
    rect (4.5*l, 13.5*l, .5*l, .5*l);
    rect (6*l, 14*l, .5*l, .5*l);
    rect (6.5*l, 13.5*l, 4*l, l);
    rect (5.5*l, 14.5*l, 3*l, l);
    rect (4.5*l, 15*l, l, .5*l);
    rect (4.5*l, 15.5*l, 4*l, 2*l);
    rect (2*l, 14.5*l, 1.5*l, l);
    rect (9.5*l, 14.5*l, 1.5*l, l);
    rect (1.5*l, 15.5*l, 1.5*l, l);
    rect (10*l, 15.5*l, 1.5*l, l);

    //Falda
    fill (62, 62, 62);
    noStroke ();

    rect (4.5*l, 17.5*l, 4*l, 1.5*l);
    rect (4.5*l, 19*l, 2*l, l);

    //Pantalón 
    fill (0, 0, 0);
    noStroke ();

    rect (7*l, 19*l, 2*l, l);
    rect (4.5*l, 20*l, 2*l, l);
    rect (7.5*l, 20*l, 2*l, l);

    //Espada
    fill (129, 129, 129);
    noStroke ();

    rect (l, 17*l, l, l);
    rect (1, 18*l, l, l);
    rect (2*l, 19*l, l, l);
    rect (3*l, 20*l, l, l);
    rect (4*l, 21*l, l, l);

    //Botas
    fill (55, 53, 49);
    noStroke ();

    rect (4*l, 22*l, 2.5*l, l);
    rect (8*l, 22*l, 2.5*l, l);
    rect (3.5*l, 23*l, 3*l, l);
    rect (8*l, 23*l, 3*l, l);


    //Guantes
    rect (.5*l, 18*l, 1.5*l, 1.5*l);
    rect (11*l, 18*l, 1.5*l, 1.5*l);

    popMatrix();
  }

  void movimiento(int l_) {
    switch(l_) {
    case 0:

      this.y -= this.v;

      break;

    case 1:

      this.x += this.v;

      break;

    case 2:

      this.x -= this.v;

      break;

    case 3:

      this.y += this.v;

      break;
    }
  }

  void limites() {
    this.x = constrain(this.x, 0+this.l/2, 1150-this.l);
    this.y = constrain(this.y, 0+this.l/2, 600-this.l);
  }
}

class Canary {
  //atributos
  float x, y;
  float v;
  float l;

  //constructor
  Canary(int x_, int y_) {
    x = x_;
    y = y_;
    this.v = 5;
    this.l = 5.5;
  }
  //metodos
  void display() {
    pushMatrix();

    //Cabello
    fill(216, 218, 55);
    noStroke();

    translate(x, y);

    rect (6*l, 1*l, 6*l, l);
    rect (12*l, 1.5*l, l, .5*l);
    rect (13*l, 1*l, 5*l, l);
    rect (3*l, 2*l, 16*l, 2*l);
    rect (2*l, 3*l, l, l);
    rect (19*l, 3*l, l, l);
    rect (1*l, 4*l, 9.5*l, l);
    rect (12.5*l, 4*l, 8*l, l);
    rect (1*l, 5*l, 8*l, l);
    rect (15*l, 5*l, 5*l, l);
    rect (.5*l, 6*l, 5*l, l);
    rect (17*l, 6*l, 3*l, l);
    rect (.5*l, 7*l, 3*l, 3*l);
    rect (17*l, 7*l, 2.8*l, l);
    rect (17*l, 8*l, 3*l, l);
    rect (17*l, 9*l, 3.5*l, l);
    rect (1*l, 10*l, 3*l, l);
    rect (17.5*l, 10*l, 3*l, l);
    rect (1*l, 11*l, 3*l, l);
    rect (17.5*l, 11*l, 3*l, l);
    rect (1*l, 12*l, 3*l, l);
    rect (17.5*l, 12*l, 3*l, l);
    rect (1*l, 13*l, 3*l, l);
    rect (17*l, 13*l, 3*l, l);
    rect (1*l, 14*l, 3*l, l);
    rect (16*l, 14*l, 4*l, l);
    rect (.5*l, 15*l, 8.5*l, l);
    rect (12.5*l, 15*l, 8*l, l);
    rect (.5*l, 16*l, 6.5*l, l);
    rect (15*l, 16*l, 5*l, l);
    rect (1*l, 17*l, 5*l, l);
    rect (16*l, 17*l, 5*l, l);
    rect (2*l, 18*l, 3*l, l);
    rect (17*l, 18*l, 3.5*l, l);

    //Cara
    fill(232, 223, 167);
    noStroke();

    rect (4*l, 7*l, 13*l, 7*l);
    rect (3.5*l, 7*l, .5*l, 3*l);
    rect (17*l, 10*l, .5*l, 3*l);
    rect (10.5*l, 4*l, 2*l, l);
    rect (9*l, 5*l, 6*l, l);
    rect (5.5*l, 6*l, 11.5*l, l);
    rect (4*l, 14*l, 12*l, l);

    //Ojos
    fill (0, 0, 0);
    noStroke ();

    ellipse(7*l, 9*l, 3*l, 3*l);
    ellipse(14*l, 9*l, 3*l, 3*l);

    //Cejas
    noFill ();
    stroke (190, 177, 96);

    bezier(5*l, 8*l, 6*l, 6*l, 8*l, 6*l, 9*l, 8*l);
    bezier(12*l, 8*l, 13*l, 6*l, 15*l, 6*l, 16*l, 8*l);

    //Nariz
    fill (191, 181, 117);
    noStroke ();

    triangle (9.5*l, 12*l, 10.5*l, 10*l, 11.5*l, 12*l);

    //Camisa
    fill (228, 227, 222);
    noStroke ();

    rect (9*l, 15*l, 3.5*l, l);
    rect (7*l, 16*l, 1.5*l, l);
    rect (13*l, 16*l, 2*l, l);
    rect (7.5*l, 17*l, 1.5*l, l);
    rect (9*l, 17*l, 3.5*l, l);
    rect (12.5*l, 17*l, 2*l, l);
    rect (8*l, 18*l, 5.5*l, 4*l);

    //Chamarra
    fill (239, 238, 235);
    noStroke ();

    rect (6*l, 17*l, 1.5*l, l);
    rect (14.5*l, 17*l, 1.5*l, l);
    rect (5*l, 18*l, 3*l, l);
    rect (13.5*l, 18*l, 4*l, l);
    rect (7*l, 19*l, l, 2*l);
    rect (13.5*l, 19*l, l, 2*l);
    rect (4.5*l, 19*l, 1.5*l, l);
    rect (15.5*l, 19*l, 1.5*l, l);
    rect (4*l, 20*l, 1.5*l, l);
    rect (16*l, 20*l, 1.5*l, l);
    rect (3.5*l, 21*l, 1.5*l, l);
    rect (16.5*l, 21*l, 1.5*l, l);
    rect (3*l, 22*l, 1.5*l, l);
    rect (17*l, 22*l, 1.5*l, l);

    //Partes Oscuras
    fill (203, 202, 198);
    noStroke ();

    rect (8.5*l, 16*l, 4.5*l, l);
    rect (9*l, 16.5*l, 3.5*l, l);

    //Cinto
    fill (203, 203, 200);
    noStroke ();

    rect (6.5*l, 22*l, l, l);
    rect (14*l, 22*l, l, l);

    fill (225, 225, 223);
    noStroke ();

    rect (7.5*l, 22*l, 6.5*l, l);
    //Pantalón
    fill (228, 227, 222);
    noStroke ();

    rect (7*l, 23*l, 7.5*l, l);
    rect (6.5*l, 24*l, 8.5*l, .5*l);
    rect (6*l, 24.5*l, 4*l, l);
    rect (11.5*l, 24.5*l, 4*l, l);
    rect (5.5*l, 25.5*l, 4*l, l);
    rect (12*l, 25.5*l, 4*l, l);
    rect (5.5*l, 26*l, 3*l, 2*l);
    rect (13*l, 26*l, 3*l, 2*l);

    //Bastón
    fill (137, 136, 133);
    noStroke ();

    rect (l, 20*l, l, l);
    rect (1*l, 21*l, l, l);
    rect (2*l, 22*l, l, l);
    rect (3*l, 23*l, l, l);
    rect (4*l, 24*l, l, l);
    rect (5*l, 25*l, l, l);
    rect (6*l, 26*l, l, l);

    //Guantes
    fill (225, 225, 223);
    noStroke ();

    rect (2.8*l, 23*l, 1.8*l, 1.5*l);
    rect (16.8*l, 23*l, 1.9*l, 1.5*l);

    //Botas
    fill (239, 238, 235);
    noStroke ();

    rect (5*l, 28*l, 4*l, .5*l);
    rect (12.5*l, 28*l, 4*l, .5*l);

    fill (203, 203, 200);
    noStroke ();

    rect (5*l, 28.5*l, 4*l, .5*l);
    rect (12.5*l, 28.5*l, 4*l, .5*l);

    fill (228, 227, 222);
    noStroke ();

    rect (5.5*l, 29*l, 3*l, .5*l);
    rect (13*l, 29*l, 3*l, .5*l);
    rect (4.5*l, 29.5*l, 4*l, l);
    rect (13*l, 29.5*l, 4*l, l);
    rect (3.5*l, 30.5*l, 5*l, .5*l);
    rect (13*l, 30.5*l, 5*l, .5*l);
    rect (3.5*l, 31*l, 5*l, l);
    rect (13*l, 31*l, 5*l, l);

    popMatrix();
  }
  void movimiento(int c_) {
    switch(c_) {
    case 0:

      this.y -= this.v;

      break;

    case 1:

      this.x += this.v;

      break;

    case 2:

      this.x -= this.v;

      break;

    case 3:

      this.y += this.v;

      break;
    }
  }

  void limites() {
    this.x = constrain(this.x, 0+this.l/2, 1150-this.l);
    this.y = constrain(this.y, 0+this.l/2, 600-this.l);
  }
}

class Wynonna {
  //atributos
  float x, y;
  float v;
  float l;

  //constructor
  Wynonna(int x_, int y_) {
    x = x_;
    y = y_;
    this.v = 5;
    this.l = 8.5;
  }

  //metodos
  void display() {
    pushMatrix();

    //Cabello
    fill(75, 55, 15);
    noStroke();

    translate(x, y);

    rect (3.5*l, 1*l, 8.5*l, l);
    rect (2.5*l, 2*l, 11*l, l);
    rect (1*l, 3*l, 4.5*l, l);
    rect (10*l, 3*l, 3*l, l);
    rect (1*l, 4*l, 3*l, l);
    rect (11*l, 4*l, 2*l, l);
    rect (1*l, 5*l, 2.5*l, l);
    rect (11.5*l, 5*l, 2*l, l);
    rect (1.5*l, 6*l, 2*l, l);
    rect (12*l, 6*l, 2*l, l);
    rect (1*l, 7*l, 2*l, l);
    rect (12*l, 7*l, 2*l, l);
    rect (1*l, 8*l, 2*l, l);
    rect (12*l, 8*l, 1.5*l, l);
    rect (1*l, 9*l, 2.5*l, l);
    rect (10.5*l, 9*l, 2.5*l, l);
    rect (.5*l, 10*l, 4*l, l);
    rect (10*l, 10*l, 3*l, l);
    rect (.5*l, 10.5*l, 3*l, l);
    rect (11*l, 10.5*l, 2.5*l, l);

    //Cara
    fill(226, 227, 172);
    noStroke();

    rect (4*l, 4*l, 7*l, 6*l);
    rect (5*l, 3*l, 5*l, l);
    rect (3.5*l, 5*l, .5*l, 2*l);
    rect (3*l, 7*l, l, 2*l);
    rect (3.5*l, 9*l, .5*l, l);
    rect (10.5*l, 4*l, l, 2*l);
    rect (11*l, 6*l, l, 3*l);
    triangle (6*l, 10*l, 8.5*l, 10*l, 7.2*l, 11*l);

    //Ojos
    fill(0, 0, 0);
    noStroke();

    ellipse(5*l, 6*l, 2*l, 2*l);
    ellipse(10*l, 6*l, 2*l, 2*l);

    //Cejas
    noFill();
    stroke(0, 0, 0);

    bezier(4*l, 5*l, 5*l, 4*l, 5*l, 4*l, 6*l, 5*l);
    bezier(9*l, 5*l, 10*l, 4*l, 10*l, 4*l, 11*l, 5*l);

    //Nariz
    fill(205, 205, 157);
    noStroke();

    triangle (6.5*l, 8*l, 7.5*l, 6*l, 8.5*l, 8*l);

    //Chamarra
    fill(27, 27, 28);
    noStroke();

    rect (4.5*l, 10*l, 1.5*l, l);
    triangle(6*l, 10*l, 7*l, 11*l, 6*l, 11*l);
    triangle(7*l, 11*l, 8.5*l, 10*l, 8.5*l, 11*l);
    rect (8.5*l, 10*l, 1.5*l, l);
    rect (3.5*l, 11*l, l, l);
    rect (10*l, 11*l, l, l);
    rect (3.5*l, 12*l, l, l);
    rect (5*l, 12*l, 2.6*l, 2*l);
    rect (10*l, 12*l, l, l);
    rect (7.2*l, 12*l, 2.3*l, 2*l);
    triangle(4.5*l, 11*l, 7.2*l, 12*l, 4.5*l, 12*l);
    triangle(.2*l, 12*l, 10*l, 11*l, 10*l, 12*l);
    rect (5*l, 14*l, 4.5*l, l);
    rect (3.2*l, 13*l, l, 2*l);
    rect (10.3*l, 13*l, l, 2*l);


    fill(138, 138, 138);
    noStroke();

    triangle(5.5*l, 11*l, 9*l, 11*l, 7.2*l, 12*l);
    triangle(4.5*l, 11*l, 5.5*l, 11*l, 7.2*l, 12*l);
    triangle(9*l, 11*l, 10*l, 11*l, 7.2*l, 12*l);
    rect (7.1*l, 12*l, .2*l, 2*l);

    //Pantalón
    fill(14, 14, 78);
    noStroke();

    rect (5*l, 15*l, 4.5*l, l);
    rect (5*l, 16*l, 2*l, l);
    rect (7.7*l, 16*l, 1.8*l, l);
    rect (4.8*l, 17*l, 1.8*l, l);
    rect (8*l, 17*l, 1.7*l, l);
    rect (4.5*l, 18*l, 1.8*l, l);
    rect (8.2*l, 18*l, 1.7*l, l);

    //Botas
    fill(0, 0, 0);
    noStroke();

    rect (4.5*l, 19*l, 1.8*l, l);
    rect (8.2*l, 19*l, 1.7*l, l);
    rect (4*l, 20*l, 2.3*l, l);
    rect (8.2*l, 20*l, 2.3*l, l);

    //Pistola
    fill(142, 142, 144);
    noStroke();

    rect (2.7*l, 15.5*l, l, l);
    rect (2.7*l, 16.5*l, .5*l, 1.5*l);

    //Manos
    fill(226, 227, 172);
    noStroke();

    rect (3*l, 15*l, l, l);
    rect (10.5*l, 15*l, l, l);

    popMatrix();
  }

  void movimiento(int w_) {
    switch(w_) {
    case 0:

      this.y -= this.v;

      break;

    case 1:

      this.x += this.v;

      break;

    case 2:

      this.x -= this.v;

      break;

    case 3:

      this.y += this.v;

      break;
    }
  }

  void limites () {
    this.x = constrain(this.x, 0+this.l/2, 1150-this.l);
    this.y = constrain(this.y, 0+this.l/2, 600-this.l);
  }
}

class Allison{
   //atributos
    float x, y;
    float v;
    float l;

  //constructor
  Allison(int x_, int y_) {
    x = x_;
    y = y_;
    this.v = 5;
    this.l = 7;

}

 //metodos
  void display() {
    pushMatrix();

    //Cabello
   fill(134,115,50);
   noStroke();

    translate(x, y);
    
  rect(5*l,l,10*l,l);
   rect(3*l,1*l,13*l,l);
   rect(2*l,2*l,15*l,l);
   rect(2*l,3*l,6*l,l);
   rect(14*l,3*l,3*l,l);
   rect(3*l,4*l,3*l,l);
   rect(15*l,4*l,2*l,l);
   rect(3*l,5*l,2*l,l);
   rect(15*l,5*l,2*l,l);
   rect(3*l,6*l,2*l,l);
   rect(15*l,6*l,2*l,l);
   rect(3*l,7*l,2*l,l);
   rect(15*l,7*l,2*l,l);
   rect(2*l,8*l,3*l,l);
   rect(15*l,8*l,2*l,l);
   rect(2*l,9*l,3*l,l);
   rect(15*l,9*l,2*l,l);
   rect(2*l,10*l,3*l,l);
   rect(15*l,10*l,2*l,l);
   rect(2*l,11*l,4*l,l);
   rect(14*l,11*l,3*l,l);
   rect(2*l,12*l,3*l,l);
   rect(15*l,12*l,2*l,l);
   rect(3*l,13*l,2*l,l);
   rect(16*l,13*l,2*l,l);
   
   //Cara
   fill(224,204,138);
   noStroke();
   
   rect(6*l,3*l,8*l,8*l);
   rect(5*l,5*l,l,2*l);
   rect(14*l,4*l,l,7*l);
   rect(5*l,7*l,l,4*l);
   
   //Ojos
  fill (0,0,0);
  noStroke ();
  
  ellipse(7.5*l,6*l,2*l,2*l);
  ellipse(13*l,6*l,2*l,2*l);
  
  //Cejas
  noFill ();
  stroke (190,177,96);
  
  bezier(6*l,6*l,6*l,4*l,9*l,4*l,9*l,6*l);
  bezier(11.5*l,6*l,11.5*l,4*l,14.5*l,4*l,14.5*l,6*l);
  
   //Nariz
  fill (191,181,117);
  noStroke ();
  
  triangle (9*l,10*l,10*l,8*l,11*l,10*l);
  
  //Cuello
  fill(191,181,117);
  noStroke();
  
  rect(9*l,11*l,2*l,1.5*l);
  
  //Camisa
  fill(89,182,227);
  noStroke();
  
  rect(9*l,12.5*l,2*l,3.5*l);
  
  //Chamarra
  fill(35,73,183);
  noStroke();
  rect(7*l,11.5*l,2*l,l);
  rect(11*l,11.5*l,2*l,l);
  rect(6*l,12.5*l,2*l,l);
  rect(12*l,12.5*l,2*l,l);
  rect(5*l,13.5*l,2*l,l);
  rect(12.5*l,13.5*l,2*l,l);
  rect(4*l,14.5*l,2*l,l);
  rect(8*l,14*l,l,l);
  rect(11*l,14.5*l,l,l);
  rect(13.5*l,14.5*l,2*l,l);
  rect(3.5*l,15.5*l,2*l,l);
  rect(8*l,15*l,l,l);
  rect(11*l,15.5*l,l,l); 
  rect(14.5*l,15.5*l,2*l,l);
  rect(8*l,12.5*l,l,1.5*l);
  rect(11*l,12.5*l,l,2*l);
  
  //Pantalón
  rect(8*l,17*l,4*l,l);
  rect(7.5*l,18*l,2*l,l);
  rect(10.5*l,18*l,2*l,l);
  rect(7*l,19*l,2*l,2*l);
  rect(11*l,19*l,2*l,2*l);
  
//Cinturón
  fill(25,54,139);
  noStroke();
  
  rect(7.5*l,16*l,5*l,l);
  
  //Botas
  rect(6.8*l,21*l,2.5*l,.5*l);
  rect(10.8*l,21*l,2.5*l,.5*l);
  
  fill(25,121,139);
  noStroke();
  
  rect(6.5*l,21.5*l,2.8*l,.5*l);
  rect(10.8*l,21.5*l,2.8*l,.5*l);
  rect(6*l,22*l,3.3*l,l);
  rect(10.8*l,22*l,3.3*l,l);
  
    //Cuchillos
  fill(175,175,175);
  noStroke();
  
  rect(3*l,15.5*l,l,l);
  rect(3.5*l,16.5*l,l,l);
  rect(4*l,17.5*l,l,l);
  rect(4.5*l,18.5*l,l,l);
  rect(5*l,19.5*l,l,l);
  
  rect(16*l,15.5*l,l,l);
  rect(15.5*l,16.5*l,l,l);
  rect(15*l,17.5*l,l,l);
  rect(14.5*l,18.5*l,l,l);
  rect(14*l,19.5*l,l,l);
  
  //Guantes
  fill(25,121,139);
  noStroke();
  
  rect(3.7*l,16.5*l,1.5*l,1.5*l);
  rect(14.7*l,16.5*l,1.5*l,1.5*l);
  

  
  popMatrix();
  }
  
   void movimiento(int w_) {
    switch(w_) {
    case 0:

      this.y -= this.v;

      break;

    case 1:

      this.x += this.v;

      break;

    case 2:

      this.x -= this.v;

      break;

    case 3:

      this.y += this.v;

      break;
    }
  }

  void limites () {
    this.x = constrain(this.x, 0+this.l/2, 1150-this.l);
    this.y = constrain(this.y, 0+this.l/2, 600-this.l);
  }
}


Clarke personaje1;
Lexa personaje2;
Canary personaje3;
Wynonna personaje4;
Allison personaje5;

Clarke personaje6;
Lexa personaje7;
Canary personaje8;
Wynonna personaje9;
Allison personaje10;

Clarke personaje11;
Lexa personaje12;
Canary personaje13;
Wynonna personaje14;
Allison personaje15;

Clarke personaje16;
Lexa personaje17;
Canary personaje18;
Wynonna personaje19;
Allison personaje20;

void setup() {
  size (1300, 800);
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("Perverse Instantiation.mp3");
  musica_fondo.setGain(-10);
  musica_fondo.loop();

  //Pantalla de selección
  personaje1 = new Clarke(240, 100);
  personaje2 = new Lexa(585, 100);
  personaje3 = new Canary(930, 100);
  personaje4 = new Wynonna(400, 500);
  personaje5 = new Allison(740,525);

  //Playe 1
  personaje6 = new Clarke(240, 600);
  personaje7 = new Lexa(240, 600);
  personaje8 = new Canary(240, 600);
  personaje9 = new Wynonna(240, 600);
  personaje10 = new Allison(240,600);

  //Player 2
  personaje11 = new Clarke(930, 600);
  personaje12 = new Lexa(930, 600);
  personaje13 = new Canary(930, 600);
  personaje14 = new Wynonna(930, 600);
  personaje15 = new Allison(930,600);

  //PANTALLA WINNER
  personaje16 = new Clarke(930, 450);
  personaje17 = new Lexa(930, 450);
  personaje18 = new Canary(930, 450);
  personaje19 = new Wynonna(930, 450);
  personaje20 = new Allison(930,450);

  //PANTALLA 2

  fuente1 = createFont("Colonna MT", 30);
  fuente2 = createFont("Stencil", 30);
  fuente3 = createFont("Colonna MT", 30);
  fuente4 = createFont("Colonna MT", 30);
  fuente5 = createFont("Colonna MT", 30);
  fuente6 = createFont("Colonna MT", 30);
  fuente7 = createFont("Colonna MT", 30);
  fuente8 = createFont("Colonna MT", 30);
  fuente9 = createFont("Colonna MT", 30);
  fuente10 = createFont("Stencil", 30);
  fuente11 = createFont("Colonna MT", 30);
  fuente12 = createFont("Colonna MT", 30);
  fuente13 = createFont("Colonna MT", 30);
  fuente14 = createFont("Colonna MT", 30);
  fuente15 = createFont("Colonna MT", 30);
  fuente16 = createFont("Colonna MT", 30);
  fuente17 = createFont("Colonna MT", 30);
  fuente18 = createFont("Colonna MT", 30);
  fuente19 = createFont("Colonna MT", 30);
  fuente20 = createFont("Colonna MT", 30);
  fuente21 = createFont("Colonna MT", 30);
  fuente22 = createFont("Colonna MT", 30);
  fuente23 = createFont("Colonna MT", 30);
  fuente24 = createFont("Colonna MT", 30);
}

void draw() {

  switch(pantalla) {
  case 0:
    background(0);
    fill(255);
    textFont(fuente1);
    textSize(108);
    text("LADIES WAR", 360, 150, 650, 700);
    textFont(fuente2);
    fill(255, 0, 0);
    textSize(40);
    text("Ready Player One", 480, 350, 650, 700);
    fill(random(255), random(255), random(255));
    textFont(fuente3);
    textSize(40);
    text("press f to continue", 515, 500, 650, 700);
     
    life1 = 200;
    life2 = 200;
    t=0;

    keyPressed();
    if (key == 'f') {
      pantalla = 1;
    }
    break;

  case 1:
    pantallaselect();
    personaje1.limites();
    personaje1.display();

    personaje2.limites();
    personaje2.display();

    personaje3.limites();
    personaje3.display();

    personaje4.limites();
    personaje4.display();
    
    personaje5.limites();
    personaje5.display();

    break;

  case 2:
    pantallapelea();
    movimiento();
    fill(255, 0, 0);
    stroke(5);
    rect(50, 50, life1*1, 15);
    rect(1000, 50, life2*1, 15);

    if (keyPressed) {
      switch(key) {
      case 'r':
        if ((key == 'r') && t==1) {
          life2 -= 10;
          t=2;
        }

      case 't':
        if ((key == 't') && t==1) {
          life2 -= 15;
          t=2;
        }
      }
    }

    switch(keyCode) {
    case 16:
      if ((keyCode == 16) && t==2) {
        life1 -= 10;
        t=1;
      }

    case 10:
      if ((keyCode == 10) && t==2) {
        life1 -= 15;
        t=1;
      }
    }

    if (life1<=0 || life2<=0) {
      pantalla=3;
    }

    break;
  case 3:
    if (life1<=0) {
      pantallawinner2();
      if(player2==1){
        personaje16.display();
      }
      
      if(player2==2){
        personaje17.display();
      }
      if(player2==3){
        personaje18.display();
      }
      if(player2==4){
        personaje19.display();
      }
      if(player2==5){
        personaje20.display();
      }
      
    } else if (life2<=0) {
      pantallawinner();
      if(player1 == 1){
        personaje16.display();
      }
      if(player1 == 2){
        personaje17.display();
      }
      if(player1 == 3){
        personaje18.display();
      }
      if(player1 == 4){
        personaje19.display();
      }
      if(player1==5){
        personaje20.display();
      }
    }

    keyPressed();
    if (key == 'x') {
      pantalla = 0;
    }
    break;
    
  }
}

void pantallaselect() {
  background(0);
  noFill();
  stroke(255, 0, 0);
  rect(x+190, y+20, 200, 300);
  rect(x+540, y+20, 200, 300);
  rect(x+890, y+20, 200, 300);
  rect(x+360, y+450, 200, 300);
  rect(x+710, y+450, 200, 300);

  fill(random(255), random(255), random(255));
  textFont(fuente4);
  textSize(25);
  text("press k", 250, 330, 100, 100);
  textFont(fuente5);
  textSize(25);
  text("press l", 610, 330, 100, 100);
  textFont(fuente6);
  textSize(25);
  text("press ñ", 960, 330, 100, 100);
  textFont(fuente7);
  textSize(25);
  text("press o", 425, 760, 100, 100);
  textFont(fuente8);
  textSize(25);
  text("press p", 775, 760, 100, 100);
  fill(random(0),random(135),random(255));
  textFont(fuente12);
  textSize(30);
  text("Select your character", 50, 700, 300, 300);

  keyPressed();
  if ((key == 'k') && (t==0)) {
    player1 = 1;
    t=1;
  } else {
    if ((key == 'k') && (t==1) && player1!=1) {
      player2 =1;
      pantalla=2;
    }
  }

  if ((key == 'l') && (t==0)) {
    player1 = 2;
    t=1;
  } else {
    if ((key == 'l') && (t==1) && player1!=2) {
      player2 =2;
      pantalla=2;
    }
  }

  if ((key == 'ñ') && (t==0)) {
    player1 = 3;
    t=1;
  } else {
    if ((key == 'ñ') && (t==1) && player1!=3) {
      player2 =3;
      pantalla=2;
    }
  }
  if ((key == 'o') && (t==0)) {
    player1 = 4;
    t=1;
  } else {
    if ((key == 'o') && (t==1) && player1!=4) {
      player2 =4;
      pantalla=2;
    }
  }
  if ((key == 'p') && (t==0)) {
    player1 = 5;
    t=1;
  } else {
    if ((key == 'p') && (t==1) && player1!=5) {
      player2 =5;
      pantalla=2;
    }
  }
}

void pantallapelea() {
  float l=10;
  background(58, 180, 53);

  dt+=0.04;

  fill(89, 89, 131);
  ellipse(100, 200, sin(dt)*25, cos(dt)*25);
  ellipse(120, 190, sin(dt)*50, cos(dt)*50);
  ellipse(155, 170, sin(dt)*75, cos(dt)*75);
  
  //INSTRUCCIONES DE PELEA jugador 1
  fill(0,0,255);
  noStroke();
  ellipse(330, 40, 30, 30 );
  ellipse(275, 80, 30, 30 );
  ellipse(330, 80, 30, 30 );
  ellipse(380, 80, 30, 30 );
  
    fill(0);
  textFont(fuente13);
  textSize(30);
  text("w", 320, 25, 100, 100);
  textFont(fuente14);
  textSize(30);
  text("a", 265, 65, 100, 100);
  textFont(fuente15);
  textSize(30);
  text("s", 325, 65, 100, 100);
  textFont(fuente16);
  textSize(30);
  text("d", 370, 65, 100, 100);
  
  fill(135,23,124);
  noStroke();
  ellipse(430, 40, 30, 30 );
  
  fill(255,0,0);
  ellipse(470, 40, 30, 30 );
  
  fill(0);
  textFont(fuente17);
  textSize(30);
  text("r", 425, 25, 100, 100);
  textFont(fuente18);
  textSize(30);
  text("t", 465, 25, 100, 100);
  
  //INSTRUCCIONES DE PELEA Jugador 2
    fill(0,0,255);
  noStroke();
  ellipse(730, 40, 30, 30 );
  ellipse(675, 80, 30, 30 );
  ellipse(730, 80, 30, 30 );
  ellipse(780, 80, 30, 30 );
  
  fill(0);
  textFont(fuente19);
  textSize(30);
  text("^", 725, 30, 100, 100);
  textFont(fuente20);
  textSize(30);
  text("<", 665, 65, 100, 100);
  textFont(fuente21);
  textSize(15);
  text("down", 715, 68, 100, 100);
  textFont(fuente22);
  textSize(30);
  text(">", 770, 65, 100, 100);
  
  fill(135,23,124);
  noStroke();
  ellipse(870, 40, 30, 30 );
  
  fill(255,0,0);
  ellipse(830, 40, 30, 30 );
  
  fill(0);
  textFont(fuente23);
  textSize(15);
  text("enter", 815, 30, 100, 100);
  textFont(fuente24);
  textSize(15);
  text("shift", 860, 30, 100, 100);



  fill(209, 189, 122);
  noStroke();
  rect(x, y+66*l, 130*l, 14*l);
  fill(160, 143, 87);
  noStroke();
  rect(x+19*l, y+70*l, 25*l, 4*l);
  rect(x+4*l, y+74*l, 15*l, 3*l);
  rect(x, y+66*l, 19*l, 4*l);
  rect(x, y+77*l, 4*l, 3*l);
  rect(x+19*l, y+77*l, 5*l, 2*l);
  rect(x+67*l, y+74*l, 24*l, 4*l);
  rect(x+96*l, y+69*l, 13*l, 5*l);
  rect(x, y+72*l, 4*l, 2*l);
  rect(x+44*l, y+74*l, 10*l, 3*l);
  rect(x+54*l, y+71*l, 13*l, 3*l);
  rect(x+67*l, y+66*l, 13*l, 5*l);
  rect(x+46*l, y+67*l, 10*l, 3*l);
  rect(x+115*l, y+66*l, 10*l, 3*l);
  rect(x+110*l, y+77*l, 10*l, 3*l);
  rect(x+86*l, y+69*l, 6*l, 3*l);

  //Bosque
  fill(0, 0, 0);
  noStroke();

  //Arbol 1
  rect (x+6.5*l, y+62*l, 2*l, 4*l);
  rect (x, y+61*l, 16*l, 2*l);
  rect (x+1*l, y+59*l, 14*l, 2*l);
  rect (x+2*l, y+57*l, 12*l, 2*l);
  rect (x+3*l, y+55*l, 10*l, 2*l);
  rect (x+4*l, y+53*l, 8*l, 2*l);
  rect (x+5*l, y+51*l, 6*l, 2*l);
  rect (x+6*l, y+49*l, 4*l, 2*l);
  rect (x+7*l, y+47*l, 2*l, 2*l);
  rect (x+7.5*l, y+46*l, l, l);

  //Arbol 2
  rect (x+35*l, y+35*l, l, 31*l);
  rect (x+33*l, y+36*l, l, l);
  rect (x+34*l, y+37*l, l, l);
  rect (x+32*l, y+38*l, l, 2*l);
  rect (x+33*l, y+39*l, l, 2*l);
  rect (x+34*l, y+40*l, l, 2*l);
  rect (x+37*l, y+37*l, l, l);
  rect (x+36*l, y+38*l, l, l);
  rect (x+38*l, y+39*l, l, 2*l);
  rect (x+37*l, y+40*l, l, 2*l);
  rect (x+36*l, y+41*l, l, 2*l);
  rect (x+29*l, y+41*l, l, 3*l);
  rect (x+30*l, y+42*l, l, 3*l);
  rect (x+31*l, y+43*l, l, 3*l);
  rect (x+32*l, y+44*l, l, 3*l);
  rect (x+33*l, y+45*l, l, 3*l);
  rect (x+34*l, y+46*l, l, 3*l);
  rect (x+41*l, y+42*l, l, 3*l);
  rect (x+40*l, y+43*l, l, 3*l);
  rect (x+39*l, y+44*l, l, 4*l);
  rect (x+38*l, y+45*l, l, 4*l);
  rect (x+37*l, y+46*l, l, 4*l);
  rect (x+36*l, y+47*l, l, 4*l);
  rect (x+35*l, y+47*l, -3*l, l);
  rect (x+32*l, y+53*l, 3*l, l);
  rect (x+27*l, y+47*l, l, 2*l);
  rect (x+28*l, y+48*l, 2*l, 3*l);
  rect (x+30*l, y+50*l, 3*l, l);
  rect (x+29*l, y+51*l, 4*l, l);
  rect (x+32*l, y+52*l, 3*l, l);

  //Arbol 3
  triangle(x+70*l, y+39*l, x+75*l, y+35*l, x+80*l, y+39*l);
  triangle(x+69*l, y+41*l, x+75*l, y+37*l, x+81*l, y+41*l);
  triangle(x+68*l, y+43*l, x+75*l, y+39*l, x+82*l, y+43*l);
  triangle(x+67*l, y+45*l, x+75*l, y+41*l, x+83*l, y+45*l);
  triangle(x+66*l, y+47*l, x+75*l, y+43*l, x+84*l, y+47*l);
  triangle(x+65*l, y+49*l, x+75*l, y+45*l, x+85*l, y+49*l);
  triangle(x+64*l, y+51*l, x+75*l, y+47*l, x+86*l, y+51*l);
  triangle(x+63*l, y+53*l, x+75*l, y+49*l, x+87*l, y+53*l);
  triangle(x+62*l, y+55*l, x+75*l, y+51*l, x+88*l, y+55*l);
  triangle(x+61*l, y+57*l, x+75*l, y+53*l, x+89*l, y+57*l);
  triangle(x+60*l, y+59*l, x+75*l, y+55*l, x+90*l, y+59*l);
  rect(x+73*l, y+59*l, 3*l, 7*l);


  //Arbol 4
  rect (x+100*l, y+64*l, l, 2*l);
  rect (x+95*l, y+63*l, 12*l, l);
  rect (x+96*l, y+62*l, 10*l, l);
  rect (x+97*l, y+61*l, 8*l, l);
  rect (x+98*l, y+60*l, 6*l, l);
  rect (x+99*l, y+59*l, 4*l, l);
  rect (x+100*l, y+58*l, 2*l, l);
  rect (x+100.5*l, y+57*l, l, l);

  //Arbol 5
  rect (x+35*l, y+35*l, l, 31*l);
  rect (x+33*l, y+36*l, l, l);
  rect (x+34*l, y+37*l, l, l);
  rect (x+32*l, y+38*l, l, 2*l);
  rect (x+33*l, y+39*l, l, 2*l);
  rect (x+34*l, y+40*l, l, 2*l);
  rect (x+37*l, y+37*l, l, l);
  rect (x+36*l, y+38*l, l, l);
  rect (x+38*l, y+39*l, l, 2*l);
  rect (x+38*l, y+40*l, l, 2*l);
  rect (x+36*l, y+41*l, l, 2*l);
  rect (x+29*l, y+41*l, l, 3*l);
  rect (x+30*l, y+42*l, l, 3*l);
  rect (x+31*l, y+43*l, l, 3*l);
  rect (x+32*l, y+44*l, l, 3*l);
  rect (x+33*l, y+45*l, l, 3*l);
  rect (x+34*l, y+46*l, l, 3*l);
  rect (x+41*l, y+42*l, l, 3*l);
  rect (x+40*l, y+43*l, l, 3*l);
  rect (x+39*l, y+44*l, l, 4*l);
  rect (x+38*l, y+45*l, l, 4*l);
  rect (x+37*l, y+46*l, l, 4*l);
  rect (x+36*l, y+47*l, l, 4*l);
  rect (x+35*l, y+47*l, -3*l, l);
  rect (x+32*l, y+53*l, 3*l, l);
  rect (x+27*l, y+47*l, l, 2*l);
  rect (x+28*l, y+48*l, 2*l, 3*l);
  rect (x+30*l, y+50*l, 3*l, l);
  rect (x+29*l, y+51*l, 4*l, l);
  rect (x+32*l, y+52*l, 3*l, l);


  //Quien es quien

  if (player1 == 1) {
    personaje6.display();
  }

  if (player1 == 2) {
    personaje7.display();
  }

  if (player1 == 3) {
    personaje8.display();
  }

  if (player1 == 4) {
    personaje9.display();
  }

  if(player1 == 5){
   personaje10.display();
   }

  if (player2 == 1) {
    personaje11.display();
  }
  if (player2 == 2) {
    personaje12.display();
  }
  if (player2 == 3) {
    personaje13.display();
  }
  if (player2 == 4) {
    personaje14.display();
  }
  if(player2 == 5){
   personaje15.display();
   }
}

void movimiento() {
  pushMatrix();
  if (keyPressed) {
    switch(key) {
    case 'w':
      personaje6.movimiento(0);
      personaje6.limites();
      personaje7.movimiento(0);
      personaje7.limites();
      personaje8.movimiento(0);
      personaje8.limites();
      personaje9.movimiento(0);
      personaje9.limites();
      personaje10.movimiento(0);
      personaje10.limites();
      break;
    case 'a':
      personaje6.movimiento(2);
      personaje6.limites();
      personaje7.movimiento(2);
      personaje7.limites();
      personaje8.movimiento(2);
      personaje8.limites();
      personaje9.movimiento(2);
      personaje9.limites();
      personaje10.movimiento(2);
      personaje10.limites();
      break;
    case 's':
      personaje6.movimiento(3);
      personaje6.limites();
      personaje7.movimiento(3);
      personaje7.limites();
      personaje8.movimiento(3);
      personaje8.limites();
      personaje9.movimiento(3);
      personaje9.limites();
      personaje10.movimiento(3);
      personaje10.limites();
      break;
    case 'd':
      personaje6.movimiento(1);
      personaje6.limites();
      personaje7.movimiento(1);
      personaje7.limites();
      personaje8.movimiento(1);
      personaje8.limites();
      personaje9.movimiento(1);
      personaje9.limites();
      personaje10.movimiento(1);
      personaje10.limites();
      break;
    }
    switch(keyCode) {
    case 37: //izquierda
      personaje11.movimiento(2);
      personaje11.limites();
      personaje12.movimiento(2);
      personaje12.limites();
      personaje13.movimiento(2);
      personaje13.limites();
      personaje14.movimiento(2);
      personaje14.limites();
      personaje15.movimiento(2);
      personaje15.limites();

      break;

    case 38: //arriba
      personaje11.movimiento(0);
      personaje11.limites();
      personaje12.movimiento(0);
      personaje12.limites();
      personaje13.movimiento(0);
      personaje13.limites();
      personaje14.movimiento(0);
      personaje14.limites();
      personaje15.movimiento(0);
      personaje15.limites();
      break;

    case 39: //derecha
      personaje11.movimiento(1);
      personaje11.limites();
      personaje12.movimiento(1);
      personaje12.limites();
      personaje13.movimiento(1);
      personaje13.limites();
      personaje14.movimiento(1);
      personaje14.limites();
      personaje15.movimiento(1);
      personaje15.limites();

      break;

    case 40: //abajo
      personaje11.movimiento(3);
      personaje11.limites();
      personaje12.movimiento(3);
      personaje12.limites();
      personaje13.movimiento(3);
      personaje13.limites();
      personaje14.movimiento(3);
      personaje14.limites();
      personaje15.movimiento(3);
      personaje15.limites();

      break;
    }
  }


  popMatrix();
}

void pantallawinner() {
  background(0);
  fill(255);
  textFont(fuente9);
  textSize(200);
  text("WINNER", 50, 50, 800, 700);
  fill(random(255), random(255), random(255));
  textFont(fuente11);
  textSize(30);
  text("press x to continue", 50, 750, 500, 500);
  fill(255, 0, 0);
  textFont(fuente10);
  textSize(70);
  text("Player One", 250, 250, 800, 700);

  fill(180);
  stroke(255,255,0);
  rect(x+890, y+400, 200, 300);
}

void pantallawinner2() {
  background(0);
  fill(255);
  textFont(fuente9);
  textSize(200);
  text("WINNER", 50, 50, 800, 700);
  fill(random(255), random(255), random(255));
  textFont(fuente11);
  textSize(30);
  text("press x to continue", 50, 750, 500, 500);
  fill(255, 0, 0);
  textFont(fuente10);
  textSize(70);
  text("Player Two", 250, 250, 800, 700);

  noFill();
  stroke(255, 0, 255);
  rect(x+890, y+400, 200, 300);
}
