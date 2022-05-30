global start_music:near
global fade_out_music:near
global stop_music:near

jumps
.286
.model small
.stack 100h
.data

sintbl  dw         0 ,   1 ,   2 ,   3 ,   4 ,   6 ,   7 ,   8 ,   9 , 10
        dw        11 ,  12 ,  13 ,  15 ,  16 ,  17 ,  18 ,  19 ,  20 , 21
        dw        22 ,  23 ,  24 ,  26 ,  27 ,  28 ,  29 ,  30 ,  31 , 32
        dw        33 ,  34 ,  35 ,  36 ,  37 ,  39 ,  40 ,  41 ,  42 , 43
        dw        44 ,  45 ,  46 ,  47 ,  48 ,  49 ,  50 ,  51 ,  52 , 53
        dw        54 ,  55 ,  56 ,  57 ,  58 ,  59 ,  60 ,  61 ,  62 , 63
        dw        64 ,  65 ,  66 ,  67 ,  68 ,  69 ,  70 ,  71 ,  72 , 73
        dw        74 ,  74 ,  75 ,  76 ,  77 ,  78 ,  79 ,  80 ,  81 , 82
        dw        82 ,  83 ,  84 ,  85 ,  86 ,  87 ,  87 ,  88 ,  89 , 90
        dw        91 ,  91 ,  92 ,  93 ,  94 ,  95 ,  95 ,  96 ,  97 , 97
        dw        98 ,  99 , 100 , 100 , 101 , 102 , 102 , 103 , 104 ,104
        dw       105 , 106 , 106 , 107 , 108 , 108 , 109 , 109 , 110 ,110
        dw       111 , 112 , 112 , 113 , 113 , 114 , 114 , 115 , 115 ,116
        dw       116 , 117 , 117 , 118 , 118 , 118 , 119 , 119 , 120 ,120
        dw       120 , 121 , 121 , 122 , 122 , 122 , 123 , 123 , 123 ,124
        dw       124 , 124 , 124 , 125 , 125 , 125 , 125 , 126 , 126 ,126
        dw       126 , 126 , 127 , 127 , 127 , 127 , 127 , 127 , 127 ,128
        dw       128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 ,128
