package shotblock;

import java.util.ArrayList;

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
