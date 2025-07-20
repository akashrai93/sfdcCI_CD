public class AddRemoveButton {

    public string addvalue{get; set;}
    public list<String> strlist{get; set;}
    
    public AddRemoveButton(){
        strlist = new list<String>();  
    }
    public void add(){
        strlist.add(addvalue);
        addvalue = ''; // Clear the input after adding
    }

    public void remove(){
        strlist.remove(strlist.size()-1);
    }
}