costbl  dw       128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 ,128
        dw       128 , 128 , 127 , 127 , 127 , 127 , 127 , 127 , 127 ,126
        dw       126 , 126 , 126 , 126 , 125 , 125 , 125 , 125 , 124 ,124
        dw       124 , 124 , 123 , 123 , 123 , 122 , 122 , 122 , 121 ,121
        dw       120 , 120 , 120 , 119 , 119 , 118 , 118 , 118 , 117 ,117
        dw       116 , 116 , 115 , 115 , 114 , 114 , 113 , 113 , 112 ,112
        dw       111 , 110 , 110 , 109 , 109 , 108 , 108 , 107 , 106 ,106
        dw       105 , 104 , 104 , 103 , 102 , 102 , 101 , 100 , 100 , 99
        dw        98 ,  97 ,  97 ,  96 ,  95 ,  95 ,  94 ,  93 ,  92 , 91
        dw        91 ,  90 ,  89 ,  88 ,  87 ,  87 ,  86 ,  85 ,  84 , 83
        dw        82 ,  82 ,  81 ,  80 ,  79 ,  78 ,  77 ,  76 ,  75 , 74
        dw        74 ,  73 ,  72 ,  71 ,  70 ,  69 ,  68 ,  67 ,  66 , 65
        dw        64 ,  63 ,  62 ,  61 ,  60 ,  59 ,  58 ,  57 ,  56 , 55
        dw        54 ,  53 ,  52 ,  51 ,  50 ,  49 ,  48 ,  47 ,  46 , 45
        dw        44 ,  43 ,  42 ,  41 ,  40 ,  39 ,  37 ,  36 ,  35 , 34
        dw        33 ,  32 ,  31 ,  30 ,  29 ,  28 ,  27 ,  26 ,  24 , 23
        dw        22 ,  21 ,  20 ,  19 ,  18 ,  17 ,  16 ,  15 ,  13 , 12
        dw        11 ,  10 ,   9 ,   8 ,   7 ,   6 ,   4 ,   3 ,   2 ,  1
        dw         0 ,  -1 ,  -2 ,  -3 ,  -4 ,  -6 ,  -7 ,  -8 ,  -9 ,-10
        dw       -11 , -12 , -13 , -15 , -16 , -17 , -18 , -19 , -20 ,-21
        dw       -22 , -23 , -24 , -26 , -27 , -28 , -29 , -30 , -31 ,-32
        dw       -33 , -34 , -35 , -36 , -37 , -39 , -40 , -41 , -42 ,-43
        dw       -44 , -45 , -46 , -47 , -48 , -49 , -50 , -51 , -52 ,-53
        dw       -54 , -55 , -56 , -57 , -58 , -59 , -60 , -61 , -62 ,-63
        dw       -64 , -65 , -66 , -67 , -68 , -69 , -70 , -71 , -72 ,-73
        dw       -74 , -74 , -75 , -76 , -77 , -78 , -79 , -80 , -81 ,-82
        dw       -82 , -83 , -84 , -85 , -86 , -87 , -87 , -88 , -89 ,-90
        dw       -91 , -91 , -92 , -93 , -94 , -95 , -95 , -96 , -97 ,-97
        dw       -98 , -99 ,-100 ,-100 ,-101 ,-102 ,-102 ,-103 ,-104 ,-104
        dw      -105 ,-106 ,-106 ,-107 ,-108 ,-108 ,-109 ,-109 ,-110 ,-110
        dw      -111 ,-112 ,-112 ,-113 ,-113 ,-114 ,-114 ,-115 ,-115 ,-116
        dw      -116 ,-117 ,-117 ,-118 ,-118 ,-118 ,-119 ,-119 ,-120 ,-120
        dw      -120 ,-121 ,-121 ,-122 ,-122 ,-122 ,-123 ,-123 ,-123 ,-124
        dw      -124 ,-124 ,-124 ,-125 ,-125 ,-125 ,-125 ,-126 ,-126 ,-126
        dw      -126 ,-126 ,-127 ,-127 ,-127 ,-127 ,-127 ,-127 ,-127 ,-128
        dw      -128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128
        dw      -128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128 ,-128
        dw      -128 ,-128 ,-127 ,-127 ,-127 ,-127 ,-127 ,-127 ,-127 ,-126
        dw      -126 ,-126 ,-126 ,-126 ,-125 ,-125 ,-125 ,-125 ,-124 ,-124
        dw      -124 ,-124 ,-123 ,-123 ,-123 ,-122 ,-122 ,-122 ,-121 ,-121
        dw      -120 ,-120 ,-120 ,-119 ,-119 ,-118 ,-118 ,-118 ,-117 ,-117
        dw      -116 ,-116 ,-115 ,-115 ,-114 ,-114 ,-113 ,-113 ,-112 ,-112
        dw      -111 ,-110 ,-110 ,-109 ,-109 ,-108 ,-108 ,-107 ,-106 ,-106
        dw      -105 ,-104 ,-104 ,-103 ,-102 ,-102 ,-101 ,-100 ,-100 ,-99
        dw       -98 , -97 , -97 , -96 , -95 , -95 , -94 , -93 , -92 ,-91
        dw       -91 , -90 , -89 , -88 , -87 , -87 , -86 , -85 , -84 ,-83
        dw       -82 , -82 , -81 , -80 , -79 , -78 , -77 , -76 , -75 ,-74
        dw       -74 , -73 , -72 , -71 , -70 , -69 , -68 , -67 , -66 ,-65
        dw       -64 , -63 , -62 , -61 , -60 , -59 , -58 , -57 , -56 ,-55
        dw       -54 , -53 , -52 , -51 , -50 , -49 , -48 , -47 , -46 ,-45
        dw       -44 , -43 , -42 , -41 , -40 , -39 , -37 , -36 , -35 ,-34
        dw       -33 , -32 , -31 , -30 , -29 , -28 , -27 , -26 , -24 ,-23
        dw       -22 , -21 , -20 , -19 , -18 , -17 , -16 , -15 , -13 ,-12
        dw       -11 , -10 ,  -9 ,  -8 ,  -7 ,  -6 ,  -4 ,  -3 ,  -2 , -1
        dw        0 ,   1 ,   2 ,   3 ,   4 ,   6 ,   7 ,   8 ,   9 , 10
        dw        11 ,  12 ,  13 ,  15 ,  16 ,  17 ,  18 ,  19 ,  20 , 21
        dw        22 ,  23 ,  24 ,  26 ,  27 ,  28 ,  29 ,  30 ,  31 , 32
        dw        33 ,  34 ,  35 ,  36 ,  37 ,  39 ,  40 ,  41 ,  42 , 43
        dw        44 ,  45 ,  46 ,  47 ,  48 ,  49 ,  50 ,  51 ,  52 , 53
        dw        54 ,  55 ,  56 ,  57 ,  58 ,  59 ,  60 ,  61 ,  62 , 63
        dw        64 ,  65 ,  66 ,  67 ,  68 ,  69 ,  70 ,  71 ,  72 , 73
        dw        74 ,  74 ,  75 ,  76 ,  77 ,  78 ,  79 ,  80 ,  81 , 82
        dw        82 ,  83 ,  84 ,  85 ,  86 ,  87 ,  87 ,  88 ,  89 , 90
        dw        91 ,  91 ,  92 ,  93 ,  94 ,  95 ,  95 ,  96 ,  97 , 97
        dw        98 ,  99 , 100 , 100 , 101 , 102 , 102 , 103 , 104 ,104
        dw       105 , 106 , 106 , 107 , 108 , 108 , 109 , 109 , 110 ,110
        dw       111 , 112 , 112 , 113 , 113 , 114 , 114 , 115 , 115 ,116
        dw       116 , 117 , 117 , 118 , 118 , 118 , 119 , 119 , 120 ,120
        dw       120 , 121 , 121 , 122 , 122 , 122 , 123 , 123 , 123 ,124
        dw       124 , 124 , 124 , 125 , 125 , 125 , 125 , 126 , 126 ,126
        dw       126 , 126 , 127 , 127 , 127 , 127 , 127 , 127 , 127 ,128
        dw       128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 ,128

