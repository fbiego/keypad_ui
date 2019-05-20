import javax.swing.JOptionPane;

color colA = #23F334;    // pressed button color
color colB = #238334;    // button color
color colC = #235334;    // diabled button color

String keys = "";
String ky = "";
int del = 0;

void setup(){
  size(1200,700);
}

void draw(){
 background(0);
 keypad(150,250,true,40,5,5);

  
  
}

void mouseReleased(){
  del = 0;
}



void keypad(float x, float y,boolean pin,float s, float p, float b){ //pos x, pos y, show '*' or numbers, button size, button spacing, button bezel 

  rectMode(CENTER);
  noStroke();
  
  fill(colB);
  if (mousePressed && mouseX <= x-(s+p)+(s/2) && mouseX >= x-(s+p)-(s/2) && mouseY <= y-(s+p)+(s/2)  && mouseY >= y-(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "1";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x-(s+p),y-(s+p),s,s,b);      //  1
  
  if (mousePressed && mouseX <= x+(s/2) && mouseX >= x-(s/2) && mouseY <= y-(s+p)+(s/2)  && mouseY >= y-(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "2";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x,y-(s+p),s,s,b);         //  2
  if (mousePressed && mouseX <= x+(s+p)+(s/2) && mouseX >= x+(s+p)-(s/2) && mouseY <= y-(s+p)+(s/2)  && mouseY >= y-(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "3";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x+(s+p),y-(s+p),s,s,b);      //  3
  
  if (mousePressed && mouseX <= x-(s+p)+(s/2) && mouseX >= x-(s+p)-(s/2) && mouseY <= y+(s/2)  && mouseY >= y-(s/2)){
    if (del == 0){
      keys = keys + "4";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x-(s+p),y,s,s,b);         //  4
  
  if (mousePressed && mouseX <= x+(s/2) && mouseX >= x-(s/2) && mouseY <= y+(s/2)  && mouseY >= y-(s/2)){
    if (del == 0){
      keys = keys + "5";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x,y,s,s,b);            //  5
  
  if (mousePressed && mouseX <= x+(s+p)+(s/2) && mouseX >= x+(s+p)-(s/2) && mouseY <= y+(s/2)  && mouseY >= y-(s/2)){
    if (del == 0){
      keys = keys + "6";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x+(s+p),y,s,s,b);         //  6
  
  if (mousePressed && mouseX <= x-(s+p)+(s/2) && mouseX >= x-(s+p)-(s/2) && mouseY <= y+(s+p)+(s/2)  && mouseY >= y+(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "7";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x-(s+p),y+(s+p),s,s,b);      //  7
  
  if (mousePressed && mouseX <= x+(s/2) && mouseX >= x-(s/2) && mouseY <= y+(s+p)+(s/2)  && mouseY >= y+(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "8";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x,y+(s+p),s,s,b);         //  8
  
  if (mousePressed && mouseX <= x+(s+p)+(s/2) && mouseX >= x+(s+p)-(s/2) && mouseY <= y+(s+p)+(s/2)  && mouseY >= y+(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "9";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x+(s+p),y+(s+p),s,s,b);      //  9
  
  if (mousePressed && mouseX <= x-(s+p)+(s/2) && mouseX >= x-(s+p)-(s/2) && mouseY <= y+2*(s+p)+(s/2)  && mouseY >= y+2*(s+p)-(s/2)){
    if (del == 0){
      if (keys.length() > 0){
      keys = keys.substring(0,keys.length()-1);
      }
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x-(s+p),y+2*(s+p),s,s,b);     //  clear
  
  if (mousePressed && mouseX <= x+(s/2) && mouseX >= x-(s/2) && mouseY <= y+2*(s+p)+(s/2)  && mouseY >= y+2*(s+p)-(s/2)){
    if (del == 0){
      keys = keys + "0";
      del++;
    }
    fill(colA);
  } else {
    fill(colB);
  }
  rect(x,y+2*(s+p),s,s,b);        //  0
  
  if (keys.length() >=4){
    if (mousePressed && mouseX <= x+(s+p)+(s/2) && mouseX >= x+(s+p)-(s/2) && mouseY <= y+2*(s+p)+(s/2)  && mouseY >= y+2*(s+p)-(s/2)){
      if (del == 0){
        del++;
        JOptionPane.showMessageDialog(frame,keys);
        keys = "";
      }
      fill(colA);
    } else {
      fill(colB);
    }
  } else {
    fill(colC);
  }
  rect(x+(s+p),y+2*(s+p),s,s,b);     //  ENTER
  
  fill(colB);
  rect(x,y-2*(s+p),(3*s)+(2*p),s,1); //textarea
  fill(0);
  
  if (ky.length() != keys.length()){
    ky = "";
    for (int len = 0;len < keys.length();len++){
      ky = ky + "*";
    }
  }
  
  textSize(s-20);
  textAlign(CENTER,CENTER);
  text("1",x-(s+p),y-(s+p));      //  1
  text("2",x,y-(s+p));         //  2
  text("3",x+(s+p),y-(s+p));      //  3
  text("4",x-(s+p),y);         //  4
  text("5",x,y);            //  5
  text("6",x+(s+p),y);         //  6
  text("7",x-(s+p),y+(s+p));      //  7
  text("8",x,y+(s+p));         //  8
  text("9",x+(s+p),y+(s+p));      //  9
  text("C",x-(s+p),y+2*(s+p));     //  clear
  text("0",x,y+2*(s+p));        //  0
  text("OK",x+(s+p),y+2*(s+p));     //  ENTER
  if (pin){
    text(ky,x,y-2*(s+p));
  } else {
    text(keys,x,y-2*(s+p));
  }

}
