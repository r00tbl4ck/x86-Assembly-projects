.386
.model flat

PBYTE TYPEDEF PTR BYTE
PWORD TYPEDEF PTR WORD
PDWORD TYPEDEF PTR DWORD

.data
arrayByte BYTE 10h, 20h, 30h
arrayWord WORD 1, 2, 3
arrayDword DWORD 4, 5, 6

ptrOne PBYTE arrayByte
ptrTwo PWORD arrayWord
ptrThree PDWORD arrayDword

.code
main proc
	mov esi, ptrOne
	mov al, [esi]
	mov esi, ptrTwo
	mov ax, [esi]
	mov esi, ptrThree
	mov eax, [esi]

	ret

main endp
end main