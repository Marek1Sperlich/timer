                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _milis
                                     13 	.globl _init_milis
                                     14 	.globl _TIM3_ITConfig
                                     15 	.globl _TIM3_Cmd
                                     16 	.globl _TIM3_TimeBaseInit
                                     17 	.globl _GPIO_ReadInputPin
                                     18 	.globl _GPIO_Init
                                     19 	.globl _CLK_HSIPrescalerConfig
                                     20 	.globl _init
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; Stack segment in internal ram
                                     31 ;--------------------------------------------------------
                                     32 	.area SSEG
      008635                         33 __start__stack:
      008635                         34 	.ds	1
                                     35 
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DABS (ABS)
                                     40 
                                     41 ; default segment ordering for linker
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area CONST
                                     46 	.area INITIALIZER
                                     47 	.area CODE
                                     48 
                                     49 ;--------------------------------------------------------
                                     50 ; interrupt vector
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
      008000                         53 __interrupt_vect:
      008000 82 00 80 6F             54 	int s_GSINIT ; reset
      008004 82 00 82 6C             55 	int _TRAP_IRQHandler ; trap
      008008 82 00 82 6D             56 	int _TLI_IRQHandler ; int0
      00800C 82 00 82 6E             57 	int _AWU_IRQHandler ; int1
      008010 82 00 82 6F             58 	int _CLK_IRQHandler ; int2
      008014 82 00 82 70             59 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 82 71             60 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 82 72             61 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 82 73             62 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 82 74             63 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 82 75             64 	int _CAN_RX_IRQHandler ; int8
      00802C 82 00 82 76             65 	int _CAN_TX_IRQHandler ; int9
      008030 82 00 82 77             66 	int _SPI_IRQHandler ; int10
      008034 82 00 82 78             67 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 82 79             68 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 82 7A             69 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 82 7B             70 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 82 7C             71 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 82 ED             72 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 82 EE             73 	int _UART1_TX_IRQHandler ; int17
      008050 82 00 82 EF             74 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 82 F0             75 	int _I2C_IRQHandler ; int19
      008058 82 00 82 F1             76 	int _UART3_TX_IRQHandler ; int20
      00805C 82 00 82 F2             77 	int _UART3_RX_IRQHandler ; int21
      008060 82 00 82 F3             78 	int _ADC2_IRQHandler ; int22
      008064 82 00 82 F4             79 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 83 0E             80 	int _EEPROM_EEC_IRQHandler ; int24
                                     81 ;--------------------------------------------------------
                                     82 ; global & static initialisations
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME
                                     85 	.area GSINIT
                                     86 	.area GSFINAL
                                     87 	.area GSINIT
      00806F CD 84 4C         [ 4]   88 	call	___sdcc_external_startup
      008072 4D               [ 1]   89 	tnz	a
      008073 27 03            [ 1]   90 	jreq	__sdcc_init_data
      008075 CC 80 6C         [ 2]   91 	jp	__sdcc_program_startup
      008078                         92 __sdcc_init_data:
                                     93 ; stm8_genXINIT() start
      008078 AE 00 00         [ 2]   94 	ldw x, #l_DATA
      00807B 27 07            [ 1]   95 	jreq	00002$
      00807D                         96 00001$:
      00807D 72 4F 00 00      [ 1]   97 	clr (s_DATA - 1, x)
      008081 5A               [ 2]   98 	decw x
      008082 26 F9            [ 1]   99 	jrne	00001$
      008084                        100 00002$:
      008084 AE 00 05         [ 2]  101 	ldw	x, #l_INITIALIZER
      008087 27 09            [ 1]  102 	jreq	00004$
      008089                        103 00003$:
      008089 D6 80 94         [ 1]  104 	ld	a, (s_INITIALIZER - 1, x)
      00808C D7 00 00         [ 1]  105 	ld	(s_INITIALIZED - 1, x), a
      00808F 5A               [ 2]  106 	decw	x
      008090 26 F7            [ 1]  107 	jrne	00003$
      008092                        108 00004$:
                                    109 ; stm8_genXINIT() end
                                    110 	.area GSFINAL
      008092 CC 80 6C         [ 2]  111 	jp	__sdcc_program_startup
                                    112 ;--------------------------------------------------------
                                    113 ; Home
                                    114 ;--------------------------------------------------------
                                    115 	.area HOME
                                    116 	.area HOME
      00806C                        117 __sdcc_program_startup:
      00806C CC 81 A6         [ 2]  118 	jp	_main
                                    119 ;	return from main will return to caller
                                    120 ;--------------------------------------------------------
                                    121 ; code
                                    122 ;--------------------------------------------------------
                                    123 	.area CODE
                                    124 ;	./src/main.c: 38: void init(void)
                                    125 ; genLabel
                                    126 ;	-----------------------------------------
                                    127 ;	 function init
                                    128 ;	-----------------------------------------
                                    129 ;	Register assignment is optimal.
                                    130 ;	Stack space usage: 0 bytes.
      008161                        131 _init:
                                    132 ;	./src/main.c: 40: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); // taktovani MCU na 16MHz
                                    133 ; genSend
      008161 4F               [ 1]  134 	clr	a
                                    135 ; genCall
      008162 CD 84 86         [ 4]  136 	call	_CLK_HSIPrescalerConfig
                                    137 ;	./src/main.c: 41: init_milis();
                                    138 ; genCall
      008165 CD 82 4B         [ 4]  139 	call	_init_milis
                                    140 ;	./src/main.c: 44: GPIO_Init(SB_LED5_PORT, SB_LED5_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
                                    141 ; genIPush
      008168 4B C0            [ 1]  142 	push	#0xc0
                                    143 ; genSend
      00816A A6 08            [ 1]  144 	ld	a, #0x08
                                    145 ; genSend
      00816C AE 50 05         [ 2]  146 	ldw	x, #0x5005
                                    147 ; genCall
      00816F CD 83 0F         [ 4]  148 	call	_GPIO_Init
                                    149 ;	./src/main.c: 45: GPIO_Init(SB_LED4_PORT, SB_LED4_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
                                    150 ; genIPush
      008172 4B C0            [ 1]  151 	push	#0xc0
                                    152 ; genSend
      008174 A6 10            [ 1]  153 	ld	a, #0x10
                                    154 ; genSend
      008176 AE 50 05         [ 2]  155 	ldw	x, #0x5005
                                    156 ; genCall
      008179 CD 83 0F         [ 4]  157 	call	_GPIO_Init
                                    158 ;	./src/main.c: 46: GPIO_Init(SB_LED3_PORT, SB_LED3_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
                                    159 ; genIPush
      00817C 4B C0            [ 1]  160 	push	#0xc0
                                    161 ; genSend
      00817E A6 20            [ 1]  162 	ld	a, #0x20
                                    163 ; genSend
      008180 AE 50 05         [ 2]  164 	ldw	x, #0x5005
                                    165 ; genCall
      008183 CD 83 0F         [ 4]  166 	call	_GPIO_Init
                                    167 ;	./src/main.c: 48: GPIO_Init(SB_S3_PORT, SB_S3_PIN, GPIO_MODE_IN_PU_NO_IT);
                                    168 ; genIPush
      008186 4B 40            [ 1]  169 	push	#0x40
                                    170 ; genSend
      008188 A6 02            [ 1]  171 	ld	a, #0x02
                                    172 ; genSend
      00818A AE 50 0A         [ 2]  173 	ldw	x, #0x500a
                                    174 ; genCall
      00818D CD 83 0F         [ 4]  175 	call	_GPIO_Init
                                    176 ;	./src/main.c: 50: TIM3_TimeBaseInit(TIM3_PRESCALER_128, 50000 - 1);
                                    177 ; genSend
      008190 AE C3 4F         [ 2]  178 	ldw	x, #0xc34f
                                    179 ; genSend
      008193 A6 07            [ 1]  180 	ld	a, #0x07
                                    181 ; genCall
      008195 CD 85 91         [ 4]  182 	call	_TIM3_TimeBaseInit
                                    183 ;	./src/main.c: 51: TIM3_Cmd(ENABLE);
                                    184 ; genSend
      008198 A6 01            [ 1]  185 	ld	a, #0x01
                                    186 ; genCall
      00819A CD 84 4E         [ 4]  187 	call	_TIM3_Cmd
                                    188 ;	./src/main.c: 52: TIM3_ITConfig(TIM3_IT_UPDATE, ENABLE);
                                    189 ; genIPush
      00819D 4B 01            [ 1]  190 	push	#0x01
                                    191 ; genSend
      00819F A6 01            [ 1]  192 	ld	a, #0x01
                                    193 ; genCall
      0081A1 CD 83 99         [ 4]  194 	call	_TIM3_ITConfig
                                    195 ;	./src/main.c: 53: enableInterrupts();
                                    196 ;	genInline
      0081A4 9A               [ 1]  197 	rim
                                    198 ; genLabel
      0081A5                        199 00101$:
                                    200 ;	./src/main.c: 54: }
                                    201 ; genEndFunction
      0081A5 81               [ 4]  202 	ret
                                    203 ;	./src/main.c: 57: int main(void)
                                    204 ; genLabel
                                    205 ;	-----------------------------------------
                                    206 ;	 function main
                                    207 ;	-----------------------------------------
                                    208 ;	Register assignment might be sub-optimal.
                                    209 ;	Stack space usage: 13 bytes.
      0081A6                        210 _main:
      0081A6 52 0D            [ 2]  211 	sub	sp, #13
                                    212 ;	./src/main.c: 60: uint32_t time = 0;
                                    213 ; genAssign
      0081A8 5F               [ 1]  214 	clrw	x
      0081A9 1F 03            [ 2]  215 	ldw	(0x03, sp), x
      0081AB 1F 01            [ 2]  216 	ldw	(0x01, sp), x
                                    217 ;	./src/main.c: 61: uint8_t btn_press = 0;
                                    218 ; genAssign
      0081AD 0F 05            [ 1]  219 	clr	(0x05, sp)
                                    220 ;	./src/main.c: 63: init();
                                    221 ; genCall
      0081AF CD 81 61         [ 4]  222 	call	_init
                                    223 ;	./src/main.c: 65: while (1) {
                                    224 ; genLabel
      0081B2                        225 00109$:
                                    226 ;	./src/main.c: 66: if (milis() - time > 33) {
                                    227 ; genCall
      0081B2 CD 82 2B         [ 4]  228 	call	_milis
      0081B5 1F 08            [ 2]  229 	ldw	(0x08, sp), x
      0081B7 17 06            [ 2]  230 	ldw	(0x06, sp), y
                                    231 ; genMinus
      0081B9 1E 08            [ 2]  232 	ldw	x, (0x08, sp)
      0081BB 72 F0 03         [ 2]  233 	subw	x, (0x03, sp)
      0081BE 1F 0C            [ 2]  234 	ldw	(0x0c, sp), x
      0081C0 7B 07            [ 1]  235 	ld	a, (0x07, sp)
      0081C2 12 02            [ 1]  236 	sbc	a, (0x02, sp)
      0081C4 6B 0B            [ 1]  237 	ld	(0x0b, sp), a
      0081C6 7B 06            [ 1]  238 	ld	a, (0x06, sp)
      0081C8 12 01            [ 1]  239 	sbc	a, (0x01, sp)
      0081CA 6B 0A            [ 1]  240 	ld	(0x0a, sp), a
                                    241 ; genCmp
                                    242 ; genCmpTnz
      0081CC AE 00 21         [ 2]  243 	ldw	x, #0x0021
      0081CF 13 0C            [ 2]  244 	cpw	x, (0x0c, sp)
      0081D1 4F               [ 1]  245 	clr	a
      0081D2 12 0B            [ 1]  246 	sbc	a, (0x0b, sp)
      0081D4 4F               [ 1]  247 	clr	a
      0081D5 12 0A            [ 1]  248 	sbc	a, (0x0a, sp)
      0081D7 25 03            [ 1]  249 	jrc	00148$
      0081D9 CC 81 B2         [ 2]  250 	jp	00109$
      0081DC                        251 00148$:
                                    252 ; skipping generated iCode
                                    253 ;	./src/main.c: 67: time = milis();
                                    254 ; genCall
      0081DC CD 82 2B         [ 4]  255 	call	_milis
                                    256 ;	./src/main.c: 69: if (PUSH(SB_S3) && !btn_press) {
                                    257 ; genSend
      0081DF A6 02            [ 1]  258 	ld	a, #0x02
                                    259 ; genSend
      0081E1 AE 50 0A         [ 2]  260 	ldw	x, #0x500a
                                    261 ; genCall
      0081E4 CD 83 E6         [ 4]  262 	call	_GPIO_ReadInputPin
                                    263 ; genIfx
      0081E7 4D               [ 1]  264 	tnz	a
      0081E8 27 03            [ 1]  265 	jreq	00149$
      0081EA CC 81 FB         [ 2]  266 	jp	00102$
      0081ED                        267 00149$:
                                    268 ; genIfx
      0081ED 0D 05            [ 1]  269 	tnz	(0x05, sp)
      0081EF 27 03            [ 1]  270 	jreq	00150$
      0081F1 CC 81 FB         [ 2]  271 	jp	00102$
      0081F4                        272 00150$:
                                    273 ;	./src/main.c: 70: led_pointer += 1;
                                    274 ; genCast
                                    275 ; genAssign
      0081F4 C6 00 05         [ 1]  276 	ld	a, _led_pointer+0
                                    277 ; genPlus
      0081F7 4C               [ 1]  278 	inc	a
      0081F8 C7 00 05         [ 1]  279 	ld	_led_pointer+0, a
                                    280 ; genLabel
      0081FB                        281 00102$:
                                    282 ;	./src/main.c: 72: if (led_pointer > 2) {
                                    283 ; genCmp
                                    284 ; genCmpTnz
      0081FB C6 00 05         [ 1]  285 	ld	a, _led_pointer+0
      0081FE A1 02            [ 1]  286 	cp	a, #0x02
      008200 22 03            [ 1]  287 	jrugt	00151$
      008202 CC 82 09         [ 2]  288 	jp	00105$
      008205                        289 00151$:
                                    290 ; skipping generated iCode
                                    291 ;	./src/main.c: 73: led_pointer = 0;
                                    292 ; genAssign
      008205 72 5F 00 05      [ 1]  293 	clr	_led_pointer+0
                                    294 ; genLabel
      008209                        295 00105$:
                                    296 ;	./src/main.c: 75: btn_press = PUSH(SB_S3);
                                    297 ; genSend
      008209 A6 02            [ 1]  298 	ld	a, #0x02
                                    299 ; genSend
      00820B AE 50 0A         [ 2]  300 	ldw	x, #0x500a
                                    301 ; genCall
      00820E CD 83 E6         [ 4]  302 	call	_GPIO_ReadInputPin
                                    303 ; genCmpEQorNE
      008211 A1 00            [ 1]  304 	cp	a, #0x00
      008213 26 07            [ 1]  305 	jrne	00153$
      008215 A6 01            [ 1]  306 	ld	a, #0x01
      008217 6B 05            [ 1]  307 	ld	(0x05, sp), a
      008219 CC 82 1E         [ 2]  308 	jp	00154$
      00821C                        309 00153$:
      00821C 0F 05            [ 1]  310 	clr	(0x05, sp)
      00821E                        311 00154$:
                                    312 ;	./src/main.c: 76: time = milis();
                                    313 ; genCall
      00821E CD 82 2B         [ 4]  314 	call	_milis
      008221 1F 03            [ 2]  315 	ldw	(0x03, sp), x
      008223 17 01            [ 2]  316 	ldw	(0x01, sp), y
                                    317 ; genGoto
      008225 CC 81 B2         [ 2]  318 	jp	00109$
                                    319 ; genLabel
      008228                        320 00111$:
                                    321 ;	./src/main.c: 79: }
                                    322 ; genEndFunction
      008228 5B 0D            [ 2]  323 	addw	sp, #13
      00822A 81               [ 4]  324 	ret
                                    325 	.area CODE
                                    326 	.area CONST
                                    327 	.area INITIALIZER
                                    328 	.area CABS (ABS)
