//your code here
Particle[] p;
void setup(){   
    size(500,500);
    p = new Particle[10];
	
    for(int i=0;i<10;i++)
       p[i]= new Particle();
}
void draw()
{
    ellipse(10,10,10,10);
	for(int i=0;i<10;i++){
       p[i].show();
       p[i].move();
    }
}
class Particle
{
	double myx,myy,speed,angle;
    int col;
    Particle(){
      myx=0;
      myy=0;
      speed=100*Math.random();
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


