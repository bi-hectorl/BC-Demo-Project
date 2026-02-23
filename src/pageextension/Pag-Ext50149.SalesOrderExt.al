pageextension 50149 SalesOrderExt extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("No of SO Lines"; Rec."No of SO Lines")
            {
                ApplicationArea = All;
                Caption = 'No of SO Lines';
                ToolTip = 'Displays the number of sales order lines associated with this sales order.';
            }
            field("Total Unit Price"; Rec."Total Unit Price")
            {
                ApplicationArea = All;
                Caption = 'Total Unit Price';
                ToolTip = 'Displays the total unit price of all sales order lines associated with this sales order.';
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