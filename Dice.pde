class Dice{
  //what do dice have? => these are member variables
  int isRoll;
  int myX, myY;

  //initialize the dice objects with the CONSTUCTOR
  Dice(int x, int y){
    isRoll = ((int)(Math.random()*6)+1);
    myX = x;
    myY = y;
  }
  void show(){
    fill(0);
    strokeWeight(3);
    stroke(229, 75, 101);
    rect(myX, myY,50,50,10);
    strokeWeight(1);
    if(isRoll==1){
      fill(255);
      stroke(72, 72, 72);
      ellipse(myX, myY, 10, 10);
    }
    else if(isRoll==2){
      fill(255);
      stroke(72, 72, 72);
      ellipse(myX-10, myY-10, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
  }
    else if(isRoll==3){
      fill(255);
      stroke(72, 72, 72);
      ellipse(myX-10, myY-10, 10, 10);
      ellipse(myX, myY, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
  }
    else if(isRoll==4){
   fill(255);
   stroke(72, 72, 72);
   ellipse(myX-10, myY-10, 10, 10);
   ellipse(myX+10, myY+10, 10, 10);
   ellipse(myX-10, myY+10, 10, 10);
   ellipse(myX+10, myY-10, 10, 10);
   }
   else if(isRoll==5){
     fill(255);
     stroke(72, 72, 72);
   ellipse(myX-10, myY-10, 10, 10);
   ellipse(myX+10, myY+10, 10, 10);
   ellipse(myX-10, myY+10, 10, 10);
   ellipse(myX+10, myY-10, 10, 10);
   ellipse(myX, myY, 10, 10);
   }
   else{
    fill(255);
    stroke(72, 72, 72);
    ellipse(myX-10, myY-12, 10, 10);
    ellipse(myX-10, myY, 10, 10);
    ellipse(myX-10, myY+12, 10, 10);
    ellipse(myX+10, myY-12, 10, 10);
    ellipse(myX+10, myY, 10, 10);
    ellipse(myX+10, myY+12, 10, 10);
   }
}
}//end

Dice bob;
int sum = 0;
  void setup(){ 
    size(600,300);
    noLoop();
    rectMode(CENTER);
  }
  void draw(){
    sum = 0; 
    background(1, 114, 107);
    int i = 0;
    while(i<9){
      bob = new Dice(i*60+60,150);
      bob.show();
      sum += bob.isRoll;
      i++;
    }
    fill(6, 100, 96);
    stroke(6, 89, 86);
    rect(95,40,120,45);
    fill(255);
    stroke(255);
    rect(0,0,25,300);
    rect(600,300,25,300);
    textSize(30);
    text("0" +sum, 70,50);
    fill(255, 252, 230);
    stroke(234, 231, 207);
    for(int x = 25; x < 200; x+=30){
      ellipse(x, 280, 15, 15);
    }
    for(int x = 420; x < 590; x+=30){
      ellipse(x, 20, 15, 15);
    }
  }
  void mousePressed(){
    redraw();
}
