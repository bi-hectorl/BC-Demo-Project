page 50126 "My Test Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {

            repeater(repeater1)
            {
                field(MyField; Rec.MyField)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the my field.';
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

}