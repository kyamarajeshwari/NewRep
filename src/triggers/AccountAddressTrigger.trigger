//test in Kyama1 by feb6th
trigger AccountAddressTrigger on Account (Before insert) {

list<account>acc=trigger.new;

if(acc[0].Match_Billing_Address__c==true){
for(account acc1 :trigger.new){

   
   acc1.ShippingPostalCode = acc1.BillingPostalCode ;


}

   
}
 

}