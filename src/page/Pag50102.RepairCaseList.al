page 50102 "Repair Case List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Repair Case";

    CardPageId = "Repair Case Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Case No."; Rec."Case No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the repair case number.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the customer number.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the customer name.';
                }
                // field("Contact No."; Rec."Contact No.")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'This is the contact number.';
                // }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the email address.';
                }
                field("Device Type"; Rec."Device Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the device type.';
                }
                field("Brand"; Rec."Brand")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the device brand.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                Caption = 'Repair Case Details';
                Image = Report;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Report.Run(50102, true, false, Rec); // runs the Repair Case Card page, passing the current record as a parameter
                end;
            }
        }
    }

    var
        myInt: Integer;
}