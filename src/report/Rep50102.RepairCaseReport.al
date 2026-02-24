report 50102 "Repair Case Report"
{
    UsageCategory = Administration;
    Caption = 'Repair Case Report';
    DefaultLayout = RDLC;
    ApplicationArea = All;

    RDLCLayout = 'RepairCaseReport.rdlc';
    dataset
    {
        dataitem("Repair Case"; "Repair Case")
        {
            column(Case_No; "Case No.")
            {

            }
            column(Customer_No; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Device_Type; "Device Type")
            {

            }
            column(Brand; "Brand")
            {

            }
            column(Estimated_Labor_Amount; "Estimated Labor Amount")
            {

            }
            column(Estimated_Parts_Amount; "Estimated Parts Amount")
            {

            }
            column(Estimated_Total_Amount; "Estimated Total Amount")
            {

            }
            column(Actual_Labor_Amount; "Actual Labor Amount")
            {

            }
            column(Actual_Parts_Amount; "Actual Parts Amount")
            {

            }
            column(Actual_Total_Amount; "Actual Total Amount")
            {

            }
        }
    }


    var
        myInt: Integer;
}