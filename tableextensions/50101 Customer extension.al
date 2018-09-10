tableextension 50101 ACTCustomer extends Customer
{
    // Pruebas
    fields
    {
        field(50000; ACTClassification; Option)
        {
            DataClassification = CustomerContent;
            //Caption =ENU = 'Classification',ESP = 'Clasificación';
            Caption='Classification';
            //CaptionML = ENU = 'Classification',
            //            ESP = 'Clasificación';
            OptionMembers = " ","High","Medium","Low";
            OptionCaption=' ,High,Medium,Low';
            //OptionCaptionML = ENU = ' ,High,Medium,Low',
            //            ESP = ' ,Alto,Medio,Bajo';
        }
    }
    
}