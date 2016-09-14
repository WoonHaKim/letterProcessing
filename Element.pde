
class Element{
//  int id;
  int type; //ㅓㅕ
  Geo Position = new Geo(random(0,width),random(0,height),0);
  Geo Destination = new Geo(0,0,0);
  int motherIndex;  
  Element parent;
  ArrayList<Element> children = new ArrayList<Element>();
  

  Element(){

  }
  
  //set Destination
  void Attraction(float x_d, float y_d, float angle_d){
    Destination.x = x_d;
    Destination.y = y_d;
    Destination.angle = angle_d;
  }
  void Shake(int step){
    Destination.x =  randomMove(Destination.x,step,0,width);
    Destination.y =  randomMove(Destination.y,step,0,height);
    Destination.angle =  randomMove(Destination.angle,step,-1440,1440);
  }
  void lerpElement(){
     Position.x = lerp(Position.x, Destination.x, 0.01) ;
     Position.y = lerp(Position.y, Destination.y, 0.01);
     Position.angle=lerp(Position.angle, Destination.angle, 0.1);
  }
  
  void drawElement(){
  pushMatrix();
  resetMatrix();
  translate(Position.x,Position.y);  
  rotate(Position.angle*PI/180);
  //translate(-Position.x,-Position.y);  
    switch(type){
      case 0:
        //none
      break;
      case 1:
         fill(255);
         rect(0,-3,40,6);
      break;
      case 2:
         fill(255);
         ellipse(0,0,10,10);
      break;
      case 3:
         fill(255);
         ellipse(20,20,40,40);
         fill(0);
         ellipse(20,20,30,30);
      break;
      case 4:
         //combination
      break;
    }
  popMatrix();

 }
}