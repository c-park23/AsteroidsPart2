class Spaceship extends Floater  {   
    public Spaceship(){
    corners = 3;
    xCorners =  new int[]{-8, 16, -8, -2};
    yCorners =  new int[]{-8, 0, 8, 0};
    myCenterX = width/2;
    myCenterY= height/2;
    myXspeed = 0;
    myYspeed = 0; 
    myPointDirection = 0;
    myColor= 255;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*width;
      myCenterY= Math.random()*height;
      myPointDirection = Math.random()*360;
    }
}