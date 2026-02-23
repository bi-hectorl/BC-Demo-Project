report 50110 CarReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultRenderingLayout = LayoutName;
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Car; Car)
        {
            column(Car_Car; Car)
            {

            }
            column(Description_Car; Description)
            {
            }
            column(Make_Car; Make)
            {
            }
            column(Model_Car; Model)
            {
            }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {


                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }


    var
        myInt: Integer;
}