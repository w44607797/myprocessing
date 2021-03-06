package shotblock;
import java.util.ArrayList;
import java.util.Random;


public class BlockPool {
    private static final ArrayList<Block> unuse;
    private static final ArrayList<Block> used;
    private static final int MAX_BLOCK = 10;
    static {
        unuse = new ArrayList<>();
        used = new ArrayList<>();
        BuildBlock();
    }
    private static void addUsedBlock(){
        for(Block block:unuse) {
            block.drawBlock();
            used.add(block);
        }
    }
    private static void addUnuseBlock(Block block){
        unuse.add(block);
    }
    private static void BuildBlock() {
        int blockNumber = unuse.size() + used.size();
        if (blockNumber < 10) {
            if (blockNumber % 2 == 0) {
                unuse.add(new Rect(new Random().nextInt(350),new Random().nextInt(20),new Random().nextInt(50)+GlobalControl.getRounds()));
            }else{
                unuse.add(new Triangle(new Random().nextInt(350),new Random().nextInt(20),new Random().nextInt(50)+GlobalControl.getRounds()));
            }
            BuildBlock();
        }
    }

}
