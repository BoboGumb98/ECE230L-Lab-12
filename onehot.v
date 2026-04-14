// Implement one-hot state machine

module one_hot (
    input w,
    input clk,
    input reset,
    output z, 
    output stateCur
);

    wire Anext, Bmext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;
    
//    A = 5'b00001;
//    B = 5'b00010;
//    C = 5'b00100;
//    D = 5'b01000;
//    E = 5'b10000;
    
    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(cld),
        .Q(Astate),
        .reset(reset)
    );
    
    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(cld),
        .Q(Bstate),
        .reset(reset)
    );
    
    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(cld),
        .Q(Cstate),
        .reset(reset)
    );
    
        dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(cld),
        .Q(Dstate),
        .reset(reset)
    );
    
        dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(cld),
        .Q(Estate),
        .reset(reset)
    );
    
    assign z = Cstate | Estate;
    assign Anext = 5'b00001;
    assign Bnext = Astate & ~w | Dstate & ~w | Estate & ~w;
    assign Cnext = Bstate & ~w | Cstate & ~w;
    assign Dnext = Astate & w | Cstate & w;
    assign Enext = Dstate & w | Estate & w;



endmodule
