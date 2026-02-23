table 50145 Car
{
    DataClassification = ToBeClassified;
    Caption = 'Car';


    fields
    {
        field(1; Car; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car';
        }
        field(2; Description; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';

        }
        field(3; Make; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Make';
        }
        field(4; Model; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Model';
        }
        field(5; Blocked; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Blocked';
        }
        field(6; Picture; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'Picture';
        }
    }

    keys
    {
        key(PK; Car)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}