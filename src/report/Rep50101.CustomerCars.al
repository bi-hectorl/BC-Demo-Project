report 50101 CustomerCars
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Customer Cars Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'CustCars.rdlc';
    dataset
    {
        dataitem(DataItemName; Customer)
        {
            column(No; "No.")
            {

            }
            column(Name; Name)
            {

            }

            dataitem(CustomerCar; Car)
            {
                DataItemLink = "Car" = field("Car"); //
                column(Model; Model)
                {

                }
            }
        }
    }
}