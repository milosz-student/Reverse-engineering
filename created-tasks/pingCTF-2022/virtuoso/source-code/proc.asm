.686
.model flat
extern _ExitProcess@4 : PROC
extern _MessageBoxA@16 : PROC
extern _AddVectoredExceptionHandler@8 : PROC
public _alternative
public _warning
public _call_me_maybe
public _final_performance

.data
warning_header db 'Virtuoso 2005', 0
warning_body db 'This program is licensed.',0Ah
			 db	'Those who try crack OR reverse this will be persuited by law enforcement agency.',0Ah
			 db 'No bug-bounty for you.',0Ah
			 db 'If you even try there will be consequence', 0
screenplay   db 1,2,3,4,5
zmienna dd	 0
zmienna2 dd 0
backup_esp dd 0
argument_przerwania dd 0
argument_przerwania2 dd 0
stosik dd 1024 dup (0) ;tysiac dup
memory dd 1024 dup (0) ;tysiac dup

.code
kod segment read write execute

_alternative PROC
	push ebp
	mov ebp,esp 

	push ebx 
	push esi
	push edi
	push edx

	mov esi,0FFFFFFFFh
	mov edi,0FFFFFFFFh

	mov ebx, [ebp+12] ;y
	mov eax, [ebp+8] ;x

	ASSUME FS:NOTHING 
	mov edx, fs:[30h]
	movzx edx, byte ptr [edx+2h] ;sprawdzanie czy dub present

	mov ebx,[ebx]
	mov eax,[eax]

	xor ebx,012345678h
	xor eax,087654321h
	xor eax,edx

	and esi,eax ;x
	and edi,ebx ;kopiowanie zawartosci y

	

	not eax ; ~x
	not edi ; ~y

	

	and esi,edi ;  x^~y
	and eax,ebx ; ~x^y
	or eax,esi
	; w eax jest zxorowana wartosc
	;xor eax,0FFFFFFFFh
	
	;male trolololo
	mov ecx,_call_me_maybe
	push ecx
	ret
_alternative ENDP

_call_me_maybe PROC
	mov ecx,0
	not ecx

	xor eax,95511559h

	mov ebx, [ebp+8]
	mov [ebx], eax
	pop edx
	pop edi
	pop esi
	pop ebx
	pop ebp
	ret
_call_me_maybe ENDP

_warning PROC
	push 80030h
	push OFFSET warning_header
	push OFFSET warning_body
	push 0
	call _MessageBoxA@16
	ret
_warning ENDP

comment }
 14 - pop -
 35 - save +
 32 - xor +
 78 - push +
 49 - load +
 22 - reverse 
 69 - add +
 55 - sub +
 89 - loadQword +
 98 - saveQword +
 137 - mul +

}
_final_performance PROC
	;input
	mov eax, offset memory
	mov ebx,[esp+4]
	mov ecx,16

ptl:
	mov dl,byte ptr [ebx]
	mov byte ptr [eax],dl
	inc eax
	inc ebx
	loop ptl
	;koniec inputu



	lea eax,[stosik+1024*4]
	mov dword ptr [backup_esp],eax
	;push 1
	;push handler_1
	
	;call _AddVectoredExceptionHandler@8
	;mov dword ptr [zmienna2], esp
	



	push handler_1
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_2
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_3
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_4
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_5
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_6
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_7
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_8
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_9
	push 0
	call _AddVectoredExceptionHandler@8
	push handler_10
	push 0
	call _AddVectoredExceptionHandler@8

mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],0d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],4d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],8d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],12d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],137
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],22
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],137
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],22
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],137
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],22
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],98
mov dword ptr [argument_przerwania2],16d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],18d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],0d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],18d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],4d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],18d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],8d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],18d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],89
mov dword ptr [argument_przerwania2],12d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],32
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],98
mov dword ptr [argument_przerwania2],22d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],98
mov dword ptr [argument_przerwania2],26d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],98
mov dword ptr [argument_przerwania2],30d
call funkcja_abc
db 0feh
mov eax,6
mov dword ptr [argument_przerwania],98
mov dword ptr [argument_przerwania2],34d
call funkcja_abc
db 0feh
mov eax,6

	ret
_final_performance ENDP

funkcja_abc PROC
	
	mov ecx, dword ptr [esp]
	;inc ecx
	mov dword ptr [zmienna], ecx
	
	ret
funkcja_abc ENDP

handler_1 PROC
	;handler push
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,78 ;check if push
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	mov eax,dword ptr [argument_przerwania2]
	push eax

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_1 ENDP

handler_2 PROC
	;handler xor
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,32 ;check if push
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	pop eax
	pop ecx


	xor eax,ecx
	push eax

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_2 ENDP

handler_3 PROC
	;handler load
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,49 ;check if 
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	mov eax,dword ptr [argument_przerwania2]
	movsx eax, byte ptr [memory+eax]
	mov byte ptr [essunia+1], al
essunia:
	push 0

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_3 ENDP

handler_4 PROC
	;handler save
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,35 ;check save
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	pop eax
	push esi
	mov esi,[argument_przerwania2]
	mov byte ptr [memory+esi], al
	pop esi

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_4 ENDP

handler_5 PROC
	;handler add
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,69 ;check if push
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	pop eax
	pop ecx
	add eax,ecx
	push eax

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_5 ENDP

handler_6 PROC
	;handler add
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,55 ;check if push
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	pop eax
	pop ecx
	sub eax,ecx
	push eax

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_6 ENDP

handler_7 PROC
	;handler reverse
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,22 ;check if push
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	pop eax

	push ecx
	push ebx
	mov ecx,32
	mov ebx,0
petla:
	sal eax,1
	rcr ebx,1
	loop petla

	mov eax,ebx
	pop ebx
	pop ecx


	push eax

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_7 ENDP

handler_8 PROC
	;handler loadQword 32bits
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,89 ;check if 
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov edx,esp
	mov esp,dword ptr [backup_esp]

	;push
	mov eax,dword ptr [argument_przerwania2]
	mov eax, dword ptr [memory+eax]
	mov dword ptr [essunia+1], eax
essunia:
	push 257

	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_8 ENDP
handler_9 PROC
	;handler saveQword
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,98 ;check save
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 
	mov edx,esp
	mov esp,dword ptr [backup_esp]
	;push
	pop eax
	push esi
	mov esi,[argument_przerwania2]
	mov dword ptr [memory+esi], eax
	pop esi
	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,edx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_9 ENDP
handler_10 PROC
	mov eax,dword ptr [argument_przerwania] ;
	cmp eax,137 ;check if push
	je $+8 ;big brain moment
	mov eax,0
	ret
;tutaj skacze po sprawdzeniu B) 

	mov ecx,esp
	mov esp,dword ptr [backup_esp]

	;push
	pop eax
	pop edx


	mul edx

	push eax
	push edx
	;movsx eax, byte ptr [memory+eax]
	mov dword ptr [backup_esp],esp
	mov esp,ecx ;przywrocenie stosu mordo

	mov eax, dword ptr [zmienna]
	mov byte ptr [eax],90h 
	mov eax,0ffffffffh
	ret
handler_10 ENDP
kod ends
END
