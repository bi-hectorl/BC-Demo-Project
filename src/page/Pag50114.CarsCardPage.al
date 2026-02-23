page 50114 CarsCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Car;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec.Car)
                {
                    ApplicationArea = All;
                    Caption = 'Carritos'; // Se muestra el nombre del campo en la tabla, no el caption del campo
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                    Caption = 'Make';
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    Caption = 'Model';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    Caption = 'Blocked';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Test button")
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