int x=200,y=200,z=0;
int w=50,h=50;
 void setup(){
 size(800,800);    //screen size //<>//
 background(255,255,255);
 noStroke();
 }
 
 void draw(){ //<>//
       //packman start function 
    background(0,125,190);    //screen back color
    fill(0,0,0);    //packman out line color
    if(z%10<5){
    arc(x,y,w+3,h+3,radians(27),radians(333));
    }else{
      arc(x,y,w+3,h+3,radians(7),radians(353));
    }
    fill(255,180,250);    //packman body color
    if(z%10<5){
    arc(x,y,w,h,radians(30),radians(330));
    }else{
      arc(x,y,w,h,radians(10),radians(350));
    }
    fill(0,0,0);    //packman eye color
    ellipse(x,y-10,8,8);
    z+=1;
   
   switch(key){ 
    case 'd':    //packman right move function
    
    background(0,125,190);    //screen back color
    fill(0,0,0);    //packman out line color
    if(x%10<5){
    arc(x,y,w+3,h+3,radians(27),radians(333));
    }else{
      arc(x,y,w+3,h+3,radians(7),radians(353));
    }
    fill(255,180,250);    //packman body color
    if(x%10<5){
    arc(x,y,w,h,radians(30),radians(330));
    }else{
      arc(x,y,w,h,radians(10),radians(350));
    }
    fill(0,0,0);    //packman eye color
    ellipse(x,y-10,8,8);
    x+=2;
    if(800<x){
      x=0;
    }
    return;
    
    case 'w':    //packman foward move function
    
    background(0,125,190);    //screen back color
    fill(0,0,0);    //packman out line color
    if(y%10<5){
    arc(x,y,w+3,h+3,radians(-63),radians(243));
    }else{
      arc(x,y,w+3,h+3,radians(-83),radians(263));
    }
    fill(255,180,250);    //packman body color
    if(y%10<5){
    arc(x,y,w,h,radians(-60),radians(240));
    }else{
      arc(x,y,w,h,radians(-80),radians(260));
    }
    fill(0,0,0);    //packman eye color
    ellipse(x-10,y,8,8);
    y-=2;
    if(0>y){
      y=800;
    }
    return;
    
    case 'a':    //packman left move function
    
    background(0,125,190);    //screen back color
    fill(0,0,0);    //packman out line color
    if(x%10<5){
    arc(x,y,w+3,h+3,radians(-153),radians(153));
    }else{
      arc(x,y,w+3,h+3,radians(-173),radians(173));
    }
    fill(255,180,250);    //packman body color
    if(x%10<5){
    arc(x,y,w,h,radians(-150),radians(150));
    }else{
      arc(x,y,w,h,radians(-170),radians(170));
    }
    fill(0,0,0);    //packman eye color
    ellipse(x,y-10,8,8);
    x-=2;
    if(0>x){
      x=800;
    }
    return;
    
    case 's':    //packman back move function
    
    background(0,125,190);    //screen back color
    fill(0,0,0);    //packman out line color
    if(y%10<5){
    arc(x,y,w+3,h+3,radians(-243),radians(63));
    }else{
      arc(x,y,w+3,h+3,radians(-263),radians(83));
    }
    fill(255,180,250);    //packman body color
    if(y%10<5){
    arc(x,y,w,h,radians(-240),radians(60));
    }else{
      arc(x,y,w,h,radians(-260),radians(80));
    }
    fill(0,0,0);    //packman eye color
    ellipse(x-10,y,8,8);
    y+=2;
    if(800<y){
      y=0;
    }
    return;
    
   }
 }
 
 void moveAtRandom(){ 
   x=int(random(800));
   y=int(random(800));
 } //<>//
 boolean isMouseInside(){    //packman move action //<>//
   if(mouseX>x-w&&mouseX<x+w &&mouseY>y-h &&mouseY<y+h){
     return true;
   }else{
     return false;
   } //<>//
 }
 void mouseClicked(){    //packman random move by clicked
   if(isMouseInside()){
     moveAtRandom();
   }
 }
 void keyPressed(){    //packman control function
   switch(key){
   case 'b':    //packman big function
     w+=3;
     h+=3;
     return;
   case 'v':    //packman small function
     w-=3;
     h-=3;
     return;
   }
   }