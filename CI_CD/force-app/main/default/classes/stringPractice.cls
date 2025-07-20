public class stringPractice {
	
    public static void stringMethod(string str){
        string var = str;
        list<String> var1 = var.split(' ');
        for(string st : var1){
            system.debug(st.capitalize());
        }
        
        system.debug(var.split(' '));
    }
    
    public static void fetchAccount(string str){
        //string var = str.contains('t');
        string var = '%'+str+'%';
        list<Account> acclist = [Select id, Name From Account Where Name like: var];
        system.debug(acclist);
    }
    
    public static void ignoreCase(){
        string s1 = 'apex';
        string s2 = 'APEX';
        boolean b = system.equals(s1, s2);
        system.debug('boolean :'+b);
    }
    
    public static void startmethod(){
        string str1 = 'Welcome to my city';
        boolean b = str1.startswith('Welcome');
        system.debug(b);
    }
}