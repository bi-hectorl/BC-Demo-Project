page 50128 "Test Page 3"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyTable3;


    layout
    {
        area(Content)
        {

            repeater(repeater1)
            {
                field(MyField3; Rec.MyField)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the my field 3.';
                }
            }
        }
    }
}