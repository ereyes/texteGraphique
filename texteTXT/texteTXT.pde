PFont police;
int x = 10;
float y = 10;
int valeur;


void setup() {
  size (800,600);
  smooth();
  background(0);
  police = loadFont("ArialNarrow-30.vlw");
  frameRate(10);
}

void draw(float degres) {
  textFont(police, 10);
  
  fill(0,100);
  rect(0,0,width,height);
  
  fill(255);
  translate(width/2, height/2);
  
  String lignes[] = loadStrings("stein.txt");
  
  for(int i = 0; i < lignes.length; i++) {
    rotate(PI/degres);
    fill(255);
    text(lignes[i], x, y+30*i);
  }
  
  // Animation sur l'axe Y
  y -= 10;
}

