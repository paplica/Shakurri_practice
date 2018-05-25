float pX=300;
float pY=300;
float a=random(1,5);
int oX1=int(a);
float oY1=random(-1000,-200);
float b=random(1,5);
int oX2=int(b);
float oY2=random(700,1500);
float c=random(1,5);
int oY3=int(c);
float oX3=random(-1000,-200);
float d=random(1,5);
int oY4=int(d);
float oX4=random(700,1500);
int GOC=0;
float speed1=random(1,6);
float speed2=random(1,6);
float speed3=random(1,6);
float speed4=random(1,6);
int score=0;
int clickcount=0;

void setup(){
size(500,500);
frameRate(30);
rectMode(CENTER);
colorMode(RGB);
frameRate(60);
noStroke();
}

void draw(){
background(0);
gamestart();
levelup();
if(clickcount==0){
  backrect();
  textAlign(CENTER);
  textSize(25);
  fill(random(140,160),random(130,170),10);
  text("Click Here To Start Game",random(249,251),random(259,261));
}


}
void backrect(){
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      fill(256,256,256,50);
rect(i*100+100,j*100+100,70,70,5);

}
}
}
void playerDisp(){
  fill(random(130,150),140,random(0,10));
  rect(pX,pY,70,70,5);  
}
void keyPressed(){
  if((key=='a')&&(pX>100)&&(GOC==0)){
    pX-=100;
  }
    if((key=='d')&&(pX<400)&&(GOC==0)){
    pX+=100;
  }
    if((key=='w')&&(pY>100)&&(GOC==0)){
    pY-=100;
  }
    if((key=='s')&&(pY<400)&&(GOC==0)){
    pY+=100;
  }
    if((key=='j')&&(pX>100)&&(GOC==0)){
    pX-=100;
  }
    if((key=='l')&&(pX<400)&&(GOC==0)){
    pX+=100;
  }
    if((key=='i')&&(pY>100)&&(GOC==0)){
    pY-=100;
  }
    if((key=='k')&&(pY<400)&&(GOC==0)){
    pY+=100;
  }
}


void hit1(){
  if((pY<oY1+50)&&!(pY<oY1-50)&&(pX==oX1*100)){
    GOC++;
  }
}

void obj1Disp(){
    fill(140,90,230,60);
    for(int k=0;k<5;k++){      
  rect(oX1*100,oY1,70,70,5);
}
}

void obj1Move(){
  oY1+=speed1;
  if(oY1>550){
    oY1=random(-70,-50);
    a=random(1,5);
    oX1=int(a);
    speed1=random(1,6);
}
}

void hit2(){
  if(!(pY>oY2+50)&&(pY>oY2-50)&&(pX==oX2*100)){
    GOC++;
  }
}

void obj2Disp(){
    fill(140,90,230,60);
    for(int k=0;k<5;k++){      
  rect(oX2*100,oY2,70,70,5);
}
}

void obj2Move(){
  oY2-=speed2;
  if(oY2<-50){
    oY2=random(550,570);
    b=random(1,5);
    oX2=int(b);
    speed2=random(1,6);
}
}

void hit3(){
  if((pX<oX3+50)&&!(pX<oX3-50)&&(pY==oY3*100)){
    GOC++;
  }
}

void obj3Disp(){
    fill(140,90,230,60);
    for(int k=0;k<5;k++){      
  rect(oX3,oY3*100,70,70,5);
}
}

void obj3Move(){
  oX3+=speed3;
  if(oX3>550){
    oX3=random(-70,-50);
    c=random(1,5);
    oY3=int(b);
    speed3=random(1,6);
}
}

void hit4(){
  if(!(pX>oX4+50)&&(pX>oX4-50)&&(pY==oY4*100)){
    GOC++;
  }
}

void obj4Disp(){
    fill(140,90,230,60);
    for(int k=0;k<5;k++){      
  rect(oX4,oY4*100,70,70,5);
}
}

void obj4Move(){
  oX4-=speed4;
  if(oX4<-50){
    oX4=random(550,570);
    c=random(1,5);
    oY4=int(d);
    speed4=random(1,6);
}
}

void gameover1(){
  if(GOC>0){
    fill(60);
    rect(150,400,170,70,5);
    gameovertext();
  }
}

void gameovertext(){
  textSize(60);
  textAlign(CENTER);
  fill(random(200,255));
  text("G",100,120);
  text("A",200,120);
  text("M",300,220);
  text("E",400,220);
  text("O",100,320);
  text("V",200,320);
  text("E",300,420);
  text("R",400,420);
}

void scorecheck(){
  if(GOC==0){
    score+=random(10,100);
    textAlign(RIGHT);
    fill(random(100,255));
    textSize(10);
    text(score,493,490);
}
}

void gameover2(){
  if(GOC>0){
    fill(255); 
    if(score>300000){
      fill(random(120,160),140,10);
    }
    textSize(20);
    text("SCORE",150,390);
    textSize(24);
    text(score,random(149,151),random(419,421));
  }
}

void mousePressed(){
    clickcount++;
  }
  
void gamestart(){
  if(clickcount>0){
backrect();
gameover1();
playerDisp();
obj1Disp();
obj1Move();
obj2Disp();
obj2Move();
obj3Disp();
obj3Move();
obj4Disp();
obj4Move();
hit1();
hit2();
hit3();
hit4();
gameover2();
scorecheck();

  }
}

void levelup(){
  if((score>0)&&(score<50000)){
    textAlign(LEFT);
    fill(random(100,255));
    textSize(20);
    text("Lv /",7,20);   
}
if((score>50000)&&(score<100000)){
  frameRate(63);
    textAlign(LEFT);
    fill(random(100,255));
    textSize(20);
    text("Lv //",7,20);   
}
if((score>100000)&&(score<200000)){
  frameRate(66);
    textAlign(LEFT);
    fill(random(100,255));
    textSize(20);
    text("Lv ///",7,20);   
}
if((score>200000)&&(score<300000)){
  frameRate(69);
    textAlign(LEFT);
    fill(random(100,255));
    textSize(20);
    text("Lv ////",7,20);   
}
if(score>300000){
  frameRate(72);
    textAlign(LEFT);
    fill(random(100,255));
    textSize(20);
    text("Lv /////",7,20);   
}
}