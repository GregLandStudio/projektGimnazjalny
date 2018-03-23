int score = 0;
int screen = 1;
int ans1 = 200;
int ans2 = 200;
int ans3 = 200;
int ans4 = 200;
boolean hasDecided = false;
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
    if(screen == 2)
  {
    if(hasDecided == false){ans1 = 200; ans2 = 200; ans3 = 200; ans4 = 200;}
  background(current.background);
    fill(0, 0, 255);
    rect(0, 0, 800, 250);
    fill(0);
    if(current.hasImage)
    {
    image(current.image, 300, 0);
    text(current.question, 400, 220);
    }
    fill(0);
     if(current.hasImage == false)
    {
      text(current.question, 400, 120);
    }
    if(current.answers.length == 2)
    {
      fill(ans1);
      rect(20, 350, 200, 100);
      fill(ans2);
      rect(width - 220, 350, 200, 100);
      fill(0);
      text(current.answers[0], 120, 415);
      text(current.answers[1], 680, 415);
      text("Punkty:", 350, 550);
      text(score, 450, 550);
    }
    if(current.answers.length == 4)
    {
      fill(ans1);
      rect(20, 270, 200, 100);
      fill(ans2);
      rect(width - 220, 270, 200, 100);
      fill(ans3);
      rect(20, height - 120, 200, 100);
      fill(ans4);
      rect(width - 220, height - 120, 200, 100);
      fill(0);
      text(current.answers[0], 120, 325);
      text(current.answers[1], 680, 325);
      text(current.answers[2], 120, 540);
      text(current.answers[3], 680, 540);
      text("Punkty:", 350, 550);
      text(score, 450, 550);
    }
    
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
    if(current.answers.length == 2)
    {
      if(mouseX >= 20 && mouseX <= 220 && mouseY >= 350 && mouseY <= 450){
        hasDecided = true;
        if(current.correct == 1)
        {
          ans1 = color(0, 255, 0);
          ans2 = color(255, 0, 0);
          score += 100;
        }
        if(current.correct == 2)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(0, 255, 0);
        }
      }
      if(mouseX >= 580 && mouseX <= 780 && mouseY >= 350 && mouseY <= 450){
        hasDecided = true;
        if(current.correct == 1)
        {
          ans1 = color(0, 255, 0);
          ans2 = color(255, 0, 0);
        }
        if(current.correct == 2)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(0, 255, 0);
          score += 100;
        }
      }
    }
    if(current.answers.length == 4)
    {
      if(mouseX >= 20 && mouseX <= 220 && mouseY >= 270 && mouseY <= 370)
      {
        hasDecided = true;
        if(current.correct == 1)
        {
          ans1 = color(0, 255, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
          score += 200;
        }
        if(current.correct == 2)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(0, 255, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 3)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(0, 255, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 4)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(0, 255, 0);
        }
      }
       if(mouseX >= width - 220 && mouseX <= 780 && mouseY >= 270 && mouseY <= 370)
      {
        hasDecided = true;
        if(current.correct == 1)
        {
          ans1 = color(0, 255, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 2)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(0, 255, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
          score += 200;
        }
        if(current.correct == 3)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(0, 255, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 4)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(0, 255, 0);
        }
      }
       if(mouseX >= 20 && mouseX <= 220 && mouseY >= 480 && mouseY <= 580)
      {
        hasDecided = true;
        if(current.correct == 1)
        {
          ans1 = color(0, 255, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 2)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(0, 255, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 3)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(0, 255, 0);
          ans4 = color(255, 0, 0);
          score += 200;
        }
        if(current.correct == 4)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(0, 255, 0);
        }
      }
       if(mouseX >= 580 && mouseX <= 780 && mouseY >= 480 && mouseY <= 780)
      {
        hasDecided = true;
        if(current.correct == 1)
        {
          ans1 = color(0, 255, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 2)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(0, 255, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 3)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(0, 255, 0);
          ans4 = color(255, 0, 0);
        }
        if(current.correct == 4)
        {
          ans1 = color(255, 0, 0);
          ans2 = color(255, 0, 0);
          ans3 = color(255, 0, 0);
          ans4 = color(0, 255, 0);
          score += 200;
        }
      }
    }
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