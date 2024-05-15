Spaceship goofy = new Spaceship();
Star[] venus = new Star[100];
ArrayList <Asteroid> billy = new ArrayList <Asteroid>();
public void setup() {
  size(500,500);
  for(int i =0; i < 100; i++){
    venus[i] = new Star();
  }
  for(int i =0; i < 10; i++){
    billy.add (new Asteroid());
  }
}
public void draw() {
  background(0);
  for(int i =0; i < 100; i++){
    venus[i].show();
  }
  goofy.show();
  goofy.move();
  for(int i =0; i < billy.size(); i++){
    billy.get(i).move();
    if (dist((float)billy.get(i).myCenterX, (float)billy.get(i).myCenterY, (float)goofy.myCenterX, (float)goofy.myCenterY)<20){
       billy.remove(i);
    }else{
      billy.get(i).show();
    }
  }
}
public void keyPressed(){
   if(keyCode == UP){
     goofy.accelerate(1);
  } else if (keyCode == RIGHT){
    goofy.turn(10);
  }else if (keyCode == LEFT){
    goofy.turn(-10);
  }else if (keyCode == ' '){
    goofy.hyperspace();
  }
}
