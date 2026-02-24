enum 50104 "Payment Status"
{
    Extensible = true;

    value(0; Unpaid)
    {
        Caption = 'Unpaid';
    }
    value(1; "Partially Paid")
    {
        Caption = 'Partially Paid';
    }
    value(2; Paid)
    {
        Caption = 'Paid';
    }
    value(3; Refunded)
    {
        Caption = 'Refunded';
    }
    value(4; Overdue)
    {
        Caption = 'Overdue';
    }
}