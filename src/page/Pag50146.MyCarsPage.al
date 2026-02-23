page 50146 "My Cars Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Car;
    CardPageId = 50114; // Link to the card page Test
    layout
    {
        area(Content)
        {

            repeater(repeater1)
            {
                field(Car; Rec.Car)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car code.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car description.';
                }
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car make.';
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car model.';
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    views
    {
        view(ActiveCars)
        {
            Caption = 'Active Cars';
            Filters = where(Blocked = const(false));

        }
        view(BlockedCars)
        {
            Caption = 'Blockerized Cars';
            Filters = where(Blocked = const(true));

        }
        // Add changes to page views here
    }

    var
        myInt: Integer;
}