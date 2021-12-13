class Grid{
  public Cell[][] bob;
  public Grid(){
    bob=new Cell[40][40];
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        bob[row][column]=new Cell(row,column);
      }
    }
    placeBombs();
  }
  public void show(){
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        bob[row][column].update();
      }
    }
  }
  public void placeBombs(){
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        int ran=int(random(0,3));
        if(ran==1){
          bob[row][column].bomb=true;
        }
      }
    }
    countb();
  }
  public void countb(){
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        int count=0;
        if((row>=1 && row<=40) && (column>=1 && column<=40)){
          for(int i=-1;i<1;i++){
            for(int j=-1;j<1;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        else if(row==0 && (column>=1 && column<=40)){
           for(int i=-1;i<1;i++){
            for(int j=0;j<2;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(row==40 && (column!=0 && column!=40)){
          for(int i=-1;i<2;i++){
            for(int j=-1;j<1;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(column==0 && (row>=1 && row<=40)){
          for(int i=0;i<2;i++){
            for(int j=-1;j<1;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(column==40 && (row!=0 && row!=40)){
          for(int i=-1;i<1;i++){
            for(int j=-1;j<2;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(row==40 && column==0){
          for(int i=0;i<2;i++){
            for(int j=-1;j<1;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(row==0 && column==40){
          for(int i=0;i<2;i++){
            for(int j=-1;j<1;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(row==0 && column==0){
          for(int i=0;i<2;i++){
            for(int j=0;j<2;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        if(row==40 && column==40){
          for(int i=-1;i<1;i++){
            for(int j=-1;j<1;j++){
              if(bob[row+j][column+i].bomb==true){
                count=count+1;
              }
            }
          }
        }
        bob[row][column].num=count;
      }
    }
  }
}
