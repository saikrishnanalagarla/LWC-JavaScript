import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/GetContacts.gettingContacts';
const colunms=[{label:'First Name', fieldName:'FirstName', Type:'text'},
                {label:'last Name', fieldName:'LastName',  Type:'text'},
                {label:'Email',     fieldName:'Email',     Type:'text'},
                {label:'Phone',     fieldName:'Phone',     Type:'text'},
                ];
export default class Displaying_apex_in_lwc extends LightningElement {
    coloms=colunms;
    @wire (getContacts) contacts;
}