private double fractionLength = .7; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(width/2,height-100,100, Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here
  if(branchLength < smallestBranch){
    return;
  }
  else{
    int endY1 = (int)(y - branchLength*Math.sin(angle + branchAngle));
    int endX1 = (int)(x - branchLength*Math.cos(angle + branchAngle));
    int endY2 = (int)(y - branchLength*Math.sin(angle - branchAngle));
    int endX2 = (int)(x - branchLength*Math.cos(angle - branchAngle));
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  drawBranches(endX1, endY1, branchLength * fractionLength, angle + branchAngle);
  drawBranches(endX2, endY2, branchLength * fractionLength, angle - branchAngle);
  }
} 
