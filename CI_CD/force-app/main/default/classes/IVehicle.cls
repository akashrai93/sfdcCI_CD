public interface IVehicle {
	
    //no variables can be decelared in interface
    //no construcotrs can be made of interface
    //all belows are method with return types
    void start();
    void stop();
    string changeGear();
    //boolean openDoor(string doortype);
}