xpage   db 0

plane   db 80 dup (1,2,4,8)

scanl   label word
      i = 0
      rept 200
        dw i
      i = i+80
      endm

adlib   db 0

calcol  db 0,0,0
      i = 1
      rept 64
        db (2*i)/3,i/2,i
      i = i+1
      endm

tcol    db 45,40,55
        db 30,25,40


pic1    label byte
include xmrb.pi1

pic2    label byte
include xmrb.pi2

palette label byte
include xmrb.pal

bnce1   label byte
include xmrb.wa1

pattern dw 0

bnce2   label byte
include xmrb.wa2

freq    dw 10
fre     dw 9,7,12,10,14,8,10,8,7

sinadd  dw 1
cosadd  dw 3

bigx    dw ?
bigy    dw ?

sinstor dw 3,2,4,6,2,4,2,4,2
cosstor dw 2,1,6,2,4,3,1,3,5

current db 64*3 dup (0)

x_add   dw 200

w_start dw 0
wave    dw 64 dup (0)
w_pos   dw 0

x       dw 0
y       dw 0

color   db 0

noadd   db 0

keydown db 0

int09   dd ?

include real.fnt

temp    dw ?
font    dw ?

text1   db '****************',1
        db 'MORBID REALITY',1
        db '****************',1
        db 'ROCKING THE SCENE',1
        db 'IN ''96',1
        db 1
        db 'NODE 1 :+619-385-0740',1
        db 'NODE 2 :+619-385-5337',0

text2   db 'END OF TEXT',1
        db 'LOOPING...',0

text4   db 'EASY RATIOS!',1
        db 1
        db 'LAMER FREE!',1
        db 1
        db 'SUPPORTING',1
        db '14.4K TO 28.8K',0

text3   db 'REALM',1
        db 'AUSTRALIAN HQ',1
        db 1
        db 'LIGHTSPEED',1
        db 'AUSTRALIAN HQ',1
        db 1
        db 'INFINITY',1
        db 'WORLD HQ',0

text5   db 'PURE WESTERN',1
        db 'AUSTRALIAN HACK',1
        db 'AND PHREAK!',0
        
text6   db 'CODED BY EARWAX/REALM',1,1
        db 'FONT BY PIXEL/FC',1,1
        db 'GRAPHICS BY EARWAX/REALM',1,1
        db 'PLAYER BY ERIC/S!P',0

t1_list dw offset text1
        dw offset text3
        dw offset text4
        dw offset text5
        dw offset text6
        dw offset text2

