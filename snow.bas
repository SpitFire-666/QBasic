'
'       SNOW.BAS by root42 https://www.youtube.com/channel/UCPjFa_UZBUDzdJTIEdyGjIQ
'       Adapted for QBasic and typed out by hand :) by SpitFire-666
'       NOTE: I couldn't get the looping of jbells$ to work

Screen 7

Dim snowx%(50)
Dim snowy%(50)
speed% = 10000 'required on modern systems - lower is faster

Randomize Timer
Option Base 0

jbells$ = "mbt200l4o2mneel2el4eel2el4egl3cl8dl1el4ffl3fl8fl4fel2el8eel4eddel2dgl4eel2el4eel2el4egl3cl8dl1el4ffl3fl8fl4fel2el8efl4ggfdl2c"
Play jbells$

For i = 0 To 15
    Circle (160, 100), i + 5, i
Next i

Color 3
Locate 17, 12 'vertical, horizontal
Print "MERRY XMAS EVERYONE"

For i = 0 To 49
    snowx%(i) = Int(Rnd * 320)
    snowy%(i) = Int(Rnd * 200)
    PSet (snowx%(i), snowy%(i)), 15
Next i

Do
    For i = 0 To 49

        col = Point(snowx%(i), snowy%(i) + 1)
        If col = 0 Then
            PSet (snowx%(i), snowy%(i)), 0 ' erase snow?
            'incr snowy%(i)
            snowy%(i) = snowy%(i) + 1
            If snowy%(i) >= 200 Then
                snowx%(i) = Int(Rnd * 320)
                snowy%(i) = 0
            End If

            PSet (snowx%(i), snowy%(i)), 15
        Else
            snowx%(i) = Int(Rnd * 320)
            snowy%(i) = 0
            PSet (snowx%(i), snowy%(i)), 15 ' draw snow
        End If

        For a = 1 To speed%: Next a ' speed limiter!

        n = Play(1)
        If n < 2 Then
            Play jbell$
        End If

    Next i
Loop Until InKey$ <> ""
