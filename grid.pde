class Grid{
  public Cell[][] bob;
  public int bombnum=0;
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
    text(bombnum,800,20);
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        bob[row][column].update();
      }
    }
  }
  public void placeBombs(){
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        int ran=int(random(0,9));
        if(ran==1){
          bob[row][column].bomb=true;
          bombnum=bombnum+1;
        }
      }
    }
    countb();
  }
  public void countb(){
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        int count=0;
        for(int i=-1;i<2;i++){
          for(int j=-1;j<2;j++){
            if( !(row+j==-1 || row+j==40 || column+i==-1 || column+i==40) ){
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
  public boolean checkW(){
    int count=0;
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        if(bob[row][column].clicked==false){
          count=count+1;
        }
      }
    }
    if(count==bombnum){
      return(true);
    }
    else{
      return false;
    }
  }
}
