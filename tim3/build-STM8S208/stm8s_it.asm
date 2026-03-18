;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_it
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_ClearFlag
	.globl _TIM3_ClearFlag
	.globl _GPIO_WriteReverse
	.globl _GPIO_WriteHigh
	.globl _led_pointer
	.globl _TRAP_IRQHandler
	.globl _TLI_IRQHandler
	.globl _AWU_IRQHandler
	.globl _CLK_IRQHandler
	.globl _EXTI_PORTA_IRQHandler
	.globl _EXTI_PORTB_IRQHandler
	.globl _EXTI_PORTC_IRQHandler
	.globl _EXTI_PORTD_IRQHandler
	.globl _EXTI_PORTE_IRQHandler
	.globl _CAN_RX_IRQHandler
	.globl _CAN_TX_IRQHandler
	.globl _SPI_IRQHandler
	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.globl _TIM1_CAP_COM_IRQHandler
	.globl _TIM2_UPD_OVF_BRK_IRQHandler
	.globl _TIM2_CAP_COM_IRQHandler
	.globl _TIM3_UPD_OVF_BRK_IRQHandler
	.globl _TIM3_CAP_COM_IRQHandler
	.globl _UART1_TX_IRQHandler
	.globl _UART1_RX_IRQHandler
	.globl _I2C_IRQHandler
	.globl _UART3_TX_IRQHandler
	.globl _UART3_RX_IRQHandler
	.globl _ADC2_IRQHandler
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _EEPROM_EEC_IRQHandler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_led_pointer::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	./src/stm8s_it.c: 68: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
; genLabel
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TRAP_IRQHandler:
;	./src/stm8s_it.c: 73: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 79: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
; genLabel
;	-----------------------------------------
;	 function TLI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TLI_IRQHandler:
;	./src/stm8s_it.c: 84: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 91: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
; genLabel
;	-----------------------------------------
;	 function AWU_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_IRQHandler:
;	./src/stm8s_it.c: 96: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 103: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
; genLabel
;	-----------------------------------------
;	 function CLK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_IRQHandler:
;	./src/stm8s_it.c: 108: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 115: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTA_IRQHandler:
;	./src/stm8s_it.c: 120: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 127: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTB_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTB_IRQHandler:
;	./src/stm8s_it.c: 132: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 139: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTC_IRQHandler:
;	./src/stm8s_it.c: 144: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTD_IRQHandler:
;	./src/stm8s_it.c: 156: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 163: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTE_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTE_IRQHandler:
;	./src/stm8s_it.c: 168: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 189: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
; genLabel
;	-----------------------------------------
;	 function CAN_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_RX_IRQHandler:
;	./src/stm8s_it.c: 194: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 201: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
; genLabel
;	-----------------------------------------
;	 function CAN_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_TX_IRQHandler:
;	./src/stm8s_it.c: 206: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 214: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
; genLabel
;	-----------------------------------------
;	 function SPI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_IRQHandler:
;	./src/stm8s_it.c: 219: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 226: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
; genLabel
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
;	./src/stm8s_it.c: 231: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 238: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
; genLabel
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CAP_COM_IRQHandler:
;	./src/stm8s_it.c: 243: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 276: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
; genLabel
;	-----------------------------------------
;	 function TIM2_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_UPD_OVF_BRK_IRQHandler:
;	./src/stm8s_it.c: 281: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 288: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14) {}
; genLabel
;	-----------------------------------------
;	 function TIM2_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CAP_COM_IRQHandler:
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 299: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
; genLabel
;	-----------------------------------------
;	 function TIM3_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_UPD_OVF_BRK_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	./src/stm8s_it.c: 301: TIM3_ClearFlag(TIM3_FLAG_UPDATE);
; genSend
	clrw	x
	incw	x
; genCall
	call	_TIM3_ClearFlag
