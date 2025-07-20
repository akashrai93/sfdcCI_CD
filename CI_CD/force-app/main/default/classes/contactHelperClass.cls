public with sharing class contactHelperClass {
    public contactHelperClass() {

    }

    @AuraEnabled
    public static list<Contact> fetchContactOnAccountName(string str){
        try {
            string userInput = '%'+str+'%';
            list<Contact> contactList = [Select Id, Name From Contact Where Account.Name LIKE: userInput];
            return contactList;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable = true)
    public static list<Account> fetchAccounttest(){
        list<Account> acclist = [Select Id, Name From Account];
        return acclist;
    }
    @AuraEnabled
    public static list<Contact> fetchContacttest(string str){
        list<COntact> conlist = [Select Id, Name FROM COntact Where AccountId =: str];
        return conlist;
    }

    @AuraEnabled
    public static string fetchContact(string recordId, string conname, string conphone){
        try {
            Contact con = new Contact(Id = recordId, LastName = conname, Phone = conphone);
            update con;
            return 'success';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }


    @AuraEnabled(cacheable = true)
    public static list<sObject> fetchContactDatatable(){
        try {
            list<Contact> contactlist = [Select Id, Name, Phone, Email, AccountId, Account.Name From Contact Where AccountId != null];
            return contactList;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    //fetch Account on the basis of AccountSource
    @AuraEnabled(cacheable =true)
    public static list<Account> returnAccount(string str){
        list<Account> acclist = [Select Id, Name From Account Where AccountSource =: str];
        return acclist;
    }
}