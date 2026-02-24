table 50102 Technicians
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Code[10])
        {
            Caption = 'Technician ID';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Technician Name';
            DataClassification = ToBeClassified;
        }
        field(3; Email; Text[100])
        {
            Caption = 'Technician Email';
            DataClassification = ToBeClassified;
        }
        field(4; Phone; Text[20])
        {
            Caption = 'Technician Phone';
            DataClassification = ToBeClassified;
        }
        field(5; "Created By"; Code[50])
        {
            Caption = 'Created By';
            DataClassification = ToBeClassified;
        }
        field(6; "Created DateTime"; DateTime)
        {
            Caption = 'Created DateTime';
            DataClassification = ToBeClassified;
        }
        field(7; "Last Modified By"; Code[50])
        {
            Caption = 'Last Modified By';
            DataClassification = ToBeClassified;
        }
        field(8; "Last Modified DateTime"; DateTime)
        {
            Caption = 'Last Modified DateTime';
            DataClassification = ToBeClassified;
        }
        field(9; "Repair Cases"; Integer)
        {
            Caption = 'Number of Repair Cases';
            DataClassification = ToBeClassified;
        }
        field(10; "Average Repair Time"; Duration)
        {
            Caption = 'Average Repair Time';
            DataClassification = ToBeClassified;
        }
        field(11; "Photo"; Media)
        {
            Caption = 'Technician Photo';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}