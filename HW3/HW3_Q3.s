		;left	right		value
node1	DCD		0x10C,	0x130,	4
node2	DCD		0x118,	0x124,	2
node3	DCD		0,			0,			1
node4	DCD		0,			0,			3
node5	DCD		0x13C,	0x148,	6
node6	DCD		0,			0,			5
node7	DCD		0,			0,			7
		
		
		LDR		R0,	=8			;a value to look for
		LDR		R1,	=0x100			;struct node *R1	= node1 (a.k.a, the root)
loop		LDR		R2,	[R1, #8]			;R2 = R1->value
		CMP		R2, R0					;	check if(R2 == R0 )
		BEQ		found					; if R2 == R0  goes to found
		BLT		go_right					; if R2 < R0	goes to right size of the BST
		BGT		go_left					; if R2 > R0 goes to left size of the BST
		
go_left	LDR		R1, 	[R1, #0]			;		R1= R1->left   root =root->left ; 10C 118 0
		CMP		R1, #0						;		chekc if root == nullptr
		BEQ		not_found					;		root == nullptr return goes to not found
		B		loop								;		goes back to loop
		
		
go_right	LDR		R1,	[R1,	#4]	;R1 = R1->right
		CMP		R1, #0				;		chekc if root == nullptr
		BEQ		not_found			;		root == nullptr return goes to not found
		B		loop						;		goes back to loop
		
		
		
found	ADD		R1,	R1, #8		;getting the address for R1
		END						;	return 
		
not_found	END				;	return 
		
		
