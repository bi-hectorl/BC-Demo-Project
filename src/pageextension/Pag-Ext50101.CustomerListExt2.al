// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.TestNumero2;

using Microsoft.Sales.Customer;

pageextension 50101 CustomerListExt2 extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('This is not Hector (●_●)');
    end;
}