sectext db '*S*E*C*R*E*T* *P*A*R*T*',1
        db 'SORRY D00D NO TREASURE HERE!',1,1
        db 'I SUPPOSE YOU THINK YOUR A LEGEND',1
        db 'FOR FIGURING THIS OUT? WELL ALL',1 
        db 'YOU GET ARE SOME GREETS.',1,1
        db 'EARWAX GREETS:',1
        db 'FLY/DPS, MAXWOOD/MJ12, JAH/ROGUE',1
        db 'ALL EURO D00DS IN REALM!',0

t1_ofs  dw 0

x_out   dw ?
y_out   dw ?

secret  dw 0

no_vga  db 'Sorry weiner, you need VGA to view this loader.',10,13,'$'

.code
        mov     ax,@data
        mov     ds,ax

        mov     ax,4a00h
        mov     bx,1000h
        int     21h

        mov     ax,0013h
        int     10h
        mov     ah,0fh
        int     10h
        cmp     al,13h
        jz      has_VGA
        mov     ax,0003h
        int     10h
        mov     ah,9
        lea     dx,no_VGA
        int     21h
        mov     ax,4c00h
        int     21h
has_VGA:

        mov     ax,4800h
        mov     bx,536*2
        int     21h
        mov     font,ax
        mov     ax,4800h
        mov     bx,536*2
        int     21h
        mov     temp,ax

        call    process_font

        mov     ax,0012h
        int     10h
        mov     ax,0013h
        int     10h
        push    0a000h
        pop     es
        mov     dx,3c4h
        mov     ax,0604h
        out     dx,ax
        mov     dx,3d4h
        mov     ax,0014h
        out     dx,ax
        mov     ax,0e317h
        out     dx,ax
        mov     ax,109h
        out     dx,ax

        push    es
        mov     ax,3509h 
        int     21h
        mov     word ptr int09[0],bx
        mov     word ptr int09[2],es
        pop     es

        push    ds         
        lea     dx,kbdhandler
        push    cs
        pop     ds
        mov     ax,2509h
        int     21h
        pop     ds

        mov     dx,3c8h
        xor     al,al
        out     dx,al
        inc     dx
        mov     cx,768
load_colors:
        xor     al,al
        out     dx,al
        loop    load_colors

        mov     dx,3c8h
        mov     al,126
        out     dx,al
        inc     dx
        mov     cx,128*3
        lea     si,palette
load_picture_colors:
        lodsb
        out     dx,al
        loop    load_picture_colors

        mov     dx,3c8h
        mov     al,0feh
        out     dx,al
        inc     dx
        mov     cx,6
        lea     si,tcol
load_t_col:
        lodsb
        out     dx,al
        loop    load_t_col

        mov     di,16000
        call    load_picture_one
        mov     di,48000
        call    load_picture_one

        mov     cx,15
start_wait:
        mov     dx,3dah
        in      al,dx
        test    al,8
        jz      $-3
        in      al,dx
        test    al,8
        jnz     $-3
        loop    start_wait

        call    detect_adlib

        cmp     adlib,0
        jz      no_here
        push    ds ss es
        call    start_music
        pop     es ss ds
        assume  ds:@data
no_here:

        mov     keydown,0

        mov     cx,220
        lea     si,bnce1
bounce_on:
        push    cx
        lodsw
        mov     dx,80
        mul     dx
        mov     bx,ax
        push    si
        call    set_offset
        pop     si
        pop     cx
        loop    bounce_on

loader_loop:
        
        mov     x_add,200
        mov     noadd,0
        mov     cx,64
text_one_loop:
        push    cx
        call    callidescope_almost
        call    fade_in_callidescope
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        loop    text_one_loop

        mov     bx,t1_ofs
        add     t1_ofs,2
        mov     si,t1_list[bx]
        call    write_text
        cmp     t1_ofs,12
        jb      t1_ofs_ok
        mov     t1_ofs,0
t1_ofs_ok:

        mov     cx,300
text_one_loop_2:
        push    cx
        call    callidescope_almost
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        loop    text_one_loop_2
        
        mov     cx,64
text_one_loop_3:
        push    cx
        call    callidescope_almost
        call    fade_out_callidescope
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        loop    text_one_loop_3

