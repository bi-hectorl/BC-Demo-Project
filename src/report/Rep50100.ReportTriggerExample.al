report 50100 ReportTriggerExample
{

    Caption = 'Report Trigger Example';
    ProcessingOnly = true;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "No."; // Filter on No. field on the request filter page

            dataitem(SalesLines; "Sales Line") // child of the sales header
            {
                DataItemLinkReference = SalesHeader; // Link to parent dataitem
                DataItemLink = "Document Type" = field("Document Type"), // Link on Document Type
                               "Document No." = field("No."); // Link on Document No.

                trigger OnPreDataItem();// Before processing Sales Lines
                begin
                    SetRange(Type, SalesLines.Type::Item);// Filter to only Item lines per sales line
                end;

                trigger OnAfterGetRecord();// After reading each Sales Line
                begin
                    SalesLinesCount := SalesLinesCount + 1;//
                end;
            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                SalesHeader.SetRange(Status, SalesHeader.Status::Open);
            end;

            trigger OnAfterGetRecord();
            begin
                SalesHeaderCount := SalesHeaderCount + 1;
            end;
        }
    }
    trigger OnPreReport();
    begin
        Message('This report will count the sales headers and corresponding lines.');
    end;

    trigger OnPostReport();
    var
        Countlbl: Label 'The report %1 headers and %2 lines.', Comment = '%1=SalesHeaderCount, %2=SalesLinesCount';
    begin
        Message(StrSubstNo(Countlbl, SalesHeaderCount, SalesLinesCount));
    end;


    var
        SalesHeaderCount: Integer;
        SalesLinesCount: Integer;
}