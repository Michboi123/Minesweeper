class Grid{
  public Cell[][] bob;
  public Grid(){
    bob=new Cell[40][40];
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        bob[row][column]=new Cell(row,column);
      }
    }
  }
  public void show(){
    for(int row=0;row<40;row++){
      for(int column=0;column<40;column++){
        bob[row][column].show();
      }
    }
  }
}