going_to_two:

        mov     noadd,1
        call    callidescope_almost
        call    flip_page
        call    callidescope_almost
        call    flip_page
        call    change_pattern

        mov     di,32000
        call    picture_load_two

        call    bounce_between

        mov     di,16000
        call    clear_page
        mov     di,48000
        call    clear_page

        mov     di,16000
        call    picture_load_two
        mov     di,48000
        call    picture_load_two

        call    get_page
        mov     bx,di
        call    set_offset

        mov     di,32000
        call    clear_page

        cmp     keydown,1
        jz      out_to_dos

        mov     x_add,117
        mov     noadd,0
        mov     cx,64
text_two_loop:
        push    cx
        call    callidescope_almost
        call    fade_in_callidescope
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        loop    text_two_loop

        mov     bx,t1_ofs
        add     t1_ofs,2
        mov     si,t1_list[bx]
        call    write_text
        cmp     t1_ofs,12
        jb      t2_ofs_ok
        mov     t1_ofs,0
t2_ofs_ok:

        mov     cx,300
text_two_loop_2:
        push    cx
        call    callidescope_almost
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        loop    text_two_loop_2

        mov     cx,64
text_two_loop_3:
        push    cx
        call    callidescope_almost
        call    fade_out_callidescope
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        loop    text_two_loop_3

going_to_one:

        mov     noadd,1
        call    callidescope_almost
        call    flip_page
        call    callidescope_almost
        call    flip_page
        call    change_pattern

        mov     di,32000
        call    load_picture_one

        call    bounce_between

        mov     di,16000
        call    clear_page
        mov     di,48000
        call    clear_page

        mov     di,16000
        call    load_picture_one
        mov     di,48000    
        call    load_picture_one

        call    get_page
        mov     bx,di
        call    set_offset

        mov     di,32000
        call    clear_page

        cmp     keydown,1
        jz      out_to_dos

        jmp     loader_loop

out_to_dos:
        mov     cx,64
fade_final_loop:
        push    cx
        call    callidescope_almost
        call    fade_out_callidescope
        call    flip_page
        pop     cx
        loop    fade_final_loop

        call    bounce_between


        cmp     adlib,0
        jz      no_there
        mov     cx,63
fade_out_music_loop:
        push    cx
        push    ds ss es
        call    fade_out_music
        pop     es ss ds
        assume  ds:@data
        mov     dx,3dah
        in      al,dx
        test    al,8
        jnz     $-3
        in      al,dx
        test    al,8
        jz      $-3
        pop     cx
        loop    fade_out_music_loop

        push    ds ss es
        call    stop_music
        pop     es ss ds
        assume  ds:@data
no_there:

        push    ds
        mov     dx,word ptr int09[0]
        mov     ax,word ptr int09[2]
        mov     ds,ax
        mov     ax,2509h
        int     21h
        pop     ds

        mov     ax,font
        mov     es,ax
        mov     ax,4900h
        int     21h
        mov     ax,temp
        mov     es,ax
        mov     ax,4900h
        int     21h

        mov     ax,0003h
        int     10h
        mov     ax,4c00h
        int     21h

secret_place:
        push    x_add
        mov     cx,64
fade_for_secret_loop:
        push    cx
        call    callidescope_almost
        call    fade_out_callidescope
        call    flip_page
        pop     cx
        loop    fade_for_secret_loop

        call    bounce_between

        mov     x_add,160

        mov     di,16000
        call    clear_page
        mov     di,48000
        call    clear_page

        call    get_page
        mov     bx,di
        call    set_offset

        mov     di,32000
        call    clear_page


        mov     noadd,0
        mov     cx,64
secret_text_loop:
        push    cx
        call    callidescope_almost
        call    fade_in_callidescope
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        loop    secret_text_loop

        mov     byte ptr secret[0],0
        lea     si,sectext
        call    write_text

        mov     cx,300
text_secret_loop:
        push    cx
        call    callidescope_almost
        call    flip_page
        pop     cx
        cmp     keydown,1
        jz      out_to_dos
        loop    text_secret_loop

        mov     cx,64
fade_for_secret_loop_:
        push    cx
        call    callidescope_almost
        call    fade_out_callidescope
        call    flip_page
        pop     cx
        loop    fade_for_secret_loop_


        pop     x_add
        cmp     x_add,200
        ja      going_to_one
        jmp     going_to_two

proc    write_text
        push    si
        call    center_y_out
        pop     si
        push    si
        call    center_x_out
        pop     si
        push    y_out x_out
character_loop:
        lodsb
        or      al,al
        jnz     no_exit
        pop     x_out y_out
        ret
