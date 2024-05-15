class Asteroid extends Floater {
  public double rotationSpeed;
  public Asteroid(){
    corners = 6;
    xCorners =  new int[]{((int)Math.random()*10)-11, ((int)Math.random()*10)+6, ((int)Math.random()*10)+10, ((int)Math.random()*10)+4, ((int)Math.random()*10)-12, ((int)Math.random()*10)-12};
    yCorners =  new int[]{((int)Math.random()*10)+10, ((int)Math.random()*10), ((int)Math.random()*10)-12, ((int)Math.random()*10)+8,((int)Math.random()*10)+8, ((int)Math.random()*10) };
    myCenterX = (int)(Math.random()*width);
    myCenterY= (int)(Math.random()*height);
    myXspeed = (int)((Math.random()*5)-2.5);
    myYspeed = (int)((Math.random()*5)-2.5); 
    myPointDirection = (int)(Math.random()*360);
    myColor= color(200);
    rotationSpeed = (int)(Math.random()*5);
    }
    void move(){
      turn(rotationSpeed);
      super.move();     
    }
}
