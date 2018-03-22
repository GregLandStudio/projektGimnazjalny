int screen = 1;
void graphics()
{
  if(screen == 1)
  {
  background(255);
  textSize(50);
  textAlign(CENTER);
  fill(0, 0, 255);
  rect(175, 85, 450, 100);
  fill(0, 255, 0);
  rect(75, 400, 180, 80);
  fill(255, 0, 0);
  rect(550, 400, 180, 80);
  fill(0);
  text("Nasz fajny quiz!", width / 2, height / 4);
  textSize(30);
  text("Nowa gra", width / 5, (height / 4) * 3);
  text("Wyjście", width - (width / 5), (height / 4) * 3);
  }
}

void mousePressed()
{
assert(screen == 1 || screen == 2) : "Screen number "+screen+" does not exist!"; //Jeżeli będziesz dodawał nowe screeny, dodaj ||screen == 2 po screen == 1
switch(screen)
{
  case 1:
  {
    if(mouseX >= 75 && mouseX <= 255 && mouseY >= 400 && mouseY <= 480)
    {
      screen = 2;
    }
    if(mouseX >= 550 && mouseX <= 730 && mouseY >= 400 && mouseY <= 480)
    {
      exit();
    }
  }
  break;
  case 2:
  {
    background(current.background);
    fill(0, 0, 255);
    rect(0, 0, 800, 250);
    if(current.hasImage)
    {
    image(current.image, 300, 0);
    }
    text(current.question, 200, 220);
    
  }
  break;
  /* default: to jest niepotrzebne
  {
    background(0);
    fill(255);
    textSize(50);
    text("Wystąpił nieoczekiwany błąd!", 400, 270);
  } */
  
}


}