no_exit:
        cmp     al,1
        jnz     no_new_line
        pop     x_out y_out
        add     y_out,18
        push    si
        call    center_x_out
        pop     si
        push    y_out x_out
        jmp     character_loop
no_new_line:
        push    si
        sub     al,32
        xor     ah,ah
        mov     dx,9
        mul     dx
        mov     si,ax

        mov     cx,2
both_pages:
        push    si cx

        call    get_page
        mov     bx,y_out
        shl     bx,1
        add     di,scanl[bx]
        xor     dx,dx
        mov     ax,x_out
        mov     bx,4
        div     bx
        add     di,ax
        mov     bx,dx

        mov     cx,16
height_loop:
        push    cx
        mov     cx,9
        push    bx di
width_loop:
        mov     dx,3c4h
        mov     al,2
        mov     ah,plane[bx]
        out     dx,ax
        push    ds font
        pop     ds
        lodsb
        pop     ds
        mov     es:[di],al
        inc     bx
        cmp     bx,4
        jb      wbxok
        inc     di
        xor     bx,bx
wbxok:
        loop    width_loop
        pop     di bx
        add     di,80
        add     si,531-9
        pop     cx
        loop    height_loop

        call    callidescope_almost
        call    flip_page

        pop     cx si
        loop    both_pages

        add     x_out,9

        mov     cx,3
text_delay_loop:
        push    cx
        call    callidescope_almost
        call    flip_page
        cmp     keydown,1
        jz      out_to_dos
        cmp     byte ptr secret[0],1
        jz      secret_place
        pop     cx
        loop    text_delay_loop
        pop     si
        jmp     character_loop

center_y_out:
        xor     bx,bx
count_lines_loop:
        lodsb
        or      al,al
        jz      finished_count
        cmp     al,1
        jnz     count_lines_loop
        inc     bx
        jmp     count_lines_loop
finished_count:
        mov     ax,bx
        mov     bx,18
        mul     bx
        shr     ax,1
        neg     ax
        add     ax,100
        sub     ax,8
        mov     y_out,ax
        ret

center_x_out:
        xor     bx,bx
count_letters:
        lodsb
        or      al,al
        jz      got_letters
        cmp     al,1
        jz      got_letters
        inc     bx
        jmp     count_letters
got_letters:
        mov     ax,bx
        mov     bx,9
        mul     bx
        shr     ax,1
        neg     ax
        mov     bx,x_add
        add     ax,bx
        mov     x_out,ax
        ret
endp    write_text

proc    kbdhandler
        pusha
        sti
        in      al,60h
        cmp     al,1
        jnz     not_quit
        push    ds
        mov     ax,@data
        mov     ds,ax
        mov     keydown,1
        pop     ds
        jmp     no_secret                
not_quit:
        cmp     al,55
        jnz     no_secret
        push    ds
        mov     ax,@data
        mov     ds,ax
        mov     byte ptr secret[0],1
        pop     ds
no_secret:
        cli
        in      al,61h
        or      al,80h
        out     61h,al
        mov     al,20h
        out     20h,al
        popa
        iret
endp    kbdhandler

proc    clear_page
        mov     dx,3c4h
        mov     ax,0f02h
        out     dx,ax
        mov     cx,8000
        xor     ax,ax
        rep     stosw
        ret
endp    clear_page

proc    bounce_between
        lea     si,bnce2
        mov     cx,470
bbwwn:
        push    cx
        lodsw
        mov     bx,80
        mul     bx
        mov     bx,ax
        push    si
        call    set_offset
        pop     si
        pop     cx
        loop    bbwwn
        ret
endp    bounce_between

proc    fade_out_callidescope
        lea     si,current
        mov     dx,3c8h
        xor     al,al
        out     dx,al
        inc     dx
        mov     cx,64*3
fade_out_loop:
        mov     al,[si]
        or      al,al
        jz      no_fade_out
        dec     al
        mov     [si],al
no_fade_out:
        out     dx,al
        inc     si
        loop    fade_out_loop
        ret
endp    fade_out_callidescope

proc    fade_in_callidescope
        lea     si,current
        lea     di,calcol
        mov     dx,3c8h
        xor     al,al
        out     dx,al
        inc     dx
        mov     cx,64*3
