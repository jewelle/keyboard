/*
KEYBOARD GUI
ERICA JEWELL
6-11-2018
Row 1: q w e r t y u i o p DEL
Row 2: a s d f g h j k l ENTER
Row 3: z x c v b n m 
*/

PFont myFont;
int fontSize = 25;
color textcolor = color(49, 102, 18);
color keycolor = color(88, 229, 57);
int keyboardheight, keyboardwidth, rowheight, margin; 
boolean qOver = false;
boolean wOver = false;
boolean eOver = false;
boolean rOver = false;
boolean tOver = false;
boolean yOver = false;
boolean uOver = false;
boolean iOver = false;
boolean oOver = false;
boolean pOver = false;
boolean DELOver = false;
boolean aOver = false;
boolean sOver = false;
boolean dOver = false;
boolean fOver = false;
boolean gOver = false;
boolean hOver = false;
boolean jOver = false;
boolean kOver = false;
boolean lOver = false;
boolean ENTEROver = false;
boolean zOver = false;
boolean xOver = false;
boolean cOver = false;
boolean vOver = false;
boolean bOver = false;
boolean nOver = false;
boolean mOver = false;
int row1Y, row2Y, row3Y;
int row1Wide, DELWide, row2Wide, ENTERWide, row3Wide;
int qX, wX, eX, rX, tX, yX, uX, iX, oX, pX, DELX;
int aX, sX, dX, fX, gX, hX, jX, kX, lX, ENTERX;
int zX, xX, cX, vX, bX, nX, mX;
String name = "";


void setup(){
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
  qX = margin*2;
  wX = row1Wide + qX + margin;
  eX = row1Wide + wX + margin;
  rX = row1Wide + eX + margin;
  tX = row1Wide + rX + margin;
  yX = row1Wide + tX + margin;
  uX = row1Wide + yX + margin;
  iX = row1Wide + uX + margin;
  oX = row1Wide + iX + margin;
  pX = row1Wide + oX + margin;
  DELX = row1Wide + pX + margin;
  aX = margin*3;
  sX = row2Wide + aX + margin;
  dX = row2Wide + sX + margin;
  fX = row2Wide + dX + margin;
  gX = row2Wide + fX + margin;
  hX = row2Wide + gX + margin;
  jX = row2Wide + hX + margin;
  kX = row2Wide + jX + margin;
  lX = row2Wide + kX + margin;
  ENTERX = row2Wide + lX + margin;
  zX = margin*6;
  xX = row3Wide + zX + margin;
  cX = row3Wide + xX + margin;
  vX = row3Wide + cX + margin;
  bX = row3Wide + vX + margin;
  nX = row3Wide + bX + margin;
  mX = row3Wide + nX + margin;
}

