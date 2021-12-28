package objectpool;

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
//        rect(x, y, 55, 55, 7);


    }
}
