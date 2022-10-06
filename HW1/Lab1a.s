max		EQU		10			;define x= 10
sum		DCD		0			;define a storage name sum = 0
		
		MOV		R0, #0	; use R0 to starting place
		MOV		R1, #max  ; set R1 to max to 10
loop ;label	loop
		CMP		R1, #0	;compare R1's value and 0
		BEQ		done		; if R1 = 0 out the loop
		ADD		R0, R0, R1 ; add R0 + R1
		SUB		R1,R1, #1 ; reduce R1 by use after each round of loop
		B		loop		; back to the loop
		
		
		
done		LDR		R2, =sum ;load sum into R2. 
		STR		R0, [R2]    ;saving R2's value into R0
		END