fade_in_loop:
        mov     al,[si]
        mov     ah,[di]
        cmp     al,ah
        jae     no_fade_in
        inc     al
        mov     [si],al
no_fade_in:
        out     dx,al
        inc     di
        inc     si
        loop    fade_in_loop
        ret
endp    fade_in_callidescope

proc    callidescope_almost
        push    bigx bigy
        call    get_wave
        lea     si,wave
        mov     cx,63
        xor     bx,bx
        mov     color,0
draw_points:
        push    cx bx
        mov     ax,sinadd
        shl     ax,1
        add     bigx,ax
        cmp     bigx,2*720
        jb      bigx_ok
        sub     bigx,2*720
bigx_ok:
        mov     bx,bigx
        mov     ax,sintbl[bx]
        sar     ax,1
        mov     x,ax
        mov     ax,cosadd
        shl     ax,1
        add     bigy,ax
        cmp     bigy,2*720
        jb      bigy_ok
        sub     bigy,2*720
bigy_ok:
        mov     bx,bigy
        mov     ax,costbl[bx]
        sar     ax,1
        mov     y,ax
        pop     bx
        mov     ax,wave[bx]
        add     y,ax
        add     x,ax
        mov     ax,x_add
        add     x,ax
        add     y,100
        push    bx
        call    draw_point
        mov     ax,x_add
        sub     x,ax
        neg     x
        add     x,ax
        call    draw_point
        sub     y,100
        neg     y
        add     y,100
        call    draw_point
        mov     ax,x_add
        sub     x,ax
        neg     x
        add     x,ax
        call    draw_point
        pop     bx
        add     bx,2
        pop     cx
        cmp     noadd,1
        jz      no_add
        inc     color
no_add:
        loop    draw_points
        pop     bigy bigx
        mov     ax,sinadd
        shl     ax,1
        add     bigx,ax
        cmp     bigx,2*720
        jb      bxok
        sub     bigx,2*720
bxok:
        mov     ax,cosadd
        shl     ax,1
        add     bigy,ax
        cmp     bigy,2*720
        jb      byok
        sub     bigy,2*720
byok:
        ret
draw_point:
        call    get_page
        mov     bx,y
        shl     bx,1
        add     di,scanl[bx]
        mov     bx,x
        shr     bx,2
        add     di,bx

        mov     ax,x
        mov     bl,4
        div     bl

        mov     dx,3ceh
        mov     al,4
        out     dx,ax

        mov     al,es:[di]
        cmp     al,70
        jbe     draw_ok
        ret
draw_ok:
        mov     bx,x
        mov     dx,3c4h
        mov     al,2
        mov     ah,plane[bx]
        out     dx,ax
        mov     al,color
        mov     es:[di],al
        ret
endp    callidescope_almost

proc    get_wave
        mov     ax,freq
        shl     ax,1
        add     w_start,ax
        cmp     w_start,2*720
        jb      wave_ok
        sub     w_start,2*720
wave_ok:
        mov     bx,w_start
        push    w_start

        mov     cx,64
        mov     w_pos,0
wave_loop:
        push    cx

        mov     ax,freq
        shl     ax,1
        mov     bx,w_start
        add     bx,ax
        cmp     bx,2*720
        jb      bx_ok
        sub     bx,2*720
bx_ok:
        mov     w_start,bx

        mov     ax,sintbl[bx]
        sar     ax,2
        mov     bx,w_pos
        shl     bx,1
        mov     wave[bx],ax
        inc     w_pos

        pop     cx
        loop    wave_loop
        pop     w_start
        ret
endp    get_wave

proc    change_pattern
        mov     bx,pattern
        inc     pattern
        cmp     pattern,9
        jb      no_hgf
        mov     pattern,0
no_hgf:
        shl     bx,1
        mov     ax,sinstor[bx]
        mov     sinadd,ax
        mov     ax,cosstor[bx]
        mov     cosadd,ax
        mov     ax,fre[bx]
        mov     freq,ax
        ret
endp    change_pattern

proc    load_picture_one
        lea     si,pic1
        mov     cx,200
pic1loop1:
        push    cx di
        mov     cx,80
        xor     bx,bx
pic1loop2:
        mov     dx,3c4h
        mov     al,2
        mov     ah,plane[bx]
        out     dx,ax

        lodsb
        add     al,126
        mov     es:[di],al

        inc     bx
        cmp     bx,4
        jb      pic1bxok
        xor     bx,bx
        inc     di
