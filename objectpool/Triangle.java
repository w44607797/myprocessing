package objectpool;

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
//        float length = 50.0;
//        fill(#FFEB08);
//        triangle(x-20,y+20,x+20,y+20,x,y-20);
//        fill(0,0,0);
//        textSize(30);
//        text(score,x-15,y+10);
    }


}
