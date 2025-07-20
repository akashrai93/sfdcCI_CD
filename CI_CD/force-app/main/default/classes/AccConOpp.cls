public class AccConOpp {

    public account acc{get; set;}
    public contact con{get; set;}
    public opportunity opp{get; set;}
    
    public AccConOpp (){
        
        acc = new account();

    }
    
    public PageReference savemethod(){
        
        insert acc;
        
        
        con = new contact();
        con.AccountId = acc.Id;
        con.lastname = acc.Name;
        con.FirstName = acc.Name;
        
        opp = new opportunity();
        opp.name = acc.Name;
        opp.AccountId = acc.Id;
        opp.CloseDate = system.today();
        opp.StageName = 'Qualification';
        
        insert con;
        insert opp;
        
        PageReference actP= new PageReference('/' + acc.Id);
        //actP.setRedirect(true);
        return actP;
        
        
        
    }
    
    
}