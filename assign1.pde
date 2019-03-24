PImage skyimg;
PImage soilimg;
PImage lifeimg1;
PImage lifeimg2;
PImage lifeimg3;
PImage groundhog;
//soldier
PImage soldier;
int soldierX;
int soldierY;
//robot
PImage robot;
int robotX;
int robotY;
//light
int lightX;
int lightY2;
int speedX;
int xMove;

void setup() {
	size(640, 480, P2D);
	skyimg=loadImage("img/bg.jpg");//skyImage
  soilimg=loadImage("img/soil.png");//soilImage
  lifeimg1=loadImage("img/life.png");//hear1
  lifeimg2=loadImage("img/life.png");//hear2
  lifeimg3=loadImage("img/life.png");//hear3
  groundhog=loadImage("img/groundhog.png");//groundhog
  
  //soldier
  soldier=loadImage("img/soldier.png");
  soldierX=-80;
  soldierY=80*floor(random(2,6));
 
  //robot
  robot=loadImage("img/robot.png");
  robotX=80*floor(random(2,8));
  robotY=80*floor(random(2,6));
  
  //light
  speedX-=2;
  lightX=robotX+25+speedX;//move
  lightY2=robotY+37;
}

void draw() {
  // picture
    //background
  image(skyimg,0,0);//skyImage
  image(soilimg,0,160);//soilImage 
    //heart
  image(lifeimg1,10,10);//heart1
  image(lifeimg2,80,10);//heart2
  image(lifeimg3,150,10);//heart3
    //lawn
  fill(RGB);
  fill(124,204,25);//green
  noStroke();
  rect(0,145,640,15);//lawnSize
    //groundhog
  image(groundhog,280,80);
    //sun
  colorMode(RGB);
  fill(253,184,19);//orange
  stroke(255,255,0);//yellow
  strokeWeight(5);
  ellipse( 590, 50, 120, 120 );//ellipseSize
 
   //soldier
  image(soldier,soldierX,soldierY);//soldierPosition
  soldierX+=2;
  if(soldierX>=640){
    soldierX=-80;
  }//come back again
  
  //robot
  image(robot,robotX,robotY);
  
   //light
  colorMode(RGB);
  stroke(255,0,0);
  strokeWeight(10);
  line(lightX,lightY2,min(lightX+40,robotX+25),lightY2);
  speedX-=2;
  lightX=robotX+25+speedX;//move
  lightY2=robotY+37;
  speedX%=185;//25+80+80 Reincarnation
}
