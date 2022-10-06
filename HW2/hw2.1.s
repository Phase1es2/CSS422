src			DCB		'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 0
dst			DCB		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			
			
begin
			LDR		R0, =src
			LDR		R2, =dst
			
			MOV		R1, #0
forloop
			CMP		R1,#12
			;LDR		R3, [R0], #4
			BGE		end_of_loop
			;RORS	R3, R3, #0x20
			LDR		R3, [R0], #4
			ADDS		R3, R3, #0x20
			;ADDS	R3, R3, #0x20
			
			STR		R3, [R2], #4
			ADDS		R1, R1, #1
			
end_of_loop
			end
