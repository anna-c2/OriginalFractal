public void setup()
{
  size(700,700);
}

public void draw(){
  my_fractal(175,175, 350); 
  my_fractal(525,175, 350); 
  my_fractal(525,525, 350);
  my_fractal(175,525, 350);
}

public void my_fractal(int x, int y, int siz){
  rectMode(CENTER);
  //ellipse(x,y,siz+50,siz+50);
  //base
  fill(#FFE893);
  rect(x, y, siz, siz);
  
  //eye socket
  fill(#FED8FF);
  ellipse(x, y, siz, siz);
  
  //scar?
  fill(#D8F2FF);
  ellipse(x,y, siz/5, siz);
  
  //eyewhite
  fill(255);
  ellipse(x,y, siz, siz/5);
  
  //eyeball
  fill(#176289);
  int ex = x;
  if(ex > mouseX){
    ex -= 5;
  }
  else if(ex < mouseX){
    ex += 5;
  }
  int ey = y;
  if(ey > mouseY){
    ey -= 1;
  }
  else if(ey < mouseY){
    ey += 1;
  }
  
  ellipse(ex, ey, siz/5, siz/5);
   
 //bigger number = less 
  if(siz > 50){
    
    my_fractal(x, y, siz/2);
    //top
    my_fractal((x-siz/3)-siz/23, (y-siz/3)-siz/23, siz/4);
    //bottom
    my_fractal((x-siz/3)-siz/23, (y+siz/3)+siz/23, siz/4);
    
    my_fractal((x+siz/3)+siz/23, (y-siz/3)-siz/23, siz/4);
    my_fractal((x+siz/3)+siz/23, (y+siz/3)+siz/23, siz/4);
  }
}
