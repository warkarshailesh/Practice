import { LightningElement, wire, track } from 'lwc';
import getAccounts from '@salesforce/apex/getRecord.getAccounts';

export default class RecentlyCreatedAccounts extends LightningElement {
    @track columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Created date', fieldName: 'CreatedDate'}
    ];
   @track accountList;

   @wire (getAccounts) wiredAccounts({data,error}){
        if (data) {
             this.accountList = data;
        console.log(data); 
        } else if (error) {
        console.log(error);
        }
   }
}