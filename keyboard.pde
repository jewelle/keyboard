/*
KEYBOARD GUI
ERICA JEWELL
9-12-2018

Row 1: Q  W  E  R  T  Y  U  I  O  P  DEL
       0  1  2  3  4  5  6  7  8  9  10 - row1X/row1Name index
       0  1  2  3  4  5  6  7  8  9  10 - boolOver index
Row 2: A  S  D  F  G  H  J  K  L  ENTER
       0  1  2  3  4  5  6  7  8  9  - row2X/row2Name index
       11 12 13 14 15 16 17 18 19 20 - boolOver index
Row 3: Z  X  C  V  B  N  M 
       0  1  2  3  4  5  6 - row3X/row3Name index
       21 22 23 24 25 26 27 - boolOver index
*/

PFont myFont;
int fontSize = 25;
color textcolor = color(49, 102, 18);
color keycolor = color(88, 229, 57);
int keyboardheight, keyboardwidth, rowheight, margin; 
boolean [] boolOver = new boolean[28];
int [] row1X = new int[11]; // x values for row 1
int [] row2X = new int[10]; // x values for row 2
int [] row3X = new int[7]; // x values for row 3
String [] row1Name = { "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "DEL" };
String [] row2Name = { "A", "S", "D","F", "G", "H", "J", "K", "L", "ENTER" };
String [] row3Name = { "Z", "X", "C", "V", "B", "N", "M" };
int row1Y, row2Y, row3Y;
int row1Wide, DELWide, row2Wide, ENTERWide, row3Wide;
String name = "";

void setup(){
  for (int i = 0; i < boolOver.length; i++){
    boolOver[i] = false;
  }
  myFont = createFont("Effra", fontSize);
  textFont(myFont);
  textSize(fontSize);
  textAlign(CENTER, CENTER);
  fullScreen();
  defineKeyboard();
  noStroke();
}

void draw(){ 
  update(mouseX, mouseY);
  background(keycolor);
  drawKeyboard();
  if (name.length() > 0){
    text(name, 0, 0, width, 2*(height/3));
  }
}

void defineKeyboard(){
  margin = 10;
  keyboardheight = height/2;
  keyboardwidth = width - (margin*2);
  rowheight = (keyboardheight-margin*5)/3;
  row1Y = keyboardheight+margin;
  row2Y = row1Y + rowheight + margin;
  row3Y = row2Y + rowheight + margin;
  row1Wide = ((keyboardwidth-(margin*2)) / 12) - margin;
  DELWide = (row1Wide*2) + (margin*2);
  row2Wide = ((keyboardwidth-(margin*2)) / 11) - margin;
  ENTERWide = (row1Wide*2) + (margin*2);
  row3Wide = keyboardwidth / 8;
  row1X[0] = margin*2;
  for (int i = 1; i < row1X.length; i++){
    row1X[i] = row1Wide + row1X[i-1] + margin;
  }
  row2X[0] = margin*3;
  for (int i = 1; i < row2X.length; i++){
    row2X[i] = row2Wide + row2X[i-1] + margin;
  }
  row3X[0] = margin*6;
  for (int i = 1; i < row3X.length; i++){
    row3X[i] = row3Wide + row3X[i-1] + margin;
  }
}

void drawKeyboard(){
  fill(255);
  rect(margin, keyboardheight, keyboardwidth, keyboardheight-margin, 10);
  for (int i = 0; i < row1X.length; i++){
    if (i == 10){ // delete key
      fill(keycolor);
      rect(row1X[i], row1Y, DELWide, rowheight, 10);
      fill(textcolor);
      text(row1Name[i], row1X[i]+(DELWide/2), row1Y+(rowheight/2));
    }
    else {
      fill(keycolor);
      rect(row1X[i], row1Y, row1Wide, rowheight, 10);
      fill(textcolor);
      text(row1Name[i], row1X[i]+(row1Wide/2), row1Y+(rowheight/2));
    }
  }
  for (int i = 0; i < row2X.length; i++){
    if (i == 9){ // enter key
      fill(keycolor);
      rect(row2X[i], row2Y, ENTERWide, rowheight, 10);
      fill(textcolor);
      text(row2Name[i], row2X[i]+(ENTERWide/2), row2Y+(rowheight/2));
    }
    else {
      fill(keycolor);
      rect(row2X[i], row2Y, row2Wide, rowheight, 10);
      fill(textcolor);
      text(row2Name[i], row2X[i]+(row2Wide/2), row2Y+(rowheight/2));
    }
  }
  for (int i = 0; i < row3X.length; i++){
    fill(keycolor);
    rect(row3X[i], row3Y, row3Wide, rowheight, 10);
    fill(textcolor);
    text(row3Name[i], row3X[i]+(row3Wide/2), row3Y+(rowheight/2));
  }
}

void update(int x, int y){
  if (overQ(row1X[0], row1Y, row1Wide, rowheight)){
    boolOver[0] = true;
  }
  else{
    boolOver[0] = false;
  }
  if (overW(row1X[1], row1Y, row1Wide, rowheight)){
    boolOver[1] = true;
  }
  else{
    boolOver[1] = false;
  }
  if (overE(row1X[2], row1Y, row1Wide, rowheight)){
    boolOver[2] = true;
  }
  else{
    boolOver[2] = false;
  }
  if (overR(row1X[3], row1Y, row1Wide, rowheight)){
    boolOver[3] = true;
  }
  else{
    boolOver[3] = false;
  }  
  if (overT(row1X[4], row1Y, row1Wide, rowheight)){
    boolOver[4] = true;
  }
  else{
    boolOver[4] = false;
  }
  if (overY(row1X[5], row1Y, row1Wide, rowheight)){
    boolOver[5] = true;
  }
  else{
    boolOver[5] = false;
  }
  if (overU(row1X[6], row1Y, row1Wide, rowheight)){
    boolOver[6] = true;
  }
  else{
    boolOver[6] = false;
  }
  if (overI(row1X[7], row1Y, row1Wide, rowheight)){
    boolOver[7] = true;
  }
  else{
    boolOver[7] = false;
  }
  if (overO(row1X[8], row1Y, row1Wide, rowheight)){
    boolOver[8] = true;
  }
  else{
    boolOver[8] = false;
  }
  if (overP(row1X[9], row1Y, row1Wide, rowheight)){
    boolOver[9] = true;
  }
  else{
    boolOver[9] = false;
  }
  if (overDEL(row1X[10], row1Y, DELWide, rowheight)){
    boolOver[10] = true;
  }
  else{
    boolOver[10] = false;
  }
  if (overA(row2X[0], row2Y, row2Wide, rowheight)){
    boolOver[11] = true;
  }
  else{
    boolOver[11] = false;
  }
  if (overS(row2X[1], row2Y, row2Wide, rowheight)){
    boolOver[12] = true;
  }
  else{
    boolOver[12] = false;
  }
  if (overD(row2X[2], row2Y, row2Wide, rowheight)){
    boolOver[13] = true;
  }
  else{
    boolOver[13] = false;
  }
  if (overF(row2X[3], row2Y, row2Wide, rowheight)){
    boolOver[14] = true;
  }
  else{
    boolOver[14] = false;
  }
  if (overG(row2X[4], row2Y, row2Wide, rowheight)){
    boolOver[15] = true;
  }
  else{
    boolOver[15] = false;
  }
  if (overH(row2X[5], row2Y, row2Wide, rowheight)){
    boolOver[16] = true;
  }
  else{
    boolOver[16] = false;
  }
  if (overJ(row2X[6], row2Y, row2Wide, rowheight)){
    boolOver[17] = true;
  }
  else{
    boolOver[17] = false;
  }
  if (overK(row2X[7], row2Y, row2Wide, rowheight)){
    boolOver[18] = true;
  }
  else{
    boolOver[18] = false;
  }
  if (overL(row2X[8], row2Y, row2Wide, rowheight)){
    boolOver[19] = true;
  }
  else{
    boolOver[19] = false;
  }
  if (overENTER(row2X[9], row2Y, ENTERWide, rowheight)){
    boolOver[20] = true;
  }
  else{
    boolOver[20] = false;
  }
  if (overZ(row3X[0], row3Y, row3Wide, rowheight)){
    boolOver[21] = true;
  }
  else{
    boolOver[21] = false;
  }
  if (overX(row3X[1], row3Y, row3Wide, rowheight)){
    boolOver[22] = true;
  }
  else{
    boolOver[22] = false;
  }
  if (overC(row3X[2], row3Y, row3Wide, rowheight)){
    boolOver[23] = true;
  }
  else{
    boolOver[23] = false;
  }
  if (overV(row3X[3], row3Y, row3Wide, rowheight)){
    boolOver[24] = true;
  }
  else{
    boolOver[24] = false;
  }
  if (overB(row3X[4], row3Y, row3Wide, rowheight)){
    boolOver[25] = true;
  }
  else{
    boolOver[25] = false;
  }
  if (overN(row3X[5], row3Y, row3Wide, rowheight)){
    boolOver[26] = true;
  }
  else{
    boolOver[26] = false;
  }
  if (overM(row3X[6], row3Y, row3Wide, rowheight)){
    boolOver[27] = true;
  }
  else{
    boolOver[27] = false;
  }
}

void mousePressed(){
  for (int i = 0; i < boolOver.length; i++){
    if (i <= 10){
      if (i == 10){ // delete 
        if (boolOver[i]){
          if (name.length() > 0) {
            name = name.substring(0, name.length()-1);
          }
        }
      }
      else if (boolOver[i]) {
        name = name + row1Name[i];
      }
    }
    if (i > 10 && i <= 20){
      if (i == 20){ // enter 
         if (boolOver[i]){
            println(name);//add input details here
         }
      }
      else if (boolOver[i]) {
        name = name + row2Name[i-11];
      }
    }
    if (i > 20){
      if (boolOver[i]) {
        name = name + row3Name[i-21];
      }
    }
  }
}

boolean overQ(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overW(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overE(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overR(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overT(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overY(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overU(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overI(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overO(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overP(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overDEL(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overA(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overS(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overD(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overF(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overG(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overH(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overJ(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overK(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overL(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overENTER(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overZ(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overX(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overC(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overV(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overB(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overN(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overM(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
