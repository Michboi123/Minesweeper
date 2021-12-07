class Cell{
  public int num,row,column;
  public boolean bomb,flag, clicked;
  public float w,h;
  public Cell(int row,int column){
    num=0;
    bomb=false;
    flag=false;
    clicked=false;
    w=20;
    h=20;  
    
    this.row=row;
    this.column=column;
  }
  public void show(){
    fill(255,255,255);
    if(bomb==true && clicked==true){
      fill(255,0,0);
    }
    else if(clicked==true){
      text(num,column*20,row*20);
    }
    rect(column*20,row*20,w,h);
  }
  public boolean mouseover(){
    if((mouseX>= column*20 && mouseX<=column*20+20) && (mouseY>=row*20 && mouseY<=row*20+20)){
      return(true);
    }
    else{
      return(false);
    }
  }
  public void update(){
    show();
    if(mouseover()==true && mousePressed==true){
      clicked=true;
    }
  }
}

//From Jason Huang to Everyone:  03:54 PM
//1) in the constructor of the grid, program a function called placeBombs
//2) use a nested for loop to go through each row and column of the 2d array of Cells
//3) randomly decided to turn on the bomb variable in the cell in the nested for loop
//4) in the show function of the Cell if the bomb variable is true then change the color to be red
//5) write a function in the Cell called mouseover that will return a boolean
//6) in the function check if the mouse is on top of the Cell object or not based on the xy coordinates
