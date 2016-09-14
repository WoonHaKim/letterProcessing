ArrayList<Element> ellementPool = new ArrayList<Element>();
int total=10;


void setup(){
  size(1280 ,720);
  background(0);
  noStroke();
  for(int i=0;i<total;i++){
    newElement(1, 640, 360, int(random(360,720)));
  }
}

void draw(){
    background(0);
       ellementPool.get(1).Attraction(200,200,0);
       ellementPool.get(2).Attraction(200,200,0);
       ellementPool.get(3).Attraction(200,200,0);
    for(int i=0;i<total;i++){
   
   ellementPool.get(i).Shake(15);
   ellementPool.get(i).drawElement();
  }
  if(keyPressed){
    for(int i=0;i<10;i++){
   ellementPool.get(i).Attraction(mouseX,mouseY,0);
   //ellementPool.get(i).Shake(15);
    }
   }
}
  
float randomMove(float value, int step, float start, float end){
    float nextValue;
      nextValue = value + (int)random(-step,step+1);
      //nextValue=lerp(value, nextValue, 1);
      if(nextValue < start){
      nextValue = start;
      }else if(nextValue > end){
        nextValue=end;
      }
      return nextValue;
}

void newElement(int type_d, float x_d, float y_d, float angle_d){
  ellementPool.add(ellementPool.size(), new Element());
  ellementPool.get(ellementPool.size()-1).type = type_d;
  ellementPool.get(ellementPool.size()-1).Destination.x = x_d;
  ellementPool.get(ellementPool.size()-1).Destination.y = y_d;
  ellementPool.get(ellementPool.size()-1).Destination.angle = angle_d;
}