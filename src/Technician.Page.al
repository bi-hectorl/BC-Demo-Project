page 50104 TechnicianList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Technicians;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the technician ID.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the technician name.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the technician email.';
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the technician phone.';
                }
                field("Repair Cases"; Rec."Repair Cases")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the number of repair cases assigned to the technician.';
                }
                field("Average Repair Time"; Rec."Average Repair Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the average repair time for the technician.';
                }
                field("Photo"; Rec."Photo")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the technician photo.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}