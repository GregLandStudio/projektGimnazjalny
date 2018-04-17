  public class Button
{
    int x, y, w, h, col;
    boolean pressed;
    String text;
  
    Button()
  {
    x = 0;
    y = 0;
    w = 200;
    h = 100;
    col = 200;
    pressed = false;
    text = "";
  }
  
  void display()
  {
    fill(col);
    rect(x, y, w, h);
    fill(0);
    text(text, x + w / 2, y + h / 2);
  }
  
  void hitbox()
  {
    if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h)
    {
      pressed = true;
    }
  }
};
