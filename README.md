# QBasic

![image](https://user-images.githubusercontent.com/38451588/137484411-bf69741e-c8b1-4255-a665-90efb9443d84.png)



COLOR
 Screen modes 4, 12, and 13 only let you set the foreground color. Screen modes 7-10 let you set a background color
 
 
 ````
 fg% = 0
bg% = 14
Screen 12
t$ = "hello"
Dim h%(1 + 32 * Len(t$))
x1% = 8 * (Pos(0) - 1)
y1% = 16 * (CsrLin - 1)
x2% = x1% + 8 * Len(t$) + 10 '- 1
y2% = y1% + 15
Line (x1%, y1%)-(x2%, y2%), bg%, BF
Get (x1%, y1%)-(x2%, y2%), h%()
Color fg% Xor bg%
Print t$;
Put (x1%, y1%), h%(), Xor
Erase h%

````


https://stackoverflow.com/questions/37944159/qbasic-highlighted-menu-seriously



You can change the RGB values of a colour with out. This may look difficult, but it is actually very easy. Just use:
````
OUT &H3C8, colour (use 0 for background colour)
OUT &H3C9, Red(0-63)
OUT &H3C9, Green(0-63)
OUT &H3C9, Blue(0-63)
````
Use 63 for red, green and bluw to make it bright white. But, this looks the same as clour 15, so when you PRINT with colour 15 now, you cant see it. So, you have to use another color(COLOR 1 for example) or make color 15 black(RGB: 0, 0, 0).

To make color 0 white:
````
OUT &H3C8, 0
OUT &H3C9, 63
OUT &H3C9, 63
OUT &H3C9, 63
````
To make color 15 black:
````
OUT &H3C8, 15
OUT &H3C9, 0
OUT &H3C9, 0
OUT &H3C9, 0
````
There are also some routines around that you can use to print anywhere on the screen(so not only on the places you can reach with LOCATE), and without a background colour. I believe that these are for screen 13 (not sure), but I though I'd mention it anyway. They are also good when you want to do colour effects on the text.
