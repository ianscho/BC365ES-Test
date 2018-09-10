pageextension 50102 "ACTCustomer Ledger Entries" extends "Customer Ledger Entries"
{
    layout
    {
        addafter("External Document No."){
            field("ACTClassification"; ACTClassification)
            {
               ApplicationArea = All;
            }
        }
    }
    
}