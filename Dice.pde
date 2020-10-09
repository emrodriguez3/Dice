void setup()
  {
    size(600,700);
    noLoop();
  }
  void draw()
  {
      background(0,0,0);
      int dotSum = 0;
      for(int x = 11; x >= 0 ;x--){
        Die n = new Die(x*50,x*0);
        n.roll();
        n.show(); 
         dotSum = dotSum + n.roller;
        for(int y = 11; y > 0; y--){
        Die g = new Die(x*50,y*50);
        g.roll();
        g.show();
         dotSum = dotSum + g.roller;
        
        }
      }
      fill(255);
      textAlign(CENTER);
      text(" Sum: " + dotSum, 300, 650);
      
      
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int coordinateX;
      int coordinateY;
      int roller = 1;
      Die(int x, int y) 
      {
          this.coordinateX = x; 
          this.coordinateY = y;
      }
      void roll()
      {
         this.roller = (int)(Math.random()*6+1);
 
      }
      void show()
      {
        rect(this.coordinateX,this.coordinateY,50,50);
          if(roller == 1){
            fill(242, 20,20);
            ellipse(coordinateX +25 , coordinateY+25,7,7);
          } 
          else if (roller == 2){
            fill(242,20,20);
            ellipse(coordinateX +10, coordinateY +10, 7, 7);
            ellipse(coordinateX +40, coordinateY + 40, 7, 7);
          }
          else if(roller == 3){
          fill(242,20,20);
          ellipse(coordinateX +25, coordinateY +25, 7, 7);
          ellipse(coordinateX +10, coordinateY +10, 7, 7);
          ellipse(coordinateX +40, coordinateY +40, 7, 7);
          
          }
          else if(roller == 4){
          fill(242,20,20);
          ellipse(coordinateX +10, coordinateY +10, 7, 7);
          ellipse(coordinateX +40, coordinateY +40, 7, 7);
          ellipse(coordinateX +40, coordinateY +10, 7, 7);
          ellipse(coordinateX +10, coordinateY +40, 7, 7);
          }
          else if (roller == 5){
          fill(242,20,20);
          ellipse(coordinateX +25, coordinateY +25, 7, 7);
          ellipse(coordinateX +10, coordinateY +10, 7, 7);
          ellipse(coordinateX +40, coordinateY +40, 7, 7);
          ellipse(coordinateX +10, coordinateY +40, 7, 7);
          ellipse(coordinateX +40, coordinateY +10, 7, 7);
          }
          else{
          fill(242,20,20);
          ellipse(coordinateX +10, coordinateY +10, 7, 7);
          ellipse(coordinateX +40, coordinateY +40, 7, 7);
          ellipse(coordinateX +10, coordinateY +40, 7, 7);
          ellipse(coordinateX +40, coordinateY +10, 7, 7);
          ellipse(coordinateX +40, coordinateY +25, 7, 7);
          ellipse(coordinateX +10, coordinateY +25, 7, 7);
          }
          
          fill(255,255,255);
         
      }
  }
