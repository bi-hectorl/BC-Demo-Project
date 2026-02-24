table 50109 TestItem
{
    Caption = 'TestItem';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
