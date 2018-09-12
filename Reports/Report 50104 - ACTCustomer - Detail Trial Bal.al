report 50104 "ACTCustomer - Detail Trial Bal"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ACTCustomer - Detail Trial Bal.rdlc';
    Caption = 'Cliente - Movimientos';

    dataset
    {
        dataitem(Customer;Customer)
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.","Search Name","Customer Posting Group","Date Filter";
            column(TodayFormatted;FORMAT(TODAY,0,4))
            {
            }
            column(DateFilter_Cust;STRSUBSTNO(Text000,CustDateFilter))
            {
            }
            column(CompanyName;COMPANYPROPERTY.DISPLAYNAME)
            {
            }
            column(PrintAmountsInLCY;PrintAmountsInLCY)
            {
            }
            column(ExcludeBalanceOnly;ExcludeBalanceOnly)
            {
            }
            column(TableFilter_Cust;Customer.TABLECAPTION + ': ' + CustFilter)
            {
            }
            column(CustFilter;CustFilter)
            {
            }
            column(RemainingAmtCaption;RemainingAmtCaption)
            {
            }
            column(No_Customer;"No.")
            {
            }
            column(Name_Cust;Name)
            {
            }
            column(PhoneNo_Customer;"Phone No.")
            {
                IncludeCaption = true;
            }
            column(PageGroupNo;PageGroupNo)
            {
            }
            column(StartBalanceLCY;StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(StartCustCreditAmountAdj;StartCustCreditAmountAdj)
            {
                AutoFormatType = 1;
            }
            column(StartCustDebitAmountAdj;StartCustDebitAmountAdj)
            {
                AutoFormatType = 1;
            }
            column(CustBalanceLCY;CustBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(StartBalAdjLCYCustBody;StartBalAdjLCY)
            {
            }
            column(StartCustDAmtDCorrDebitApp;StartCustDebitAmount + DebitCorrection + DebitApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartCustCAmtCCorrCreditApp;StartCustCreditAmount + CreditCorrection + CreditApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCYBalAdjLCY;StartBalanceLCY + StartBalAdjLCY)
            {
                AutoFormatType = 1;
            }
            column(CreditTotal;StartCustCreditAmountTotal + CreditCorrection + CreditApplicationRounding)
            {
            }
            column(DebitCrrctn;DebitCorrectionTotal)
            {
            }
            column(DebitAppRundCtrl1;DebitApplicationRounding)
            {
            }
            column(CreditAppRundCtrl1;CreditApplicationRounding)
            {
            }
            column(StartCustDebitAmtTotal;StartCustDebitAmountTotal)
            {
            }
            column(StartCustCreditAmtTotal;StartCustCreditAmountTotal)
            {
            }
            column(CreditCorrectionCtrl1;CreditCorrectionTotal)
            {
            }
            column(SBalLCYCLEAmtLCYCorrApp;StartBalanceLCY + "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(GlobalDim2Filter_Cust;"Global Dimension 2 Filter")
            {
            }
            column(CustomerDetailTrialBalCaption;CustomerDetailTrialBalCaptionLbl)
            {
            }
            column(CurrReportPageNoCaption;CurrReportPageNoCaptionLbl)
            {
            }
            column(AllamountsareinLCYCaption;AllamountsareinLCYCaptionLbl)
            {
            }
            column(Notes;NotesLbl)
            {
            }
            column(CustLedgerEntryPostingDateCaption;CustLedgerEntryPostingDateCaptionLbl)
            {
            }
            column(CustLedgerEntryDocumentTypeCaption;CustLedgerEntryDocumentTypeCaptionLbl)
            {
            }
            column(DebitCaption;DebitCaptionLbl)
            {
            }
            column(CreditCaption;CreditCaptionLbl)
            {
            }
            column(CustBalanceLCYCaption;CustBalanceLCYCaptionLbl)
            {
            }
            column(AdjofOpeningBalanceCaption;AdjofOpeningBalanceCaptionLbl)
            {
            }
            column(TotalLCYBeforePeriodCaption;TotalLCYBeforePeriodCaptionLbl)
            {
            }
            column(TotalLCYCaption;TotalLCYCaptionLbl)
            {
            }
            column(TotalAdjofOpeningBalanceCaption;TotalAdjofOpeningBalanceCaptionLbl)
            {
            }
            column(ExternalDocNoCaption;ExternalDocNoCaptionLbl)
            {
            }
            dataitem("Cust. Ledger Entry";"Cust. Ledger Entry")
            {
                DataItemLink = "Customer No."=FIELD("No."),"Posting Date"=FIELD("Date Filter"),"Global Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),"Global Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),"Date Filter"=FIELD("Date Filter");
                DataItemTableView = SORTING("Customer No.","Posting Date");
                column(StartBalLCYBalAdjLCYAmtLCY;StartBalanceLCY + StartBalAdjLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(PostDate_CustLedgEntry;FORMAT("Posting Date"))
                {
                }
                column(DocType_CustLedgEntry;"Document Type")
                {
                }
                column(DocNo_CustLedgEntry;"Document No.")
                {
                    IncludeCaption = true;
                }
                column(ExtDocNo_CustLedgEntry;"External Document No.")
                {
                }
                column(Desc_CustLedgEntry;Description)
                {
                    IncludeCaption = true;
                }
                column(CustCredit;CustCredit)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustDebit;CustDebit)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustRemainAmt;CustRemainAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(EntryNo_CustLedgEntry;"Entry No.")
                {
                    IncludeCaption = true;
                }
                column(CustCurrencyCode;CustCurrencyCode)
                {
                }
                column(CustBalanceLCYCtrl56;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(GlblDim1Code_CustLedgEntry;"Global Dimension 1 Code")
                {
                }
                dataitem("Detailed Cust. Ledg. Entry";"Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No."=FIELD("Entry No.");
                    DataItemTableView = SORTING("Cust. Ledger Entry No.","Entry Type","Posting Date") WHERE("Entry Type"=CONST("Correction of Remaining Amount"));
                    column(DocType1_CustLedgEntry;"Cust. Ledger Entry"."Document Type")
                    {
                    }
                    column(EntryType_DtdCustLedgEntry;"Entry Type")
                    {
                    }
                    column(DebitCorrection;DebitCorrection)
                    {
                        AutoFormatType = 1;
                    }
                    column(CreditCorrection;CreditCorrection)
                    {
                        AutoFormatType = 1;
                    }
                    column(CustBalanceLCYCtrl61;CustBalanceLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(EntryNo_DtdCustLedgEntry;"Entry No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    var
                        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                    begin
                        Correction := Correction + "Amount (LCY)";
                        if Correction > 0 then begin
                          DebitCorrection := Correction;
                          DebitCorrectionTotal := DebitCorrectionTotal + "Amount (LCY)";
                        end else begin
                          CreditCorrection := Correction;
                          CreditCorrectionTotal := CreditCorrectionTotal + "Amount (LCY)";
                        end;
                        CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                        CustBalanceLCYTotal := CustBalanceLCYTotal + "Amount (LCY)"  ;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETFILTER("Posting Date",CustDateFilter);
                        Correction := 0;
                    end;
                }
                dataitem("Detailed Cust. Ledg. Entry2";"Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No."=FIELD("Entry No.");
                    DataItemTableView = SORTING("Cust. Ledger Entry No.","Entry Type","Posting Date") WHERE("Entry Type"=CONST("Appln. Rounding"));
                    column(DocNoCtrl31_CustLedgEntry;"Cust. Ledger Entry"."Document No.")
                    {
                    }
                    column(EntryType_DtdCustLedgEntry2;"Entry Type")
                    {
                    }
                    column(DebitApplicationRounding;DebitApplicationRounding)
                    {
                        AutoFormatType = 1;
                    }
                    column(CreditApplicationRounding;CreditApplicationRounding)
                    {
                        AutoFormatType = 1;
                    }
                    column(CustBalanceLCYCtrl73;CustBalanceLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(CustLedgENo_DtdCustLedgEntry2;"Cust. Ledger Entry No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ApplicationRounding := ApplicationRounding + "Amount (LCY)";
                        if ApplicationRounding > 0 then begin
                          DebitApplicationRounding := ApplicationRounding;
                          DebitApplicationRoundingTotal := DebitApplicationRoundingTotal + DebitApplicationRounding;
                        end
                        else begin
                          CreditApplicationRounding := ApplicationRounding;
                          CreditApplicationRoundingTotal := CreditApplicationRoundingTotal + CreditApplicationRounding;
                        end;
                        CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                        CustBalanceLCYTotal := CustBalanceLCYTotal + "Amount (LCY)";
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETFILTER("Posting Date",CustDateFilter);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CALCFIELDS(Amount,"Remaining Amount","Amount (LCY)","Remaining Amt. (LCY)","Debit Amount (LCY)","Credit Amount (LCY)",
                      "Debit Amount","Credit Amount");
                    CustLedgEntryExists := true;
                    if PrintAmountsInLCY then begin
                      CustAmount := "Amount (LCY)";
                      CustDebit := "Debit Amount (LCY)";
                      CustCredit := "Credit Amount (LCY)";
                      CustRemainAmount := "Remaining Amt. (LCY)";
                      CustCurrencyCode := '';
                    end else begin
                      CustAmount := Amount;
                      CustDebit := "Debit Amount";
                      CustCredit := "Credit Amount";
                      CustRemainAmount := "Remaining Amount";
                      CustCurrencyCode := "Currency Code";
                    end;
                    CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                    StartCustCreditAmount := StartCustCreditAmount + "Credit Amount (LCY)";
                    StartCustDebitAmount := StartCustDebitAmount + "Debit Amount (LCY)";
                    if ("Document Type" = "Document Type"::Payment) or ("Document Type" = "Document Type"::Refund) then
                      CustEntryDueDate := 0D
                    else
                      CustEntryDueDate := "Due Date";

                    StartCustCreditAmountTotal := StartCustCreditAmountTotal + "Credit Amount (LCY)";
                    StartCustDebitAmountTotal := StartCustDebitAmountTotal + "Debit Amount (LCY)";

                    CustBalanceLCYTotal := CustBalanceLCYTotal + "Amount (LCY)";
                end;

                trigger OnPreDataItem()
                begin
                    CustLedgEntryExists := false;
                    CurrReport.CREATETOTALS(CustAmount,CustDebit,CustCredit,"Amount (LCY)");
                    StartCustDebitAmount := 0;
                    StartCustCreditAmount := 0;
                end;
            }
            dataitem("Integer";"Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                column(CustomerNameCtrl48;Customer.Name)
                {
                }
                column(CustBalanceLCYCtrl62;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(StartBalAdjLCYCtrl81;StartBalAdjLCY)
                {
                }
                column(CustBalLCYDAmtDAmtAdj;StartCustDebitAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustBalLCYCAmtCAmtAdj;StartCustCreditAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(VStartBalanceLCYTotalDataset;StartBalanceLCYTotal)
                {
                }
                column(VStartBalAdjLCYTotalDataset;StartBalAdjLCYTotal)
                {
                }
                column(VCustBalanceLCYTotalDataset;CustBalanceLCYTotal)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if not CustLedgEntryExists and ((StartBalanceLCY = 0) or ExcludeBalanceOnly) then begin
                      StartBalanceLCY := 0;
                      CurrReport.SKIP;
                    end;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                if PrintOnlyOnePerPage then
                  PageGroupNo := PageGroupNo + 1;

                StartBalanceLCY := 0;
                StartBalAdjLCY := 0;
                if CustDateFilter <> '' then begin
                  if GETRANGEMIN("Date Filter") <> 0D then begin
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change (LCY)");
                    StartBalanceLCY := "Net Change (LCY)";
                    StartCustDebitAmount := "Cust. Ledger Entry"."Debit Amount (LCY)";
                    StartCustCreditAmount := "Cust. Ledger Entry"."Credit Amount (LCY)";
                  end;
                  SETFILTER("Date Filter",CustDateFilter);
                  CALCFIELDS("Net Change (LCY)");
                  StartBalAdjLCY := "Net Change (LCY)";
                  CustLedgEntry.SETCURRENTKEY("Customer No.","Posting Date");
                  CustLedgEntry.SETRANGE("Customer No.",Customer."No.");
                  CustLedgEntry.SETFILTER("Posting Date",CustDateFilter);
                  if CustLedgEntry.FIND('-') then
                    repeat
                      CustLedgEntry.SETFILTER("Date Filter",CustDateFilter);
                      CustLedgEntry.CALCFIELDS("Amount (LCY)");
                      StartBalAdjLCY := StartBalAdjLCY - CustLedgEntry."Amount (LCY)";
                      "Detailed Cust. Ledg. Entry".SETCURRENTKEY("Cust. Ledger Entry No.","Entry Type","Posting Date");
                      "Detailed Cust. Ledg. Entry".SETRANGE("Cust. Ledger Entry No.",CustLedgEntry."Entry No.");
                      "Detailed Cust. Ledg. Entry".SETFILTER("Entry Type",'%1|%2',
                        "Detailed Cust. Ledg. Entry"."Entry Type"::"Correction of Remaining Amount",
                        "Detailed Cust. Ledg. Entry"."Entry Type"::"Appln. Rounding");
                      "Detailed Cust. Ledg. Entry".SETFILTER("Posting Date",CustDateFilter);
                      if "Detailed Cust. Ledg. Entry".FIND('-') then
                        repeat
                          StartBalAdjLCY := StartBalAdjLCY - "Detailed Cust. Ledg. Entry"."Amount (LCY)";
                        until "Detailed Cust. Ledg. Entry".NEXT = 0;
                      "Detailed Cust. Ledg. Entry".RESET;
                    until CustLedgEntry.NEXT = 0;
                end;
                //CurrReport.PRINTONLYIFDETAIL := ExcludeBalanceOnly or (StartBalanceLCY = 0);
                CustBalanceLCY := StartBalanceLCY + StartBalAdjLCY;
                if StartBalAdjLCY > 0 then begin
                  StartCustDebitAmountAdj := StartBalAdjLCY;
                  StartCustCreditAmountAdj := 0;
                end else begin
                  StartCustDebitAmountAdj := 0;
                  StartCustCreditAmountAdj := StartBalAdjLCY;
                end;
                StartBalanceLCYTotal := StartBalanceLCYTotal + StartBalanceLCY;
                StartBalAdjLCYTotal := StartBalAdjLCYTotal + StartBalAdjLCY;
                CustBalanceLCYTotal := CustBalanceLCYTotal + CustBalanceLCY;
            end;

            trigger OnPreDataItem()
            begin
                PageGroupNo := 1;
                CurrReport.NEWPAGEPERRECORD := PrintOnlyOnePerPage;
                CurrReport.CREATETOTALS("Cust. Ledger Entry"."Amount (LCY)",StartBalanceLCY, StartBalAdjLCY, Correction, ApplicationRounding,
                                         "Cust. Ledger Entry"."Debit Amount (LCY)", "Cust. Ledger Entry"."Credit Amount (LCY)",
                                         StartCustDebitAmount, StartCustCreditAmount);
                StartBalanceLCYTotal := 0;
                StartBalAdjLCYTotal := 0;
                CustBalanceLCYTotal := 0;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(ShowAmountsInLCY;PrintAmountsInLCY)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'Show Amounts in LCY';
                        ToolTip = 'Specifies if the reported amounts are shown in the local currency.';
                    }
                    field(NewPageperCustomer;PrintOnlyOnePerPage)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'New Page per Customer';
                        ToolTip = 'Specifies if each customer''s information is printed on a new page if you have chosen two or more customers to be included in the report.';
                    }
                    field(ExcludeCustHaveaBalanceOnly;ExcludeBalanceOnly)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'Exclude Customers That Have a Balance Only';
                        MultiLine = true;
                        ToolTip = 'Specifies if you do not want the report to include entries for customers that have a balance but do not have a net change during the selected time period.';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    var
        CaptionManagement: Codeunit CaptionManagement;
    begin
        CustFilter := CaptionManagement.GetRecordFiltersWithCaptions(Customer);
        CustDateFilter := Customer.GETFILTER("Date Filter");
        with "Cust. Ledger Entry" do
          if PrintAmountsInLCY then begin
            AmountCaption := FIELDCAPTION("Amount (LCY)");
            RemainingAmtCaption := FIELDCAPTION("Remaining Amt. (LCY)");
          end else begin
            AmountCaption := FIELDCAPTION(Amount);
            RemainingAmtCaption := FIELDCAPTION("Remaining Amount");
          end;
    end;

    var
        Text000: Label 'Period: %1';
        CustLedgEntry: Record "Cust. Ledger Entry";
        PrintAmountsInLCY: Boolean;
        PrintOnlyOnePerPage: Boolean;
        ExcludeBalanceOnly: Boolean;
        CustFilter: Text;
        CustDateFilter: Text;
        AmountCaption: Text[80];
        RemainingAmtCaption: Text[30];
        CustAmount: Decimal;
        CustRemainAmount: Decimal;
        CustBalanceLCY: Decimal;
        CustCurrencyCode: Code[10];
        CustEntryDueDate: Date;
        StartBalanceLCY: Decimal;
        StartBalAdjLCY: Decimal;
        Correction: Decimal;
        ApplicationRounding: Decimal;
        CustLedgEntryExists: Boolean;
        PageGroupNo: Integer;
        StartCustDebitAmount: Decimal;
        StartCustCreditAmount: Decimal;
        CustCredit: Decimal;
        CustDebit: Decimal;
        StartCustDebitAmountAdj: Decimal;
        StartCustCreditAmountAdj: Decimal;
        DebitCorrection: Decimal;
        CreditCorrection: Decimal;
        DebitApplicationRounding: Decimal;
        CreditApplicationRounding: Decimal;
        StartCustCreditAmountTotal: Decimal;
        StartCustDebitAmountTotal: Decimal;
        DebitCorrectionTotal: Decimal;
        CreditCorrectionTotal: Decimal;
        DebitApplicationRoundingTotal: Decimal;
        CreditApplicationRoundingTotal: Decimal;
        StartBalanceLCYTotal: Decimal;
        StartBalAdjLCYTotal: Decimal;
        CustBalanceLCYTotal: Decimal;
        CustomerDetailTrialBalCaptionLbl: Label 'Customer - Detail Trial Bal.';
        CurrReportPageNoCaptionLbl: Label 'Page';
        AllamountsareinLCYCaptionLbl: Label 'All amounts are in LCY';
        NotesLbl: Label 'This report also includes customers that only have balances.';
        CustLedgerEntryPostingDateCaptionLbl: Label 'Posting Date';
        CustLedgerEntryDocumentTypeCaptionLbl: Label 'Document Type';
        DebitCaptionLbl: Label 'Debit';
        CreditCaptionLbl: Label 'Credit';
        CustBalanceLCYCaptionLbl: Label 'Balance (LCY)';
        AdjofOpeningBalanceCaptionLbl: Label 'Adj. of Opening Balance';
        TotalLCYBeforePeriodCaptionLbl: Label 'Total (LCY) Before Period';
        TotalLCYCaptionLbl: Label 'Total (LCY)';
        TotalAdjofOpeningBalanceCaptionLbl: Label 'Total Adj. of Opening Balance';
        ExternalDocNoCaptionLbl: Label 'External Doc. No.';

    procedure InitializeRequest(ShowAmountInLCY: Boolean;SetPrintOnlyOnePerPage: Boolean;SetExcludeBalanceOnly: Boolean)
    begin
        PrintOnlyOnePerPage := SetPrintOnlyOnePerPage;
        PrintAmountsInLCY := ShowAmountInLCY;
        ExcludeBalanceOnly := SetExcludeBalanceOnly;
    end;
}