pic1bxok:
        loop    pic1loop2
        pop     di cx
        add     di,80

        loop    pic1loop1
        ret
endp    load_picture_one

proc    picture_load_two
        lea     si,pic2
        mov     cx,200
        add     di,58
pic2loop1:
        push    cx di
        mov     cx,86
        mov     bx,2
pic2loop2:
        mov     dx,3c4h
        mov     al,2
        mov     ah,plane[bx]
        out     dx,ax

        lodsb
        add     al,126
        mov     es:[di],al

        inc     bx
        cmp     bx,4
        jb      bxpi3ok
        xor     bx,bx
        inc     di
bxpi3ok:

        loop    pic2loop2
        pop     di cx
        add     di,80

        loop    pic2loop1
        ret
endp    picture_load_two

proc    get_page
        cmp     xpage,1
        jz      page_one
        mov     di,48000
        ret
page_one:
        mov     di,16000
        ret
endp    get_page

proc    flip_page
        cmp     xpage,0
        jz      page_two
        mov     xpage,0
        mov     bx,16000
        call    set_offset
        mov     di,48000
        call    clear_other_page
        jmp     pages_flipped
page_two:
        mov     xpage,1
        mov     bx,48000
        call    set_offset
        mov     di,16000
        call    clear_other_page
pages_flipped:
        ret
clear_other_page:
        ret
        mov     dx,3c4h
        mov     ax,0f02h
        out     dx,ax
        mov     cx,8000
        xor     ax,ax
        rep     stosw
        ret
endp    flip_page

proc    set_offset
        pusha
        mov     dx,3d4h
        mov     al,0ch
        mov     ah,bh
        out     dx,ax
        inc     al
        mov     ah,bl
        out     dx,ax
        mov     dx,3dah
        in      al,dx
        test    al,8
        jnz     $-3
        in      al,dx
        test    al,8
        jz      $-3
        popa
        ret
endp    set_offset

proc    process_font
        push    ds
        lea     si,font_data
        xor     di,di
        push    es font
        pop     es
        mov     cx,472
all_of_em:
        push    cx
        mov     cx,16
        lodsw
        mov     dx,ax
        mov     bx,1
single_line:
        push    cx
        push    bx
        and     bx,dx
        mov     ax,bx
        pop     bx
        or      ax,ax
        jz      no_color
        mov     al,1
no_color:
        stosb
        shl     bx,1
        pop     cx
        loop    single_line
        pop     cx
        loop    all_of_em

        pop     es
        push    es temp font
        pop     ds es

        mov     si,16
        xor     di,di
        mov     cx,471
fix_up_loop:
        push    cx di si
        mov     cx,16
translate_loop:
        push    cx
        lodsb
        or      al,al
        jz      clr1
        mov     al,0ffh
clr1:
        stosb
        sub     si,2
        add     di,471
        pop     cx
        loop    translate_loop
        pop     si di cx
        add     si,16
        inc     di
        loop    fix_up_loop
        pop     es ds

        push    es ds font temp
        pop     ds es

        mov     cx,532*17
        xor     di,di
        xor     ax,ax
        rep     stosb

        xor     si,si
        mov     di,532
        mov     cx,16
larger_loop:
        push    cx
        mov     cx,59
nine_loop:
        push    cx
        mov     cx,8
        rep     movsb
        inc     di
        pop     cx
        loop    nine_loop
        pop     cx
        loop    larger_loop
        
        pop     ds es

        push    ds es font temp
        pop     ds es
        xor     di,di
        xor     si,si
        mov     cx,16
llop:
        push    cx
        mov     cx,59
slop:
        push    cx
        mov     cx,8
inside_loop:
        lodsb
        or      al,al
        jz      nodraw
        mov     al,0feh
        mov     es:[di],al
nodraw:
        inc     di
        loop    inside_loop
        pop     cx
        inc     di
        loop    slop
        pop     cx
        loop    llop
        pop     es ds
        ret
endp    process_font

proc    detect_adlib
        mov     dx,388h
        in      al,dx
        cmp     al,0
        jz      has_adlib
        cmp     al,6
        jnz     doesnt_have_adlib
has_adlib:
        mov     adlib,1
        ret
doesnt_have_adlib:
        mov     adlib,0
        ret
endp    detect_adlib

end
