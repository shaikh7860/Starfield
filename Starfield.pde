//your code here
//Particle[] dots = new Particle[1];
Particle[] dots = new Particle[200];
void setup()
{
  //your code here
  size(500, 500);
  background(0);
  //dots = new normalParticle[10];
  for (int i = 0; i < dots.length; i++)
  {
    dots[i] = new normalParticle();
  }

  dots[1] = new OddballParticle();
  dots[2] = new JumboParticle();
}
void draw()
{
  for (int i = 0; i < dots.length; i++) {
    dots[i].move();
    dots[i].show();
  }
}
class normalParticle implements Particle
{
  //your code here
  int myColor;
  double myX, myY, mySpeed, myAngle;
  normalParticle() {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
  }
  public void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)+mySpeed;
  }
  public void show() {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse((int) myX, (int)myY, 10, 10);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  int myX, myY;
  OddballParticle()
  {
    myX= 300;
    myY = 200;
  }
  void show()
  {
    rect(myX, myY, 50, 50);
  }
  void move() {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
}
class JumboParticle extends normalParticle  //uses inheritance
{
  //your code here

  void show()
  {
    rect((int)myX, (int)myY, 100, 100);
  }
}
