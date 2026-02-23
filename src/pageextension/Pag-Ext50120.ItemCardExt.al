pageextension 50120 "Item Card Ext" extends "Item Card"
{
    layout
    {
    }

    actions
    {
        addafter(Templates)
        {
            action(NewAction)
            {
                ApplicationArea = All;
                Caption = 'My New Action';
                Image = NewProperties;

                trigger OnAction()
                begin
                    // Action code goes here
                    Message('New Action triggered!');
                end;
            }
        }
        addfirst(Navigation)
        {

            action(MyGroupedAction)
            {
                ApplicationArea = All;
                Caption = 'Item Sales Lines';
                Image = AllLines;
                RunObject = Page "Sales Lines";
                RunPageLink = "No." = field("No."), Type = const(Item);


            }
        }
        addfirst(Category_Process)
        {
            actionref(NewAction_Promoted; NewAction) { }
        }
    }

    var
        myInt: Integer;
}