;	./src/stm8s_it.c: 302: if (led_pointer == 0) {
; genIfx
	tnz	_led_pointer+0
	jreq	00130$
	jp	00102$
00130$:
;	./src/stm8s_it.c: 303: HIGH(SB_LED4);
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteHigh
;	./src/stm8s_it.c: 304: HIGH(SB_LED3);
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteHigh
;	./src/stm8s_it.c: 305: REVERSE(SB_LED5);
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteReverse
; genLabel
00102$:
;	./src/stm8s_it.c: 307: if (led_pointer == 1) {
; genCmpEQorNE
	ld	a, _led_pointer+0
	dec	a
	jrne	00132$
	jp	00133$
00132$:
	jp	00104$
00133$:
; skipping generated iCode
;	./src/stm8s_it.c: 308: HIGH(SB_LED5);
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteHigh
;	./src/stm8s_it.c: 309: HIGH(SB_LED3);
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteHigh
;	./src/stm8s_it.c: 310: REVERSE(SB_LED4);
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteReverse
; genLabel
00104$:
;	./src/stm8s_it.c: 312: if (led_pointer == 2) {
; genCmpEQorNE
	ld	a, _led_pointer+0
	cp	a, #0x02
	jrne	00135$
	jp	00136$
00135$:
	jp	00107$
00136$:
; skipping generated iCode
;	./src/stm8s_it.c: 313: HIGH(SB_LED5);
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteHigh
;	./src/stm8s_it.c: 314: HIGH(SB_LED4);
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteHigh
;	./src/stm8s_it.c: 315: REVERSE(SB_LED3);
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_WriteReverse
; genLabel
00107$:
;	./src/stm8s_it.c: 317: }
; genEndFunction
	iret
;	./src/stm8s_it.c: 324: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
; genLabel
;	-----------------------------------------
;	 function TIM3_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM3_CAP_COM_IRQHandler:
;	./src/stm8s_it.c: 329: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 341: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
; genLabel
;	-----------------------------------------
;	 function UART1_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_TX_IRQHandler:
;	./src/stm8s_it.c: 346: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 353: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
; genLabel
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_RX_IRQHandler:
;	./src/stm8s_it.c: 358: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 366: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
; genLabel
;	-----------------------------------------
;	 function I2C_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_IRQHandler:
;	./src/stm8s_it.c: 371: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 406: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
; genLabel
;	-----------------------------------------
;	 function UART3_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_TX_IRQHandler:
;	./src/stm8s_it.c: 411: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 418: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
; genLabel
;	-----------------------------------------
;	 function UART3_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_RX_IRQHandler:
;	./src/stm8s_it.c: 423: }
; genLabel
00101$:
; genEndFunction
	iret
;	./src/stm8s_it.c: 433: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
; genLabel
;	-----------------------------------------
;	 function ADC2_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_IRQHandler:
;	./src/stm8s_it.c: 439: return;
; genReturn
; genLabel
00101$:
;	./src/stm8s_it.c: 440: }
; genEndFunction
	iret
;	./src/stm8s_it.c: 489: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
; genLabel
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM4_UPD_OVF_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	./src/stm8s_it.c: 491: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
; genSend
	ld	a, #0x01
; genCall
	call	_TIM4_ClearFlag
;	./src/stm8s_it.c: 492: miliseconds++;
; genAssign
	ldw	x, _miliseconds+2
	ldw	y, _miliseconds+0
; genPlus
	incw	x
	jrne	00103$
	incw	y
00103$:
; genAssign
	ldw	_miliseconds+2, x
	ldw	_miliseconds+0, y
; genLabel
00101$:
;	./src/stm8s_it.c: 493: }
; genEndFunction
	iret
;	./src/stm8s_it.c: 501: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
; genLabel
;	-----------------------------------------
;	 function EEPROM_EEC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EEPROM_EEC_IRQHandler:
;	./src/stm8s_it.c: 506: }
; genLabel
00101$:
; genEndFunction
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__led_pointer:
	.db #0x01	; 1
	.area CABS (ABS)
