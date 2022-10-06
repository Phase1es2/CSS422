		MOV		R0, #0x61 ; ASCII 'a'
		MOV		R2, #7 ; #bits in each ASCII
lbegin	RORS		R0, R0, #1 ; rotate left
		ADDCS	R1, R1, #1 ; #ones++
		SUBS		R2, R2, #1 ; counter--
		BNE		lbegin
		ROR		R0, R0, #25 ; retrieve 'a'
		END
