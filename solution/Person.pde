class Person extends GameObject
{
  PVector home;
  boolean fetching;
  boolean goingHome;
  Person()
  {
    super(50, height - 100, 0, 40);
    home = pos.get();
    fetching = false;
    goingHome = false;
  }
  
  void update()
  {
    if (fetching)
    {
      PVector toBox = PVector.sub(box.pos, pos);
      
      if (toBox.mag() < 5)
      {
        gameObjects.remove(box);
        fetching = false;
        goingHome = true;
      }      
      toBox.normalize(); 
      pos.add(toBox);            
    }
    
    if (goingHome)
    {
      PVector toHome = PVector.sub(home, pos);
      
      if (toHome.mag() < 2)
      {
        goingHome = false;
      }      
      toHome.normalize(); 
      pos.add(toHome);
    }
    
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(255, 0, 255);
    fill(255, 0, 255);
    ellipse(0, -20, 10, 10);
    rect(-5, -10, 10, 15);
    line(-2, 0, -2, 20);
    line(2, 0, 2, 20);
    line(-10, -5, 10, -5);
    popMatrix();    
  }
}
