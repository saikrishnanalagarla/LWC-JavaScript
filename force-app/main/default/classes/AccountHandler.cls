public with sharing class AccountHandler {
    public AccountHandler() {}

        public static void insertAccount(Integer numOfRecords){
            List<Account> addAccounts=new List<Account>();
            Integer i=0;
            while (i<numOfRecords) {
                Account acc=new Account();
                acc.Name='apexChiranjevi';
                acc.Rating='Cold';
                acc.AccountNumber='55667788';
                acc.Phone='7799573545';
                acc.Industry='Chemical';
                acc.Email_ID__c='chiranjevi@gmail.com';
                acc.Type='Prospect';
                acc.BillingCity='North America';
                addAccounts.add(acc);
                i++;
            }
            
            insert addAccounts;
            system.debug('records inserted successfully ');
          
        }

    
}