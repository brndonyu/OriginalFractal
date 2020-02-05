int n = 0;
float a = 255;
float b = 0;
float c = 0;
boolean glow = true;
boolean red = false;
boolean green = false;
boolean blue = false;

public void setup()
{
	size(1000,1000);
	
}
public void draw()
{
	background(0);
	fill(a,b,c,n);
	if(n <= 0){glow = true;}
	if(n >= 200){glow = false;}
	if(glow == true){n += 15;}
	if(glow == false){n -= 15;}
	fractal(500,500,500);
	if(n <= 0)
		{
			a = random(255);
			b = random(255);
			c = random(255);
	}
}
public void fractal(float x, float y, float rad)
{	
	ellipse(x,y,rad,rad);

	if(rad > 10)
	{
		fractal(x-rad/2,y-rad/2,rad/2);
		fractal(x+rad/2,y-rad/2,rad/2);
		fractal(x-rad/2,y+rad/2,rad/2);
		fractal(x+rad/2,y+rad/2,rad/2);
	}
}
