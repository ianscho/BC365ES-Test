codeunit 50101 ACTManagement
{
    trigger OnRun()
    begin
        
    end;

    [EventSubscriber(ObjectType::Table, 21, 'OnAfterCopyCustLedgerEntryFromGenJnlLine','', false, false)]
    local procedure ACTAddCustomerTypeToCustLedgerEntry(var CustLedgerEntry : record 21; GenJournalLine : Record 81)
    begin
        rCust.Get(CustLedgerEntry."Customer No.");
        CustLedgerEntry.Validate(ACTClassification, rCust.ACTClassification);
    end;
    var
        rCust: Record 18;
}