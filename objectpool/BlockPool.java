package objectpool;
import java.util.ArrayList;


public class BlockPool {
    public static void main(String[] args) {
        Block block = new Rect();
        addUsedBlock(block);
    }
    private static ArrayList<Block> unuse;
    private static ArrayList<Block> used;
    static {
        unuse = new ArrayList<>();
        used = new ArrayList<>();
    }
    public static void addUsedBlock(Block block){
        used.add(block);
    }
    public static void pushAllUsedBlock(){
        for(Block block:used){
            System.out.println();
        }
    }
    public static void addUnuseBlock(Block block){
        unuse.add(block);
    }

}
