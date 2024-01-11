include irvine32.inc

.data
menu byte "*****************MENU*********************",0
menu1 byte "Press 1 for rikshw",0
menu2 byte "Press 2 for cars",0
menu3 byte "Press 3 for bus",0
menu4 byte "Press 4 to show the record",0
menu5 byte "Press 5 to delete the record",0
menu6 byte "Press 6 to exit",0
menu7 byte "Enter Your Choice: ",0
msg2 byte "Wrong input ",0
msg7 byte "the total amount is = ",0
msg8 byte "the total numbers of vehicles parked = ",0
msg9 byte "the total number of rikshws parked = ",0
msg10 byte "the total number of cars parked = ",0
msg11 byte "the total number of buses parked = ",0
msg12 byte "***Record deleted successfully***",0
amount dd 0
count dd  0
input1 dd ?
rcount dd ?
ccount dd ?
bcount dd ?

.code
main proc

menuA:
; --->>>   Show Menu
call crlf
call crlf
call crlf
mov edx , offset menu
call writestring
call crlf

mov edx , offset menu1
call writestring
call crlf

mov edx , offset menu2
call writestring
call crlf

mov edx , offset menu3
call writestring
call crlf

mov edx , offset menu4
call writestring
call crlf

mov edx , offset menu5
call writestring
call crlf

mov edx , offset menu6
call writestring
call crlf


; --->> Getting Numner
mov edx , offset menu7
call writestring
call readint
mov input1, eax
push input1

call crlf
call crlf
; --->> Compare The Input 
cmp input1, 1
je rikshw
cmp input1, 2
je car
cmp input1, 3
je bus
cmp input1, 4
je rec
cmp input1, 5
je del
cmp input1, 6
je end_
jmp invalid

;  --->>> Call for rikshw parking Proc
rikshw:
call rikshaw
mov eax , 100
call writedec
call crlf
jmp again

;  --->>> Call for Car parking Proc
car:
call caar
mov eax , 200
call writedec
call crlf
jmp again

;  --->>> Call for Bus parking Proc
bus:
call buss
mov eax , 300
call writedec
call crlf
jmp again

;  --->>> Show the Parking recode
rec:
call crlf
call crlf
mov edx , offset msg7
call writestring
mov eax , amount
call writedec
call crlf

mov edx , offset msg8
call writestring
mov eax , count
call writedec
call crlf

mov edx , offset msg9
call writestring
mov eax , rcount
call writedec
call crlf

mov edx , offset msg10
call writestring
mov eax , ccount
call writedec
call crlf

mov edx , offset msg11
call writestring
mov eax , bcount
call writedec
call crlf
	jmp menuA


;  --->>> Delete the Parking recode
del:
mov count , 0
mov rcount , 0
mov ccount , 0
mov bcount , 0
mov amount ,0
mov edx , offset msg12
call writestring
call crlf
jmp menuA

;  --->>> For Invalid input
invalid:
mov edx , offset msg2
call writestring
call crlf
	jmp menuA

; ---->>> Again show menu ans add count
again:
	mov eax , count
	add eax , 1
	mov count , eax
	jmp menuA


end_:

exit
main endp


; ---> proc for rikshaw
rikshaw proc

	mov eax , rcount
	add eax , 1
	mov rcount , eax

	mov eax , amount
	add eax , 100
	mov amount , eax

	ret
rikshaw endp


; ---> proc for car
caar proc

	mov eax , ccount
	add eax , 1
	mov ccount , eax

	mov eax , amount
	add eax , 200
	mov amount , eax

	ret
caar endp

; ---> proc for Buss
buss proc

	mov eax , bcount
	add eax , 1
	mov bcount , eax

	mov eax , amount
	add eax , 300
	mov amount , eax

	ret
buss endp




end main