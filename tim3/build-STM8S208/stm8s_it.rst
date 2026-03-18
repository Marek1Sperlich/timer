                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_ClearFlag
                                     12 	.globl _TIM3_ClearFlag
                                     13 	.globl _GPIO_WriteReverse
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _led_pointer
                                     16 	.globl _TRAP_IRQHandler
                                     17 	.globl _TLI_IRQHandler
                                     18 	.globl _AWU_IRQHandler
                                     19 	.globl _CLK_IRQHandler
                                     20 	.globl _EXTI_PORTA_IRQHandler
                                     21 	.globl _EXTI_PORTB_IRQHandler
                                     22 	.globl _EXTI_PORTC_IRQHandler
                                     23 	.globl _EXTI_PORTD_IRQHandler
                                     24 	.globl _EXTI_PORTE_IRQHandler
                                     25 	.globl _CAN_RX_IRQHandler
                                     26 	.globl _CAN_TX_IRQHandler
                                     27 	.globl _SPI_IRQHandler
                                     28 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     29 	.globl _TIM1_CAP_COM_IRQHandler
                                     30 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     31 	.globl _TIM2_CAP_COM_IRQHandler
                                     32 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     33 	.globl _TIM3_CAP_COM_IRQHandler
                                     34 	.globl _UART1_TX_IRQHandler
                                     35 	.globl _UART1_RX_IRQHandler
                                     36 	.globl _I2C_IRQHandler
                                     37 	.globl _UART3_TX_IRQHandler
                                     38 	.globl _UART3_RX_IRQHandler
                                     39 	.globl _ADC2_IRQHandler
                                     40 	.globl _TIM4_UPD_OVF_IRQHandler
                                     41 	.globl _EEPROM_EEC_IRQHandler
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area DATA
                                     46 ;--------------------------------------------------------
                                     47 ; ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area INITIALIZED
      000005                         50 _led_pointer::
      000005                         51 	.ds 1
                                     52 ;--------------------------------------------------------
                                     53 ; absolute external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area DABS (ABS)
                                     56 
                                     57 ; default segment ordering for linker
                                     58 	.area HOME
                                     59 	.area GSINIT
                                     60 	.area GSFINAL
                                     61 	.area CONST
                                     62 	.area INITIALIZER
                                     63 	.area CODE
                                     64 
                                     65 ;--------------------------------------------------------
                                     66 ; global & static initialisations
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area GSINIT
                                     70 	.area GSFINAL
                                     71 	.area GSINIT
                                     72 ;--------------------------------------------------------
                                     73 ; Home
                                     74 ;--------------------------------------------------------
                                     75 	.area HOME
                                     76 	.area HOME
                                     77 ;--------------------------------------------------------
                                     78 ; code
                                     79 ;--------------------------------------------------------
                                     80 	.area CODE
                                     81 ;	./src/stm8s_it.c: 68: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     82 ; genLabel
                                     83 ;	-----------------------------------------
                                     84 ;	 function TRAP_IRQHandler
                                     85 ;	-----------------------------------------
                                     86 ;	Register assignment is optimal.
                                     87 ;	Stack space usage: 0 bytes.
      00826C                         88 _TRAP_IRQHandler:
                                     89 ;	./src/stm8s_it.c: 73: }
                                     90 ; genLabel
      00826C                         91 00101$:
                                     92 ; genEndFunction
      00826C 80               [11]   93 	iret
                                     94 ;	./src/stm8s_it.c: 79: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     95 ; genLabel
                                     96 ;	-----------------------------------------
                                     97 ;	 function TLI_IRQHandler
                                     98 ;	-----------------------------------------
                                     99 ;	Register assignment is optimal.
                                    100 ;	Stack space usage: 0 bytes.
      00826D                        101 _TLI_IRQHandler:
                                    102 ;	./src/stm8s_it.c: 84: }
                                    103 ; genLabel
      00826D                        104 00101$:
                                    105 ; genEndFunction
      00826D 80               [11]  106 	iret
                                    107 ;	./src/stm8s_it.c: 91: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                    108 ; genLabel
                                    109 ;	-----------------------------------------
                                    110 ;	 function AWU_IRQHandler
                                    111 ;	-----------------------------------------
                                    112 ;	Register assignment is optimal.
                                    113 ;	Stack space usage: 0 bytes.
      00826E                        114 _AWU_IRQHandler:
                                    115 ;	./src/stm8s_it.c: 96: }
                                    116 ; genLabel
      00826E                        117 00101$:
                                    118 ; genEndFunction
      00826E 80               [11]  119 	iret
                                    120 ;	./src/stm8s_it.c: 103: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    121 ; genLabel
                                    122 ;	-----------------------------------------
                                    123 ;	 function CLK_IRQHandler
                                    124 ;	-----------------------------------------
                                    125 ;	Register assignment is optimal.
                                    126 ;	Stack space usage: 0 bytes.
      00826F                        127 _CLK_IRQHandler:
                                    128 ;	./src/stm8s_it.c: 108: }
                                    129 ; genLabel
      00826F                        130 00101$:
                                    131 ; genEndFunction
      00826F 80               [11]  132 	iret
                                    133 ;	./src/stm8s_it.c: 115: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    134 ; genLabel
                                    135 ;	-----------------------------------------
                                    136 ;	 function EXTI_PORTA_IRQHandler
                                    137 ;	-----------------------------------------
                                    138 ;	Register assignment is optimal.
                                    139 ;	Stack space usage: 0 bytes.
      008270                        140 _EXTI_PORTA_IRQHandler:
                                    141 ;	./src/stm8s_it.c: 120: }
                                    142 ; genLabel
      008270                        143 00101$:
                                    144 ; genEndFunction
      008270 80               [11]  145 	iret
                                    146 ;	./src/stm8s_it.c: 127: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    147 ; genLabel
                                    148 ;	-----------------------------------------
                                    149 ;	 function EXTI_PORTB_IRQHandler
                                    150 ;	-----------------------------------------
                                    151 ;	Register assignment is optimal.
                                    152 ;	Stack space usage: 0 bytes.
      008271                        153 _EXTI_PORTB_IRQHandler:
                                    154 ;	./src/stm8s_it.c: 132: }
                                    155 ; genLabel
      008271                        156 00101$:
                                    157 ; genEndFunction
      008271 80               [11]  158 	iret
                                    159 ;	./src/stm8s_it.c: 139: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    160 ; genLabel
                                    161 ;	-----------------------------------------
                                    162 ;	 function EXTI_PORTC_IRQHandler
                                    163 ;	-----------------------------------------
                                    164 ;	Register assignment is optimal.
                                    165 ;	Stack space usage: 0 bytes.
      008272                        166 _EXTI_PORTC_IRQHandler:
                                    167 ;	./src/stm8s_it.c: 144: }
                                    168 ; genLabel
      008272                        169 00101$:
                                    170 ; genEndFunction
      008272 80               [11]  171 	iret
                                    172 ;	./src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    173 ; genLabel
                                    174 ;	-----------------------------------------
                                    175 ;	 function EXTI_PORTD_IRQHandler
                                    176 ;	-----------------------------------------
                                    177 ;	Register assignment is optimal.
                                    178 ;	Stack space usage: 0 bytes.
      008273                        179 _EXTI_PORTD_IRQHandler:
                                    180 ;	./src/stm8s_it.c: 156: }
                                    181 ; genLabel
      008273                        182 00101$:
                                    183 ; genEndFunction
      008273 80               [11]  184 	iret
                                    185 ;	./src/stm8s_it.c: 163: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    186 ; genLabel
                                    187 ;	-----------------------------------------
                                    188 ;	 function EXTI_PORTE_IRQHandler
                                    189 ;	-----------------------------------------
                                    190 ;	Register assignment is optimal.
                                    191 ;	Stack space usage: 0 bytes.
      008274                        192 _EXTI_PORTE_IRQHandler:
                                    193 ;	./src/stm8s_it.c: 168: }
                                    194 ; genLabel
      008274                        195 00101$:
                                    196 ; genEndFunction
      008274 80               [11]  197 	iret
                                    198 ;	./src/stm8s_it.c: 189: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
                                    199 ; genLabel
                                    200 ;	-----------------------------------------
                                    201 ;	 function CAN_RX_IRQHandler
                                    202 ;	-----------------------------------------
                                    203 ;	Register assignment is optimal.
                                    204 ;	Stack space usage: 0 bytes.
      008275                        205 _CAN_RX_IRQHandler:
                                    206 ;	./src/stm8s_it.c: 194: }
                                    207 ; genLabel
      008275                        208 00101$:
                                    209 ; genEndFunction
      008275 80               [11]  210 	iret
                                    211 ;	./src/stm8s_it.c: 201: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
                                    212 ; genLabel
                                    213 ;	-----------------------------------------
                                    214 ;	 function CAN_TX_IRQHandler
                                    215 ;	-----------------------------------------
                                    216 ;	Register assignment is optimal.
                                    217 ;	Stack space usage: 0 bytes.
      008276                        218 _CAN_TX_IRQHandler:
                                    219 ;	./src/stm8s_it.c: 206: }
                                    220 ; genLabel
      008276                        221 00101$:
                                    222 ; genEndFunction
      008276 80               [11]  223 	iret
                                    224 ;	./src/stm8s_it.c: 214: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    225 ; genLabel
                                    226 ;	-----------------------------------------
                                    227 ;	 function SPI_IRQHandler
                                    228 ;	-----------------------------------------
                                    229 ;	Register assignment is optimal.
                                    230 ;	Stack space usage: 0 bytes.
      008277                        231 _SPI_IRQHandler:
                                    232 ;	./src/stm8s_it.c: 219: }
                                    233 ; genLabel
      008277                        234 00101$:
                                    235 ; genEndFunction
      008277 80               [11]  236 	iret
                                    237 ;	./src/stm8s_it.c: 226: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    238 ; genLabel
                                    239 ;	-----------------------------------------
                                    240 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    241 ;	-----------------------------------------
                                    242 ;	Register assignment is optimal.
                                    243 ;	Stack space usage: 0 bytes.
      008278                        244 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    245 ;	./src/stm8s_it.c: 231: }
                                    246 ; genLabel
      008278                        247 00101$:
                                    248 ; genEndFunction
      008278 80               [11]  249 	iret
                                    250 ;	./src/stm8s_it.c: 238: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    251 ; genLabel
                                    252 ;	-----------------------------------------
                                    253 ;	 function TIM1_CAP_COM_IRQHandler
                                    254 ;	-----------------------------------------
                                    255 ;	Register assignment is optimal.
                                    256 ;	Stack space usage: 0 bytes.
      008279                        257 _TIM1_CAP_COM_IRQHandler:
                                    258 ;	./src/stm8s_it.c: 243: }
                                    259 ; genLabel
      008279                        260 00101$:
                                    261 ; genEndFunction
      008279 80               [11]  262 	iret
                                    263 ;	./src/stm8s_it.c: 276: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    264 ; genLabel
                                    265 ;	-----------------------------------------
                                    266 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    267 ;	-----------------------------------------
                                    268 ;	Register assignment is optimal.
                                    269 ;	Stack space usage: 0 bytes.
      00827A                        270 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    271 ;	./src/stm8s_it.c: 281: }
                                    272 ; genLabel
      00827A                        273 00101$:
                                    274 ; genEndFunction
      00827A 80               [11]  275 	iret
                                    276 ;	./src/stm8s_it.c: 288: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14) {}
                                    277 ; genLabel
                                    278 ;	-----------------------------------------
                                    279 ;	 function TIM2_CAP_COM_IRQHandler
                                    280 ;	-----------------------------------------
                                    281 ;	Register assignment is optimal.
                                    282 ;	Stack space usage: 0 bytes.
      00827B                        283 _TIM2_CAP_COM_IRQHandler:
                                    284 ; genLabel
      00827B                        285 00101$:
                                    286 ; genEndFunction
      00827B 80               [11]  287 	iret
                                    288 ;	./src/stm8s_it.c: 299: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    289 ; genLabel
                                    290 ;	-----------------------------------------
                                    291 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    292 ;	-----------------------------------------
                                    293 ;	Register assignment is optimal.
                                    294 ;	Stack space usage: 0 bytes.
      00827C                        295 _TIM3_UPD_OVF_BRK_IRQHandler:
                                    296 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      00827C 62               [ 2]  297 	div	x, a
                                    298 ;	./src/stm8s_it.c: 301: TIM3_ClearFlag(TIM3_FLAG_UPDATE);
                                    299 ; genSend
      00827D 5F               [ 1]  300 	clrw	x
      00827E 5C               [ 1]  301 	incw	x
                                    302 ; genCall
      00827F CD 85 A9         [ 4]  303 	call	_TIM3_ClearFlag
                                    304 ;	./src/stm8s_it.c: 302: if (led_pointer == 0) {
                                    305 ; genIfx
      008282 72 5D 00 05      [ 1]  306 	tnz	_led_pointer+0
      008286 27 03            [ 1]  307 	jreq	00130$
      008288 CC 82 A3         [ 2]  308 	jp	00102$
      00828B                        309 00130$:
                                    310 ;	./src/stm8s_it.c: 303: HIGH(SB_LED4);
                                    311 ; genSend
      00828B A6 10            [ 1]  312 	ld	a, #0x10
                                    313 ; genSend
      00828D AE 50 05         [ 2]  314 	ldw	x, #0x5005
                                    315 ; genCall
      008290 CD 85 88         [ 4]  316 	call	_GPIO_WriteHigh
                                    317 ;	./src/stm8s_it.c: 304: HIGH(SB_LED3);
                                    318 ; genSend
      008293 A6 20            [ 1]  319 	ld	a, #0x20
                                    320 ; genSend
      008295 AE 50 05         [ 2]  321 	ldw	x, #0x5005
                                    322 ; genCall
      008298 CD 85 88         [ 4]  323 	call	_GPIO_WriteHigh
                                    324 ;	./src/stm8s_it.c: 305: REVERSE(SB_LED5);
                                    325 ; genSend
      00829B A6 08            [ 1]  326 	ld	a, #0x08
                                    327 ; genSend
      00829D AE 50 05         [ 2]  328 	ldw	x, #0x5005
                                    329 ; genCall
      0082A0 CD 83 DD         [ 4]  330 	call	_GPIO_WriteReverse
                                    331 ; genLabel
      0082A3                        332 00102$:
                                    333 ;	./src/stm8s_it.c: 307: if (led_pointer == 1) {
                                    334 ; genCmpEQorNE
      0082A3 C6 00 05         [ 1]  335 	ld	a, _led_pointer+0
      0082A6 4A               [ 1]  336 	dec	a
      0082A7 26 03            [ 1]  337 	jrne	00132$
      0082A9 CC 82 AF         [ 2]  338 	jp	00133$
      0082AC                        339 00132$:
      0082AC CC 82 C7         [ 2]  340 	jp	00104$
      0082AF                        341 00133$:
                                    342 ; skipping generated iCode
                                    343 ;	./src/stm8s_it.c: 308: HIGH(SB_LED5);
                                    344 ; genSend
      0082AF A6 08            [ 1]  345 	ld	a, #0x08
                                    346 ; genSend
      0082B1 AE 50 05         [ 2]  347 	ldw	x, #0x5005
                                    348 ; genCall
      0082B4 CD 85 88         [ 4]  349 	call	_GPIO_WriteHigh
                                    350 ;	./src/stm8s_it.c: 309: HIGH(SB_LED3);
                                    351 ; genSend
      0082B7 A6 20            [ 1]  352 	ld	a, #0x20
                                    353 ; genSend
      0082B9 AE 50 05         [ 2]  354 	ldw	x, #0x5005
                                    355 ; genCall
      0082BC CD 85 88         [ 4]  356 	call	_GPIO_WriteHigh
                                    357 ;	./src/stm8s_it.c: 310: REVERSE(SB_LED4);
                                    358 ; genSend
      0082BF A6 10            [ 1]  359 	ld	a, #0x10
                                    360 ; genSend
      0082C1 AE 50 05         [ 2]  361 	ldw	x, #0x5005
                                    362 ; genCall
      0082C4 CD 83 DD         [ 4]  363 	call	_GPIO_WriteReverse
                                    364 ; genLabel
      0082C7                        365 00104$:
                                    366 ;	./src/stm8s_it.c: 312: if (led_pointer == 2) {
                                    367 ; genCmpEQorNE
      0082C7 C6 00 05         [ 1]  368 	ld	a, _led_pointer+0
      0082CA A1 02            [ 1]  369 	cp	a, #0x02
      0082CC 26 03            [ 1]  370 	jrne	00135$
      0082CE CC 82 D4         [ 2]  371 	jp	00136$
      0082D1                        372 00135$:
      0082D1 CC 82 EC         [ 2]  373 	jp	00107$
      0082D4                        374 00136$:
                                    375 ; skipping generated iCode
                                    376 ;	./src/stm8s_it.c: 313: HIGH(SB_LED5);
                                    377 ; genSend
      0082D4 A6 08            [ 1]  378 	ld	a, #0x08
                                    379 ; genSend
      0082D6 AE 50 05         [ 2]  380 	ldw	x, #0x5005
                                    381 ; genCall
      0082D9 CD 85 88         [ 4]  382 	call	_GPIO_WriteHigh
                                    383 ;	./src/stm8s_it.c: 314: HIGH(SB_LED4);
                                    384 ; genSend
      0082DC A6 10            [ 1]  385 	ld	a, #0x10
                                    386 ; genSend
      0082DE AE 50 05         [ 2]  387 	ldw	x, #0x5005
                                    388 ; genCall
      0082E1 CD 85 88         [ 4]  389 	call	_GPIO_WriteHigh
                                    390 ;	./src/stm8s_it.c: 315: REVERSE(SB_LED3);
                                    391 ; genSend
      0082E4 A6 20            [ 1]  392 	ld	a, #0x20
                                    393 ; genSend
      0082E6 AE 50 05         [ 2]  394 	ldw	x, #0x5005
                                    395 ; genCall
      0082E9 CD 83 DD         [ 4]  396 	call	_GPIO_WriteReverse
                                    397 ; genLabel
      0082EC                        398 00107$:
                                    399 ;	./src/stm8s_it.c: 317: }
                                    400 ; genEndFunction
      0082EC 80               [11]  401 	iret
                                    402 ;	./src/stm8s_it.c: 324: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    403 ; genLabel
                                    404 ;	-----------------------------------------
                                    405 ;	 function TIM3_CAP_COM_IRQHandler
                                    406 ;	-----------------------------------------
                                    407 ;	Register assignment is optimal.
                                    408 ;	Stack space usage: 0 bytes.
      0082ED                        409 _TIM3_CAP_COM_IRQHandler:
                                    410 ;	./src/stm8s_it.c: 329: }
                                    411 ; genLabel
      0082ED                        412 00101$:
                                    413 ; genEndFunction
      0082ED 80               [11]  414 	iret
                                    415 ;	./src/stm8s_it.c: 341: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    416 ; genLabel
                                    417 ;	-----------------------------------------
                                    418 ;	 function UART1_TX_IRQHandler
                                    419 ;	-----------------------------------------
                                    420 ;	Register assignment is optimal.
                                    421 ;	Stack space usage: 0 bytes.
      0082EE                        422 _UART1_TX_IRQHandler:
                                    423 ;	./src/stm8s_it.c: 346: }
                                    424 ; genLabel
      0082EE                        425 00101$:
                                    426 ; genEndFunction
      0082EE 80               [11]  427 	iret
                                    428 ;	./src/stm8s_it.c: 353: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    429 ; genLabel
                                    430 ;	-----------------------------------------
                                    431 ;	 function UART1_RX_IRQHandler
                                    432 ;	-----------------------------------------
                                    433 ;	Register assignment is optimal.
                                    434 ;	Stack space usage: 0 bytes.
      0082EF                        435 _UART1_RX_IRQHandler:
                                    436 ;	./src/stm8s_it.c: 358: }
                                    437 ; genLabel
      0082EF                        438 00101$:
                                    439 ; genEndFunction
      0082EF 80               [11]  440 	iret
                                    441 ;	./src/stm8s_it.c: 366: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    442 ; genLabel
                                    443 ;	-----------------------------------------
                                    444 ;	 function I2C_IRQHandler
                                    445 ;	-----------------------------------------
                                    446 ;	Register assignment is optimal.
                                    447 ;	Stack space usage: 0 bytes.
      0082F0                        448 _I2C_IRQHandler:
                                    449 ;	./src/stm8s_it.c: 371: }
                                    450 ; genLabel
      0082F0                        451 00101$:
                                    452 ; genEndFunction
      0082F0 80               [11]  453 	iret
                                    454 ;	./src/stm8s_it.c: 406: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
                                    455 ; genLabel
                                    456 ;	-----------------------------------------
                                    457 ;	 function UART3_TX_IRQHandler
                                    458 ;	-----------------------------------------
                                    459 ;	Register assignment is optimal.
                                    460 ;	Stack space usage: 0 bytes.
      0082F1                        461 _UART3_TX_IRQHandler:
                                    462 ;	./src/stm8s_it.c: 411: }
                                    463 ; genLabel
      0082F1                        464 00101$:
                                    465 ; genEndFunction
      0082F1 80               [11]  466 	iret
                                    467 ;	./src/stm8s_it.c: 418: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
                                    468 ; genLabel
                                    469 ;	-----------------------------------------
                                    470 ;	 function UART3_RX_IRQHandler
                                    471 ;	-----------------------------------------
                                    472 ;	Register assignment is optimal.
                                    473 ;	Stack space usage: 0 bytes.
      0082F2                        474 _UART3_RX_IRQHandler:
                                    475 ;	./src/stm8s_it.c: 423: }
                                    476 ; genLabel
      0082F2                        477 00101$:
                                    478 ; genEndFunction
      0082F2 80               [11]  479 	iret
                                    480 ;	./src/stm8s_it.c: 433: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
                                    481 ; genLabel
                                    482 ;	-----------------------------------------
                                    483 ;	 function ADC2_IRQHandler
                                    484 ;	-----------------------------------------
                                    485 ;	Register assignment is optimal.
                                    486 ;	Stack space usage: 0 bytes.
      0082F3                        487 _ADC2_IRQHandler:
                                    488 ;	./src/stm8s_it.c: 439: return;
                                    489 ; genReturn
                                    490 ; genLabel
      0082F3                        491 00101$:
                                    492 ;	./src/stm8s_it.c: 440: }
                                    493 ; genEndFunction
      0082F3 80               [11]  494 	iret
                                    495 ;	./src/stm8s_it.c: 489: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    496 ; genLabel
                                    497 ;	-----------------------------------------
                                    498 ;	 function TIM4_UPD_OVF_IRQHandler
                                    499 ;	-----------------------------------------
                                    500 ;	Register assignment might be sub-optimal.
                                    501 ;	Stack space usage: 0 bytes.
      0082F4                        502 _TIM4_UPD_OVF_IRQHandler:
                                    503 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      0082F4 62               [ 2]  504 	div	x, a
                                    505 ;	./src/stm8s_it.c: 491: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    506 ; genSend
      0082F5 A6 01            [ 1]  507 	ld	a, #0x01
                                    508 ; genCall
      0082F7 CD 86 30         [ 4]  509 	call	_TIM4_ClearFlag
                                    510 ;	./src/stm8s_it.c: 492: miliseconds++;
                                    511 ; genAssign
      0082FA CE 00 03         [ 2]  512 	ldw	x, _miliseconds+2
      0082FD 90 CE 00 01      [ 2]  513 	ldw	y, _miliseconds+0
                                    514 ; genPlus
      008301 5C               [ 1]  515 	incw	x
      008302 26 02            [ 1]  516 	jrne	00103$
      008304 90 5C            [ 1]  517 	incw	y
      008306                        518 00103$:
                                    519 ; genAssign
      008306 CF 00 03         [ 2]  520 	ldw	_miliseconds+2, x
      008309 90 CF 00 01      [ 2]  521 	ldw	_miliseconds+0, y
                                    522 ; genLabel
      00830D                        523 00101$:
                                    524 ;	./src/stm8s_it.c: 493: }
                                    525 ; genEndFunction
      00830D 80               [11]  526 	iret
                                    527 ;	./src/stm8s_it.c: 501: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    528 ; genLabel
                                    529 ;	-----------------------------------------
                                    530 ;	 function EEPROM_EEC_IRQHandler
                                    531 ;	-----------------------------------------
                                    532 ;	Register assignment is optimal.
                                    533 ;	Stack space usage: 0 bytes.
      00830E                        534 _EEPROM_EEC_IRQHandler:
                                    535 ;	./src/stm8s_it.c: 506: }
                                    536 ; genLabel
      00830E                        537 00101$:
                                    538 ; genEndFunction
      00830E 80               [11]  539 	iret
                                    540 	.area CODE
                                    541 	.area CONST
                                    542 	.area INITIALIZER
      008099                        543 __xinit__led_pointer:
      008099 01                     544 	.db #0x01	; 1
                                    545 	.area CABS (ABS)
