pageextension 50101 ACTCustomerExtension extends "Customer Card"
{
    layout
    {
       addafter(TotalSales2)
       {
           field("ACTClassification"; ACTClassification)
           {
               ApplicationArea = All;
           }
       }
    }
    
}