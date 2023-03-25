# QBasic

# Programs

- SNOW.BAS

![](https://github.com/SpitFire-666/QBasic/blob/main/snow.bas.gif?raw=true)

- Torus

https://github.com/InsaneJetman/classic-qbasic/blob/QB_4.5/TORUS.BAS

https://github.com/InsaneJetman/classic-qbasic


# Other Stuff


## Screen 12
80x40


![image](https://user-images.githubusercontent.com/38451588/137484411-bf69741e-c8b1-4255-a665-90efb9443d84.png)

# Sound

````basic
FOR x = 37 to 150: sound x, .1: sound 2 * x, .1: sound 3 *x, .1: next
````

# Delay

````basic
FOR A = 1 to 1000: Next A ' roughly 500ms on a 16MHz system
````

# Loop until any key

````basic
Loop Until InKey$ <> ""
````

# print all characters

````basic
For i = 0 To 255
    Print Chr$(i);
Next i
````

# COLOR
 Screen modes 4, 12, and 13 only let you set the foreground color. Screen modes 7-10 let you set a background color
 
 
````basic
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

````basic 
FOR I = 1 TO 25: PRINT STRING$(80, 176): NEXT I
````


https://stackoverflow.com/questions/37944159/qbasic-highlighted-menu-seriously



You can change the RGB values of a colour with out. This may look difficult, but it is actually very easy. Just use:
````basic
OUT &H3C8, colour (use 0 for background colour)
OUT &H3C9, Red(0-63)
OUT &H3C9, Green(0-63)
OUT &H3C9, Blue(0-63)
````
Use 63 for red, green and bluw to make it bright white. But, this looks the same as clour 15, so when you PRINT with colour 15 now, you cant see it. So, you have to use another color(COLOR 1 for example) or make color 15 black(RGB: 0, 0, 0).

To make color 0 white:
````basic
OUT &H3C8, 0
OUT &H3C9, 63
OUT &H3C9, 63
OUT &H3C9, 63
````
To make color 15 black:
````basic
OUT &H3C8, 15
OUT &H3C9, 0
OUT &H3C9, 0
OUT &H3C9, 0
````
There are also some routines around that you can use to print anywhere on the screen(so not only on the places you can reach with LOCATE), and without a background colour. I believe that these are for screen 13 (not sure), but I though I'd mention it anyway. They are also good when you want to do colour effects on the text.


![image](https://user-images.githubusercontent.com/38451588/137624180-88811027-5b69-4cb3-b192-bc2155ddf772.png)

````basic
Screen 12
'Out &H3C8, 0
'Out &H3C9, 63
'Out &H3C9, 63
'Out &H3C9, 63




Out &H3C8, 15
Out &H3C9, 0
Out &H3C9, 0
Out &H3C9, 0

Color 5
For i = 1 To 50
    Print "°";
Next i

Color 1, 7 'f, b
Print "hi"
````

# Colour bars demo

````basic
Screen 13
For a = 0 To 319: Line (a, 0)-(a, 199), a: Next
````

# Progress cursor

````basic
Dim alphabet(10) As String
alphabet(0) = "|"
alphabet(1) = "/"
alphabet(2) = "-"
alphabet(3) = "\"

x = 0
Do
    Cls
    Print alphabet(x)
    x = x + 1
    If x = 4 Then x = 0
    For a = 1 To 10000000
    Next a
    '        Sleep 1
Loop
````


https://en.wikipedia.org/wiki/Code_page_437#Character_set
