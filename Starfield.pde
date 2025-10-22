//your code here
Particle[] p;
void setup(){   
    size(1000,1000);
    p = new Particle[100];
	
    for(int i=0;i<100;i++)
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
     // col=color((int)(256*Math.random()),(int)(256*Math.random()),(int)(256*Math.random()));

    }
    void move(){
       if(myy+mouseY-500<0||myx+mouseX-500<0||myx+mouseX-500>1000||myy+mouseY-500>1000){
         myx=mouseX;
         myy=mouseY;
         speed=10*Math.random()+3;
       }
       myx+=(speed*Math.cos(angle));
       myy+=(speed*Math.sin(angle));
    }
    void show(){
       fill(250);
       ellipse((float)myx+mouseX-500,(float)myy+mouseY-500,Math.abs(mousex-500)/50,Math.abs(mouseY-500)/50);
    }

}
//class OddballParticle extends Particle
//{
	//your code here
//}


