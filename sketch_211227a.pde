private static ArrayList<Block> unuse;
    private static ArrayList<Block> used;
    int minHigh = 50;
    double g = 9.8;
GlobalControl gc;
BlockPool bp;
void setup(){
  size(350,550); 
  background(255,255,255);
  unuse = new ArrayList<Block>();
        used = new ArrayList<Block>();
        bp = new BlockPool();
        bp.BuildBlock();
        gc = new GlobalControl();
  
}
void draw(){
  textSize(15);
  text("score:",280,30);
  
    

}


public interface Block {
    void drawBlock();
    int getY();
}
public class Ball {
int x;
  int y;
  int vy = 30;
  Ball(int x,int y){}
  void initBall(int x,int y){
   ellipse(x,y,20,20);
   fill(0,0,0);
}
}
public class BallPool {
    
    ArrayList<Ball> usingBall = new ArrayList<>();
    ArrayList<Ball> unusedBall = new ArrayList<>();
    private void buildBall(){
        int ballNumber = usingBall.size()+unusedBall.size();
        for(int i = ballNumber;i<50;i++){
            unusedBall.add(new Ball(175,20));
        }
    }
}

public class BlockPool {
    private static final int MAX_BLOCK = 10;
    private void addUsedBlock(){
        for(Block block:unuse) {
            block.drawBlock();
            used.add(block);
        }
    }
    public void addUnuseBlock(Block block){
        unuse.add(block);
    }    
    private void BuildBlock() {
        int blockNumber = unuse.size() + used.size();
        if (blockNumber < 2) {
            if (blockNumber % 2 == 0) {
                unuse.add(new Rect((int)random(10,340),(int)random(20,50),(int)random(0,50)));
            }else{
                unuse.add(new Triangle((int)random(0,350),(int)random(0,50),(int)random(0,50)));
            }
            BuildBlock();
        }
        bp.addUsedBlock();
    
    }
   

}
 public class GlobalControl {
    private int rounds = 0;
    private int ballNumber = 30;
    public void plusRounds(){
        rounds++;
        ballNumber++;
    }
    public int getRounds() {
        return rounds;
    }
    public void keepingDraw(BlockPool blockPool,Ball ball){

    }
    public void getMinHigt(ArrayList<Block> used){
        int temp = minHigh;
        for(Block block:used){
            block.getY();
            if(temp>minHigh){minHigh=temp;}
        }
    }
    
}

    


public class Rect implements Block{
    private int x;
    private int y;
    private int score;
    public Rect(int x,int y,int score){
        this.x = x;
        this.y = y;
        this.score = score;
    }
    @Override
    public void drawBlock() {
      fill(#00FFDF);
        rect(x, y, 55, 55, 7);
        fill(0,0,0);
        textSize(30);
        text(score,x+4,y+37);
    }
    @Override
    public int getY() {
        return y;
    }
}




public class Triangle implements Block{
    private int x;
    private int y;
    private int score;
    Triangle(int x, int y, int score){
        this.x = x;
        this.y = y;
        this.score = score;
    }
    @Override
    public void drawBlock() {
        float length = 50.0;
        fill(#FFEB08);
        triangle(x-20,y+20,x+20,y+20,x,y-20);
        fill(0,0,0);
        textSize(30);
        text(score,x-15,y+10);
    }
    @Override
    public int getY() {
        return y;
    }
}
