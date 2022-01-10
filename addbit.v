module addbit (a, b, cin, cout, s);

    input a, b, cin; // input 1, 2, and carry in
    output s, cout; // output and carry out

    wire Dab, Dac, Dbc; // for calculating carry out

    xor(s, a, b, cin); // calculate output
    and(Dab, a, b);
    and(Dac, a, cin);
    and(Dbc, b, cin);
    or(cout, Dab, Dac, Dbc);

endmodule