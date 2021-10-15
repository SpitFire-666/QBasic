# QBasic

COLOR
 Screen modes 4, 12, and 13 only let you set the foreground color. Screen modes 7-10 let you set a background color
 
 
 ````
 SUB ColourPrint(t$, fg%, bg%)
  ' t$ = printing text
  ' fg% = foreground colour
  ' bg% = background colour
  DIM h%(1 + 32 * LEN(t$))
  x1% = 8 * (POS(0) - 1)
  y1% = 16 * (CSRLIN - 1)
  x2% = x1% + 8 * LEN(t$) - 1
  y2% = y1% + 15
  LINE (x1%, y1%)-(x2%, y2%), bg%, BF
  GET (x1%, y1%)-(x2%, y2%), h%
  COLOR fg% XOR bg%
  PRINT t$;
  PUT (x1%, y1%), h%, XOR
  ERASE h%
END SUB 
````


https://stackoverflow.com/questions/37944159/qbasic-highlighted-menu-seriously



You can change the RGB values of a colour with out. This may look difficult, but it is actually very easy. Just use:
OUT &H3C8, colour (use 0 for background colour)
OUT &H3C9, Red(0-63)
OUT &H3C9, Green(0-63)
OUT &H3C9, Blue(0-63)

Use 63 for red, green and bluw to make it bright white. But, this looks the same as clour 15, so when you PRINT with colour 15 now, you cant see it. So, you have to use another color(COLOR 1 for example) or make color 15 black(RGB: 0, 0, 0).

To make color 0 white:
OUT &H3C8, 0
OUT &H3C9, 63
OUT &H3C9, 63
OUT &H3C9, 63

To make color 15 black:
OUT &H3C8, 0
OUT &H3C9, 0
OUT &H3C9, 0
OUT &H3C9, 0

There are also some routines around that you can use to print anywhere on the screen(so not only on the places you can reach with LOCATE), and without a background colour. I believe that these are for screen 13 (not sure), but I though I'd mention it anyway. They are also good when you want to do colour effects on the text.
