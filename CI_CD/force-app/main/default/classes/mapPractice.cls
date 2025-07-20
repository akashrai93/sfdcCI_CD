public class mapPractice {
	
    /*syntax of map
    
	map<String, String> mp = new map<String, String>();
	map<Integer, String> mp = new map<Integer, String>();
	map<String, Account> mp = new map<String, Account>();
	map<Id, map<id, sObject>> mp = new map<Id, map<Id, sObject>>();
	*/
    
    /*
     * methods of map
    1. put(key, value)
	2. putAll(second map);
	3. size();
	4. value();	to iterate over values
	5. isEmpty();	boolean
	6. remove();
	7. get(key)	receives a value
	8. equal(second map)
	9. containsKey(key);
	10. clear();
	11. clone(); create a copy of map
	12. keySet()	iterate over key
	*/
    
    public void method(){
        map<Integer, String> mp = new map<Integer, String>();
        mp.put(1, 'UP');
        mp.put(2, 'MP');
        mp.put(3, 'AP');
        mp.put(4, 'TN');
        mp.put(5, 'UK');
        mp.put(6, 'JK');
        
        system.debug('1st map----'+mp);
        
        map<Integer, String> mp1 ;
        mp1= mp.clone();
        system.debug('clone of map-----'+mp1);
        system.debug('size of map---'+mp1.size());
        system.debug('is Map empty?'+mp.isEmpty());
        
        mp.remove(1);
        system.debug('remove key 1-----'+mp);
    }
}