pageextension 50148 CustomerCard extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Car; Rec."Car")
            {
                ApplicationArea = All;
                Caption = 'Customer Car';
                ToolTip = 'Specifies the car associated with the customer.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}