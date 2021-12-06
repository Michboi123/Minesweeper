class Cell{
  public int num,row,column;
  public boolean bomb,flag;
  public float w,h;
  public Cell(int row,int column){
    num=0;
    bomb=false;
    flag=false;
    w=20;
    h=20;  
    this.row=row;
    this.column=column;
  }
  public void show(){
    fill(255,255,255);
    rect(row*20,column*20,w,h);
  }
}

//From Jason Huang to Everyone:  03:54 PM
//1) in the constructor of the grid, program a function called placeBombs
//2) use a nested for loop to go through each row and column of the 2d array of Cells
//3) randomly decided to turn on the bomb variable in the cell in the nested for loop
//4) in the show function of the Cell if the bomb variable is true then change the color to be red
//5) write a function in the Cell called mouseover that will return a boolean
//6) in the function check if the mouse is on top of the Cell object or not based on the xy coordinates
