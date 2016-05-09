class Cloud extends GameObject
{
  float speed;
  
  Cloud()
  {
    super(width + random(50, 200), random(0, height / 3), 0, 80);  
    speed = random(-2, -1);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(255);
    fill(255);
    ellipse(0, 0, 50, 30);
    ellipse(-30, 0, 30, 20);
    ellipse(30, 0, 30, 20);
    popMatrix();
  }
  
  void update()
  {
    pos.x += speed;   
    if (pos.x + 40 < 0)
    {
      pos.y = random(0, height / 3);
      speed = random(-2, -1);      
      pos.x = width + 40;
    }
  }
}
