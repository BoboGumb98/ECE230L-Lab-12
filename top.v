module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    binary b (
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .State(led[9:7])
    );
    
    one_hot one (
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .led(led[6:2])
    );

endmodule
