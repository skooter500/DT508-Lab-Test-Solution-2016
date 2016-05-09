class Plane extends GameObject
{
  float speed = 3;
  boolean canDrop = true;
  
  Plane()
  {
    super(- 50, 50, 0, 50);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(200, 200, 200);
    fill(200, 200, 200);
    rect(-radius, -10, (radius * 2) - 20, 20);
    triangle(radius - 20, -10, radius - 20, 10, radius, 10);
    triangle(-radius, -10, -radius, -20, -radius + 10, - 10);
    rect(-10, -30, 20, 60);
    float xStart = - radius + 5;
    for(int i = 0 ; i < 4 ; i ++)
    {
      stroke(0);
      fill(0);
      float x = xStart + (i * 20);
      rect(x, -5, 10, 10);
    }
    popMatrix();
  }
  
  void update()
  {
    pos.x += speed;
    if (pos.x - radius > width)
    {
      pos.x = - radius;
      canDrop = true;
    }
    
    if (canDrop && keyPressed && key == ' ')
    {
      Box newBox = new Box(pos.x, pos.y);
      gameObjects.add(newBox);
      box = newBox;
      canDrop = false;
    }
  }
}
