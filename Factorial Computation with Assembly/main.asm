.386
.model flat

.data
    num DWORD 5
    sum DWORD 1  ; Initialize sum to 1 for multiplication

.code
main proc
    ; Load num into ebx, and initialize eax to 1 (sum = 1)
    mov ebx, [num]
    mov eax, 1  ; Start with 1 as factorial base value (since 0! = 1 and 1! = 1)

    ; Initialize ecx with the number (for loop count)
    mov ecx, ebx

L1:
    ; Multiply eax (current factorial) by ecx
    mul ecx

    ; Decrement ecx and repeat the loop
    loop L1

    ; Store the result in sum
    mov [sum], eax

quit:
    ret

main endp
end main
