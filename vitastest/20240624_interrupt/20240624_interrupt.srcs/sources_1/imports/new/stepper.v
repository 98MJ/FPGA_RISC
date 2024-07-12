`timescale 1ns / 1ps

module stepDrv (
    input clk,
    input reset,
    input mode,
    input [15:0] arr,
    input [15:0] ccr,
    input [15:0] prescaler,
    output [3:0] motor_data
);

    wire w_prescaler;
    
    stepper U_step(
        .clk(w_prescaler),
        .reset(reset),
        .mode(mode),
        .motor_data(motor_data)
    );
    timer U_tim(
        .clk(clk),
        .reset(reset),
        .prescaler(prescaler),
        .arr(arr),
        .ccr(ccr),
        .pwm_out(w_prescaler)
    );
    
    
endmodule

module stepper(
    input clk,
    input reset,
    input mode,
    output reg [3:0] motor_data
);
    reg [1:0] m_cnt, m_cnt_next;

    always @(posedge clk, posedge reset) begin
        if(reset) begin
            motor_data <= 4'b0000;
            m_cnt <= 0;
        end else begin
            m_cnt <= m_cnt + 1;
        end
    end

    always @(*) begin
        if(mode) begin
           case (m_cnt)
            0: motor_data = 4'b0011;
            1: motor_data = 4'b0110;
            2: motor_data = 4'b1100;
            3: motor_data = 4'b1001;
            default: motor_data = 4'b0011;
           endcase 
        end else begin
           case (m_cnt)
            0: motor_data = 4'b0011;
            1: motor_data = 4'b1001;
            2: motor_data = 4'b1100;
            3: motor_data = 4'b0110;
            default: motor_data = 4'b0011;
           endcase 
        end
    end
endmodule


module timer (
    input clk,
    input reset,
    input [1:0] cr,         // Control register
    input [15:0] prescaler,
    input [15:0] arr,
    input [15:0] ccr,
    output pwm_out
);

    wire w_clk_out;

    prescaler prescaler_inst (
        .clk(clk),
        .reset(reset),
      // Prescaler enable signal
        .prescaler(prescaler),
        .clk_out(w_clk_out)
    );

    counter_pwm counter_inst (
        .clk(w_clk_out),
        .reset(reset),
          // Counter enable signal
        .arr(arr),
        .ccr(ccr),
        .pwm_out(pwm_out)
    );

endmodule 

module prescaler (
    input clk,
    input reset,
    input [15:0] prescaler,
    output reg clk_out
);
    reg [15:0] counter;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            counter <= 16'd0;
            clk_out <= 1'b0;
        end else  begin
            if (counter >= prescaler) begin
                counter <= 16'd0;
                clk_out <= 1'b1;
            end else begin
                counter <= counter + 1;
                clk_out <= 1'b0;
            end
        end
    end
endmodule

module counter_pwm (
    input clk,
    input reset,
    input [15:0] arr, 
    input [15:0] ccr,
    output reg pwm_out
);
    reg [15:0] cnt;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            cnt <= 16'd0;
            pwm_out <= 1'b0;
        end else begin
            if (cnt >= arr) begin
                cnt <= 16'd0;
            end else begin
                cnt <= cnt + 1;
            end
            if (cnt < ccr) begin
                pwm_out <= 1'b1;
            end else begin
                pwm_out <= 1'b0;
            end
        end
    end
endmodule  