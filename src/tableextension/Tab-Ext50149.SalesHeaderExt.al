tableextension 50149 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(50100; "No of SO Lines"; Integer)
        {
            Caption = 'No of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }
        field(50101; "Total Unit Price"; Decimal)
        {
            Caption = 'Total Unit Price';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Sales Line"."Unit Price" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }
    }
}