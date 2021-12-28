package objectpool;

public class GlobalControl {
    private static int minHigh = 20;
    private static int rounds = 0;

    public void plusRounds(){
        rounds++;

    }
    public static int getRounds() {
        return rounds;
    }

}
