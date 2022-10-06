src		DCB		'A','B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 0
dst		DCB		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		
begin
		LDR		R0, =src			;load src to R0
		LDR		R2, =dst			;load dst to R2
		LDRB		R1, [R0]			;Retrieve first element of source
		MOV		R5, #0			;set R5 to 0
		;MOV		R4, #0x20
		
forloop
		CMP		R5, #12		;if	(R5 <= 12 )	the loop continue
		MOV		R4, #0x20	;reset the R4 to 0x20 every times; since the lower case to uppercase is a+0x20
		BEQ		stop			;(if R5 > 12) out of the loop
		BNE		continue	;go to continue
		B		forloop			;go back to forloop and check R5
		
continue
		ADDS		R4, R1, R4		;R4 = R1 + R4
		STRB		R4, [R2], #1		;Store R4 to R2
		LDRB		R1	, [ R0, #1]!		; move the iterator to next byte
		ADDS		R5, R5, #1		;	R5++
		B		forloop			;go back to forloop
stop
		END
