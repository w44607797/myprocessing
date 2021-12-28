package shotblock;

public class PoolFactory {
    private PoolFactory(){}
    public static BlockPool buildPool(){
        return new BlockPool();
    }
}
