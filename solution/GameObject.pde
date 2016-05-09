class GameObject
{
  PVector pos;
  PVector forward;
  float theta;
  float w;
  float radius;
  
  GameObject(float x, float y, float theta, float radius)
  {
    pos = new PVector(x, y);
    this.theta = theta;
    this.radius = radius;
    forward = new PVector(sin(theta), - cos(theta));     
  }
  
  void update()
  {
  }
  
  void render()
  {
  }
}
