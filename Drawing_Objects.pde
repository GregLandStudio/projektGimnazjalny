
Button menubutton1;
Button menubutton2;
Button doubleans1;
Button doubleans2;
Button quadans1;
Button quadans2;
Button quadans3;
Button quadans4;
Button nq;
Button endbutton;

public void load_obj()
{
  menubutton1 = new Button();
  menubutton2 = new Button();
  doubleans1 = new Button();
  doubleans2 = new Button();
  quadans1 = new Button();
  quadans2 = new Button();
  quadans3 = new Button();
  quadans4 = new Button();
  nq = new Button();
  endbutton = new Button();
  //menu buttons
  menubutton1.x = 50;
  menubutton1.y = 420;
  menubutton1.w = 300;
  menubutton1.h = 100;
  menubutton1.col = 200;
  menubutton1.text = "Rozpocznij Quiz!";
  
  menubutton2.x = width - menubutton2.w - 50;
  menubutton2.y = 420;
  menubutton2.w = 200;
  menubutton2.h = 100;
  menubutton2.col = 200;
  menubutton2.text = "Wyjdź...";
  
  endbutton.x = 50;
  endbutton.y = 420;
  endbutton.w = 400;
  endbutton.h = 100;
  endbutton.col = 200;
  endbutton.text = "Zagraj jeszcze raz!";
 
  ans[0] = 200;
  ans[1] = 200;
  ans[2] = 200;
  ans[3] = 200;
  }

 void load_quad()
  {
  quadans1.x = 50;
  quadans1.y = 300;
  quadans1.w = 200;
  quadans1.h = 100;
  quadans1.col = ans[0];
  quadans1.text = current.answers[0];
 
  quadans2.w = 200;
  quadans2.x = width - 250;
  quadans2.y = 300;
  quadans2.h = 100;
  quadans2.col = ans[1];
  quadans2.text = current.answers[1];
  
  quadans3.h = 100;
  quadans3.x = 50;
  quadans3.y = height - 150;
  quadans3.w = 200;
  quadans3.col = ans[2];
  quadans3.text = current.answers[2];
  
  quadans4.w = 200;
  quadans4.x = width - 250;
  quadans4.y = height - 150;
  quadans4.h = 100;
  quadans4.col = ans[3];
  quadans4.text = current.answers[3];
  }
  
  void load_double()
  {
  doubleans1.x = 50;
  doubleans1.y = 425 - doubleans1.h / 2;
  doubleans1.w = 300;
  doubleans1.h = 100;
  doubleans1.col = ans[0];
  doubleans1.text = current.answers[0];
  
  doubleans2.x = width - 350;
  doubleans2.y = 375;
  doubleans2.w = 300;
  doubleans2.h = 100;
  doubleans2.col = ans[1];
  doubleans2.text = current.answers[1];
  }
  
  void load_nq()
  {
  nq.x = 275;
  nq.y = 500;
  nq.w = 250;
  nq.h = 100;
  nq.col = color(0, 255, 255);
  nq.text = "Natępne Pytanie";  
  }
