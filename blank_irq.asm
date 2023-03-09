//------------------------------------------------------------------------------------------------------------------------------------------------------------
										.memblock "Music BITMAP settings"
IrqShowBitmap:							sta IrqShowBitmapAback + 1
										stx IrqShowBitmapXback + 1
										sty IrqShowBitmapYback + 1

          								lda #$00
										sta raster
										ldx #<IrqShowBitmap
										ldy #>IrqShowBitmap
										stx $fffe
										sty $ffff
										inc irqflag
IrqShowBitmapAback:					    lda #$ff
IrqShowBitmapXback:				      	ldx #$ff
IrqShowBitmapYback:				       	ldy #$ff
										rti
//------------------------------------------------------------------------------------------------------------------------------------------------------------