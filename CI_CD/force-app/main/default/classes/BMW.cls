public class BMW implements IVehicle{
	
    
    public static void start(){
        system.debug('car starts\n');
    }
    public void stop(){ 
        system.debug('car stops\n');
    }
    public String changeGear(){
        return '';
    }
    public boolean openDoor(string name){
        return true;
    }
    public static void salemethod(){
        system.debug('car is ready, now sell this car!\n');
    }
}