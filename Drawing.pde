boolean scd = true;
boolean end = false;
int score = 0;
int screen = 1;
int[] ans = new int[4];

void graphics()
{
  if(screen == 1)
  {
  background(255);
  textSize(40);
  textAlign(CENTER);
  fill(100, 100, 255);
  rect(175, 85, 450, 100);
  fill(0);
  text("Informatyczny Quiz", width / 2, height / 4);
  textSize(30);
  menubutton1.display();
  menubutton2.display();
  }
    if(screen == 2)
  {
    background(red(current.background),green(current.background),blue(current.background));
    fill(255);
    rect(0, 250, 800, 350);
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
      load_double();
      doubleans1.display();
      doubleans2.display();
      if(doubleans1.pressed == true || doubleans2.pressed == true)
      {
        load_nq();
        if(scd == true)
        {
        if(doubleans1.pressed == true && current.correct == 1)
        {
          score += 100;
        }
        if(doubleans2.pressed == true && current.correct == 2)
        {
          score += 100;
        }
        scd = false;
        }
        nq.display();
      }
    }
    if(current.answers.length == 4)
    {
      load_quad();
      if(quadans1.pressed == false && quadans2.pressed == false && quadans3.pressed == false && quadans4.pressed == false)
      {
         quadans1.col = 200;
         quadans2.col = 200;
         quadans3.col = 200;
         quadans4.col = 200;
      }
  
      quadans1.display();
      quadans2.display();
      quadans3.display();
      quadans4.display();
      if(quadans1.pressed == true || quadans2.pressed == true || quadans3.pressed == true || quadans4.pressed == true)
      {
        load_nq();
        if(scd == true)
        {
        if(quadans1.pressed == true && current.correct == 1)
        {
          score += 200;
        }
        if(quadans2.pressed == true && current.correct == 2)
        {
          score += 200;
        }
        if(quadans3.pressed == true && current.correct == 3)
        {
          score += 200;
        }
        if(quadans4.pressed == true && current.correct == 4)
        {
          score += 200;
        }
        scd = false;
        }
        nq.display();
      }
    }
      text("Punkty:", 350, 300);
      text(score, 450, 300);
  }
  if(screen == 3)
  {
    background(200, 200, 0);
    textSize(50);
    text("Wynik:", width / 2 - 100, height / 2);
    text(score, width / 2 + 50, height / 2);
    menubutton2.pressed = false;
    textSize(40);
    menubutton2.display();
  }
}

void mousePressed()
{
assert(screen == 1 || screen == 2 || screen == 3) : "Screen number "+screen+" does not exist!"; //Jeżeli będziesz dodawał nowe screeny, dodaj ||screen == 2 po screen == 1
switch(screen)
{
  case 1:
  {
    menubutton1.hitbox();
    menubutton2.hitbox();
    if(menubutton1.pressed)
    {
      screen = 2;
      menubutton1.pressed = false;
    }
    if(menubutton2.pressed)
    {
      menubutton2.pressed = false;
      exit();
    }
  }
  break;
  case 2:
  {
    if(current.answers.length == 2)
    {
      doubleans1.hitbox();
      doubleans2.hitbox();
      if(doubleans1.pressed == true || doubleans2.pressed == true)
      {
        ans[0] = color(255, 0, 0);
        ans[1] = color(255, 0, 0);
        ans[current.correct - 1] = color(0, 255, 0);
        doubleans1.col = ans[0];
        doubleans2.col = ans[1];
        nq.hitbox();
        if(nq.pressed)
        {
          doubleans1.pressed = false;
          doubleans2.pressed = false;
          ans[0] = 200;
          ans[1] = 200;
          nq.pressed = false;
          scd = true;
          end = true;
          qid++;
        }
      }
    }
    if(current.answers.length == 4)
    {
      quadans1.hitbox();
      quadans2.hitbox();
      quadans3.hitbox();
      quadans4.hitbox();
      
      if(quadans1.pressed == true || quadans2.pressed == true || quadans3.pressed == true || quadans4.pressed == true)
      {
        ans[0] = color(255, 0, 0);
        ans[1] = color(255, 0, 0);
        ans[2] = color(255, 0, 0);
        ans[3] = color(255, 0, 0);
        ans[current.correct - 1] = color(0, 255, 0);
        quadans1.col = ans[0];
        quadans2.col = ans[1];
        quadans3.col = ans[2];
        quadans4.col = ans[3];
        nq.hitbox(); 
        if(nq.pressed)
        {
          quadans1.pressed = false;
          quadans2.pressed = false;
          quadans3.pressed = false;
          quadans4.pressed = false;
          ans[0] = 200;
          ans[1] = 200;
          ans[2] = 200;
          ans[3] = 200;
          nq.pressed = false;
          scd = true;
          end = true;
          qid++;
        }
      }
    }
    if(nq.pressed)
    {
      if(mouseX >= 275 && mouseX <= 525 && mouseY >= 375 && mouseY <= 475)
      {
        nq.pressed = false;
        qid++;
      }
    }
  }
  break;
  case 3:
  {
    if(mouseX >= width - menubutton2.w - 50 && mouseX <= width - menubutton2.w + 150 && mouseY >= 420 && mouseY <= 520)
    {
      exit();
    }
  }
  break;
}


}
