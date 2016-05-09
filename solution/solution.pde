void setup()
{
  size(500, 500);
  gameObjects.add(new Plane());  
  
  person = new Person();
  gameObjects.add(person);  
  for(int i = 0 ; i < 5; i ++)
  {
    gameObjects.add(new Cloud());  
  }
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

Box box;
Person person;

void draw()
{
  background(0);
  stroke(0, 255, 0);
  fill(0, 255, 0);
  rect(0, height / 2, width  , height / 2);

  stroke(0, 255, 255);
  fill(0, 255, 255);
  rect(0, 0, width  , height / 2);
  
  for(int i = gameObjects.size() - 1 ; i >= 0  ; i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
  }  
}
