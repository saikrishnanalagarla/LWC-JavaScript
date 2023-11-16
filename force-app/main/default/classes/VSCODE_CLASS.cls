/*
*  Author:-SaiKrishna
*  Description:- 
*  Created :- 
*  Last Updated :
*/
public with sharing class VSCODE_CLASS {

    public VSCODE_CLASS() {

    Account acc=[SELECT Id,Name from Account WHERE Name ='gopi'];
    System.debug(acc);

    }
}