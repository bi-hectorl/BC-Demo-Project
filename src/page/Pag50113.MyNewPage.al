page 50113 "My New Page"
{
    Caption = 'My New Page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "My New Table";
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    // trigger OnDrillDown()
                }
                field(Description; Rec.Description)
                {

                }
                field(ItemNo; Rec."Item No.")
                {

                }
                field(CreatedAt; Rec."Created At")
                {

                }
                field(ChangedAt; Rec."Changed At")
                {

                }
            }
        }
    }

    var

        isVisible: Boolean;

    trigger OnOpenPage()
    begin
        // You can add code here that runs when the page is opened.
        Message('OnOpenPage');
        isVisible := false;
    end;

    trigger OnInsertRecord(BelowXrec: Boolean): Boolean
    begin
        // You can add code here that runs when a new record is inserted.
        Message('A new record is being inserted.');
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if Confirm('Do you really want to close this page?', true) then
            exit(true)
        else
            exit(false);
    end;

    trigger OnClosePage()
    begin
        // You can add code here that runs when the page is closed.
        Message('You have closed the page.');
    end;
}
