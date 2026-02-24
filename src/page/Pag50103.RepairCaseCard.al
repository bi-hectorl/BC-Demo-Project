page 50103 "Repair Case Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Repair Case";

    layout
    {
        area(Content)
        {
            group(Cases)
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
                field("Model"; Rec."Model")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the device model.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the device serial number.';
                }

                field("Repair Status"; Rec."IMEI")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the repair status.';
                }
                field("Repair Cost"; Rec."Accessory Received") // (charger/case/etc.) Do we have it? Yes/No
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows if the accessory was received.';
                }
                field("Accessory Description"; Rec."Accessory Description") // If we do have it, what is it?
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the accessory description.';
                }
                field("Condition Notes"; Rec."Condition Notes")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the condition notes.';
                }
                field("Problem Description"; Rec."Problem Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the problem description.';
                }
                field("Customer Comment"; Rec."Customer Comment")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the customer comment.';
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the status.';
                }
            }

            group(Workflow)
            {
                //Workflow
                field("Priority"; Rec."Priority")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the priority.';
                }
                field("Intake"; Rec."Intake")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the intake date and time.';
                }
                field("Promised"; Rec."Promised")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the promised date and time.';
                }
                field("Closed"; Rec."Closed")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the closed date and time.';
                }
                //Warranty / authorization
                field("Warranty Type"; Rec."Warranty Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the warranty type.';
                }
                field("Warranty Provider"; Rec."Warranty Provider")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the warranty provider.';
                }
                field("Warranty Claim No."; Rec."Warranty Claim No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the warranty claim number.';
                }
                field("Warranty Approved"; Rec."Warranty Approved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows if the warranty was approved.';
                }
                field("Customer Approved Repair"; Rec."Customer Approved Repair")
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows if the customer approved the repair.';
                }
                field("Approval DateTime"; Rec."Approval DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the approval date and time.';
                }
            }
            group(Pricing)
            {
                field("Diagnostic Fee Item No."; Rec."Diagnostic Fee Item No.") // points to a G/L Account Item
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the diagnostic fee item number.';
                }
                field("Diagnostic Fee Amount"; Rec."Diagnostic Fee Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the diagnostic fee amount.';
                }
                field("Diagnostic Fee Credited"; Rec."Diagnostic Fee Credited") // the “nice twist” - did we end up crediting the diagnostic fee back to the customer?
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows if the diagnostic fee was credited back to the customer.';
                }
                field("Estimated Labor Amount"; Rec."Estimated Labor Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the estimated labor amount.';
                }
                field("Estimated Parts Amount"; Rec."Estimated Parts Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the estimated parts amount.';
                }
                field("Estimated Total Amount"; Rec."Estimated Total Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the estimated total amount.';
                }
                field("Actual Labor Amount"; Rec."Actual Labor Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the actual labor amount.';
                }
                field("Actual Parts Amount"; Rec."Actual Parts Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the actual parts amount.';
                }
                field("Actual Total Amount"; Rec."Actual Total Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the actual total amount.';
                }
            }
            group(Linkage)
            {
                //Linkage to standard BC docs
                field("Service Order No."; Rec."Service Order No.") // or “Service Document No.” if you want to be more generic
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the service order number.';
                }
                field("Posted Service Invoice No."; Rec."Posted Service Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the posted service invoice number.';
                }
                field("Posted Service Shipment No."; Rec."Posted Service Shipment No.") // if you’re using the service shipment document
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the posted service shipment number.';
                }
                field("Payment Status"; Rec."Payment Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the payment status.';
                }
            }
            group(Scheduling)
            {
                //Scheduling

                field("Assigned Technician"; Rec."Assigned Technician") // Resource No. is ideal here if you have technicians set up as resources
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the assigned technician.';
                }
                field("Scheduled Start"; Rec."Scheduled Start")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the scheduled start date and time.';
                }
                field("Scheduled End"; Rec."Scheduled End")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the scheduled end date and time.';
                }
                field("Time Slot Confirmed"; Rec."Time Slot Confirmed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows if the time slot was confirmed with the customer.';
                }
                //Audit
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the user who created the repair case.';
                }
                field("Created DateTime"; Rec."Created DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the date and time when the repair case was created.';
                }
                field("Last Modified By"; Rec."Last Modified By")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the user who last modified the repair case.';
                }
                field("Last Modified DateTime"; Rec."Last Modified DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the date and time when the repair case was last modified.';
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

    var
        myInt: Integer;
}