void drawKeyboard(){
  fill(255);
  rect(margin, keyboardheight, keyboardwidth, keyboardheight-margin, 10);
  //--- Q
  fill(keycolor);
  rect(qX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("Q", qX+(row1Wide/2), row1Y+(rowheight/2));
  //--- W
  fill(keycolor);
  rect(wX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("W", wX+(row1Wide/2), row1Y+(rowheight/2));
  //--- E
  fill(keycolor);
  rect(eX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("E", eX+(row1Wide/2), row1Y+(rowheight/2));
  //--- R
  fill(keycolor);
  rect(rX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("R", rX+(row1Wide/2), row1Y+(rowheight/2));
  //--- T
  fill(keycolor);
  rect(tX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("T", tX+(row1Wide/2), row1Y+(rowheight/2));
  //--- Y
  fill(keycolor);
  rect(yX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("Y", yX+(row1Wide/2), row1Y+(rowheight/2));
  //--- U
  fill(keycolor);
  rect(uX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("U", uX+(row1Wide/2), row1Y+(rowheight/2));
  //--- I
  fill(keycolor);
  rect(iX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("I", iX+(row1Wide/2), row1Y+(rowheight/2));
  //--- O
  fill(keycolor);
  rect(oX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("O", oX+(row1Wide/2), row1Y+(rowheight/2));
  //--- P
  fill(keycolor);
  rect(pX, row1Y, row1Wide, rowheight, 10);
  fill(textcolor);
  text("P", pX+(row1Wide/2), row1Y+(rowheight/2));
  //--- DEL
  fill(keycolor);
  rect(DELX, row1Y, DELWide, rowheight, 10);
  fill(textcolor);
  text("DEL", DELX+(DELWide/2), row1Y+(rowheight/2));
  //--- A
  fill(keycolor);
  rect(aX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("A", aX+(row2Wide/2), row2Y+(rowheight/2));
  //--- S
  fill(keycolor);
  rect(sX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("S", sX+(row2Wide/2), row2Y+(rowheight/2));
  //--- D
  fill(keycolor);
  rect(dX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("D", dX+(row2Wide/2), row2Y+(rowheight/2));
  //--- F
  fill(keycolor);
  rect(fX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("F", fX+(row2Wide/2), row2Y+(rowheight/2));
  //--- G
  fill(keycolor);
  rect(gX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("G", gX+(row2Wide/2), row2Y+(rowheight/2));
  //--- H
  fill(keycolor);
  rect(hX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("H", hX+(row2Wide/2), row2Y+(rowheight/2));
  //--- J
  fill(keycolor);
  rect(jX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("J", jX+(row2Wide/2), row2Y+(rowheight/2));
  //--- K
  fill(keycolor);
  rect(kX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("K", kX+(row2Wide/2), row2Y+(rowheight/2));
  //--- L
  fill(keycolor);
  rect(lX, row2Y, row2Wide, rowheight, 10);
  fill(textcolor);
  text("L", lX+(row2Wide/2), row2Y+(rowheight/2));
  //--- ENTER
  fill(keycolor);
  rect(ENTERX, row2Y, ENTERWide, rowheight, 10);
  fill(textcolor);
  text("ENTER", ENTERX+(ENTERWide/2), row2Y+(rowheight/2));
  //--- Z
  fill(keycolor);
  rect(zX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("Z", zX+(row3Wide/2), row3Y+(rowheight/2));
  //--- X
  fill(keycolor);
  rect(xX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("X", xX+(row3Wide/2), row3Y+(rowheight/2));
  //--- C
  fill(keycolor);
  rect(cX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("C", cX+(row3Wide/2), row3Y+(rowheight/2));
  //--- V
  fill(keycolor);
  rect(vX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("V", vX+(row3Wide/2), row3Y+(rowheight/2));
  //--- B
  fill(keycolor);
  rect(bX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("B", bX+(row3Wide/2), row3Y+(rowheight/2));
  //--- N
  fill(keycolor);
  rect(nX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("N", nX+(row3Wide/2), row3Y+(rowheight/2));
  //--- M
  fill(keycolor);
  rect(mX, row3Y, row3Wide, rowheight, 10);
  fill(textcolor);
  text("M", mX+(row3Wide/2), row3Y+(rowheight/2)); 
}

void update(int x, int y){
  if (overQ(qX, row1Y, row1Wide, rowheight)){
    qOver = true;
  }
  else{
    qOver = false;
  }
  if (overW(wX, row1Y, row1Wide, rowheight)){
    wOver = true;
  }
  else{
    wOver = false;
  }
  if (overE(eX, row1Y, row1Wide, rowheight)){
    eOver = true;
  }
  else{
    eOver = false;
  }
  if (overR(rX, row1Y, row1Wide, rowheight)){
    rOver = true;
  }
  else{
    rOver = false;
  }  
  if (overT(tX, row1Y, row1Wide, rowheight)){
    tOver = true;
  }
  else{
    tOver = false;
  }
  if (overY(yX, row1Y, row1Wide, rowheight)){
    yOver = true;
  }
  else{
    yOver = false;
  }
  if (overU(uX, row1Y, row1Wide, rowheight)){
    uOver = true;
  }
  else{
    uOver = false;
  }
  if (overI(iX, row1Y, row1Wide, rowheight)){
    iOver = true;
  }
  else{
    iOver = false;
  }
  if (overO(oX, row1Y, row1Wide, rowheight)){
    oOver = true;
  }
  else{
    oOver = false;
  }
  if (overP(pX, row1Y, row1Wide, rowheight)){
    pOver = true;
  }
  else{
    pOver = false;
  }
  if (overDEL(DELX, row1Y, row1Wide, rowheight)){
    DELOver = true;
  }
  else{
    DELOver = false;
  }
  if (overA(aX, row2Y, row2Wide, rowheight)){
    aOver = true;
  }
  else{
    aOver = false;
  }
  if (overS(sX, row2Y, row2Wide, rowheight)){
    sOver = true;
  }
  else{
    sOver = false;
  }
  if (overD(dX, row2Y, row2Wide, rowheight)){
    dOver = true;
  }
  else{
    dOver = false;
  }
  if (overF(fX, row2Y, row2Wide, rowheight)){
    fOver = true;
  }
  else{
    fOver = false;
  }
  if (overG(gX, row2Y, row2Wide, rowheight)){
    gOver = true;
  }
  else{
    gOver = false;
  }
  if (overH(hX, row2Y, row2Wide, rowheight)){
    hOver = true;
  }
  else{
    hOver = false;
  }
  if (overJ(jX, row2Y, row2Wide, rowheight)){
    jOver = true;
  }
  else{
    jOver = false;
  }
  if (overK(kX, row2Y, row2Wide, rowheight)){
    kOver = true;
  }
  else{
    kOver = false;
  }
  if (overL(lX, row2Y, row2Wide, rowheight)){
    lOver = true;
  }
  else{
    lOver = false;
  }
  if (overENTER(ENTERX, row2Y, row2Wide, rowheight)){
    ENTEROver = true;
  }
  else{
    ENTEROver = false;
  }
  if (overZ(zX, row3Y, row3Wide, rowheight)){
    zOver = true;
  }
  else{
    zOver = false;
  }
  if (overX(xX, row3Y, row3Wide, rowheight)){
    xOver = true;
  }
  else{
    xOver = false;
  }
  if (overC(cX, row3Y, row3Wide, rowheight)){
    cOver = true;
  }
  else{
    cOver = false;
  }
  if (overV(vX, row3Y, row3Wide, rowheight)){
    vOver = true;
  }
  else{
    vOver = false;
  }
  if (overB(bX, row3Y, row3Wide, rowheight)){
    bOver = true;
  }
  else{
    bOver = false;
  }
  if (overN(nX, row3Y, row3Wide, rowheight)){
    nOver = true;
  }
  else{
    nOver = false;
  }
  if (overM(mX, row3Y, row3Wide, rowheight)){
    mOver = true;
  }
  else{
    mOver = false;
  }
}

void mousePressed(){
  if (qOver) {
    name = name +"Q";
  }
  if (wOver) {
    name = name +"W";
  }
  if (eOver) {
    name = name +"E";
  }
  if (rOver) {
    name = name +"R";
  }
  if (tOver) {
    name = name +"T";
  }
  if (yOver) {
    name = name +"Y";
  }
  if (uOver) {
    name = name +"U";
  }
  if (iOver) {
    name = name +"I";
  }
  if (oOver) {
    name = name +"O";
  }
  if (pOver) {
    name = name +"P";
  }
  if (DELOver) {
    if (name.length() > 0) {
        name = name.substring(0, name.length()-1);
    }
  }
  if (aOver) {
    name = name +"A";
  }
  if (sOver) {
    name = name +"S";
  }
  if (dOver) {
    name = name +"D";
  }
  if (fOver) {
    name = name +"F";
  }
  if (gOver) {
    name = name +"G";
  }
  if (hOver) {
    name = name +"H";
  }
  if (jOver) {
    name = name +"J";
  }
  if (kOver) {
    name = name +"K";
  }
  if (lOver) {
    name = name +"L";
  }
  if (ENTEROver) {
    //add input details here
  }
  if (zOver) {
    name = name +"Z";
  }
  if (xOver) {
    name = name +"X";
  }
  if (cOver) {
    name = name +"C";
  }
  if (vOver) {
    name = name +"V";
  }
  if (bOver) {
    name = name +"B";
  }
  if (nOver) {
    name = name +"N";
  }
  if (mOver) {
    name = name +"M";
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
