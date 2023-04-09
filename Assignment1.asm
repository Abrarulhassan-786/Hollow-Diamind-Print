;Assignemnt#1
INCLUDE Irvine32.inc
.data
Ext DWORD 1
Internal DWORD 1
NAMEANDID BYTE "Please ! Enter T",0
Message BYTE "Please -> Enter The Size Of Diamond: ",0
Space BYTE " ",0
asterisk BYTE "*",0
.code
main PROC
mov edx,OFFSET Message
call WriteString
call readint
call crlf
mov Ext,eax
mov ecx,1
.while ecx <= Ext
mov Internal,eax
.while Internal >= ecx
mov edx,OFFSET Space
call WriteString
dec Internal
.endw
mov Internal,1
mov ebx,ecx
add ebx,ebx
sub ebx,2
mov edx,OFFSET asterisk
call WriteString
.if (ecx > 1)
.while Internal < ebx
mov edx,OFFSET space
call WriteString
inc Internal
.endw
mov edx,OFFSET asterisk
call WriteString
.endif
call crlf
inc ecx
.endw
mov ecx,2
.while ecx <= Ext
mov Internal,1
.while Internal <= ecx
mov edx,OFFSET Space
call WriteString
inc Internal
.endw
mov ebx,eax
mov edx,OFFSET asterisk
call WriteString
.if ecx != Ext
mov Internal,ebx
dec Internal
.while Internal > ecx
mov edx,OFFSET Space
call WriteString
dec Internal
.endw
mov Internal,eax
dec Internal
.while Internal >= ecx
mov edx,OFFSET Space
call WriteString
dec Internal
.endw
mov edx,OFFSET asterisk
call WriteString
call crlf
inc ecx
.endw
call waitmsg
exit
main ENDP
END main