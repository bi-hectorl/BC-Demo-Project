table 50101 "Repair Case"
{

    DataClassification = ToBeClassified;
    Caption = 'Repair Case';

    fields
    {
        // Customer Contact
        field(1; "Case No."; Code[20])
        {
            Caption = 'Case No.';
            DataClassification = ToBeClassified;

        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";

        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = FIELD("Customer No.")));
            Editable = false;
        }
        // field(4; "Contact No."; Code[20])
        // {
        //     Caption = 'Contact No.';
        //     FieldClass = FlowField;
        //     CalcFormula = lookup(Customer."Contact No." where("No." = FIELD("Customer No.")));
        // }
        field(5; "Email"; Text[80])
        {
            Caption = 'Email';
            FieldClass = FlowField;
            CalcFormula = lookup(Customer."E-Mail" where("No." = FIELD("Customer No.")));
        }
        //Device Identity
        field(6; "Device Type"; Enum "Device Type")
        {
            Caption = 'Device Type';
            DataClassification = ToBeClassified;
        }
        field(7; "Brand"; Text[30])
        {
            Caption = 'Brand';
            DataClassification = ToBeClassified;
        }
        field(8; "Model"; Text[50])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
        }
        field(9; "Serial No."; Text[50])
        {
            Caption = 'Serial No.';
            DataClassification = ToBeClassified;
        }
        field(10; "IMEI"; Text[20])
        {
            Caption = 'IMEI';
            DataClassification = ToBeClassified;
        }
        field(11; "Accessory Received"; Boolean) // (charger/case/etc.) Do we have it? Yes/No
        {
            Caption = 'Accessory Received';
            DataClassification = ToBeClassified;
        }
        field(12; "Accessory Description"; Text[100]) // If we do have it, what is it?
        {
            Caption = 'Accessory Description';
            DataClassification = ToBeClassified;
        }
        field(13; "Condition Notes"; Text[250])
        {
            Caption = 'Condition Notes';
            DataClassification = ToBeClassified;
        }
        field(14; "Problem Description"; Text[250])
        {
            Caption = 'Problem Description';
            DataClassification = ToBeClassified;
        }
        field(15; "Customer Comment"; Text[250])
        {
            Caption = 'Customer Comment';
            DataClassification = ToBeClassified;
        }
        //Workflow
        field(16; "Status"; Enum Status)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        field(17; "Priority"; Enum Priority)
        {
            Caption = 'Priority';
            DataClassification = ToBeClassified;
        }
        field(18; "Intake"; DateTime)
        {
            Caption = 'Intake';
            DataClassification = ToBeClassified;
        }
        field(19; "Promised"; DateTime)
        {
            Caption = 'Promised';
            DataClassification = ToBeClassified;
        }
        field(20; "Closed"; DateTime)
        {
            Caption = 'Closed';
            DataClassification = ToBeClassified;
        }
        //Warranty / authorization
        field(21; "Warranty Type"; Enum "Warranty Type")
        {
            Caption = 'Warranty Type';
            DataClassification = ToBeClassified;
        }
        field(22; "Warranty Provider"; Text[50])
        {
            Caption = 'Warranty Provider';
            DataClassification = ToBeClassified;
        }
        field(23; "Warranty Claim No."; Text[30])
        {
            Caption = 'Warranty Claim No.';
            DataClassification = ToBeClassified;
        }
        field(24; "Warranty Approved"; Boolean)
        {
            Caption = 'Warranty Approved';
            DataClassification = ToBeClassified;
        }
        field(25; "Customer Approved Repair"; Boolean)
        {
            Caption = 'Customer Approved Repair';
            DataClassification = ToBeClassified;
        }
        field(26; "Approval DateTime"; DateTime)
        {
            Caption = 'Approval DateTime';
            DataClassification = ToBeClassified;
        }
        //Pricing / totals
        field(27; "Diagnostic Fee Item No."; Code[20]) // can be used to point to a G/L Account Item
        {
            Caption = 'Diagnostic Fee Item No.';
            DataClassification = ToBeClassified;
        }
        field(28; "Diagnostic Fee Amount"; Decimal)
        {
            Caption = 'Diagnostic Fee Amount';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateEstimatedTotalAmount();
            end;
        }
        field(29; "Diagnostic Fee Credited"; Boolean)
        {
            Caption = 'Diagnostic Fee Credited';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateEstimatedTotalAmount();
                CalculateActualTotalAmount();
            end;

        }
        field(30; "Estimated Labor Amount"; Decimal)
        {
            Caption = 'Estimated Labor Amount';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateEstimatedTotalAmount();
            end;
        }
        field(31; "Estimated Parts Amount"; Decimal)
        {
            Caption = 'Estimated Parts Amount';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateEstimatedTotalAmount();
            end;
        }
        field(32; "Estimated Total Amount"; Decimal)
        {
            Caption = 'Estimated Total Amount';
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(33; "Actual Labor Amount"; Decimal)
        {
            Caption = 'Actual Labor Amount';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateActualTotalAmount()
            end;
        }
        field(34; "Actual Parts Amount"; Decimal)
        {
            Caption = 'Actual Parts Amount';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateActualTotalAmount()
            end;
        }
        field(35; "Actual Total Amount"; Decimal)
        {
            Caption = 'Actual Total Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        //Linkage to standard BC docs
        field(36; "Service Order No."; Code[20]) // or “Service Document No.” if you want to be more generic
        {
            Caption = 'Service Order No.';
            DataClassification = ToBeClassified;
        }
        field(37; "Posted Service Invoice No."; Code[20])
        {
            Caption = 'Posted Service Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(38; "Posted Service Shipment No."; Code[20]) // if you’re using the service shipment document
        {
            Caption = 'Posted Service Shipment No.';
            DataClassification = ToBeClassified;
        }
        field(39; "Payment Status"; Enum "Payment Status")
        {
            Caption = 'Payment Status';
            DataClassification = ToBeClassified;
        }
        //Scheduling
        field(40; "Assigned Technician"; Code[20]) // Resource No. is ideal here if you have technicians set up as resources
        {
            Caption = 'Assigned Technician';
            DataClassification = ToBeClassified;
        }
        field(41; "Scheduled Start"; DateTime)
        {
            Caption = 'Scheduled Start';
            DataClassification = ToBeClassified;
        }
        field(42; "Scheduled End"; DateTime)
        {
            Caption = 'Scheduled End';
            DataClassification = ToBeClassified;
        }
        field(43; "Time Slot Confirmed"; Boolean)
        {
            Caption = 'Time Slot Confirmed';
            DataClassification = ToBeClassified;
        }
        //Audit
        field(44; "Created By"; Code[50])
        {
            Caption = 'Created By';
            DataClassification = ToBeClassified;
        }
        field(45; "Created DateTime"; DateTime)
        {
            Caption = 'Created DateTime';
            DataClassification = ToBeClassified;
        }
        field(46; "Last Modified By"; Code[50])
        {
            Caption = 'Last Modified By';
            DataClassification = ToBeClassified;
        }
        field(47; "Last Modified DateTime"; DateTime)
        {
            Caption = 'Last Modified DateTime';
            DataClassification = ToBeClassified;
        }

    }


    keys
    {
        key(PK; "Case No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    local procedure CalculateEstimatedTotalAmount()
    var
        DiagnosticFee: Decimal;
    begin
        if "Diagnostic Fee Credited" then
            DiagnosticFee := 0
        else
            DiagnosticFee := "Diagnostic Fee Amount";
        "Estimated Total Amount" := "Estimated Labor Amount" + "Estimated Parts Amount" + DiagnosticFee;
    end;

    local procedure CalculateActualTotalAmount()
    var
        DiagnosticFee: Decimal;
    begin
        if "Diagnostic Fee Credited" then
            DiagnosticFee := 0
        else
            DiagnosticFee := "Diagnostic Fee Amount";
        "Actual Total Amount" := "Actual Labor Amount" + "Actual Parts Amount" + DiagnosticFee;
    end;

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        if "Created By" = '' then
            "Created By" := USERID();
        "Created DateTime" := CURRENTDATETIME();
    end;

    trigger OnModify()
    begin
        "Last Modified By" := USERID();
        "Last Modified DateTime" := CURRENTDATETIME();
    end;

    trigger OnDelete()
    begin
        Message('Record with Case No. %1 is being deleted.', "Case No.");
    end;

    trigger OnRename()
    begin

    end;

}