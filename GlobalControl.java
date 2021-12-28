package shotblock;

import java.util.ArrayList;

public class GlobalControl {
    private static int minHigh = 20;
    private static int rounds = 0;
    private static int ballNumber = 30;
    public void plusRounds(){
        rounds++;
        ballNumber++;

    }
    public static int getRounds() {
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
    public void judge(){
        if(minHigh>=500){
            //
        }
    }


}
