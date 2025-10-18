//your code here
Particle[] p;
void setup(){   
    size(500,500);
    p = new Particle[100];
	
    for(int i=0;i<100;i++)
       p[i]= new Particle();
}
void draw()
{
    ellipse(10,10,10,10);
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
      myx=250;
      myy=250;
      speed=10*Math.random();
      angle=3.14159265*2*Math.random();
     // col=color((int)(256*Math.random()),(int)(256*Math.random()),(int)(256*Math.random()));

    }
    void move(){
       myx+=(speed*Math.cos(angle));
       myy+=(speed*Math.sin(angle));
    }
    void show(){
       fill(255,0,0);
       ellipse((float)myx,(float)myy,5,5);
    }

}

////class OddballParticle //inherits from Particle
//{
	//your code here
//}


