pageextension 50124 CustomerListExtension extends "Customer List"
{

    actions
    {
        addfirst(reporting)
        { // Add action to Reporting group
            action(CustomerCarsReportsssssssssssss) //
            {
                Caption = 'Customer Cars';
                Image = Report;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Report.Run(50101, true, false, Rec); //
                end;
            }

        }
    }

    var
        myInt: Integer;
}