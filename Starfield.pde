Particle[] p;
void setup(){   
    size(1000,1000);
    p = new Particle[100];
    p[0]= new OddballParticle();
    for(int i=1;i<100;i++)
       p[i]= new Particle();
}
void draw()
{
    background(0);
  for(int i=0;i<100;i++){
       p[i].show();
       p[i].move();
    }
}
class Particle
{
  double myx,myy,speed,angle;
    int col;
    Particle(){
      myx=500;
      myy=500;
      speed=10*Math.random()+1;
      angle=3.14159265*2*Math.random();
    }
    void move(){
       if(myy+mouseY-500<0||myx+mouseX-500<0||myx+mouseX-500>1000||myy+mouseY-500>1000){
         myx=500;
         myy=500;
         speed=Math.pow((myx-mouseX)*(myx-mouseX)+(myy-mouseY)*(myy-mouseY),0.5)*Math.random()+3;
       }
       myx+=(speed*Math.cos(angle));
       myy+=(speed*Math.sin(angle));
    }
    void show(){
       fill(250);
       ellipse((float)myx+mouseX-500,(float)myy+mouseY-500,(float)Math.pow((Math.pow((myx-500),2)+Math.pow((myy-500),2)),0.5)/25,(float)Math.pow((Math.pow((myx-500),2)+Math.pow((myy-500),2)),0.5)/25);
    }
}
class OddballParticle extends Particle
{
  OddballParticle(){
   myx=mouseX;
   myy=mouseY;
  }
  void move(){
   myx=mouseX;
   myy=mouseY;
  }
  void show(){
    fill(255,0,0);
    ellipse((float)myx,(float)myy,50,50);
  }
  
}
