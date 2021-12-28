void setup(){
  size(350,550); 
  background(255,255,255);
  
  
}
void draw(){
    background(255,255,255);
    
}


public interface Block {
    void drawBlock();
}
public class Ball {
int x;
  int y;
  double g = 9.8;
  int vy = 30;
  void initBall(int x,int y){
   ellipse(x,y,20,20);
   fill(0,0,0);
}
}

class YRandomFactory{
  int buildYRandom(){
    return (int)random(0,20);
  }
  int buildXRandom(){
   return (int)random(0,350);
  }
}
class scoreRandom{
    int buildSRandom(){
    return (int)random(30,100);
  }
}

public static class BlockPool {
    private static ArrayList<Block> unuse;
    private static ArrayList<Block> used;
    private static final int MAX_BLOCK = 10;
    static {
        unuse = new ArrayList<Block>();
        used = new ArrayList<Block>();
        BuildBlock();
    }
    public static void addUsedBlock(Block block){
        used.add(block);
    }
    public static void pushAllUsedBlock(){
        for(Block block:used){
             block.drawBlock();
             addUsedBlock(block);
        }
    }
    public static void addUnuseBlock(Block block){
        unuse.add(block);
    }
    
    private static void BuildBlock() {
      
     try{ 
        int blockNumber = unuse.size() + used.size();
        if (blockNumber < 10) {
            if (blockNumber % 2 == 0) {
                unuse.add(new Rect(new XRandomFactory().buildXRandom(),new YRandomFactory().buildYRandom(),new scoreRandom().buildSRandom()+GlobalControl.getRounds()));
            }else{
                unuse.add(new Triangle(new XRandomFactory().buildXRandom(),new YRandomFactory().buildYRandom(),new scoreRandom().buildSRandom()+GlobalControl.getRounds()));
            }
        }
    }catch(Exception e){
      print(e);
    }
    }
    public static class GlobalControl {
    private static int minHigh = 20;
    private static int rounds = 0;

    public void plusRounds(){
        rounds++;

    }
    public static int getRounds() {
        return rounds;
    }

}

}

public class Rect implements Block{
    private int x;
    private int y;
    private int score;
    Rect(int x,int y,int score){
        this.x = x;
        this.y = y;
        this.score = score;
    }
    @Override
    public void drawBlock() {
        rect(x, y, 55, 55, 7);
    }
}
class XRandomFactory{
  
  int buildXRandom(){
   return (int)random(0,350);
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


}
