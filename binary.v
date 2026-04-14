// Implement binary state machine

module binary (
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] State
);

  //  [2:0] State;
    wire [2:0] Next;
    
    
    dff zero(
        .D(Next[0]),
        .clk(clk),
        .Q(State[0]),
        .reset(reset),
        .Default(1'b0)
    );
    
    dff one(
        .D(Next[1]),
        .clk(clk),
        .Q(State[1]),
        .reset(reset),
        .Default(1'b0)
    );
    
    dff two(
        .D(Next[2]),
        .clk(clk),
        .Q(State[2]),
        .reset(reset),
        .Default(1'b0)
    );
    
    assign z = State[2] | (State[1] & ~State[0]);
    assign Next[0] = (State[1] & State[0] & ~w) | (~State[2] & ~State[0] & w)
                   | (~State[2] & ~State[1] & w) | (~State[1] & ~State[0] & ~w);
    assign Next[1] = (State[1] & ~State[0]) | (~State[1] & State[0])
                   | (~State[2] & ~State[1] & w);
    assign Next[2] = (State[2] & w) | (State[1] & State[0] & w);

//    A = 3'b000;
//    B = 3'b001;
//    C = 3'b010;
//    D = 3'b011;


endmodule
