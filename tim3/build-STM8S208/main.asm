;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _milis
	.globl _init_milis
	.globl _TIM3_ITConfig
	.globl _TIM3_Cmd
	.globl _TIM3_TimeBaseInit
	.globl _GPIO_ReadInputPin
	.globl _GPIO_Init
	.globl _CLK_HSIPrescalerConfig
	.globl _init
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int _CAN_RX_IRQHandler ; int8
	int _CAN_TX_IRQHandler ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int _UART3_TX_IRQHandler ; int20
	int _UART3_RX_IRQHandler ; int21
	int _ADC2_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	call	___sdcc_external_startup
	tnz	a
	jreq	__sdcc_init_data
	jp	__sdcc_program_startup
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	./src/main.c: 38: void init(void)
; genLabel
;	-----------------------------------------
;	 function init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init:
;	./src/main.c: 40: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); // taktovani MCU na 16MHz
; genSend
	clr	a
; genCall
	call	_CLK_HSIPrescalerConfig
;	./src/main.c: 41: init_milis();
; genCall
	call	_init_milis
;	./src/main.c: 44: GPIO_Init(SB_LED5_PORT, SB_LED5_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0x08
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	./src/main.c: 45: GPIO_Init(SB_LED4_PORT, SB_LED4_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0x10
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	./src/main.c: 46: GPIO_Init(SB_LED3_PORT, SB_LED3_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
; genIPush
	push	#0xc0
; genSend
	ld	a, #0x20
; genSend
	ldw	x, #0x5005
; genCall
	call	_GPIO_Init
;	./src/main.c: 48: GPIO_Init(SB_S3_PORT, SB_S3_PIN, GPIO_MODE_IN_PU_NO_IT);
; genIPush
	push	#0x40
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_Init
;	./src/main.c: 50: TIM3_TimeBaseInit(TIM3_PRESCALER_128, 50000 - 1);
; genSend
	ldw	x, #0xc34f
; genSend
	ld	a, #0x07
; genCall
	call	_TIM3_TimeBaseInit
;	./src/main.c: 51: TIM3_Cmd(ENABLE);
; genSend
	ld	a, #0x01
; genCall
	call	_TIM3_Cmd
;	./src/main.c: 52: TIM3_ITConfig(TIM3_IT_UPDATE, ENABLE);
; genIPush
	push	#0x01
; genSend
	ld	a, #0x01
; genCall
	call	_TIM3_ITConfig
;	./src/main.c: 53: enableInterrupts();
;	genInline
	rim
; genLabel
00101$:
;	./src/main.c: 54: }
; genEndFunction
	ret
;	./src/main.c: 57: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 13 bytes.
_main:
	sub	sp, #13
;	./src/main.c: 60: uint32_t time = 0;
; genAssign
	clrw	x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), x
;	./src/main.c: 61: uint8_t btn_press = 0;
; genAssign
	clr	(0x05, sp)
;	./src/main.c: 63: init();
; genCall
	call	_init
;	./src/main.c: 65: while (1) {
; genLabel
00109$:
;	./src/main.c: 66: if (milis() - time > 33) {
; genCall
	call	_milis
	ldw	(0x08, sp), x
	ldw	(0x06, sp), y
; genMinus
	ldw	x, (0x08, sp)
	subw	x, (0x03, sp)
	ldw	(0x0c, sp), x
	ld	a, (0x07, sp)
	sbc	a, (0x02, sp)
	ld	(0x0b, sp), a
	ld	a, (0x06, sp)
	sbc	a, (0x01, sp)
	ld	(0x0a, sp), a
; genCmp
; genCmpTnz
	ldw	x, #0x0021
	cpw	x, (0x0c, sp)
	clr	a
	sbc	a, (0x0b, sp)
	clr	a
	sbc	a, (0x0a, sp)
	jrc	00148$
	jp	00109$
00148$:
; skipping generated iCode
;	./src/main.c: 67: time = milis();
; genCall
	call	_milis
;	./src/main.c: 69: if (PUSH(SB_S3) && !btn_press) {
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_ReadInputPin
; genIfx
	tnz	a
	jreq	00149$
	jp	00102$
00149$:
; genIfx
	tnz	(0x05, sp)
	jreq	00150$
	jp	00102$
00150$:
;	./src/main.c: 70: led_pointer += 1;
; genCast
; genAssign
	ld	a, _led_pointer+0
; genPlus
	inc	a
	ld	_led_pointer+0, a
; genLabel
00102$:
;	./src/main.c: 72: if (led_pointer > 2) {
; genCmp
; genCmpTnz
	ld	a, _led_pointer+0
	cp	a, #0x02
	jrugt	00151$
	jp	00105$
00151$:
; skipping generated iCode
;	./src/main.c: 73: led_pointer = 0;
; genAssign
	clr	_led_pointer+0
; genLabel
00105$:
;	./src/main.c: 75: btn_press = PUSH(SB_S3);
; genSend
	ld	a, #0x02
; genSend
	ldw	x, #0x500a
; genCall
	call	_GPIO_ReadInputPin
; genCmpEQorNE
	cp	a, #0x00
	jrne	00153$
	ld	a, #0x01
	ld	(0x05, sp), a
	jp	00154$
00153$:
	clr	(0x05, sp)
00154$:
;	./src/main.c: 76: time = milis();
; genCall
	call	_milis
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
; genGoto
	jp	00109$
; genLabel
00111$:
;	./src/main.c: 79: }
; genEndFunction
	addw	sp, #13
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
