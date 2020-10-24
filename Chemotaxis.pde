Taco[] yum = new Taco[100];
void setup()
{
  size(600,600);
  for(int i = 0; i < yum.length; i++)
  {
    yum[i] = new Taco();
  }
}
void draw()
{
  background(50,50,200);
  for(int i = 0; i < yum.length; i++)
  {
  yum[i].move();
  yum[i].show();
  }
}
class Taco
{
  int colour;
  int size;
  int myX;
  float myY;
  float speed;
  Taco()
  {
    colour = color(((int)(Math.random()*256)+200),((int)(Math.random()*256)+200),((int)(Math.random()*100)+50));
    size = (int)(Math.random()*30)+12;
    speed = size/5.0;
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  void move()
  {
    myY = myY + speed;
    myX = myX + (int)(Math.random()*3)-1;
    if(myY > 700)
    {
      myY = -100;
    }
  }
  void show()
  {
    fill(colour);
    stroke(colour);
      arc(myX, myY, size, size, PI, TWO_PI);
    fill(150, 150, 150);
    stroke(150,150,150);
    ellipse(100, 10, 300, 100);
    ellipse(300, 10, 300, 100);
    ellipse(500, 10, 300, 100);
     fill(80,20,20);
     stroke(80, 20, 20);
     rect(0, 540, 600, 600);
     fill(0,150,0);
          stroke(0, 150, 0);
     rect(0, 530, 600, 20);
  }
}
