
  `timescale 1ns / 1ps 
module decoder_3to8_tb();

    // DUT(DUT: Device Under Test)의 입력 포트에 대한 선언
    reg [2:0] in;
    // DUT의 출력 포트에 대한 선언
    wire [7:0] out;

    // DUT(3-8 디코더) 모듈을 인스턴스화
    decoder_3to8 uut (
        .in(in),
        .out(out)
    );

   always #5 in = in + 1; // 5 시간마다 입력을 1씩 증가

    // 출력 모니터링
    initial begin
        // 시뮬레이션 시작 메시지 출력
        $display("Simulation started");
        in = 3'b000;
        // 모든 입력 조합에 대해 시뮬레이션 수행
        repeat (8) begin
            #10; // 10 시간 딜레이
            // 출력 모니터링
            $monitor("Input: %b, Output: %b", in, out);
        end

        // 시뮬레이션 종료 메시지 출력
        $display("Simulation finished");
        // 시뮬레이션 종료
        $finish;
    end

endmodule