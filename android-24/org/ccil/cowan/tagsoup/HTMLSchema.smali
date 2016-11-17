.class public Lorg/ccil/cowan/tagsoup/HTMLSchema;
.super Lorg/ccil/cowan/tagsoup/Schema;
.source "HTMLSchema.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/HTMLModels;


# direct methods
.method public constructor <init>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const v7, 0x9000

    #@4
    const v6, 0x40001000    # 2.0009766f

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v4, 0x0

    #@9
    .line 31
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Schema;-><init>()V

    #@c
    .line 33
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    #@f
    invoke-virtual {p0, v0}, Lorg/ccil/cowan/tagsoup/Schema;->setURI(Ljava/lang/String;)V

    #@12
    .line 34
    const-string/jumbo v0, "html"

    #@15
    invoke-virtual {p0, v0}, Lorg/ccil/cowan/tagsoup/Schema;->setPrefix(Ljava/lang/String;)V

    #@18
    .line 35
    const-string/jumbo v0, "<pcdata>"

    #@1b
    const/high16 v1, 0x40000000    # 2.0f

    #@1d
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@20
    .line 36
    const-string/jumbo v0, "<root>"

    #@23
    const/high16 v1, -0x80000000

    #@25
    invoke-virtual {p0, v0, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@28
    .line 37
    const-string/jumbo v0, "a"

    #@2b
    const v1, 0x40008000    # 2.0078125f

    #@2e
    const/16 v2, 0x1000

    #@30
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@33
    .line 38
    const-string/jumbo v0, "abbr"

    #@36
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@39
    .line 39
    const-string/jumbo v0, "acronym"

    #@3c
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@3f
    .line 40
    const-string/jumbo v0, "address"

    #@42
    const v1, 0x40041000

    #@45
    const/4 v2, 0x4

    #@46
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@49
    .line 41
    const-string/jumbo v0, "applet"

    #@4c
    const v1, 0x40081004

    #@4f
    invoke-virtual {p0, v0, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@52
    .line 42
    const-string/jumbo v0, "area"

    #@55
    const/4 v1, 0x2

    #@56
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@59
    .line 43
    const-string/jumbo v0, "b"

    #@5c
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@5f
    .line 44
    const-string/jumbo v0, "base"

    #@62
    const/16 v1, 0x400

    #@64
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@67
    .line 45
    const-string/jumbo v0, "basefont"

    #@6a
    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@6d
    .line 46
    const-string/jumbo v0, "bdo"

    #@70
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@73
    .line 47
    const-string/jumbo v0, "bgsound"

    #@76
    const/16 v1, 0x400

    #@78
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@7b
    .line 48
    const-string/jumbo v0, "big"

    #@7e
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@81
    .line 49
    const-string/jumbo v0, "blink"

    #@84
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@87
    .line 50
    const-string/jumbo v0, "blockquote"

    #@8a
    const v1, 0x40001004    # 2.0009775f

    #@8d
    const/4 v2, 0x4

    #@8e
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@91
    .line 51
    const-string/jumbo v0, "body"

    #@94
    const v1, 0x40001004    # 2.0009775f

    #@97
    const/16 v2, 0x810

    #@99
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@9c
    .line 52
    const-string/jumbo v0, "br"

    #@9f
    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@a2
    .line 53
    const-string/jumbo v0, "button"

    #@a5
    const v1, 0x40001004    # 2.0009775f

    #@a8
    invoke-virtual {p0, v0, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@ab
    .line 54
    const-string/jumbo v0, "canvas"

    #@ae
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@b1
    .line 55
    const-string/jumbo v0, "caption"

    #@b4
    const/high16 v1, 0x200000

    #@b6
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@b9
    .line 56
    const-string/jumbo v0, "center"

    #@bc
    const v1, 0x40001004    # 2.0009775f

    #@bf
    const/4 v2, 0x4

    #@c0
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@c3
    .line 57
    const-string/jumbo v0, "cite"

    #@c6
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@c9
    .line 58
    const-string/jumbo v0, "code"

    #@cc
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@cf
    .line 59
    const-string/jumbo v0, "col"

    #@d2
    const v1, 0x200040

    #@d5
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@d8
    .line 60
    const-string/jumbo v0, "colgroup"

    #@db
    const/16 v1, 0x40

    #@dd
    const/high16 v2, 0x200000

    #@df
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@e2
    .line 61
    const-string/jumbo v0, "comment"

    #@e5
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@e8
    .line 62
    const-string/jumbo v0, "dd"

    #@eb
    const v1, 0x40001004    # 2.0009775f

    #@ee
    const/16 v2, 0x80

    #@f0
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@f3
    .line 63
    const-string/jumbo v0, "del"

    #@f6
    const v1, 0x40001004    # 2.0009775f

    #@f9
    const/16 v2, 0x100c

    #@fb
    invoke-virtual {p0, v0, v1, v2, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@fe
    .line 64
    const-string/jumbo v0, "dfn"

    #@101
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@104
    .line 65
    const-string/jumbo v0, "dir"

    #@107
    const/16 v1, 0x4000

    #@109
    const/4 v2, 0x4

    #@10a
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@10d
    .line 66
    const-string/jumbo v0, "div"

    #@110
    const v1, 0x40001004    # 2.0009775f

    #@113
    const/4 v2, 0x4

    #@114
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@117
    .line 67
    const-string/jumbo v0, "dl"

    #@11a
    const/16 v1, 0x80

    #@11c
    const/4 v2, 0x4

    #@11d
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@120
    .line 68
    const-string/jumbo v0, "dt"

    #@123
    const/16 v1, 0x80

    #@125
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@128
    .line 69
    const-string/jumbo v0, "em"

    #@12b
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@12e
    .line 70
    const-string/jumbo v0, "fieldset"

    #@131
    const v1, 0x40003004

    #@134
    const/4 v2, 0x4

    #@135
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@138
    .line 71
    const-string/jumbo v0, "font"

    #@13b
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@13e
    .line 72
    const-string/jumbo v0, "form"

    #@141
    const v1, 0x40409024

    #@144
    const/16 v2, 0x104

    #@146
    const/4 v3, 0x4

    #@147
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@14a
    .line 73
    const-string/jumbo v0, "frame"

    #@14d
    const/16 v1, 0x200

    #@14f
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@152
    .line 74
    const-string/jumbo v0, "frameset"

    #@155
    const/16 v1, 0x200

    #@157
    const/16 v2, 0xa00

    #@159
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@15c
    .line 75
    const-string/jumbo v0, "h1"

    #@15f
    const/4 v1, 0x4

    #@160
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@163
    .line 76
    const-string/jumbo v0, "h2"

    #@166
    const/4 v1, 0x4

    #@167
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@16a
    .line 77
    const-string/jumbo v0, "h3"

    #@16d
    const/4 v1, 0x4

    #@16e
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@171
    .line 78
    const-string/jumbo v0, "h4"

    #@174
    const/4 v1, 0x4

    #@175
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@178
    .line 79
    const-string/jumbo v0, "h5"

    #@17b
    const/4 v1, 0x4

    #@17c
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@17f
    .line 80
    const-string/jumbo v0, "h6"

    #@182
    const/4 v1, 0x4

    #@183
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@186
    .line 81
    const-string/jumbo v0, "head"

    #@189
    const/16 v1, 0x400

    #@18b
    const/16 v2, 0x800

    #@18d
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@190
    .line 82
    const-string/jumbo v0, "hr"

    #@193
    const/4 v1, 0x4

    #@194
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@197
    .line 83
    const-string/jumbo v0, "html"

    #@19a
    const/16 v1, 0x800

    #@19c
    const/high16 v2, -0x80000000

    #@19e
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1a1
    .line 84
    const-string/jumbo v0, "i"

    #@1a4
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1a7
    .line 85
    const-string/jumbo v0, "iframe"

    #@1aa
    const v1, 0x40001004    # 2.0009775f

    #@1ad
    invoke-virtual {p0, v0, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1b0
    .line 86
    const-string/jumbo v0, "img"

    #@1b3
    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1b6
    .line 87
    const-string/jumbo v0, "input"

    #@1b9
    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1bc
    .line 88
    const-string/jumbo v0, "ins"

    #@1bf
    const v1, 0x40001004    # 2.0009775f

    #@1c2
    const/16 v2, 0x1004

    #@1c4
    invoke-virtual {p0, v0, v1, v2, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1c7
    .line 89
    const-string/jumbo v0, "isindex"

    #@1ca
    const/16 v1, 0x400

    #@1cc
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1cf
    .line 90
    const-string/jumbo v0, "kbd"

    #@1d2
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1d5
    .line 91
    const-string/jumbo v0, "label"

    #@1d8
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1db
    .line 92
    const-string/jumbo v0, "legend"

    #@1de
    const/16 v1, 0x2000

    #@1e0
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1e3
    .line 93
    const-string/jumbo v0, "li"

    #@1e6
    const v1, 0x40001004    # 2.0009775f

    #@1e9
    const/16 v2, 0x4000

    #@1eb
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1ee
    .line 94
    const-string/jumbo v0, "link"

    #@1f1
    const/16 v1, 0x1400

    #@1f3
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1f6
    .line 95
    const-string/jumbo v0, "listing"

    #@1f9
    const/4 v1, 0x4

    #@1fa
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@1fd
    .line 96
    const-string/jumbo v0, "map"

    #@200
    const/4 v1, 0x6

    #@201
    const/16 v2, 0x1000

    #@203
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@206
    .line 97
    const-string/jumbo v0, "marquee"

    #@209
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@20c
    .line 98
    const-string/jumbo v0, "menu"

    #@20f
    const/16 v1, 0x4000

    #@211
    const/4 v2, 0x4

    #@212
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@215
    .line 99
    const-string/jumbo v0, "meta"

    #@218
    const/16 v1, 0x400

    #@21a
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@21d
    .line 100
    const-string/jumbo v0, "nobr"

    #@220
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@223
    .line 101
    const-string/jumbo v0, "noframes"

    #@226
    const/16 v1, 0x1014

    #@228
    const/16 v2, 0xa04

    #@22a
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@22d
    .line 102
    const-string/jumbo v0, "noscript"

    #@230
    const v1, 0x40001004    # 2.0009775f

    #@233
    const/4 v2, 0x4

    #@234
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@237
    .line 103
    const-string/jumbo v0, "object"

    #@23a
    const v1, 0x40081004

    #@23d
    const v2, 0x9400

    #@240
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@243
    .line 104
    const-string/jumbo v0, "ol"

    #@246
    const/16 v1, 0x4000

    #@248
    const/4 v2, 0x4

    #@249
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@24c
    .line 105
    const-string/jumbo v0, "optgroup"

    #@24f
    const/high16 v1, 0x20000

    #@251
    const/high16 v2, 0x20000

    #@253
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@256
    .line 106
    const-string/jumbo v0, "option"

    #@259
    const/high16 v1, 0x40000000    # 2.0f

    #@25b
    const/high16 v2, 0x30000

    #@25d
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@260
    .line 107
    const-string/jumbo v0, "p"

    #@263
    const v1, 0x40101000

    #@266
    const v2, 0x40004

    #@269
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@26c
    .line 108
    const-string/jumbo v0, "param"

    #@26f
    const/high16 v1, 0x80000

    #@271
    invoke-virtual {p0, v0, v5, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@274
    .line 109
    const-string/jumbo v0, "pre"

    #@277
    const/4 v1, 0x4

    #@278
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@27b
    .line 110
    const-string/jumbo v0, "q"

    #@27e
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@281
    .line 111
    const-string/jumbo v0, "rb"

    #@284
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@287
    .line 112
    const-string/jumbo v0, "rbc"

    #@28a
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@28d
    .line 113
    const-string/jumbo v0, "rp"

    #@290
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@293
    .line 114
    const-string/jumbo v0, "rt"

    #@296
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@299
    .line 115
    const-string/jumbo v0, "rtc"

    #@29c
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@29f
    .line 116
    const-string/jumbo v0, "ruby"

    #@2a2
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2a5
    .line 117
    const-string/jumbo v0, "s"

    #@2a8
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2ab
    .line 118
    const-string/jumbo v0, "samp"

    #@2ae
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2b1
    .line 119
    const-string/jumbo v0, "script"

    #@2b4
    const/high16 v1, 0x40000000    # 2.0f

    #@2b6
    const v2, 0x7fffffff

    #@2b9
    const/4 v3, 0x2

    #@2ba
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2bd
    .line 120
    const-string/jumbo v0, "select"

    #@2c0
    const/high16 v1, 0x20000

    #@2c2
    const/16 v2, 0x1000

    #@2c4
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2c7
    .line 121
    const-string/jumbo v0, "small"

    #@2ca
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2cd
    .line 122
    const-string/jumbo v0, "span"

    #@2d0
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2d3
    .line 123
    const-string/jumbo v0, "strike"

    #@2d6
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2d9
    .line 124
    const-string/jumbo v0, "strong"

    #@2dc
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2df
    .line 125
    const-string/jumbo v0, "style"

    #@2e2
    const/high16 v1, 0x40000000    # 2.0f

    #@2e4
    const/16 v2, 0x1400

    #@2e6
    const/4 v3, 0x2

    #@2e7
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2ea
    .line 126
    const-string/jumbo v0, "sub"

    #@2ed
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2f0
    .line 127
    const-string/jumbo v0, "sup"

    #@2f3
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@2f6
    .line 128
    const-string/jumbo v0, "table"

    #@2f9
    const v1, 0x200100

    #@2fc
    const v2, 0x100004

    #@2ff
    const/4 v3, 0x4

    #@300
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@303
    .line 129
    const-string/jumbo v0, "tbody"

    #@306
    const/high16 v1, 0x400000

    #@308
    const/high16 v2, 0x200000

    #@30a
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@30d
    .line 130
    const-string/jumbo v0, "td"

    #@310
    const v1, 0x40001004    # 2.0009775f

    #@313
    const/16 v2, 0x20

    #@315
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@318
    .line 131
    const-string/jumbo v0, "textarea"

    #@31b
    const/high16 v1, 0x40000000    # 2.0f

    #@31d
    const/16 v2, 0x1000

    #@31f
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@322
    .line 132
    const-string/jumbo v0, "tfoot"

    #@325
    const v1, 0x400120

    #@328
    const/high16 v2, 0x200000

    #@32a
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@32d
    .line 133
    const-string/jumbo v0, "th"

    #@330
    const v1, 0x40001004    # 2.0009775f

    #@333
    const/16 v2, 0x20

    #@335
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@338
    .line 134
    const-string/jumbo v0, "thead"

    #@33b
    const v1, 0x400120

    #@33e
    const/high16 v2, 0x200000

    #@340
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@343
    .line 135
    const-string/jumbo v0, "title"

    #@346
    const/high16 v1, 0x40000000    # 2.0f

    #@348
    const/16 v2, 0x400

    #@34a
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@34d
    .line 136
    const-string/jumbo v0, "tr"

    #@350
    const/16 v1, 0x120

    #@352
    const/high16 v2, 0x600000

    #@354
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@357
    .line 137
    const-string/jumbo v0, "tt"

    #@35a
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@35d
    .line 138
    const-string/jumbo v0, "u"

    #@360
    invoke-virtual {p0, v0, v6, v7, v8}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@363
    .line 139
    const-string/jumbo v0, "ul"

    #@366
    const/16 v1, 0x4000

    #@368
    const/4 v2, 0x4

    #@369
    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@36c
    .line 140
    const-string/jumbo v0, "var"

    #@36f
    invoke-virtual {p0, v0, v6, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@372
    .line 141
    const-string/jumbo v0, "wbr"

    #@375
    invoke-virtual {p0, v0, v5, v7, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@378
    .line 142
    const-string/jumbo v0, "xmp"

    #@37b
    const/4 v1, 0x4

    #@37c
    invoke-virtual {p0, v0, v6, v1, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@37f
    .line 143
    const-string/jumbo v0, "<pcdata>"

    #@382
    const-string/jumbo v1, "body"

    #@385
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@388
    .line 144
    const-string/jumbo v0, "html"

    #@38b
    const-string/jumbo v1, "<root>"

    #@38e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@391
    .line 145
    const-string/jumbo v0, "a"

    #@394
    const-string/jumbo v1, "body"

    #@397
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@39a
    .line 146
    const-string/jumbo v0, "abbr"

    #@39d
    const-string/jumbo v1, "body"

    #@3a0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3a3
    .line 147
    const-string/jumbo v0, "acronym"

    #@3a6
    const-string/jumbo v1, "body"

    #@3a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3ac
    .line 148
    const-string/jumbo v0, "address"

    #@3af
    const-string/jumbo v1, "body"

    #@3b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3b5
    .line 149
    const-string/jumbo v0, "applet"

    #@3b8
    const-string/jumbo v1, "body"

    #@3bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3be
    .line 150
    const-string/jumbo v0, "area"

    #@3c1
    const-string/jumbo v1, "map"

    #@3c4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3c7
    .line 151
    const-string/jumbo v0, "b"

    #@3ca
    const-string/jumbo v1, "body"

    #@3cd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3d0
    .line 152
    const-string/jumbo v0, "base"

    #@3d3
    const-string/jumbo v1, "head"

    #@3d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3d9
    .line 153
    const-string/jumbo v0, "basefont"

    #@3dc
    const-string/jumbo v1, "body"

    #@3df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3e2
    .line 154
    const-string/jumbo v0, "bdo"

    #@3e5
    const-string/jumbo v1, "body"

    #@3e8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3eb
    .line 155
    const-string/jumbo v0, "bgsound"

    #@3ee
    const-string/jumbo v1, "head"

    #@3f1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3f4
    .line 156
    const-string/jumbo v0, "big"

    #@3f7
    const-string/jumbo v1, "body"

    #@3fa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3fd
    .line 157
    const-string/jumbo v0, "blink"

    #@400
    const-string/jumbo v1, "body"

    #@403
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@406
    .line 158
    const-string/jumbo v0, "blockquote"

    #@409
    const-string/jumbo v1, "body"

    #@40c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@40f
    .line 159
    const-string/jumbo v0, "body"

    #@412
    const-string/jumbo v1, "html"

    #@415
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@418
    .line 160
    const-string/jumbo v0, "br"

    #@41b
    const-string/jumbo v1, "body"

    #@41e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@421
    .line 161
    const-string/jumbo v0, "button"

    #@424
    const-string/jumbo v1, "form"

    #@427
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@42a
    .line 162
    const-string/jumbo v0, "canvas"

    #@42d
    const-string/jumbo v1, "body"

    #@430
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@433
    .line 163
    const-string/jumbo v0, "caption"

    #@436
    const-string/jumbo v1, "table"

    #@439
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@43c
    .line 164
    const-string/jumbo v0, "center"

    #@43f
    const-string/jumbo v1, "body"

    #@442
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@445
    .line 165
    const-string/jumbo v0, "cite"

    #@448
    const-string/jumbo v1, "body"

    #@44b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@44e
    .line 166
    const-string/jumbo v0, "code"

    #@451
    const-string/jumbo v1, "body"

    #@454
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@457
    .line 167
    const-string/jumbo v0, "col"

    #@45a
    const-string/jumbo v1, "table"

    #@45d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@460
    .line 168
    const-string/jumbo v0, "colgroup"

    #@463
    const-string/jumbo v1, "table"

    #@466
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@469
    .line 169
    const-string/jumbo v0, "comment"

    #@46c
    const-string/jumbo v1, "body"

    #@46f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@472
    .line 170
    const-string/jumbo v0, "dd"

    #@475
    const-string/jumbo v1, "dl"

    #@478
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@47b
    .line 171
    const-string/jumbo v0, "del"

    #@47e
    const-string/jumbo v1, "body"

    #@481
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@484
    .line 172
    const-string/jumbo v0, "dfn"

    #@487
    const-string/jumbo v1, "body"

    #@48a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@48d
    .line 173
    const-string/jumbo v0, "dir"

    #@490
    const-string/jumbo v1, "body"

    #@493
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@496
    .line 174
    const-string/jumbo v0, "div"

    #@499
    const-string/jumbo v1, "body"

    #@49c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@49f
    .line 175
    const-string/jumbo v0, "dl"

    #@4a2
    const-string/jumbo v1, "body"

    #@4a5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4a8
    .line 176
    const-string/jumbo v0, "dt"

    #@4ab
    const-string/jumbo v1, "dl"

    #@4ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4b1
    .line 177
    const-string/jumbo v0, "em"

    #@4b4
    const-string/jumbo v1, "body"

    #@4b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4ba
    .line 178
    const-string/jumbo v0, "fieldset"

    #@4bd
    const-string/jumbo v1, "form"

    #@4c0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4c3
    .line 179
    const-string/jumbo v0, "font"

    #@4c6
    const-string/jumbo v1, "body"

    #@4c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4cc
    .line 180
    const-string/jumbo v0, "form"

    #@4cf
    const-string/jumbo v1, "body"

    #@4d2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4d5
    .line 181
    const-string/jumbo v0, "frame"

    #@4d8
    const-string/jumbo v1, "frameset"

    #@4db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4de
    .line 182
    const-string/jumbo v0, "frameset"

    #@4e1
    const-string/jumbo v1, "html"

    #@4e4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4e7
    .line 183
    const-string/jumbo v0, "h1"

    #@4ea
    const-string/jumbo v1, "body"

    #@4ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4f0
    .line 184
    const-string/jumbo v0, "h2"

    #@4f3
    const-string/jumbo v1, "body"

    #@4f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@4f9
    .line 185
    const-string/jumbo v0, "h3"

    #@4fc
    const-string/jumbo v1, "body"

    #@4ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@502
    .line 186
    const-string/jumbo v0, "h4"

    #@505
    const-string/jumbo v1, "body"

    #@508
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@50b
    .line 187
    const-string/jumbo v0, "h5"

    #@50e
    const-string/jumbo v1, "body"

    #@511
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@514
    .line 188
    const-string/jumbo v0, "h6"

    #@517
    const-string/jumbo v1, "body"

    #@51a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@51d
    .line 189
    const-string/jumbo v0, "head"

    #@520
    const-string/jumbo v1, "html"

    #@523
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@526
    .line 190
    const-string/jumbo v0, "hr"

    #@529
    const-string/jumbo v1, "body"

    #@52c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@52f
    .line 191
    const-string/jumbo v0, "i"

    #@532
    const-string/jumbo v1, "body"

    #@535
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@538
    .line 192
    const-string/jumbo v0, "iframe"

    #@53b
    const-string/jumbo v1, "body"

    #@53e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@541
    .line 193
    const-string/jumbo v0, "img"

    #@544
    const-string/jumbo v1, "body"

    #@547
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@54a
    .line 194
    const-string/jumbo v0, "input"

    #@54d
    const-string/jumbo v1, "form"

    #@550
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@553
    .line 195
    const-string/jumbo v0, "ins"

    #@556
    const-string/jumbo v1, "body"

    #@559
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@55c
    .line 196
    const-string/jumbo v0, "isindex"

    #@55f
    const-string/jumbo v1, "head"

    #@562
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@565
    .line 197
    const-string/jumbo v0, "kbd"

    #@568
    const-string/jumbo v1, "body"

    #@56b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@56e
    .line 198
    const-string/jumbo v0, "label"

    #@571
    const-string/jumbo v1, "form"

    #@574
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@577
    .line 199
    const-string/jumbo v0, "legend"

    #@57a
    const-string/jumbo v1, "fieldset"

    #@57d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@580
    .line 200
    const-string/jumbo v0, "li"

    #@583
    const-string/jumbo v1, "ul"

    #@586
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@589
    .line 201
    const-string/jumbo v0, "link"

    #@58c
    const-string/jumbo v1, "head"

    #@58f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@592
    .line 202
    const-string/jumbo v0, "listing"

    #@595
    const-string/jumbo v1, "body"

    #@598
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@59b
    .line 203
    const-string/jumbo v0, "map"

    #@59e
    const-string/jumbo v1, "body"

    #@5a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5a4
    .line 204
    const-string/jumbo v0, "marquee"

    #@5a7
    const-string/jumbo v1, "body"

    #@5aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5ad
    .line 205
    const-string/jumbo v0, "menu"

    #@5b0
    const-string/jumbo v1, "body"

    #@5b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5b6
    .line 206
    const-string/jumbo v0, "meta"

    #@5b9
    const-string/jumbo v1, "head"

    #@5bc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5bf
    .line 207
    const-string/jumbo v0, "nobr"

    #@5c2
    const-string/jumbo v1, "body"

    #@5c5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5c8
    .line 208
    const-string/jumbo v0, "noframes"

    #@5cb
    const-string/jumbo v1, "html"

    #@5ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5d1
    .line 209
    const-string/jumbo v0, "noscript"

    #@5d4
    const-string/jumbo v1, "body"

    #@5d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5da
    .line 210
    const-string/jumbo v0, "object"

    #@5dd
    const-string/jumbo v1, "body"

    #@5e0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5e3
    .line 211
    const-string/jumbo v0, "ol"

    #@5e6
    const-string/jumbo v1, "body"

    #@5e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5ec
    .line 212
    const-string/jumbo v0, "optgroup"

    #@5ef
    const-string/jumbo v1, "select"

    #@5f2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5f5
    .line 213
    const-string/jumbo v0, "option"

    #@5f8
    const-string/jumbo v1, "select"

    #@5fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@5fe
    .line 214
    const-string/jumbo v0, "p"

    #@601
    const-string/jumbo v1, "body"

    #@604
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@607
    .line 215
    const-string/jumbo v0, "param"

    #@60a
    const-string/jumbo v1, "object"

    #@60d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@610
    .line 216
    const-string/jumbo v0, "pre"

    #@613
    const-string/jumbo v1, "body"

    #@616
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@619
    .line 217
    const-string/jumbo v0, "q"

    #@61c
    const-string/jumbo v1, "body"

    #@61f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@622
    .line 218
    const-string/jumbo v0, "rb"

    #@625
    const-string/jumbo v1, "body"

    #@628
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@62b
    .line 219
    const-string/jumbo v0, "rbc"

    #@62e
    const-string/jumbo v1, "body"

    #@631
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@634
    .line 220
    const-string/jumbo v0, "rp"

    #@637
    const-string/jumbo v1, "body"

    #@63a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@63d
    .line 221
    const-string/jumbo v0, "rt"

    #@640
    const-string/jumbo v1, "body"

    #@643
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@646
    .line 222
    const-string/jumbo v0, "rtc"

    #@649
    const-string/jumbo v1, "body"

    #@64c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@64f
    .line 223
    const-string/jumbo v0, "ruby"

    #@652
    const-string/jumbo v1, "body"

    #@655
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@658
    .line 224
    const-string/jumbo v0, "s"

    #@65b
    const-string/jumbo v1, "body"

    #@65e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@661
    .line 225
    const-string/jumbo v0, "samp"

    #@664
    const-string/jumbo v1, "body"

    #@667
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@66a
    .line 226
    const-string/jumbo v0, "script"

    #@66d
    const-string/jumbo v1, "html"

    #@670
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@673
    .line 227
    const-string/jumbo v0, "select"

    #@676
    const-string/jumbo v1, "form"

    #@679
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@67c
    .line 228
    const-string/jumbo v0, "small"

    #@67f
    const-string/jumbo v1, "body"

    #@682
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@685
    .line 229
    const-string/jumbo v0, "span"

    #@688
    const-string/jumbo v1, "body"

    #@68b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@68e
    .line 230
    const-string/jumbo v0, "strike"

    #@691
    const-string/jumbo v1, "body"

    #@694
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@697
    .line 231
    const-string/jumbo v0, "strong"

    #@69a
    const-string/jumbo v1, "body"

    #@69d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6a0
    .line 232
    const-string/jumbo v0, "style"

    #@6a3
    const-string/jumbo v1, "head"

    #@6a6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6a9
    .line 233
    const-string/jumbo v0, "sub"

    #@6ac
    const-string/jumbo v1, "body"

    #@6af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6b2
    .line 234
    const-string/jumbo v0, "sup"

    #@6b5
    const-string/jumbo v1, "body"

    #@6b8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6bb
    .line 235
    const-string/jumbo v0, "table"

    #@6be
    const-string/jumbo v1, "body"

    #@6c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6c4
    .line 236
    const-string/jumbo v0, "tbody"

    #@6c7
    const-string/jumbo v1, "table"

    #@6ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6cd
    .line 237
    const-string/jumbo v0, "td"

    #@6d0
    const-string/jumbo v1, "tr"

    #@6d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6d6
    .line 238
    const-string/jumbo v0, "textarea"

    #@6d9
    const-string/jumbo v1, "form"

    #@6dc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6df
    .line 239
    const-string/jumbo v0, "tfoot"

    #@6e2
    const-string/jumbo v1, "table"

    #@6e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6e8
    .line 240
    const-string/jumbo v0, "th"

    #@6eb
    const-string/jumbo v1, "tr"

    #@6ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6f1
    .line 241
    const-string/jumbo v0, "thead"

    #@6f4
    const-string/jumbo v1, "table"

    #@6f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@6fa
    .line 242
    const-string/jumbo v0, "title"

    #@6fd
    const-string/jumbo v1, "head"

    #@700
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@703
    .line 243
    const-string/jumbo v0, "tr"

    #@706
    const-string/jumbo v1, "tbody"

    #@709
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@70c
    .line 244
    const-string/jumbo v0, "tt"

    #@70f
    const-string/jumbo v1, "body"

    #@712
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@715
    .line 245
    const-string/jumbo v0, "u"

    #@718
    const-string/jumbo v1, "body"

    #@71b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@71e
    .line 246
    const-string/jumbo v0, "ul"

    #@721
    const-string/jumbo v1, "body"

    #@724
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@727
    .line 247
    const-string/jumbo v0, "var"

    #@72a
    const-string/jumbo v1, "body"

    #@72d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@730
    .line 248
    const-string/jumbo v0, "wbr"

    #@733
    const-string/jumbo v1, "body"

    #@736
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@739
    .line 249
    const-string/jumbo v0, "xmp"

    #@73c
    const-string/jumbo v1, "body"

    #@73f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@742
    .line 250
    const-string/jumbo v0, "a"

    #@745
    const-string/jumbo v1, "hreflang"

    #@748
    const-string/jumbo v2, "NMTOKEN"

    #@74b
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@74e
    .line 251
    const-string/jumbo v0, "a"

    #@751
    const-string/jumbo v1, "shape"

    #@754
    const-string/jumbo v2, "CDATA"

    #@757
    const-string/jumbo v3, "rect"

    #@75a
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@75d
    .line 252
    const-string/jumbo v0, "a"

    #@760
    const-string/jumbo v1, "tabindex"

    #@763
    const-string/jumbo v2, "NMTOKEN"

    #@766
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@769
    .line 253
    const-string/jumbo v0, "applet"

    #@76c
    const-string/jumbo v1, "align"

    #@76f
    const-string/jumbo v2, "NMTOKEN"

    #@772
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@775
    .line 254
    const-string/jumbo v0, "area"

    #@778
    const-string/jumbo v1, "nohref"

    #@77b
    const-string/jumbo v2, "BOOLEAN"

    #@77e
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@781
    .line 255
    const-string/jumbo v0, "area"

    #@784
    const-string/jumbo v1, "shape"

    #@787
    const-string/jumbo v2, "CDATA"

    #@78a
    const-string/jumbo v3, "rect"

    #@78d
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@790
    .line 256
    const-string/jumbo v0, "area"

    #@793
    const-string/jumbo v1, "tabindex"

    #@796
    const-string/jumbo v2, "NMTOKEN"

    #@799
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@79c
    .line 257
    const-string/jumbo v0, "br"

    #@79f
    const-string/jumbo v1, "clear"

    #@7a2
    const-string/jumbo v2, "CDATA"

    #@7a5
    const-string/jumbo v3, "none"

    #@7a8
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7ab
    .line 258
    const-string/jumbo v0, "button"

    #@7ae
    const-string/jumbo v1, "disabled"

    #@7b1
    const-string/jumbo v2, "BOOLEAN"

    #@7b4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7b7
    .line 259
    const-string/jumbo v0, "button"

    #@7ba
    const-string/jumbo v1, "tabindex"

    #@7bd
    const-string/jumbo v2, "NMTOKEN"

    #@7c0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7c3
    .line 260
    const-string/jumbo v0, "button"

    #@7c6
    const-string/jumbo v1, "type"

    #@7c9
    const-string/jumbo v2, "CDATA"

    #@7cc
    const-string/jumbo v3, "submit"

    #@7cf
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7d2
    .line 261
    const-string/jumbo v0, "caption"

    #@7d5
    const-string/jumbo v1, "align"

    #@7d8
    const-string/jumbo v2, "NMTOKEN"

    #@7db
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7de
    .line 262
    const-string/jumbo v0, "col"

    #@7e1
    const-string/jumbo v1, "align"

    #@7e4
    const-string/jumbo v2, "NMTOKEN"

    #@7e7
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7ea
    .line 263
    const-string/jumbo v0, "col"

    #@7ed
    const-string/jumbo v1, "span"

    #@7f0
    const-string/jumbo v2, "CDATA"

    #@7f3
    const-string/jumbo v3, "1"

    #@7f6
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7f9
    .line 264
    const-string/jumbo v0, "col"

    #@7fc
    const-string/jumbo v1, "valign"

    #@7ff
    const-string/jumbo v2, "NMTOKEN"

    #@802
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@805
    .line 265
    const-string/jumbo v0, "colgroup"

    #@808
    const-string/jumbo v1, "align"

    #@80b
    const-string/jumbo v2, "NMTOKEN"

    #@80e
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@811
    .line 266
    const-string/jumbo v0, "colgroup"

    #@814
    const-string/jumbo v1, "span"

    #@817
    const-string/jumbo v2, "CDATA"

    #@81a
    const-string/jumbo v3, "1"

    #@81d
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@820
    .line 267
    const-string/jumbo v0, "colgroup"

    #@823
    const-string/jumbo v1, "valign"

    #@826
    const-string/jumbo v2, "NMTOKEN"

    #@829
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@82c
    .line 268
    const-string/jumbo v0, "dir"

    #@82f
    const-string/jumbo v1, "compact"

    #@832
    const-string/jumbo v2, "BOOLEAN"

    #@835
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@838
    .line 269
    const-string/jumbo v0, "div"

    #@83b
    const-string/jumbo v1, "align"

    #@83e
    const-string/jumbo v2, "NMTOKEN"

    #@841
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@844
    .line 270
    const-string/jumbo v0, "dl"

    #@847
    const-string/jumbo v1, "compact"

    #@84a
    const-string/jumbo v2, "BOOLEAN"

    #@84d
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@850
    .line 271
    const-string/jumbo v0, "form"

    #@853
    const-string/jumbo v1, "enctype"

    #@856
    const-string/jumbo v2, "CDATA"

    #@859
    const-string/jumbo v3, "application/x-www-form-urlencoded"

    #@85c
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@85f
    .line 272
    const-string/jumbo v0, "form"

    #@862
    const-string/jumbo v1, "method"

    #@865
    const-string/jumbo v2, "CDATA"

    #@868
    const-string/jumbo v3, "get"

    #@86b
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@86e
    .line 273
    const-string/jumbo v0, "frame"

    #@871
    const-string/jumbo v1, "frameborder"

    #@874
    const-string/jumbo v2, "CDATA"

    #@877
    const-string/jumbo v3, "1"

    #@87a
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@87d
    .line 274
    const-string/jumbo v0, "frame"

    #@880
    const-string/jumbo v1, "noresize"

    #@883
    const-string/jumbo v2, "BOOLEAN"

    #@886
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@889
    .line 275
    const-string/jumbo v0, "frame"

    #@88c
    const-string/jumbo v1, "scrolling"

    #@88f
    const-string/jumbo v2, "CDATA"

    #@892
    const-string/jumbo v3, "auto"

    #@895
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@898
    .line 276
    const-string/jumbo v0, "h1"

    #@89b
    const-string/jumbo v1, "align"

    #@89e
    const-string/jumbo v2, "NMTOKEN"

    #@8a1
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8a4
    .line 277
    const-string/jumbo v0, "h2"

    #@8a7
    const-string/jumbo v1, "align"

    #@8aa
    const-string/jumbo v2, "NMTOKEN"

    #@8ad
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8b0
    .line 278
    const-string/jumbo v0, "h3"

    #@8b3
    const-string/jumbo v1, "align"

    #@8b6
    const-string/jumbo v2, "NMTOKEN"

    #@8b9
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8bc
    .line 279
    const-string/jumbo v0, "h4"

    #@8bf
    const-string/jumbo v1, "align"

    #@8c2
    const-string/jumbo v2, "NMTOKEN"

    #@8c5
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8c8
    .line 280
    const-string/jumbo v0, "h5"

    #@8cb
    const-string/jumbo v1, "align"

    #@8ce
    const-string/jumbo v2, "NMTOKEN"

    #@8d1
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8d4
    .line 281
    const-string/jumbo v0, "h6"

    #@8d7
    const-string/jumbo v1, "align"

    #@8da
    const-string/jumbo v2, "NMTOKEN"

    #@8dd
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8e0
    .line 282
    const-string/jumbo v0, "hr"

    #@8e3
    const-string/jumbo v1, "align"

    #@8e6
    const-string/jumbo v2, "NMTOKEN"

    #@8e9
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8ec
    .line 283
    const-string/jumbo v0, "hr"

    #@8ef
    const-string/jumbo v1, "noshade"

    #@8f2
    const-string/jumbo v2, "BOOLEAN"

    #@8f5
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8f8
    .line 284
    const-string/jumbo v0, "iframe"

    #@8fb
    const-string/jumbo v1, "align"

    #@8fe
    const-string/jumbo v2, "NMTOKEN"

    #@901
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@904
    .line 285
    const-string/jumbo v0, "iframe"

    #@907
    const-string/jumbo v1, "frameborder"

    #@90a
    const-string/jumbo v2, "CDATA"

    #@90d
    const-string/jumbo v3, "1"

    #@910
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@913
    .line 286
    const-string/jumbo v0, "iframe"

    #@916
    const-string/jumbo v1, "scrolling"

    #@919
    const-string/jumbo v2, "CDATA"

    #@91c
    const-string/jumbo v3, "auto"

    #@91f
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@922
    .line 287
    const-string/jumbo v0, "img"

    #@925
    const-string/jumbo v1, "align"

    #@928
    const-string/jumbo v2, "NMTOKEN"

    #@92b
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@92e
    .line 288
    const-string/jumbo v0, "img"

    #@931
    const-string/jumbo v1, "ismap"

    #@934
    const-string/jumbo v2, "BOOLEAN"

    #@937
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@93a
    .line 289
    const-string/jumbo v0, "input"

    #@93d
    const-string/jumbo v1, "align"

    #@940
    const-string/jumbo v2, "NMTOKEN"

    #@943
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@946
    .line 290
    const-string/jumbo v0, "input"

    #@949
    const-string/jumbo v1, "checked"

    #@94c
    const-string/jumbo v2, "BOOLEAN"

    #@94f
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@952
    .line 291
    const-string/jumbo v0, "input"

    #@955
    const-string/jumbo v1, "disabled"

    #@958
    const-string/jumbo v2, "BOOLEAN"

    #@95b
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@95e
    .line 292
    const-string/jumbo v0, "input"

    #@961
    const-string/jumbo v1, "ismap"

    #@964
    const-string/jumbo v2, "BOOLEAN"

    #@967
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@96a
    .line 293
    const-string/jumbo v0, "input"

    #@96d
    const-string/jumbo v1, "maxlength"

    #@970
    const-string/jumbo v2, "NMTOKEN"

    #@973
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@976
    .line 294
    const-string/jumbo v0, "input"

    #@979
    const-string/jumbo v1, "readonly"

    #@97c
    const-string/jumbo v2, "BOOLEAN"

    #@97f
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@982
    .line 295
    const-string/jumbo v0, "input"

    #@985
    const-string/jumbo v1, "tabindex"

    #@988
    const-string/jumbo v2, "NMTOKEN"

    #@98b
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@98e
    .line 296
    const-string/jumbo v0, "input"

    #@991
    const-string/jumbo v1, "type"

    #@994
    const-string/jumbo v2, "CDATA"

    #@997
    const-string/jumbo v3, "text"

    #@99a
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@99d
    .line 297
    const-string/jumbo v0, "label"

    #@9a0
    const-string/jumbo v1, "for"

    #@9a3
    const-string/jumbo v2, "IDREF"

    #@9a6
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9a9
    .line 298
    const-string/jumbo v0, "legend"

    #@9ac
    const-string/jumbo v1, "align"

    #@9af
    const-string/jumbo v2, "NMTOKEN"

    #@9b2
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9b5
    .line 299
    const-string/jumbo v0, "li"

    #@9b8
    const-string/jumbo v1, "value"

    #@9bb
    const-string/jumbo v2, "NMTOKEN"

    #@9be
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9c1
    .line 300
    const-string/jumbo v0, "link"

    #@9c4
    const-string/jumbo v1, "hreflang"

    #@9c7
    const-string/jumbo v2, "NMTOKEN"

    #@9ca
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9cd
    .line 301
    const-string/jumbo v0, "marquee"

    #@9d0
    const-string/jumbo v1, "width"

    #@9d3
    const-string/jumbo v2, "NMTOKEN"

    #@9d6
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9d9
    .line 302
    const-string/jumbo v0, "menu"

    #@9dc
    const-string/jumbo v1, "compact"

    #@9df
    const-string/jumbo v2, "BOOLEAN"

    #@9e2
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9e5
    .line 303
    const-string/jumbo v0, "meta"

    #@9e8
    const-string/jumbo v1, "http-equiv"

    #@9eb
    const-string/jumbo v2, "NMTOKEN"

    #@9ee
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9f1
    .line 304
    const-string/jumbo v0, "meta"

    #@9f4
    const-string/jumbo v1, "name"

    #@9f7
    const-string/jumbo v2, "NMTOKEN"

    #@9fa
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9fd
    .line 305
    const-string/jumbo v0, "object"

    #@a00
    const-string/jumbo v1, "align"

    #@a03
    const-string/jumbo v2, "NMTOKEN"

    #@a06
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a09
    .line 306
    const-string/jumbo v0, "object"

    #@a0c
    const-string/jumbo v1, "declare"

    #@a0f
    const-string/jumbo v2, "BOOLEAN"

    #@a12
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a15
    .line 307
    const-string/jumbo v0, "object"

    #@a18
    const-string/jumbo v1, "tabindex"

    #@a1b
    const-string/jumbo v2, "NMTOKEN"

    #@a1e
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a21
    .line 308
    const-string/jumbo v0, "ol"

    #@a24
    const-string/jumbo v1, "compact"

    #@a27
    const-string/jumbo v2, "BOOLEAN"

    #@a2a
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a2d
    .line 309
    const-string/jumbo v0, "ol"

    #@a30
    const-string/jumbo v1, "start"

    #@a33
    const-string/jumbo v2, "NMTOKEN"

    #@a36
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a39
    .line 310
    const-string/jumbo v0, "optgroup"

    #@a3c
    const-string/jumbo v1, "disabled"

    #@a3f
    const-string/jumbo v2, "BOOLEAN"

    #@a42
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a45
    .line 311
    const-string/jumbo v0, "option"

    #@a48
    const-string/jumbo v1, "disabled"

    #@a4b
    const-string/jumbo v2, "BOOLEAN"

    #@a4e
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a51
    .line 312
    const-string/jumbo v0, "option"

    #@a54
    const-string/jumbo v1, "selected"

    #@a57
    const-string/jumbo v2, "BOOLEAN"

    #@a5a
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a5d
    .line 313
    const-string/jumbo v0, "p"

    #@a60
    const-string/jumbo v1, "align"

    #@a63
    const-string/jumbo v2, "NMTOKEN"

    #@a66
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a69
    .line 314
    const-string/jumbo v0, "param"

    #@a6c
    const-string/jumbo v1, "valuetype"

    #@a6f
    const-string/jumbo v2, "CDATA"

    #@a72
    const-string/jumbo v3, "data"

    #@a75
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a78
    .line 315
    const-string/jumbo v0, "pre"

    #@a7b
    const-string/jumbo v1, "width"

    #@a7e
    const-string/jumbo v2, "NMTOKEN"

    #@a81
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a84
    .line 316
    const-string/jumbo v0, "rt"

    #@a87
    const-string/jumbo v1, "rbspan"

    #@a8a
    const-string/jumbo v2, "CDATA"

    #@a8d
    const-string/jumbo v3, "1"

    #@a90
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a93
    .line 317
    const-string/jumbo v0, "script"

    #@a96
    const-string/jumbo v1, "defer"

    #@a99
    const-string/jumbo v2, "BOOLEAN"

    #@a9c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a9f
    .line 318
    const-string/jumbo v0, "select"

    #@aa2
    const-string/jumbo v1, "disabled"

    #@aa5
    const-string/jumbo v2, "BOOLEAN"

    #@aa8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@aab
    .line 319
    const-string/jumbo v0, "select"

    #@aae
    const-string/jumbo v1, "multiple"

    #@ab1
    const-string/jumbo v2, "BOOLEAN"

    #@ab4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ab7
    .line 320
    const-string/jumbo v0, "select"

    #@aba
    const-string/jumbo v1, "size"

    #@abd
    const-string/jumbo v2, "NMTOKEN"

    #@ac0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ac3
    .line 321
    const-string/jumbo v0, "select"

    #@ac6
    const-string/jumbo v1, "tabindex"

    #@ac9
    const-string/jumbo v2, "NMTOKEN"

    #@acc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@acf
    .line 322
    const-string/jumbo v0, "table"

    #@ad2
    const-string/jumbo v1, "align"

    #@ad5
    const-string/jumbo v2, "NMTOKEN"

    #@ad8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@adb
    .line 323
    const-string/jumbo v0, "table"

    #@ade
    const-string/jumbo v1, "frame"

    #@ae1
    const-string/jumbo v2, "NMTOKEN"

    #@ae4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ae7
    .line 324
    const-string/jumbo v0, "table"

    #@aea
    const-string/jumbo v1, "rules"

    #@aed
    const-string/jumbo v2, "NMTOKEN"

    #@af0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@af3
    .line 325
    const-string/jumbo v0, "tbody"

    #@af6
    const-string/jumbo v1, "align"

    #@af9
    const-string/jumbo v2, "NMTOKEN"

    #@afc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@aff
    .line 326
    const-string/jumbo v0, "tbody"

    #@b02
    const-string/jumbo v1, "valign"

    #@b05
    const-string/jumbo v2, "NMTOKEN"

    #@b08
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b0b
    .line 327
    const-string/jumbo v0, "td"

    #@b0e
    const-string/jumbo v1, "align"

    #@b11
    const-string/jumbo v2, "NMTOKEN"

    #@b14
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b17
    .line 328
    const-string/jumbo v0, "td"

    #@b1a
    const-string/jumbo v1, "colspan"

    #@b1d
    const-string/jumbo v2, "CDATA"

    #@b20
    const-string/jumbo v3, "1"

    #@b23
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b26
    .line 329
    const-string/jumbo v0, "td"

    #@b29
    const-string/jumbo v1, "headers"

    #@b2c
    const-string/jumbo v2, "IDREFS"

    #@b2f
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b32
    .line 330
    const-string/jumbo v0, "td"

    #@b35
    const-string/jumbo v1, "nowrap"

    #@b38
    const-string/jumbo v2, "BOOLEAN"

    #@b3b
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b3e
    .line 331
    const-string/jumbo v0, "td"

    #@b41
    const-string/jumbo v1, "rowspan"

    #@b44
    const-string/jumbo v2, "CDATA"

    #@b47
    const-string/jumbo v3, "1"

    #@b4a
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b4d
    .line 332
    const-string/jumbo v0, "td"

    #@b50
    const-string/jumbo v1, "scope"

    #@b53
    const-string/jumbo v2, "NMTOKEN"

    #@b56
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b59
    .line 333
    const-string/jumbo v0, "td"

    #@b5c
    const-string/jumbo v1, "valign"

    #@b5f
    const-string/jumbo v2, "NMTOKEN"

    #@b62
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b65
    .line 334
    const-string/jumbo v0, "textarea"

    #@b68
    const-string/jumbo v1, "cols"

    #@b6b
    const-string/jumbo v2, "NMTOKEN"

    #@b6e
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b71
    .line 335
    const-string/jumbo v0, "textarea"

    #@b74
    const-string/jumbo v1, "disabled"

    #@b77
    const-string/jumbo v2, "BOOLEAN"

    #@b7a
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b7d
    .line 336
    const-string/jumbo v0, "textarea"

    #@b80
    const-string/jumbo v1, "readonly"

    #@b83
    const-string/jumbo v2, "BOOLEAN"

    #@b86
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b89
    .line 337
    const-string/jumbo v0, "textarea"

    #@b8c
    const-string/jumbo v1, "rows"

    #@b8f
    const-string/jumbo v2, "NMTOKEN"

    #@b92
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b95
    .line 338
    const-string/jumbo v0, "textarea"

    #@b98
    const-string/jumbo v1, "tabindex"

    #@b9b
    const-string/jumbo v2, "NMTOKEN"

    #@b9e
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ba1
    .line 339
    const-string/jumbo v0, "tfoot"

    #@ba4
    const-string/jumbo v1, "align"

    #@ba7
    const-string/jumbo v2, "NMTOKEN"

    #@baa
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bad
    .line 340
    const-string/jumbo v0, "tfoot"

    #@bb0
    const-string/jumbo v1, "valign"

    #@bb3
    const-string/jumbo v2, "NMTOKEN"

    #@bb6
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bb9
    .line 341
    const-string/jumbo v0, "th"

    #@bbc
    const-string/jumbo v1, "align"

    #@bbf
    const-string/jumbo v2, "NMTOKEN"

    #@bc2
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bc5
    .line 342
    const-string/jumbo v0, "th"

    #@bc8
    const-string/jumbo v1, "colspan"

    #@bcb
    const-string/jumbo v2, "CDATA"

    #@bce
    const-string/jumbo v3, "1"

    #@bd1
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bd4
    .line 343
    const-string/jumbo v0, "th"

    #@bd7
    const-string/jumbo v1, "headers"

    #@bda
    const-string/jumbo v2, "IDREFS"

    #@bdd
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@be0
    .line 344
    const-string/jumbo v0, "th"

    #@be3
    const-string/jumbo v1, "nowrap"

    #@be6
    const-string/jumbo v2, "BOOLEAN"

    #@be9
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bec
    .line 345
    const-string/jumbo v0, "th"

    #@bef
    const-string/jumbo v1, "rowspan"

    #@bf2
    const-string/jumbo v2, "CDATA"

    #@bf5
    const-string/jumbo v3, "1"

    #@bf8
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bfb
    .line 346
    const-string/jumbo v0, "th"

    #@bfe
    const-string/jumbo v1, "scope"

    #@c01
    const-string/jumbo v2, "NMTOKEN"

    #@c04
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c07
    .line 347
    const-string/jumbo v0, "th"

    #@c0a
    const-string/jumbo v1, "valign"

    #@c0d
    const-string/jumbo v2, "NMTOKEN"

    #@c10
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c13
    .line 348
    const-string/jumbo v0, "thead"

    #@c16
    const-string/jumbo v1, "align"

    #@c19
    const-string/jumbo v2, "NMTOKEN"

    #@c1c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c1f
    .line 349
    const-string/jumbo v0, "thead"

    #@c22
    const-string/jumbo v1, "valign"

    #@c25
    const-string/jumbo v2, "NMTOKEN"

    #@c28
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c2b
    .line 350
    const-string/jumbo v0, "tr"

    #@c2e
    const-string/jumbo v1, "align"

    #@c31
    const-string/jumbo v2, "NMTOKEN"

    #@c34
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c37
    .line 351
    const-string/jumbo v0, "tr"

    #@c3a
    const-string/jumbo v1, "valign"

    #@c3d
    const-string/jumbo v2, "NMTOKEN"

    #@c40
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c43
    .line 352
    const-string/jumbo v0, "ul"

    #@c46
    const-string/jumbo v1, "compact"

    #@c49
    const-string/jumbo v2, "BOOLEAN"

    #@c4c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c4f
    .line 353
    const-string/jumbo v0, "ul"

    #@c52
    const-string/jumbo v1, "type"

    #@c55
    const-string/jumbo v2, "NMTOKEN"

    #@c58
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c5b
    .line 354
    const-string/jumbo v0, "xmp"

    #@c5e
    const-string/jumbo v1, "width"

    #@c61
    const-string/jumbo v2, "NMTOKEN"

    #@c64
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c67
    .line 355
    const-string/jumbo v0, "a"

    #@c6a
    const-string/jumbo v1, "class"

    #@c6d
    const-string/jumbo v2, "NMTOKEN"

    #@c70
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c73
    .line 356
    const-string/jumbo v0, "abbr"

    #@c76
    const-string/jumbo v1, "class"

    #@c79
    const-string/jumbo v2, "NMTOKEN"

    #@c7c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c7f
    .line 357
    const-string/jumbo v0, "acronym"

    #@c82
    const-string/jumbo v1, "class"

    #@c85
    const-string/jumbo v2, "NMTOKEN"

    #@c88
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c8b
    .line 358
    const-string/jumbo v0, "address"

    #@c8e
    const-string/jumbo v1, "class"

    #@c91
    const-string/jumbo v2, "NMTOKEN"

    #@c94
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c97
    .line 359
    const-string/jumbo v0, "applet"

    #@c9a
    const-string/jumbo v1, "class"

    #@c9d
    const-string/jumbo v2, "NMTOKEN"

    #@ca0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ca3
    .line 360
    const-string/jumbo v0, "area"

    #@ca6
    const-string/jumbo v1, "class"

    #@ca9
    const-string/jumbo v2, "NMTOKEN"

    #@cac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@caf
    .line 361
    const-string/jumbo v0, "b"

    #@cb2
    const-string/jumbo v1, "class"

    #@cb5
    const-string/jumbo v2, "NMTOKEN"

    #@cb8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@cbb
    .line 362
    const-string/jumbo v0, "base"

    #@cbe
    const-string/jumbo v1, "class"

    #@cc1
    const-string/jumbo v2, "NMTOKEN"

    #@cc4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@cc7
    .line 363
    const-string/jumbo v0, "basefont"

    #@cca
    const-string/jumbo v1, "class"

    #@ccd
    const-string/jumbo v2, "NMTOKEN"

    #@cd0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@cd3
    .line 364
    const-string/jumbo v0, "bdo"

    #@cd6
    const-string/jumbo v1, "class"

    #@cd9
    const-string/jumbo v2, "NMTOKEN"

    #@cdc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@cdf
    .line 365
    const-string/jumbo v0, "bgsound"

    #@ce2
    const-string/jumbo v1, "class"

    #@ce5
    const-string/jumbo v2, "NMTOKEN"

    #@ce8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ceb
    .line 366
    const-string/jumbo v0, "big"

    #@cee
    const-string/jumbo v1, "class"

    #@cf1
    const-string/jumbo v2, "NMTOKEN"

    #@cf4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@cf7
    .line 367
    const-string/jumbo v0, "blink"

    #@cfa
    const-string/jumbo v1, "class"

    #@cfd
    const-string/jumbo v2, "NMTOKEN"

    #@d00
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d03
    .line 368
    const-string/jumbo v0, "blockquote"

    #@d06
    const-string/jumbo v1, "class"

    #@d09
    const-string/jumbo v2, "NMTOKEN"

    #@d0c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d0f
    .line 369
    const-string/jumbo v0, "body"

    #@d12
    const-string/jumbo v1, "class"

    #@d15
    const-string/jumbo v2, "NMTOKEN"

    #@d18
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d1b
    .line 370
    const-string/jumbo v0, "br"

    #@d1e
    const-string/jumbo v1, "class"

    #@d21
    const-string/jumbo v2, "NMTOKEN"

    #@d24
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d27
    .line 371
    const-string/jumbo v0, "button"

    #@d2a
    const-string/jumbo v1, "class"

    #@d2d
    const-string/jumbo v2, "NMTOKEN"

    #@d30
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d33
    .line 372
    const-string/jumbo v0, "canvas"

    #@d36
    const-string/jumbo v1, "class"

    #@d39
    const-string/jumbo v2, "NMTOKEN"

    #@d3c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d3f
    .line 373
    const-string/jumbo v0, "caption"

    #@d42
    const-string/jumbo v1, "class"

    #@d45
    const-string/jumbo v2, "NMTOKEN"

    #@d48
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d4b
    .line 374
    const-string/jumbo v0, "center"

    #@d4e
    const-string/jumbo v1, "class"

    #@d51
    const-string/jumbo v2, "NMTOKEN"

    #@d54
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d57
    .line 375
    const-string/jumbo v0, "cite"

    #@d5a
    const-string/jumbo v1, "class"

    #@d5d
    const-string/jumbo v2, "NMTOKEN"

    #@d60
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d63
    .line 376
    const-string/jumbo v0, "code"

    #@d66
    const-string/jumbo v1, "class"

    #@d69
    const-string/jumbo v2, "NMTOKEN"

    #@d6c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d6f
    .line 377
    const-string/jumbo v0, "col"

    #@d72
    const-string/jumbo v1, "class"

    #@d75
    const-string/jumbo v2, "NMTOKEN"

    #@d78
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d7b
    .line 378
    const-string/jumbo v0, "colgroup"

    #@d7e
    const-string/jumbo v1, "class"

    #@d81
    const-string/jumbo v2, "NMTOKEN"

    #@d84
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d87
    .line 379
    const-string/jumbo v0, "comment"

    #@d8a
    const-string/jumbo v1, "class"

    #@d8d
    const-string/jumbo v2, "NMTOKEN"

    #@d90
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d93
    .line 380
    const-string/jumbo v0, "dd"

    #@d96
    const-string/jumbo v1, "class"

    #@d99
    const-string/jumbo v2, "NMTOKEN"

    #@d9c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d9f
    .line 381
    const-string/jumbo v0, "del"

    #@da2
    const-string/jumbo v1, "class"

    #@da5
    const-string/jumbo v2, "NMTOKEN"

    #@da8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@dab
    .line 382
    const-string/jumbo v0, "dfn"

    #@dae
    const-string/jumbo v1, "class"

    #@db1
    const-string/jumbo v2, "NMTOKEN"

    #@db4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@db7
    .line 383
    const-string/jumbo v0, "dir"

    #@dba
    const-string/jumbo v1, "class"

    #@dbd
    const-string/jumbo v2, "NMTOKEN"

    #@dc0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@dc3
    .line 384
    const-string/jumbo v0, "div"

    #@dc6
    const-string/jumbo v1, "class"

    #@dc9
    const-string/jumbo v2, "NMTOKEN"

    #@dcc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@dcf
    .line 385
    const-string/jumbo v0, "dl"

    #@dd2
    const-string/jumbo v1, "class"

    #@dd5
    const-string/jumbo v2, "NMTOKEN"

    #@dd8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ddb
    .line 386
    const-string/jumbo v0, "dt"

    #@dde
    const-string/jumbo v1, "class"

    #@de1
    const-string/jumbo v2, "NMTOKEN"

    #@de4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@de7
    .line 387
    const-string/jumbo v0, "em"

    #@dea
    const-string/jumbo v1, "class"

    #@ded
    const-string/jumbo v2, "NMTOKEN"

    #@df0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@df3
    .line 388
    const-string/jumbo v0, "fieldset"

    #@df6
    const-string/jumbo v1, "class"

    #@df9
    const-string/jumbo v2, "NMTOKEN"

    #@dfc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@dff
    .line 389
    const-string/jumbo v0, "font"

    #@e02
    const-string/jumbo v1, "class"

    #@e05
    const-string/jumbo v2, "NMTOKEN"

    #@e08
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e0b
    .line 390
    const-string/jumbo v0, "form"

    #@e0e
    const-string/jumbo v1, "class"

    #@e11
    const-string/jumbo v2, "NMTOKEN"

    #@e14
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e17
    .line 391
    const-string/jumbo v0, "frame"

    #@e1a
    const-string/jumbo v1, "class"

    #@e1d
    const-string/jumbo v2, "NMTOKEN"

    #@e20
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e23
    .line 392
    const-string/jumbo v0, "frameset"

    #@e26
    const-string/jumbo v1, "class"

    #@e29
    const-string/jumbo v2, "NMTOKEN"

    #@e2c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e2f
    .line 393
    const-string/jumbo v0, "h1"

    #@e32
    const-string/jumbo v1, "class"

    #@e35
    const-string/jumbo v2, "NMTOKEN"

    #@e38
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e3b
    .line 394
    const-string/jumbo v0, "h2"

    #@e3e
    const-string/jumbo v1, "class"

    #@e41
    const-string/jumbo v2, "NMTOKEN"

    #@e44
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e47
    .line 395
    const-string/jumbo v0, "h3"

    #@e4a
    const-string/jumbo v1, "class"

    #@e4d
    const-string/jumbo v2, "NMTOKEN"

    #@e50
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e53
    .line 396
    const-string/jumbo v0, "h4"

    #@e56
    const-string/jumbo v1, "class"

    #@e59
    const-string/jumbo v2, "NMTOKEN"

    #@e5c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e5f
    .line 397
    const-string/jumbo v0, "h5"

    #@e62
    const-string/jumbo v1, "class"

    #@e65
    const-string/jumbo v2, "NMTOKEN"

    #@e68
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e6b
    .line 398
    const-string/jumbo v0, "h6"

    #@e6e
    const-string/jumbo v1, "class"

    #@e71
    const-string/jumbo v2, "NMTOKEN"

    #@e74
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e77
    .line 399
    const-string/jumbo v0, "head"

    #@e7a
    const-string/jumbo v1, "class"

    #@e7d
    const-string/jumbo v2, "NMTOKEN"

    #@e80
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e83
    .line 400
    const-string/jumbo v0, "hr"

    #@e86
    const-string/jumbo v1, "class"

    #@e89
    const-string/jumbo v2, "NMTOKEN"

    #@e8c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e8f
    .line 401
    const-string/jumbo v0, "html"

    #@e92
    const-string/jumbo v1, "class"

    #@e95
    const-string/jumbo v2, "NMTOKEN"

    #@e98
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e9b
    .line 402
    const-string/jumbo v0, "i"

    #@e9e
    const-string/jumbo v1, "class"

    #@ea1
    const-string/jumbo v2, "NMTOKEN"

    #@ea4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ea7
    .line 403
    const-string/jumbo v0, "iframe"

    #@eaa
    const-string/jumbo v1, "class"

    #@ead
    const-string/jumbo v2, "NMTOKEN"

    #@eb0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@eb3
    .line 404
    const-string/jumbo v0, "img"

    #@eb6
    const-string/jumbo v1, "class"

    #@eb9
    const-string/jumbo v2, "NMTOKEN"

    #@ebc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ebf
    .line 405
    const-string/jumbo v0, "input"

    #@ec2
    const-string/jumbo v1, "class"

    #@ec5
    const-string/jumbo v2, "NMTOKEN"

    #@ec8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ecb
    .line 406
    const-string/jumbo v0, "ins"

    #@ece
    const-string/jumbo v1, "class"

    #@ed1
    const-string/jumbo v2, "NMTOKEN"

    #@ed4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ed7
    .line 407
    const-string/jumbo v0, "isindex"

    #@eda
    const-string/jumbo v1, "class"

    #@edd
    const-string/jumbo v2, "NMTOKEN"

    #@ee0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ee3
    .line 408
    const-string/jumbo v0, "kbd"

    #@ee6
    const-string/jumbo v1, "class"

    #@ee9
    const-string/jumbo v2, "NMTOKEN"

    #@eec
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@eef
    .line 409
    const-string/jumbo v0, "label"

    #@ef2
    const-string/jumbo v1, "class"

    #@ef5
    const-string/jumbo v2, "NMTOKEN"

    #@ef8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@efb
    .line 410
    const-string/jumbo v0, "legend"

    #@efe
    const-string/jumbo v1, "class"

    #@f01
    const-string/jumbo v2, "NMTOKEN"

    #@f04
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f07
    .line 411
    const-string/jumbo v0, "li"

    #@f0a
    const-string/jumbo v1, "class"

    #@f0d
    const-string/jumbo v2, "NMTOKEN"

    #@f10
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f13
    .line 412
    const-string/jumbo v0, "link"

    #@f16
    const-string/jumbo v1, "class"

    #@f19
    const-string/jumbo v2, "NMTOKEN"

    #@f1c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f1f
    .line 413
    const-string/jumbo v0, "listing"

    #@f22
    const-string/jumbo v1, "class"

    #@f25
    const-string/jumbo v2, "NMTOKEN"

    #@f28
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f2b
    .line 414
    const-string/jumbo v0, "map"

    #@f2e
    const-string/jumbo v1, "class"

    #@f31
    const-string/jumbo v2, "NMTOKEN"

    #@f34
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f37
    .line 415
    const-string/jumbo v0, "marquee"

    #@f3a
    const-string/jumbo v1, "class"

    #@f3d
    const-string/jumbo v2, "NMTOKEN"

    #@f40
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f43
    .line 416
    const-string/jumbo v0, "menu"

    #@f46
    const-string/jumbo v1, "class"

    #@f49
    const-string/jumbo v2, "NMTOKEN"

    #@f4c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f4f
    .line 417
    const-string/jumbo v0, "meta"

    #@f52
    const-string/jumbo v1, "class"

    #@f55
    const-string/jumbo v2, "NMTOKEN"

    #@f58
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f5b
    .line 418
    const-string/jumbo v0, "nobr"

    #@f5e
    const-string/jumbo v1, "class"

    #@f61
    const-string/jumbo v2, "NMTOKEN"

    #@f64
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f67
    .line 419
    const-string/jumbo v0, "noframes"

    #@f6a
    const-string/jumbo v1, "class"

    #@f6d
    const-string/jumbo v2, "NMTOKEN"

    #@f70
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f73
    .line 420
    const-string/jumbo v0, "noscript"

    #@f76
    const-string/jumbo v1, "class"

    #@f79
    const-string/jumbo v2, "NMTOKEN"

    #@f7c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f7f
    .line 421
    const-string/jumbo v0, "object"

    #@f82
    const-string/jumbo v1, "class"

    #@f85
    const-string/jumbo v2, "NMTOKEN"

    #@f88
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f8b
    .line 422
    const-string/jumbo v0, "ol"

    #@f8e
    const-string/jumbo v1, "class"

    #@f91
    const-string/jumbo v2, "NMTOKEN"

    #@f94
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f97
    .line 423
    const-string/jumbo v0, "optgroup"

    #@f9a
    const-string/jumbo v1, "class"

    #@f9d
    const-string/jumbo v2, "NMTOKEN"

    #@fa0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fa3
    .line 424
    const-string/jumbo v0, "option"

    #@fa6
    const-string/jumbo v1, "class"

    #@fa9
    const-string/jumbo v2, "NMTOKEN"

    #@fac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@faf
    .line 425
    const-string/jumbo v0, "p"

    #@fb2
    const-string/jumbo v1, "class"

    #@fb5
    const-string/jumbo v2, "NMTOKEN"

    #@fb8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fbb
    .line 426
    const-string/jumbo v0, "param"

    #@fbe
    const-string/jumbo v1, "class"

    #@fc1
    const-string/jumbo v2, "NMTOKEN"

    #@fc4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fc7
    .line 427
    const-string/jumbo v0, "pre"

    #@fca
    const-string/jumbo v1, "class"

    #@fcd
    const-string/jumbo v2, "NMTOKEN"

    #@fd0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fd3
    .line 428
    const-string/jumbo v0, "q"

    #@fd6
    const-string/jumbo v1, "class"

    #@fd9
    const-string/jumbo v2, "NMTOKEN"

    #@fdc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fdf
    .line 429
    const-string/jumbo v0, "rb"

    #@fe2
    const-string/jumbo v1, "class"

    #@fe5
    const-string/jumbo v2, "NMTOKEN"

    #@fe8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@feb
    .line 430
    const-string/jumbo v0, "rbc"

    #@fee
    const-string/jumbo v1, "class"

    #@ff1
    const-string/jumbo v2, "NMTOKEN"

    #@ff4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ff7
    .line 431
    const-string/jumbo v0, "rp"

    #@ffa
    const-string/jumbo v1, "class"

    #@ffd
    const-string/jumbo v2, "NMTOKEN"

    #@1000
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1003
    .line 432
    const-string/jumbo v0, "rt"

    #@1006
    const-string/jumbo v1, "class"

    #@1009
    const-string/jumbo v2, "NMTOKEN"

    #@100c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@100f
    .line 433
    const-string/jumbo v0, "rtc"

    #@1012
    const-string/jumbo v1, "class"

    #@1015
    const-string/jumbo v2, "NMTOKEN"

    #@1018
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@101b
    .line 434
    const-string/jumbo v0, "ruby"

    #@101e
    const-string/jumbo v1, "class"

    #@1021
    const-string/jumbo v2, "NMTOKEN"

    #@1024
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1027
    .line 435
    const-string/jumbo v0, "s"

    #@102a
    const-string/jumbo v1, "class"

    #@102d
    const-string/jumbo v2, "NMTOKEN"

    #@1030
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1033
    .line 436
    const-string/jumbo v0, "samp"

    #@1036
    const-string/jumbo v1, "class"

    #@1039
    const-string/jumbo v2, "NMTOKEN"

    #@103c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@103f
    .line 437
    const-string/jumbo v0, "script"

    #@1042
    const-string/jumbo v1, "class"

    #@1045
    const-string/jumbo v2, "NMTOKEN"

    #@1048
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@104b
    .line 438
    const-string/jumbo v0, "select"

    #@104e
    const-string/jumbo v1, "class"

    #@1051
    const-string/jumbo v2, "NMTOKEN"

    #@1054
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1057
    .line 439
    const-string/jumbo v0, "small"

    #@105a
    const-string/jumbo v1, "class"

    #@105d
    const-string/jumbo v2, "NMTOKEN"

    #@1060
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1063
    .line 440
    const-string/jumbo v0, "span"

    #@1066
    const-string/jumbo v1, "class"

    #@1069
    const-string/jumbo v2, "NMTOKEN"

    #@106c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@106f
    .line 441
    const-string/jumbo v0, "strike"

    #@1072
    const-string/jumbo v1, "class"

    #@1075
    const-string/jumbo v2, "NMTOKEN"

    #@1078
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@107b
    .line 442
    const-string/jumbo v0, "strong"

    #@107e
    const-string/jumbo v1, "class"

    #@1081
    const-string/jumbo v2, "NMTOKEN"

    #@1084
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1087
    .line 443
    const-string/jumbo v0, "style"

    #@108a
    const-string/jumbo v1, "class"

    #@108d
    const-string/jumbo v2, "NMTOKEN"

    #@1090
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1093
    .line 444
    const-string/jumbo v0, "sub"

    #@1096
    const-string/jumbo v1, "class"

    #@1099
    const-string/jumbo v2, "NMTOKEN"

    #@109c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@109f
    .line 445
    const-string/jumbo v0, "sup"

    #@10a2
    const-string/jumbo v1, "class"

    #@10a5
    const-string/jumbo v2, "NMTOKEN"

    #@10a8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10ab
    .line 446
    const-string/jumbo v0, "table"

    #@10ae
    const-string/jumbo v1, "class"

    #@10b1
    const-string/jumbo v2, "NMTOKEN"

    #@10b4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10b7
    .line 447
    const-string/jumbo v0, "tbody"

    #@10ba
    const-string/jumbo v1, "class"

    #@10bd
    const-string/jumbo v2, "NMTOKEN"

    #@10c0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10c3
    .line 448
    const-string/jumbo v0, "td"

    #@10c6
    const-string/jumbo v1, "class"

    #@10c9
    const-string/jumbo v2, "NMTOKEN"

    #@10cc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10cf
    .line 449
    const-string/jumbo v0, "textarea"

    #@10d2
    const-string/jumbo v1, "class"

    #@10d5
    const-string/jumbo v2, "NMTOKEN"

    #@10d8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10db
    .line 450
    const-string/jumbo v0, "tfoot"

    #@10de
    const-string/jumbo v1, "class"

    #@10e1
    const-string/jumbo v2, "NMTOKEN"

    #@10e4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10e7
    .line 451
    const-string/jumbo v0, "th"

    #@10ea
    const-string/jumbo v1, "class"

    #@10ed
    const-string/jumbo v2, "NMTOKEN"

    #@10f0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10f3
    .line 452
    const-string/jumbo v0, "thead"

    #@10f6
    const-string/jumbo v1, "class"

    #@10f9
    const-string/jumbo v2, "NMTOKEN"

    #@10fc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10ff
    .line 453
    const-string/jumbo v0, "title"

    #@1102
    const-string/jumbo v1, "class"

    #@1105
    const-string/jumbo v2, "NMTOKEN"

    #@1108
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@110b
    .line 454
    const-string/jumbo v0, "tr"

    #@110e
    const-string/jumbo v1, "class"

    #@1111
    const-string/jumbo v2, "NMTOKEN"

    #@1114
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1117
    .line 455
    const-string/jumbo v0, "tt"

    #@111a
    const-string/jumbo v1, "class"

    #@111d
    const-string/jumbo v2, "NMTOKEN"

    #@1120
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1123
    .line 456
    const-string/jumbo v0, "u"

    #@1126
    const-string/jumbo v1, "class"

    #@1129
    const-string/jumbo v2, "NMTOKEN"

    #@112c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@112f
    .line 457
    const-string/jumbo v0, "ul"

    #@1132
    const-string/jumbo v1, "class"

    #@1135
    const-string/jumbo v2, "NMTOKEN"

    #@1138
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@113b
    .line 458
    const-string/jumbo v0, "var"

    #@113e
    const-string/jumbo v1, "class"

    #@1141
    const-string/jumbo v2, "NMTOKEN"

    #@1144
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1147
    .line 459
    const-string/jumbo v0, "wbr"

    #@114a
    const-string/jumbo v1, "class"

    #@114d
    const-string/jumbo v2, "NMTOKEN"

    #@1150
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1153
    .line 460
    const-string/jumbo v0, "xmp"

    #@1156
    const-string/jumbo v1, "class"

    #@1159
    const-string/jumbo v2, "NMTOKEN"

    #@115c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@115f
    .line 461
    const-string/jumbo v0, "a"

    #@1162
    const-string/jumbo v1, "dir"

    #@1165
    const-string/jumbo v2, "NMTOKEN"

    #@1168
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@116b
    .line 462
    const-string/jumbo v0, "abbr"

    #@116e
    const-string/jumbo v1, "dir"

    #@1171
    const-string/jumbo v2, "NMTOKEN"

    #@1174
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1177
    .line 463
    const-string/jumbo v0, "acronym"

    #@117a
    const-string/jumbo v1, "dir"

    #@117d
    const-string/jumbo v2, "NMTOKEN"

    #@1180
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1183
    .line 464
    const-string/jumbo v0, "address"

    #@1186
    const-string/jumbo v1, "dir"

    #@1189
    const-string/jumbo v2, "NMTOKEN"

    #@118c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@118f
    .line 465
    const-string/jumbo v0, "applet"

    #@1192
    const-string/jumbo v1, "dir"

    #@1195
    const-string/jumbo v2, "NMTOKEN"

    #@1198
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@119b
    .line 466
    const-string/jumbo v0, "area"

    #@119e
    const-string/jumbo v1, "dir"

    #@11a1
    const-string/jumbo v2, "NMTOKEN"

    #@11a4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11a7
    .line 467
    const-string/jumbo v0, "b"

    #@11aa
    const-string/jumbo v1, "dir"

    #@11ad
    const-string/jumbo v2, "NMTOKEN"

    #@11b0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11b3
    .line 468
    const-string/jumbo v0, "base"

    #@11b6
    const-string/jumbo v1, "dir"

    #@11b9
    const-string/jumbo v2, "NMTOKEN"

    #@11bc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11bf
    .line 469
    const-string/jumbo v0, "basefont"

    #@11c2
    const-string/jumbo v1, "dir"

    #@11c5
    const-string/jumbo v2, "NMTOKEN"

    #@11c8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11cb
    .line 470
    const-string/jumbo v0, "bdo"

    #@11ce
    const-string/jumbo v1, "dir"

    #@11d1
    const-string/jumbo v2, "NMTOKEN"

    #@11d4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11d7
    .line 471
    const-string/jumbo v0, "bgsound"

    #@11da
    const-string/jumbo v1, "dir"

    #@11dd
    const-string/jumbo v2, "NMTOKEN"

    #@11e0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11e3
    .line 472
    const-string/jumbo v0, "big"

    #@11e6
    const-string/jumbo v1, "dir"

    #@11e9
    const-string/jumbo v2, "NMTOKEN"

    #@11ec
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11ef
    .line 473
    const-string/jumbo v0, "blink"

    #@11f2
    const-string/jumbo v1, "dir"

    #@11f5
    const-string/jumbo v2, "NMTOKEN"

    #@11f8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11fb
    .line 474
    const-string/jumbo v0, "blockquote"

    #@11fe
    const-string/jumbo v1, "dir"

    #@1201
    const-string/jumbo v2, "NMTOKEN"

    #@1204
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1207
    .line 475
    const-string/jumbo v0, "body"

    #@120a
    const-string/jumbo v1, "dir"

    #@120d
    const-string/jumbo v2, "NMTOKEN"

    #@1210
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1213
    .line 476
    const-string/jumbo v0, "br"

    #@1216
    const-string/jumbo v1, "dir"

    #@1219
    const-string/jumbo v2, "NMTOKEN"

    #@121c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@121f
    .line 477
    const-string/jumbo v0, "button"

    #@1222
    const-string/jumbo v1, "dir"

    #@1225
    const-string/jumbo v2, "NMTOKEN"

    #@1228
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@122b
    .line 478
    const-string/jumbo v0, "canvas"

    #@122e
    const-string/jumbo v1, "dir"

    #@1231
    const-string/jumbo v2, "NMTOKEN"

    #@1234
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1237
    .line 479
    const-string/jumbo v0, "caption"

    #@123a
    const-string/jumbo v1, "dir"

    #@123d
    const-string/jumbo v2, "NMTOKEN"

    #@1240
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1243
    .line 480
    const-string/jumbo v0, "center"

    #@1246
    const-string/jumbo v1, "dir"

    #@1249
    const-string/jumbo v2, "NMTOKEN"

    #@124c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@124f
    .line 481
    const-string/jumbo v0, "cite"

    #@1252
    const-string/jumbo v1, "dir"

    #@1255
    const-string/jumbo v2, "NMTOKEN"

    #@1258
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@125b
    .line 482
    const-string/jumbo v0, "code"

    #@125e
    const-string/jumbo v1, "dir"

    #@1261
    const-string/jumbo v2, "NMTOKEN"

    #@1264
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1267
    .line 483
    const-string/jumbo v0, "col"

    #@126a
    const-string/jumbo v1, "dir"

    #@126d
    const-string/jumbo v2, "NMTOKEN"

    #@1270
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1273
    .line 484
    const-string/jumbo v0, "colgroup"

    #@1276
    const-string/jumbo v1, "dir"

    #@1279
    const-string/jumbo v2, "NMTOKEN"

    #@127c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@127f
    .line 485
    const-string/jumbo v0, "comment"

    #@1282
    const-string/jumbo v1, "dir"

    #@1285
    const-string/jumbo v2, "NMTOKEN"

    #@1288
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@128b
    .line 486
    const-string/jumbo v0, "dd"

    #@128e
    const-string/jumbo v1, "dir"

    #@1291
    const-string/jumbo v2, "NMTOKEN"

    #@1294
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1297
    .line 487
    const-string/jumbo v0, "del"

    #@129a
    const-string/jumbo v1, "dir"

    #@129d
    const-string/jumbo v2, "NMTOKEN"

    #@12a0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12a3
    .line 488
    const-string/jumbo v0, "dfn"

    #@12a6
    const-string/jumbo v1, "dir"

    #@12a9
    const-string/jumbo v2, "NMTOKEN"

    #@12ac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12af
    .line 489
    const-string/jumbo v0, "dir"

    #@12b2
    const-string/jumbo v1, "dir"

    #@12b5
    const-string/jumbo v2, "NMTOKEN"

    #@12b8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12bb
    .line 490
    const-string/jumbo v0, "div"

    #@12be
    const-string/jumbo v1, "dir"

    #@12c1
    const-string/jumbo v2, "NMTOKEN"

    #@12c4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12c7
    .line 491
    const-string/jumbo v0, "dl"

    #@12ca
    const-string/jumbo v1, "dir"

    #@12cd
    const-string/jumbo v2, "NMTOKEN"

    #@12d0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12d3
    .line 492
    const-string/jumbo v0, "dt"

    #@12d6
    const-string/jumbo v1, "dir"

    #@12d9
    const-string/jumbo v2, "NMTOKEN"

    #@12dc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12df
    .line 493
    const-string/jumbo v0, "em"

    #@12e2
    const-string/jumbo v1, "dir"

    #@12e5
    const-string/jumbo v2, "NMTOKEN"

    #@12e8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12eb
    .line 494
    const-string/jumbo v0, "fieldset"

    #@12ee
    const-string/jumbo v1, "dir"

    #@12f1
    const-string/jumbo v2, "NMTOKEN"

    #@12f4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12f7
    .line 495
    const-string/jumbo v0, "font"

    #@12fa
    const-string/jumbo v1, "dir"

    #@12fd
    const-string/jumbo v2, "NMTOKEN"

    #@1300
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1303
    .line 496
    const-string/jumbo v0, "form"

    #@1306
    const-string/jumbo v1, "dir"

    #@1309
    const-string/jumbo v2, "NMTOKEN"

    #@130c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@130f
    .line 497
    const-string/jumbo v0, "frame"

    #@1312
    const-string/jumbo v1, "dir"

    #@1315
    const-string/jumbo v2, "NMTOKEN"

    #@1318
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@131b
    .line 498
    const-string/jumbo v0, "frameset"

    #@131e
    const-string/jumbo v1, "dir"

    #@1321
    const-string/jumbo v2, "NMTOKEN"

    #@1324
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1327
    .line 499
    const-string/jumbo v0, "h1"

    #@132a
    const-string/jumbo v1, "dir"

    #@132d
    const-string/jumbo v2, "NMTOKEN"

    #@1330
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1333
    .line 500
    const-string/jumbo v0, "h2"

    #@1336
    const-string/jumbo v1, "dir"

    #@1339
    const-string/jumbo v2, "NMTOKEN"

    #@133c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@133f
    .line 501
    const-string/jumbo v0, "h3"

    #@1342
    const-string/jumbo v1, "dir"

    #@1345
    const-string/jumbo v2, "NMTOKEN"

    #@1348
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@134b
    .line 502
    const-string/jumbo v0, "h4"

    #@134e
    const-string/jumbo v1, "dir"

    #@1351
    const-string/jumbo v2, "NMTOKEN"

    #@1354
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1357
    .line 503
    const-string/jumbo v0, "h5"

    #@135a
    const-string/jumbo v1, "dir"

    #@135d
    const-string/jumbo v2, "NMTOKEN"

    #@1360
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1363
    .line 504
    const-string/jumbo v0, "h6"

    #@1366
    const-string/jumbo v1, "dir"

    #@1369
    const-string/jumbo v2, "NMTOKEN"

    #@136c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@136f
    .line 505
    const-string/jumbo v0, "head"

    #@1372
    const-string/jumbo v1, "dir"

    #@1375
    const-string/jumbo v2, "NMTOKEN"

    #@1378
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@137b
    .line 506
    const-string/jumbo v0, "hr"

    #@137e
    const-string/jumbo v1, "dir"

    #@1381
    const-string/jumbo v2, "NMTOKEN"

    #@1384
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1387
    .line 507
    const-string/jumbo v0, "html"

    #@138a
    const-string/jumbo v1, "dir"

    #@138d
    const-string/jumbo v2, "NMTOKEN"

    #@1390
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1393
    .line 508
    const-string/jumbo v0, "i"

    #@1396
    const-string/jumbo v1, "dir"

    #@1399
    const-string/jumbo v2, "NMTOKEN"

    #@139c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@139f
    .line 509
    const-string/jumbo v0, "iframe"

    #@13a2
    const-string/jumbo v1, "dir"

    #@13a5
    const-string/jumbo v2, "NMTOKEN"

    #@13a8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13ab
    .line 510
    const-string/jumbo v0, "img"

    #@13ae
    const-string/jumbo v1, "dir"

    #@13b1
    const-string/jumbo v2, "NMTOKEN"

    #@13b4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13b7
    .line 511
    const-string/jumbo v0, "input"

    #@13ba
    const-string/jumbo v1, "dir"

    #@13bd
    const-string/jumbo v2, "NMTOKEN"

    #@13c0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13c3
    .line 512
    const-string/jumbo v0, "ins"

    #@13c6
    const-string/jumbo v1, "dir"

    #@13c9
    const-string/jumbo v2, "NMTOKEN"

    #@13cc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13cf
    .line 513
    const-string/jumbo v0, "isindex"

    #@13d2
    const-string/jumbo v1, "dir"

    #@13d5
    const-string/jumbo v2, "NMTOKEN"

    #@13d8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13db
    .line 514
    const-string/jumbo v0, "kbd"

    #@13de
    const-string/jumbo v1, "dir"

    #@13e1
    const-string/jumbo v2, "NMTOKEN"

    #@13e4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13e7
    .line 515
    const-string/jumbo v0, "label"

    #@13ea
    const-string/jumbo v1, "dir"

    #@13ed
    const-string/jumbo v2, "NMTOKEN"

    #@13f0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13f3
    .line 516
    const-string/jumbo v0, "legend"

    #@13f6
    const-string/jumbo v1, "dir"

    #@13f9
    const-string/jumbo v2, "NMTOKEN"

    #@13fc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13ff
    .line 517
    const-string/jumbo v0, "li"

    #@1402
    const-string/jumbo v1, "dir"

    #@1405
    const-string/jumbo v2, "NMTOKEN"

    #@1408
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@140b
    .line 518
    const-string/jumbo v0, "link"

    #@140e
    const-string/jumbo v1, "dir"

    #@1411
    const-string/jumbo v2, "NMTOKEN"

    #@1414
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1417
    .line 519
    const-string/jumbo v0, "listing"

    #@141a
    const-string/jumbo v1, "dir"

    #@141d
    const-string/jumbo v2, "NMTOKEN"

    #@1420
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1423
    .line 520
    const-string/jumbo v0, "map"

    #@1426
    const-string/jumbo v1, "dir"

    #@1429
    const-string/jumbo v2, "NMTOKEN"

    #@142c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@142f
    .line 521
    const-string/jumbo v0, "marquee"

    #@1432
    const-string/jumbo v1, "dir"

    #@1435
    const-string/jumbo v2, "NMTOKEN"

    #@1438
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@143b
    .line 522
    const-string/jumbo v0, "menu"

    #@143e
    const-string/jumbo v1, "dir"

    #@1441
    const-string/jumbo v2, "NMTOKEN"

    #@1444
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1447
    .line 523
    const-string/jumbo v0, "meta"

    #@144a
    const-string/jumbo v1, "dir"

    #@144d
    const-string/jumbo v2, "NMTOKEN"

    #@1450
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1453
    .line 524
    const-string/jumbo v0, "nobr"

    #@1456
    const-string/jumbo v1, "dir"

    #@1459
    const-string/jumbo v2, "NMTOKEN"

    #@145c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@145f
    .line 525
    const-string/jumbo v0, "noframes"

    #@1462
    const-string/jumbo v1, "dir"

    #@1465
    const-string/jumbo v2, "NMTOKEN"

    #@1468
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@146b
    .line 526
    const-string/jumbo v0, "noscript"

    #@146e
    const-string/jumbo v1, "dir"

    #@1471
    const-string/jumbo v2, "NMTOKEN"

    #@1474
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1477
    .line 527
    const-string/jumbo v0, "object"

    #@147a
    const-string/jumbo v1, "dir"

    #@147d
    const-string/jumbo v2, "NMTOKEN"

    #@1480
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1483
    .line 528
    const-string/jumbo v0, "ol"

    #@1486
    const-string/jumbo v1, "dir"

    #@1489
    const-string/jumbo v2, "NMTOKEN"

    #@148c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@148f
    .line 529
    const-string/jumbo v0, "optgroup"

    #@1492
    const-string/jumbo v1, "dir"

    #@1495
    const-string/jumbo v2, "NMTOKEN"

    #@1498
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@149b
    .line 530
    const-string/jumbo v0, "option"

    #@149e
    const-string/jumbo v1, "dir"

    #@14a1
    const-string/jumbo v2, "NMTOKEN"

    #@14a4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14a7
    .line 531
    const-string/jumbo v0, "p"

    #@14aa
    const-string/jumbo v1, "dir"

    #@14ad
    const-string/jumbo v2, "NMTOKEN"

    #@14b0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14b3
    .line 532
    const-string/jumbo v0, "param"

    #@14b6
    const-string/jumbo v1, "dir"

    #@14b9
    const-string/jumbo v2, "NMTOKEN"

    #@14bc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14bf
    .line 533
    const-string/jumbo v0, "pre"

    #@14c2
    const-string/jumbo v1, "dir"

    #@14c5
    const-string/jumbo v2, "NMTOKEN"

    #@14c8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14cb
    .line 534
    const-string/jumbo v0, "q"

    #@14ce
    const-string/jumbo v1, "dir"

    #@14d1
    const-string/jumbo v2, "NMTOKEN"

    #@14d4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14d7
    .line 535
    const-string/jumbo v0, "rb"

    #@14da
    const-string/jumbo v1, "dir"

    #@14dd
    const-string/jumbo v2, "NMTOKEN"

    #@14e0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14e3
    .line 536
    const-string/jumbo v0, "rbc"

    #@14e6
    const-string/jumbo v1, "dir"

    #@14e9
    const-string/jumbo v2, "NMTOKEN"

    #@14ec
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14ef
    .line 537
    const-string/jumbo v0, "rp"

    #@14f2
    const-string/jumbo v1, "dir"

    #@14f5
    const-string/jumbo v2, "NMTOKEN"

    #@14f8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14fb
    .line 538
    const-string/jumbo v0, "rt"

    #@14fe
    const-string/jumbo v1, "dir"

    #@1501
    const-string/jumbo v2, "NMTOKEN"

    #@1504
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1507
    .line 539
    const-string/jumbo v0, "rtc"

    #@150a
    const-string/jumbo v1, "dir"

    #@150d
    const-string/jumbo v2, "NMTOKEN"

    #@1510
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1513
    .line 540
    const-string/jumbo v0, "ruby"

    #@1516
    const-string/jumbo v1, "dir"

    #@1519
    const-string/jumbo v2, "NMTOKEN"

    #@151c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@151f
    .line 541
    const-string/jumbo v0, "s"

    #@1522
    const-string/jumbo v1, "dir"

    #@1525
    const-string/jumbo v2, "NMTOKEN"

    #@1528
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@152b
    .line 542
    const-string/jumbo v0, "samp"

    #@152e
    const-string/jumbo v1, "dir"

    #@1531
    const-string/jumbo v2, "NMTOKEN"

    #@1534
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1537
    .line 543
    const-string/jumbo v0, "script"

    #@153a
    const-string/jumbo v1, "dir"

    #@153d
    const-string/jumbo v2, "NMTOKEN"

    #@1540
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1543
    .line 544
    const-string/jumbo v0, "select"

    #@1546
    const-string/jumbo v1, "dir"

    #@1549
    const-string/jumbo v2, "NMTOKEN"

    #@154c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@154f
    .line 545
    const-string/jumbo v0, "small"

    #@1552
    const-string/jumbo v1, "dir"

    #@1555
    const-string/jumbo v2, "NMTOKEN"

    #@1558
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@155b
    .line 546
    const-string/jumbo v0, "span"

    #@155e
    const-string/jumbo v1, "dir"

    #@1561
    const-string/jumbo v2, "NMTOKEN"

    #@1564
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1567
    .line 547
    const-string/jumbo v0, "strike"

    #@156a
    const-string/jumbo v1, "dir"

    #@156d
    const-string/jumbo v2, "NMTOKEN"

    #@1570
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1573
    .line 548
    const-string/jumbo v0, "strong"

    #@1576
    const-string/jumbo v1, "dir"

    #@1579
    const-string/jumbo v2, "NMTOKEN"

    #@157c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@157f
    .line 549
    const-string/jumbo v0, "style"

    #@1582
    const-string/jumbo v1, "dir"

    #@1585
    const-string/jumbo v2, "NMTOKEN"

    #@1588
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@158b
    .line 550
    const-string/jumbo v0, "sub"

    #@158e
    const-string/jumbo v1, "dir"

    #@1591
    const-string/jumbo v2, "NMTOKEN"

    #@1594
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1597
    .line 551
    const-string/jumbo v0, "sup"

    #@159a
    const-string/jumbo v1, "dir"

    #@159d
    const-string/jumbo v2, "NMTOKEN"

    #@15a0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15a3
    .line 552
    const-string/jumbo v0, "table"

    #@15a6
    const-string/jumbo v1, "dir"

    #@15a9
    const-string/jumbo v2, "NMTOKEN"

    #@15ac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15af
    .line 553
    const-string/jumbo v0, "tbody"

    #@15b2
    const-string/jumbo v1, "dir"

    #@15b5
    const-string/jumbo v2, "NMTOKEN"

    #@15b8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15bb
    .line 554
    const-string/jumbo v0, "td"

    #@15be
    const-string/jumbo v1, "dir"

    #@15c1
    const-string/jumbo v2, "NMTOKEN"

    #@15c4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15c7
    .line 555
    const-string/jumbo v0, "textarea"

    #@15ca
    const-string/jumbo v1, "dir"

    #@15cd
    const-string/jumbo v2, "NMTOKEN"

    #@15d0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15d3
    .line 556
    const-string/jumbo v0, "tfoot"

    #@15d6
    const-string/jumbo v1, "dir"

    #@15d9
    const-string/jumbo v2, "NMTOKEN"

    #@15dc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15df
    .line 557
    const-string/jumbo v0, "th"

    #@15e2
    const-string/jumbo v1, "dir"

    #@15e5
    const-string/jumbo v2, "NMTOKEN"

    #@15e8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15eb
    .line 558
    const-string/jumbo v0, "thead"

    #@15ee
    const-string/jumbo v1, "dir"

    #@15f1
    const-string/jumbo v2, "NMTOKEN"

    #@15f4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15f7
    .line 559
    const-string/jumbo v0, "title"

    #@15fa
    const-string/jumbo v1, "dir"

    #@15fd
    const-string/jumbo v2, "NMTOKEN"

    #@1600
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1603
    .line 560
    const-string/jumbo v0, "tr"

    #@1606
    const-string/jumbo v1, "dir"

    #@1609
    const-string/jumbo v2, "NMTOKEN"

    #@160c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@160f
    .line 561
    const-string/jumbo v0, "tt"

    #@1612
    const-string/jumbo v1, "dir"

    #@1615
    const-string/jumbo v2, "NMTOKEN"

    #@1618
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@161b
    .line 562
    const-string/jumbo v0, "u"

    #@161e
    const-string/jumbo v1, "dir"

    #@1621
    const-string/jumbo v2, "NMTOKEN"

    #@1624
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1627
    .line 563
    const-string/jumbo v0, "ul"

    #@162a
    const-string/jumbo v1, "dir"

    #@162d
    const-string/jumbo v2, "NMTOKEN"

    #@1630
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1633
    .line 564
    const-string/jumbo v0, "var"

    #@1636
    const-string/jumbo v1, "dir"

    #@1639
    const-string/jumbo v2, "NMTOKEN"

    #@163c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@163f
    .line 565
    const-string/jumbo v0, "wbr"

    #@1642
    const-string/jumbo v1, "dir"

    #@1645
    const-string/jumbo v2, "NMTOKEN"

    #@1648
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@164b
    .line 566
    const-string/jumbo v0, "xmp"

    #@164e
    const-string/jumbo v1, "dir"

    #@1651
    const-string/jumbo v2, "NMTOKEN"

    #@1654
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1657
    .line 567
    const-string/jumbo v0, "a"

    #@165a
    const-string/jumbo v1, "id"

    #@165d
    const-string/jumbo v2, "ID"

    #@1660
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1663
    .line 568
    const-string/jumbo v0, "abbr"

    #@1666
    const-string/jumbo v1, "id"

    #@1669
    const-string/jumbo v2, "ID"

    #@166c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@166f
    .line 569
    const-string/jumbo v0, "acronym"

    #@1672
    const-string/jumbo v1, "id"

    #@1675
    const-string/jumbo v2, "ID"

    #@1678
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@167b
    .line 570
    const-string/jumbo v0, "address"

    #@167e
    const-string/jumbo v1, "id"

    #@1681
    const-string/jumbo v2, "ID"

    #@1684
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1687
    .line 571
    const-string/jumbo v0, "applet"

    #@168a
    const-string/jumbo v1, "id"

    #@168d
    const-string/jumbo v2, "ID"

    #@1690
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1693
    .line 572
    const-string/jumbo v0, "area"

    #@1696
    const-string/jumbo v1, "id"

    #@1699
    const-string/jumbo v2, "ID"

    #@169c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@169f
    .line 573
    const-string/jumbo v0, "b"

    #@16a2
    const-string/jumbo v1, "id"

    #@16a5
    const-string/jumbo v2, "ID"

    #@16a8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16ab
    .line 574
    const-string/jumbo v0, "base"

    #@16ae
    const-string/jumbo v1, "id"

    #@16b1
    const-string/jumbo v2, "ID"

    #@16b4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16b7
    .line 575
    const-string/jumbo v0, "basefont"

    #@16ba
    const-string/jumbo v1, "id"

    #@16bd
    const-string/jumbo v2, "ID"

    #@16c0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16c3
    .line 576
    const-string/jumbo v0, "bdo"

    #@16c6
    const-string/jumbo v1, "id"

    #@16c9
    const-string/jumbo v2, "ID"

    #@16cc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16cf
    .line 577
    const-string/jumbo v0, "bgsound"

    #@16d2
    const-string/jumbo v1, "id"

    #@16d5
    const-string/jumbo v2, "ID"

    #@16d8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16db
    .line 578
    const-string/jumbo v0, "big"

    #@16de
    const-string/jumbo v1, "id"

    #@16e1
    const-string/jumbo v2, "ID"

    #@16e4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16e7
    .line 579
    const-string/jumbo v0, "blink"

    #@16ea
    const-string/jumbo v1, "id"

    #@16ed
    const-string/jumbo v2, "ID"

    #@16f0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16f3
    .line 580
    const-string/jumbo v0, "blockquote"

    #@16f6
    const-string/jumbo v1, "id"

    #@16f9
    const-string/jumbo v2, "ID"

    #@16fc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16ff
    .line 581
    const-string/jumbo v0, "body"

    #@1702
    const-string/jumbo v1, "id"

    #@1705
    const-string/jumbo v2, "ID"

    #@1708
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@170b
    .line 582
    const-string/jumbo v0, "br"

    #@170e
    const-string/jumbo v1, "id"

    #@1711
    const-string/jumbo v2, "ID"

    #@1714
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1717
    .line 583
    const-string/jumbo v0, "button"

    #@171a
    const-string/jumbo v1, "id"

    #@171d
    const-string/jumbo v2, "ID"

    #@1720
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1723
    .line 584
    const-string/jumbo v0, "canvas"

    #@1726
    const-string/jumbo v1, "id"

    #@1729
    const-string/jumbo v2, "ID"

    #@172c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@172f
    .line 585
    const-string/jumbo v0, "caption"

    #@1732
    const-string/jumbo v1, "id"

    #@1735
    const-string/jumbo v2, "ID"

    #@1738
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@173b
    .line 586
    const-string/jumbo v0, "center"

    #@173e
    const-string/jumbo v1, "id"

    #@1741
    const-string/jumbo v2, "ID"

    #@1744
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1747
    .line 587
    const-string/jumbo v0, "cite"

    #@174a
    const-string/jumbo v1, "id"

    #@174d
    const-string/jumbo v2, "ID"

    #@1750
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1753
    .line 588
    const-string/jumbo v0, "code"

    #@1756
    const-string/jumbo v1, "id"

    #@1759
    const-string/jumbo v2, "ID"

    #@175c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@175f
    .line 589
    const-string/jumbo v0, "col"

    #@1762
    const-string/jumbo v1, "id"

    #@1765
    const-string/jumbo v2, "ID"

    #@1768
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@176b
    .line 590
    const-string/jumbo v0, "colgroup"

    #@176e
    const-string/jumbo v1, "id"

    #@1771
    const-string/jumbo v2, "ID"

    #@1774
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1777
    .line 591
    const-string/jumbo v0, "comment"

    #@177a
    const-string/jumbo v1, "id"

    #@177d
    const-string/jumbo v2, "ID"

    #@1780
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1783
    .line 592
    const-string/jumbo v0, "dd"

    #@1786
    const-string/jumbo v1, "id"

    #@1789
    const-string/jumbo v2, "ID"

    #@178c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@178f
    .line 593
    const-string/jumbo v0, "del"

    #@1792
    const-string/jumbo v1, "id"

    #@1795
    const-string/jumbo v2, "ID"

    #@1798
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@179b
    .line 594
    const-string/jumbo v0, "dfn"

    #@179e
    const-string/jumbo v1, "id"

    #@17a1
    const-string/jumbo v2, "ID"

    #@17a4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17a7
    .line 595
    const-string/jumbo v0, "dir"

    #@17aa
    const-string/jumbo v1, "id"

    #@17ad
    const-string/jumbo v2, "ID"

    #@17b0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17b3
    .line 596
    const-string/jumbo v0, "div"

    #@17b6
    const-string/jumbo v1, "id"

    #@17b9
    const-string/jumbo v2, "ID"

    #@17bc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17bf
    .line 597
    const-string/jumbo v0, "dl"

    #@17c2
    const-string/jumbo v1, "id"

    #@17c5
    const-string/jumbo v2, "ID"

    #@17c8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17cb
    .line 598
    const-string/jumbo v0, "dt"

    #@17ce
    const-string/jumbo v1, "id"

    #@17d1
    const-string/jumbo v2, "ID"

    #@17d4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17d7
    .line 599
    const-string/jumbo v0, "em"

    #@17da
    const-string/jumbo v1, "id"

    #@17dd
    const-string/jumbo v2, "ID"

    #@17e0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17e3
    .line 600
    const-string/jumbo v0, "fieldset"

    #@17e6
    const-string/jumbo v1, "id"

    #@17e9
    const-string/jumbo v2, "ID"

    #@17ec
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17ef
    .line 601
    const-string/jumbo v0, "font"

    #@17f2
    const-string/jumbo v1, "id"

    #@17f5
    const-string/jumbo v2, "ID"

    #@17f8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17fb
    .line 602
    const-string/jumbo v0, "form"

    #@17fe
    const-string/jumbo v1, "id"

    #@1801
    const-string/jumbo v2, "ID"

    #@1804
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1807
    .line 603
    const-string/jumbo v0, "frame"

    #@180a
    const-string/jumbo v1, "id"

    #@180d
    const-string/jumbo v2, "ID"

    #@1810
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1813
    .line 604
    const-string/jumbo v0, "frameset"

    #@1816
    const-string/jumbo v1, "id"

    #@1819
    const-string/jumbo v2, "ID"

    #@181c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@181f
    .line 605
    const-string/jumbo v0, "h1"

    #@1822
    const-string/jumbo v1, "id"

    #@1825
    const-string/jumbo v2, "ID"

    #@1828
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@182b
    .line 606
    const-string/jumbo v0, "h2"

    #@182e
    const-string/jumbo v1, "id"

    #@1831
    const-string/jumbo v2, "ID"

    #@1834
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1837
    .line 607
    const-string/jumbo v0, "h3"

    #@183a
    const-string/jumbo v1, "id"

    #@183d
    const-string/jumbo v2, "ID"

    #@1840
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1843
    .line 608
    const-string/jumbo v0, "h4"

    #@1846
    const-string/jumbo v1, "id"

    #@1849
    const-string/jumbo v2, "ID"

    #@184c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@184f
    .line 609
    const-string/jumbo v0, "h5"

    #@1852
    const-string/jumbo v1, "id"

    #@1855
    const-string/jumbo v2, "ID"

    #@1858
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@185b
    .line 610
    const-string/jumbo v0, "h6"

    #@185e
    const-string/jumbo v1, "id"

    #@1861
    const-string/jumbo v2, "ID"

    #@1864
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1867
    .line 611
    const-string/jumbo v0, "head"

    #@186a
    const-string/jumbo v1, "id"

    #@186d
    const-string/jumbo v2, "ID"

    #@1870
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1873
    .line 612
    const-string/jumbo v0, "hr"

    #@1876
    const-string/jumbo v1, "id"

    #@1879
    const-string/jumbo v2, "ID"

    #@187c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@187f
    .line 613
    const-string/jumbo v0, "html"

    #@1882
    const-string/jumbo v1, "id"

    #@1885
    const-string/jumbo v2, "ID"

    #@1888
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@188b
    .line 614
    const-string/jumbo v0, "i"

    #@188e
    const-string/jumbo v1, "id"

    #@1891
    const-string/jumbo v2, "ID"

    #@1894
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1897
    .line 615
    const-string/jumbo v0, "iframe"

    #@189a
    const-string/jumbo v1, "id"

    #@189d
    const-string/jumbo v2, "ID"

    #@18a0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18a3
    .line 616
    const-string/jumbo v0, "img"

    #@18a6
    const-string/jumbo v1, "id"

    #@18a9
    const-string/jumbo v2, "ID"

    #@18ac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18af
    .line 617
    const-string/jumbo v0, "input"

    #@18b2
    const-string/jumbo v1, "id"

    #@18b5
    const-string/jumbo v2, "ID"

    #@18b8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18bb
    .line 618
    const-string/jumbo v0, "ins"

    #@18be
    const-string/jumbo v1, "id"

    #@18c1
    const-string/jumbo v2, "ID"

    #@18c4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18c7
    .line 619
    const-string/jumbo v0, "isindex"

    #@18ca
    const-string/jumbo v1, "id"

    #@18cd
    const-string/jumbo v2, "ID"

    #@18d0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18d3
    .line 620
    const-string/jumbo v0, "kbd"

    #@18d6
    const-string/jumbo v1, "id"

    #@18d9
    const-string/jumbo v2, "ID"

    #@18dc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18df
    .line 621
    const-string/jumbo v0, "label"

    #@18e2
    const-string/jumbo v1, "id"

    #@18e5
    const-string/jumbo v2, "ID"

    #@18e8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18eb
    .line 622
    const-string/jumbo v0, "legend"

    #@18ee
    const-string/jumbo v1, "id"

    #@18f1
    const-string/jumbo v2, "ID"

    #@18f4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18f7
    .line 623
    const-string/jumbo v0, "li"

    #@18fa
    const-string/jumbo v1, "id"

    #@18fd
    const-string/jumbo v2, "ID"

    #@1900
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1903
    .line 624
    const-string/jumbo v0, "link"

    #@1906
    const-string/jumbo v1, "id"

    #@1909
    const-string/jumbo v2, "ID"

    #@190c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@190f
    .line 625
    const-string/jumbo v0, "listing"

    #@1912
    const-string/jumbo v1, "id"

    #@1915
    const-string/jumbo v2, "ID"

    #@1918
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@191b
    .line 626
    const-string/jumbo v0, "map"

    #@191e
    const-string/jumbo v1, "id"

    #@1921
    const-string/jumbo v2, "ID"

    #@1924
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1927
    .line 627
    const-string/jumbo v0, "marquee"

    #@192a
    const-string/jumbo v1, "id"

    #@192d
    const-string/jumbo v2, "ID"

    #@1930
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1933
    .line 628
    const-string/jumbo v0, "menu"

    #@1936
    const-string/jumbo v1, "id"

    #@1939
    const-string/jumbo v2, "ID"

    #@193c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@193f
    .line 629
    const-string/jumbo v0, "meta"

    #@1942
    const-string/jumbo v1, "id"

    #@1945
    const-string/jumbo v2, "ID"

    #@1948
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@194b
    .line 630
    const-string/jumbo v0, "nobr"

    #@194e
    const-string/jumbo v1, "id"

    #@1951
    const-string/jumbo v2, "ID"

    #@1954
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1957
    .line 631
    const-string/jumbo v0, "noframes"

    #@195a
    const-string/jumbo v1, "id"

    #@195d
    const-string/jumbo v2, "ID"

    #@1960
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1963
    .line 632
    const-string/jumbo v0, "noscript"

    #@1966
    const-string/jumbo v1, "id"

    #@1969
    const-string/jumbo v2, "ID"

    #@196c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@196f
    .line 633
    const-string/jumbo v0, "object"

    #@1972
    const-string/jumbo v1, "id"

    #@1975
    const-string/jumbo v2, "ID"

    #@1978
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@197b
    .line 634
    const-string/jumbo v0, "ol"

    #@197e
    const-string/jumbo v1, "id"

    #@1981
    const-string/jumbo v2, "ID"

    #@1984
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1987
    .line 635
    const-string/jumbo v0, "optgroup"

    #@198a
    const-string/jumbo v1, "id"

    #@198d
    const-string/jumbo v2, "ID"

    #@1990
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1993
    .line 636
    const-string/jumbo v0, "option"

    #@1996
    const-string/jumbo v1, "id"

    #@1999
    const-string/jumbo v2, "ID"

    #@199c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@199f
    .line 637
    const-string/jumbo v0, "p"

    #@19a2
    const-string/jumbo v1, "id"

    #@19a5
    const-string/jumbo v2, "ID"

    #@19a8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19ab
    .line 638
    const-string/jumbo v0, "param"

    #@19ae
    const-string/jumbo v1, "id"

    #@19b1
    const-string/jumbo v2, "ID"

    #@19b4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19b7
    .line 639
    const-string/jumbo v0, "pre"

    #@19ba
    const-string/jumbo v1, "id"

    #@19bd
    const-string/jumbo v2, "ID"

    #@19c0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19c3
    .line 640
    const-string/jumbo v0, "q"

    #@19c6
    const-string/jumbo v1, "id"

    #@19c9
    const-string/jumbo v2, "ID"

    #@19cc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19cf
    .line 641
    const-string/jumbo v0, "rb"

    #@19d2
    const-string/jumbo v1, "id"

    #@19d5
    const-string/jumbo v2, "ID"

    #@19d8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19db
    .line 642
    const-string/jumbo v0, "rbc"

    #@19de
    const-string/jumbo v1, "id"

    #@19e1
    const-string/jumbo v2, "ID"

    #@19e4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19e7
    .line 643
    const-string/jumbo v0, "rp"

    #@19ea
    const-string/jumbo v1, "id"

    #@19ed
    const-string/jumbo v2, "ID"

    #@19f0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19f3
    .line 644
    const-string/jumbo v0, "rt"

    #@19f6
    const-string/jumbo v1, "id"

    #@19f9
    const-string/jumbo v2, "ID"

    #@19fc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19ff
    .line 645
    const-string/jumbo v0, "rtc"

    #@1a02
    const-string/jumbo v1, "id"

    #@1a05
    const-string/jumbo v2, "ID"

    #@1a08
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a0b
    .line 646
    const-string/jumbo v0, "ruby"

    #@1a0e
    const-string/jumbo v1, "id"

    #@1a11
    const-string/jumbo v2, "ID"

    #@1a14
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a17
    .line 647
    const-string/jumbo v0, "s"

    #@1a1a
    const-string/jumbo v1, "id"

    #@1a1d
    const-string/jumbo v2, "ID"

    #@1a20
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a23
    .line 648
    const-string/jumbo v0, "samp"

    #@1a26
    const-string/jumbo v1, "id"

    #@1a29
    const-string/jumbo v2, "ID"

    #@1a2c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a2f
    .line 649
    const-string/jumbo v0, "script"

    #@1a32
    const-string/jumbo v1, "id"

    #@1a35
    const-string/jumbo v2, "ID"

    #@1a38
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a3b
    .line 650
    const-string/jumbo v0, "select"

    #@1a3e
    const-string/jumbo v1, "id"

    #@1a41
    const-string/jumbo v2, "ID"

    #@1a44
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a47
    .line 651
    const-string/jumbo v0, "small"

    #@1a4a
    const-string/jumbo v1, "id"

    #@1a4d
    const-string/jumbo v2, "ID"

    #@1a50
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a53
    .line 652
    const-string/jumbo v0, "span"

    #@1a56
    const-string/jumbo v1, "id"

    #@1a59
    const-string/jumbo v2, "ID"

    #@1a5c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a5f
    .line 653
    const-string/jumbo v0, "strike"

    #@1a62
    const-string/jumbo v1, "id"

    #@1a65
    const-string/jumbo v2, "ID"

    #@1a68
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a6b
    .line 654
    const-string/jumbo v0, "strong"

    #@1a6e
    const-string/jumbo v1, "id"

    #@1a71
    const-string/jumbo v2, "ID"

    #@1a74
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a77
    .line 655
    const-string/jumbo v0, "style"

    #@1a7a
    const-string/jumbo v1, "id"

    #@1a7d
    const-string/jumbo v2, "ID"

    #@1a80
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a83
    .line 656
    const-string/jumbo v0, "sub"

    #@1a86
    const-string/jumbo v1, "id"

    #@1a89
    const-string/jumbo v2, "ID"

    #@1a8c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a8f
    .line 657
    const-string/jumbo v0, "sup"

    #@1a92
    const-string/jumbo v1, "id"

    #@1a95
    const-string/jumbo v2, "ID"

    #@1a98
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a9b
    .line 658
    const-string/jumbo v0, "table"

    #@1a9e
    const-string/jumbo v1, "id"

    #@1aa1
    const-string/jumbo v2, "ID"

    #@1aa4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1aa7
    .line 659
    const-string/jumbo v0, "tbody"

    #@1aaa
    const-string/jumbo v1, "id"

    #@1aad
    const-string/jumbo v2, "ID"

    #@1ab0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ab3
    .line 660
    const-string/jumbo v0, "td"

    #@1ab6
    const-string/jumbo v1, "id"

    #@1ab9
    const-string/jumbo v2, "ID"

    #@1abc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1abf
    .line 661
    const-string/jumbo v0, "textarea"

    #@1ac2
    const-string/jumbo v1, "id"

    #@1ac5
    const-string/jumbo v2, "ID"

    #@1ac8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1acb
    .line 662
    const-string/jumbo v0, "tfoot"

    #@1ace
    const-string/jumbo v1, "id"

    #@1ad1
    const-string/jumbo v2, "ID"

    #@1ad4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ad7
    .line 663
    const-string/jumbo v0, "th"

    #@1ada
    const-string/jumbo v1, "id"

    #@1add
    const-string/jumbo v2, "ID"

    #@1ae0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ae3
    .line 664
    const-string/jumbo v0, "thead"

    #@1ae6
    const-string/jumbo v1, "id"

    #@1ae9
    const-string/jumbo v2, "ID"

    #@1aec
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1aef
    .line 665
    const-string/jumbo v0, "title"

    #@1af2
    const-string/jumbo v1, "id"

    #@1af5
    const-string/jumbo v2, "ID"

    #@1af8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1afb
    .line 666
    const-string/jumbo v0, "tr"

    #@1afe
    const-string/jumbo v1, "id"

    #@1b01
    const-string/jumbo v2, "ID"

    #@1b04
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b07
    .line 667
    const-string/jumbo v0, "tt"

    #@1b0a
    const-string/jumbo v1, "id"

    #@1b0d
    const-string/jumbo v2, "ID"

    #@1b10
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b13
    .line 668
    const-string/jumbo v0, "u"

    #@1b16
    const-string/jumbo v1, "id"

    #@1b19
    const-string/jumbo v2, "ID"

    #@1b1c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b1f
    .line 669
    const-string/jumbo v0, "ul"

    #@1b22
    const-string/jumbo v1, "id"

    #@1b25
    const-string/jumbo v2, "ID"

    #@1b28
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b2b
    .line 670
    const-string/jumbo v0, "var"

    #@1b2e
    const-string/jumbo v1, "id"

    #@1b31
    const-string/jumbo v2, "ID"

    #@1b34
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b37
    .line 671
    const-string/jumbo v0, "wbr"

    #@1b3a
    const-string/jumbo v1, "id"

    #@1b3d
    const-string/jumbo v2, "ID"

    #@1b40
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b43
    .line 672
    const-string/jumbo v0, "xmp"

    #@1b46
    const-string/jumbo v1, "id"

    #@1b49
    const-string/jumbo v2, "ID"

    #@1b4c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b4f
    .line 673
    const-string/jumbo v0, "a"

    #@1b52
    const-string/jumbo v1, "lang"

    #@1b55
    const-string/jumbo v2, "NMTOKEN"

    #@1b58
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b5b
    .line 674
    const-string/jumbo v0, "abbr"

    #@1b5e
    const-string/jumbo v1, "lang"

    #@1b61
    const-string/jumbo v2, "NMTOKEN"

    #@1b64
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b67
    .line 675
    const-string/jumbo v0, "acronym"

    #@1b6a
    const-string/jumbo v1, "lang"

    #@1b6d
    const-string/jumbo v2, "NMTOKEN"

    #@1b70
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b73
    .line 676
    const-string/jumbo v0, "address"

    #@1b76
    const-string/jumbo v1, "lang"

    #@1b79
    const-string/jumbo v2, "NMTOKEN"

    #@1b7c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b7f
    .line 677
    const-string/jumbo v0, "applet"

    #@1b82
    const-string/jumbo v1, "lang"

    #@1b85
    const-string/jumbo v2, "NMTOKEN"

    #@1b88
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b8b
    .line 678
    const-string/jumbo v0, "area"

    #@1b8e
    const-string/jumbo v1, "lang"

    #@1b91
    const-string/jumbo v2, "NMTOKEN"

    #@1b94
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b97
    .line 679
    const-string/jumbo v0, "b"

    #@1b9a
    const-string/jumbo v1, "lang"

    #@1b9d
    const-string/jumbo v2, "NMTOKEN"

    #@1ba0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ba3
    .line 680
    const-string/jumbo v0, "base"

    #@1ba6
    const-string/jumbo v1, "lang"

    #@1ba9
    const-string/jumbo v2, "NMTOKEN"

    #@1bac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1baf
    .line 681
    const-string/jumbo v0, "basefont"

    #@1bb2
    const-string/jumbo v1, "lang"

    #@1bb5
    const-string/jumbo v2, "NMTOKEN"

    #@1bb8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1bbb
    .line 682
    const-string/jumbo v0, "bdo"

    #@1bbe
    const-string/jumbo v1, "lang"

    #@1bc1
    const-string/jumbo v2, "NMTOKEN"

    #@1bc4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1bc7
    .line 683
    const-string/jumbo v0, "bgsound"

    #@1bca
    const-string/jumbo v1, "lang"

    #@1bcd
    const-string/jumbo v2, "NMTOKEN"

    #@1bd0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1bd3
    .line 684
    const-string/jumbo v0, "big"

    #@1bd6
    const-string/jumbo v1, "lang"

    #@1bd9
    const-string/jumbo v2, "NMTOKEN"

    #@1bdc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1bdf
    .line 685
    const-string/jumbo v0, "blink"

    #@1be2
    const-string/jumbo v1, "lang"

    #@1be5
    const-string/jumbo v2, "NMTOKEN"

    #@1be8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1beb
    .line 686
    const-string/jumbo v0, "blockquote"

    #@1bee
    const-string/jumbo v1, "lang"

    #@1bf1
    const-string/jumbo v2, "NMTOKEN"

    #@1bf4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1bf7
    .line 687
    const-string/jumbo v0, "body"

    #@1bfa
    const-string/jumbo v1, "lang"

    #@1bfd
    const-string/jumbo v2, "NMTOKEN"

    #@1c00
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c03
    .line 688
    const-string/jumbo v0, "br"

    #@1c06
    const-string/jumbo v1, "lang"

    #@1c09
    const-string/jumbo v2, "NMTOKEN"

    #@1c0c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c0f
    .line 689
    const-string/jumbo v0, "button"

    #@1c12
    const-string/jumbo v1, "lang"

    #@1c15
    const-string/jumbo v2, "NMTOKEN"

    #@1c18
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c1b
    .line 690
    const-string/jumbo v0, "canvas"

    #@1c1e
    const-string/jumbo v1, "lang"

    #@1c21
    const-string/jumbo v2, "NMTOKEN"

    #@1c24
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c27
    .line 691
    const-string/jumbo v0, "caption"

    #@1c2a
    const-string/jumbo v1, "lang"

    #@1c2d
    const-string/jumbo v2, "NMTOKEN"

    #@1c30
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c33
    .line 692
    const-string/jumbo v0, "center"

    #@1c36
    const-string/jumbo v1, "lang"

    #@1c39
    const-string/jumbo v2, "NMTOKEN"

    #@1c3c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c3f
    .line 693
    const-string/jumbo v0, "cite"

    #@1c42
    const-string/jumbo v1, "lang"

    #@1c45
    const-string/jumbo v2, "NMTOKEN"

    #@1c48
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c4b
    .line 694
    const-string/jumbo v0, "code"

    #@1c4e
    const-string/jumbo v1, "lang"

    #@1c51
    const-string/jumbo v2, "NMTOKEN"

    #@1c54
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c57
    .line 695
    const-string/jumbo v0, "col"

    #@1c5a
    const-string/jumbo v1, "lang"

    #@1c5d
    const-string/jumbo v2, "NMTOKEN"

    #@1c60
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c63
    .line 696
    const-string/jumbo v0, "colgroup"

    #@1c66
    const-string/jumbo v1, "lang"

    #@1c69
    const-string/jumbo v2, "NMTOKEN"

    #@1c6c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c6f
    .line 697
    const-string/jumbo v0, "comment"

    #@1c72
    const-string/jumbo v1, "lang"

    #@1c75
    const-string/jumbo v2, "NMTOKEN"

    #@1c78
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c7b
    .line 698
    const-string/jumbo v0, "dd"

    #@1c7e
    const-string/jumbo v1, "lang"

    #@1c81
    const-string/jumbo v2, "NMTOKEN"

    #@1c84
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c87
    .line 699
    const-string/jumbo v0, "del"

    #@1c8a
    const-string/jumbo v1, "lang"

    #@1c8d
    const-string/jumbo v2, "NMTOKEN"

    #@1c90
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c93
    .line 700
    const-string/jumbo v0, "dfn"

    #@1c96
    const-string/jumbo v1, "lang"

    #@1c99
    const-string/jumbo v2, "NMTOKEN"

    #@1c9c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c9f
    .line 701
    const-string/jumbo v0, "dir"

    #@1ca2
    const-string/jumbo v1, "lang"

    #@1ca5
    const-string/jumbo v2, "NMTOKEN"

    #@1ca8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1cab
    .line 702
    const-string/jumbo v0, "div"

    #@1cae
    const-string/jumbo v1, "lang"

    #@1cb1
    const-string/jumbo v2, "NMTOKEN"

    #@1cb4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1cb7
    .line 703
    const-string/jumbo v0, "dl"

    #@1cba
    const-string/jumbo v1, "lang"

    #@1cbd
    const-string/jumbo v2, "NMTOKEN"

    #@1cc0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1cc3
    .line 704
    const-string/jumbo v0, "dt"

    #@1cc6
    const-string/jumbo v1, "lang"

    #@1cc9
    const-string/jumbo v2, "NMTOKEN"

    #@1ccc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ccf
    .line 705
    const-string/jumbo v0, "em"

    #@1cd2
    const-string/jumbo v1, "lang"

    #@1cd5
    const-string/jumbo v2, "NMTOKEN"

    #@1cd8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1cdb
    .line 706
    const-string/jumbo v0, "fieldset"

    #@1cde
    const-string/jumbo v1, "lang"

    #@1ce1
    const-string/jumbo v2, "NMTOKEN"

    #@1ce4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ce7
    .line 707
    const-string/jumbo v0, "font"

    #@1cea
    const-string/jumbo v1, "lang"

    #@1ced
    const-string/jumbo v2, "NMTOKEN"

    #@1cf0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1cf3
    .line 708
    const-string/jumbo v0, "form"

    #@1cf6
    const-string/jumbo v1, "lang"

    #@1cf9
    const-string/jumbo v2, "NMTOKEN"

    #@1cfc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1cff
    .line 709
    const-string/jumbo v0, "frame"

    #@1d02
    const-string/jumbo v1, "lang"

    #@1d05
    const-string/jumbo v2, "NMTOKEN"

    #@1d08
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d0b
    .line 710
    const-string/jumbo v0, "frameset"

    #@1d0e
    const-string/jumbo v1, "lang"

    #@1d11
    const-string/jumbo v2, "NMTOKEN"

    #@1d14
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d17
    .line 711
    const-string/jumbo v0, "h1"

    #@1d1a
    const-string/jumbo v1, "lang"

    #@1d1d
    const-string/jumbo v2, "NMTOKEN"

    #@1d20
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d23
    .line 712
    const-string/jumbo v0, "h2"

    #@1d26
    const-string/jumbo v1, "lang"

    #@1d29
    const-string/jumbo v2, "NMTOKEN"

    #@1d2c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d2f
    .line 713
    const-string/jumbo v0, "h3"

    #@1d32
    const-string/jumbo v1, "lang"

    #@1d35
    const-string/jumbo v2, "NMTOKEN"

    #@1d38
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d3b
    .line 714
    const-string/jumbo v0, "h4"

    #@1d3e
    const-string/jumbo v1, "lang"

    #@1d41
    const-string/jumbo v2, "NMTOKEN"

    #@1d44
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d47
    .line 715
    const-string/jumbo v0, "h5"

    #@1d4a
    const-string/jumbo v1, "lang"

    #@1d4d
    const-string/jumbo v2, "NMTOKEN"

    #@1d50
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d53
    .line 716
    const-string/jumbo v0, "h6"

    #@1d56
    const-string/jumbo v1, "lang"

    #@1d59
    const-string/jumbo v2, "NMTOKEN"

    #@1d5c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d5f
    .line 717
    const-string/jumbo v0, "head"

    #@1d62
    const-string/jumbo v1, "lang"

    #@1d65
    const-string/jumbo v2, "NMTOKEN"

    #@1d68
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d6b
    .line 718
    const-string/jumbo v0, "hr"

    #@1d6e
    const-string/jumbo v1, "lang"

    #@1d71
    const-string/jumbo v2, "NMTOKEN"

    #@1d74
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d77
    .line 719
    const-string/jumbo v0, "html"

    #@1d7a
    const-string/jumbo v1, "lang"

    #@1d7d
    const-string/jumbo v2, "NMTOKEN"

    #@1d80
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d83
    .line 720
    const-string/jumbo v0, "i"

    #@1d86
    const-string/jumbo v1, "lang"

    #@1d89
    const-string/jumbo v2, "NMTOKEN"

    #@1d8c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d8f
    .line 721
    const-string/jumbo v0, "iframe"

    #@1d92
    const-string/jumbo v1, "lang"

    #@1d95
    const-string/jumbo v2, "NMTOKEN"

    #@1d98
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d9b
    .line 722
    const-string/jumbo v0, "img"

    #@1d9e
    const-string/jumbo v1, "lang"

    #@1da1
    const-string/jumbo v2, "NMTOKEN"

    #@1da4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1da7
    .line 723
    const-string/jumbo v0, "input"

    #@1daa
    const-string/jumbo v1, "lang"

    #@1dad
    const-string/jumbo v2, "NMTOKEN"

    #@1db0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1db3
    .line 724
    const-string/jumbo v0, "ins"

    #@1db6
    const-string/jumbo v1, "lang"

    #@1db9
    const-string/jumbo v2, "NMTOKEN"

    #@1dbc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1dbf
    .line 725
    const-string/jumbo v0, "isindex"

    #@1dc2
    const-string/jumbo v1, "lang"

    #@1dc5
    const-string/jumbo v2, "NMTOKEN"

    #@1dc8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1dcb
    .line 726
    const-string/jumbo v0, "kbd"

    #@1dce
    const-string/jumbo v1, "lang"

    #@1dd1
    const-string/jumbo v2, "NMTOKEN"

    #@1dd4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1dd7
    .line 727
    const-string/jumbo v0, "label"

    #@1dda
    const-string/jumbo v1, "lang"

    #@1ddd
    const-string/jumbo v2, "NMTOKEN"

    #@1de0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1de3
    .line 728
    const-string/jumbo v0, "legend"

    #@1de6
    const-string/jumbo v1, "lang"

    #@1de9
    const-string/jumbo v2, "NMTOKEN"

    #@1dec
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1def
    .line 729
    const-string/jumbo v0, "li"

    #@1df2
    const-string/jumbo v1, "lang"

    #@1df5
    const-string/jumbo v2, "NMTOKEN"

    #@1df8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1dfb
    .line 730
    const-string/jumbo v0, "link"

    #@1dfe
    const-string/jumbo v1, "lang"

    #@1e01
    const-string/jumbo v2, "NMTOKEN"

    #@1e04
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e07
    .line 731
    const-string/jumbo v0, "listing"

    #@1e0a
    const-string/jumbo v1, "lang"

    #@1e0d
    const-string/jumbo v2, "NMTOKEN"

    #@1e10
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e13
    .line 732
    const-string/jumbo v0, "map"

    #@1e16
    const-string/jumbo v1, "lang"

    #@1e19
    const-string/jumbo v2, "NMTOKEN"

    #@1e1c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e1f
    .line 733
    const-string/jumbo v0, "marquee"

    #@1e22
    const-string/jumbo v1, "lang"

    #@1e25
    const-string/jumbo v2, "NMTOKEN"

    #@1e28
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e2b
    .line 734
    const-string/jumbo v0, "menu"

    #@1e2e
    const-string/jumbo v1, "lang"

    #@1e31
    const-string/jumbo v2, "NMTOKEN"

    #@1e34
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e37
    .line 735
    const-string/jumbo v0, "meta"

    #@1e3a
    const-string/jumbo v1, "lang"

    #@1e3d
    const-string/jumbo v2, "NMTOKEN"

    #@1e40
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e43
    .line 736
    const-string/jumbo v0, "nobr"

    #@1e46
    const-string/jumbo v1, "lang"

    #@1e49
    const-string/jumbo v2, "NMTOKEN"

    #@1e4c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e4f
    .line 737
    const-string/jumbo v0, "noframes"

    #@1e52
    const-string/jumbo v1, "lang"

    #@1e55
    const-string/jumbo v2, "NMTOKEN"

    #@1e58
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e5b
    .line 738
    const-string/jumbo v0, "noscript"

    #@1e5e
    const-string/jumbo v1, "lang"

    #@1e61
    const-string/jumbo v2, "NMTOKEN"

    #@1e64
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e67
    .line 739
    const-string/jumbo v0, "object"

    #@1e6a
    const-string/jumbo v1, "lang"

    #@1e6d
    const-string/jumbo v2, "NMTOKEN"

    #@1e70
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e73
    .line 740
    const-string/jumbo v0, "ol"

    #@1e76
    const-string/jumbo v1, "lang"

    #@1e79
    const-string/jumbo v2, "NMTOKEN"

    #@1e7c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e7f
    .line 741
    const-string/jumbo v0, "optgroup"

    #@1e82
    const-string/jumbo v1, "lang"

    #@1e85
    const-string/jumbo v2, "NMTOKEN"

    #@1e88
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e8b
    .line 742
    const-string/jumbo v0, "option"

    #@1e8e
    const-string/jumbo v1, "lang"

    #@1e91
    const-string/jumbo v2, "NMTOKEN"

    #@1e94
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e97
    .line 743
    const-string/jumbo v0, "p"

    #@1e9a
    const-string/jumbo v1, "lang"

    #@1e9d
    const-string/jumbo v2, "NMTOKEN"

    #@1ea0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ea3
    .line 744
    const-string/jumbo v0, "param"

    #@1ea6
    const-string/jumbo v1, "lang"

    #@1ea9
    const-string/jumbo v2, "NMTOKEN"

    #@1eac
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1eaf
    .line 745
    const-string/jumbo v0, "pre"

    #@1eb2
    const-string/jumbo v1, "lang"

    #@1eb5
    const-string/jumbo v2, "NMTOKEN"

    #@1eb8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ebb
    .line 746
    const-string/jumbo v0, "q"

    #@1ebe
    const-string/jumbo v1, "lang"

    #@1ec1
    const-string/jumbo v2, "NMTOKEN"

    #@1ec4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ec7
    .line 747
    const-string/jumbo v0, "rb"

    #@1eca
    const-string/jumbo v1, "lang"

    #@1ecd
    const-string/jumbo v2, "NMTOKEN"

    #@1ed0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ed3
    .line 748
    const-string/jumbo v0, "rbc"

    #@1ed6
    const-string/jumbo v1, "lang"

    #@1ed9
    const-string/jumbo v2, "NMTOKEN"

    #@1edc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1edf
    .line 749
    const-string/jumbo v0, "rp"

    #@1ee2
    const-string/jumbo v1, "lang"

    #@1ee5
    const-string/jumbo v2, "NMTOKEN"

    #@1ee8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1eeb
    .line 750
    const-string/jumbo v0, "rt"

    #@1eee
    const-string/jumbo v1, "lang"

    #@1ef1
    const-string/jumbo v2, "NMTOKEN"

    #@1ef4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ef7
    .line 751
    const-string/jumbo v0, "rtc"

    #@1efa
    const-string/jumbo v1, "lang"

    #@1efd
    const-string/jumbo v2, "NMTOKEN"

    #@1f00
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f03
    .line 752
    const-string/jumbo v0, "ruby"

    #@1f06
    const-string/jumbo v1, "lang"

    #@1f09
    const-string/jumbo v2, "NMTOKEN"

    #@1f0c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f0f
    .line 753
    const-string/jumbo v0, "s"

    #@1f12
    const-string/jumbo v1, "lang"

    #@1f15
    const-string/jumbo v2, "NMTOKEN"

    #@1f18
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f1b
    .line 754
    const-string/jumbo v0, "samp"

    #@1f1e
    const-string/jumbo v1, "lang"

    #@1f21
    const-string/jumbo v2, "NMTOKEN"

    #@1f24
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f27
    .line 755
    const-string/jumbo v0, "script"

    #@1f2a
    const-string/jumbo v1, "lang"

    #@1f2d
    const-string/jumbo v2, "NMTOKEN"

    #@1f30
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f33
    .line 756
    const-string/jumbo v0, "select"

    #@1f36
    const-string/jumbo v1, "lang"

    #@1f39
    const-string/jumbo v2, "NMTOKEN"

    #@1f3c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f3f
    .line 757
    const-string/jumbo v0, "small"

    #@1f42
    const-string/jumbo v1, "lang"

    #@1f45
    const-string/jumbo v2, "NMTOKEN"

    #@1f48
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f4b
    .line 758
    const-string/jumbo v0, "span"

    #@1f4e
    const-string/jumbo v1, "lang"

    #@1f51
    const-string/jumbo v2, "NMTOKEN"

    #@1f54
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f57
    .line 759
    const-string/jumbo v0, "strike"

    #@1f5a
    const-string/jumbo v1, "lang"

    #@1f5d
    const-string/jumbo v2, "NMTOKEN"

    #@1f60
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f63
    .line 760
    const-string/jumbo v0, "strong"

    #@1f66
    const-string/jumbo v1, "lang"

    #@1f69
    const-string/jumbo v2, "NMTOKEN"

    #@1f6c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f6f
    .line 761
    const-string/jumbo v0, "style"

    #@1f72
    const-string/jumbo v1, "lang"

    #@1f75
    const-string/jumbo v2, "NMTOKEN"

    #@1f78
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f7b
    .line 762
    const-string/jumbo v0, "sub"

    #@1f7e
    const-string/jumbo v1, "lang"

    #@1f81
    const-string/jumbo v2, "NMTOKEN"

    #@1f84
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f87
    .line 763
    const-string/jumbo v0, "sup"

    #@1f8a
    const-string/jumbo v1, "lang"

    #@1f8d
    const-string/jumbo v2, "NMTOKEN"

    #@1f90
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f93
    .line 764
    const-string/jumbo v0, "table"

    #@1f96
    const-string/jumbo v1, "lang"

    #@1f99
    const-string/jumbo v2, "NMTOKEN"

    #@1f9c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f9f
    .line 765
    const-string/jumbo v0, "tbody"

    #@1fa2
    const-string/jumbo v1, "lang"

    #@1fa5
    const-string/jumbo v2, "NMTOKEN"

    #@1fa8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fab
    .line 766
    const-string/jumbo v0, "td"

    #@1fae
    const-string/jumbo v1, "lang"

    #@1fb1
    const-string/jumbo v2, "NMTOKEN"

    #@1fb4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fb7
    .line 767
    const-string/jumbo v0, "textarea"

    #@1fba
    const-string/jumbo v1, "lang"

    #@1fbd
    const-string/jumbo v2, "NMTOKEN"

    #@1fc0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fc3
    .line 768
    const-string/jumbo v0, "tfoot"

    #@1fc6
    const-string/jumbo v1, "lang"

    #@1fc9
    const-string/jumbo v2, "NMTOKEN"

    #@1fcc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fcf
    .line 769
    const-string/jumbo v0, "th"

    #@1fd2
    const-string/jumbo v1, "lang"

    #@1fd5
    const-string/jumbo v2, "NMTOKEN"

    #@1fd8
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fdb
    .line 770
    const-string/jumbo v0, "thead"

    #@1fde
    const-string/jumbo v1, "lang"

    #@1fe1
    const-string/jumbo v2, "NMTOKEN"

    #@1fe4
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fe7
    .line 771
    const-string/jumbo v0, "title"

    #@1fea
    const-string/jumbo v1, "lang"

    #@1fed
    const-string/jumbo v2, "NMTOKEN"

    #@1ff0
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1ff3
    .line 772
    const-string/jumbo v0, "tr"

    #@1ff6
    const-string/jumbo v1, "lang"

    #@1ff9
    const-string/jumbo v2, "NMTOKEN"

    #@1ffc
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1fff
    .line 773
    const-string/jumbo v0, "tt"

    #@2002
    const-string/jumbo v1, "lang"

    #@2005
    const-string/jumbo v2, "NMTOKEN"

    #@2008
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@200b
    .line 774
    const-string/jumbo v0, "u"

    #@200e
    const-string/jumbo v1, "lang"

    #@2011
    const-string/jumbo v2, "NMTOKEN"

    #@2014
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2017
    .line 775
    const-string/jumbo v0, "ul"

    #@201a
    const-string/jumbo v1, "lang"

    #@201d
    const-string/jumbo v2, "NMTOKEN"

    #@2020
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2023
    .line 776
    const-string/jumbo v0, "var"

    #@2026
    const-string/jumbo v1, "lang"

    #@2029
    const-string/jumbo v2, "NMTOKEN"

    #@202c
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@202f
    .line 777
    const-string/jumbo v0, "wbr"

    #@2032
    const-string/jumbo v1, "lang"

    #@2035
    const-string/jumbo v2, "NMTOKEN"

    #@2038
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@203b
    .line 778
    const-string/jumbo v0, "xmp"

    #@203e
    const-string/jumbo v1, "lang"

    #@2041
    const-string/jumbo v2, "NMTOKEN"

    #@2044
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Schema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2047
    .line 779
    const-string/jumbo v0, "Aacgr"

    #@204a
    const/16 v1, 0x386

    #@204c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@204f
    .line 780
    const-string/jumbo v0, "aacgr"

    #@2052
    const/16 v1, 0x3ac

    #@2054
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2057
    .line 781
    const-string/jumbo v0, "Aacute"

    #@205a
    const/16 v1, 0xc1

    #@205c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@205f
    .line 782
    const-string/jumbo v0, "aacute"

    #@2062
    const/16 v1, 0xe1

    #@2064
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2067
    .line 783
    const-string/jumbo v0, "Abreve"

    #@206a
    const/16 v1, 0x102

    #@206c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@206f
    .line 784
    const-string/jumbo v0, "abreve"

    #@2072
    const/16 v1, 0x103

    #@2074
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2077
    .line 785
    const-string/jumbo v0, "ac"

    #@207a
    const/16 v1, 0x223e

    #@207c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@207f
    .line 786
    const-string/jumbo v0, "acd"

    #@2082
    const/16 v1, 0x223f

    #@2084
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2087
    .line 787
    const-string/jumbo v0, "Acirc"

    #@208a
    const/16 v1, 0xc2

    #@208c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@208f
    .line 788
    const-string/jumbo v0, "acirc"

    #@2092
    const/16 v1, 0xe2

    #@2094
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2097
    .line 789
    const-string/jumbo v0, "acute"

    #@209a
    const/16 v1, 0xb4

    #@209c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@209f
    .line 790
    const-string/jumbo v0, "Acy"

    #@20a2
    const/16 v1, 0x410

    #@20a4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20a7
    .line 791
    const-string/jumbo v0, "acy"

    #@20aa
    const/16 v1, 0x430

    #@20ac
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20af
    .line 792
    const-string/jumbo v0, "AElig"

    #@20b2
    const/16 v1, 0xc6

    #@20b4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20b7
    .line 793
    const-string/jumbo v0, "aelig"

    #@20ba
    const/16 v1, 0xe6

    #@20bc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20bf
    .line 794
    const-string/jumbo v0, "af"

    #@20c2
    const/16 v1, 0x2061

    #@20c4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20c7
    .line 795
    const-string/jumbo v0, "Afr"

    #@20ca
    const v1, 0x1d504

    #@20cd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20d0
    .line 796
    const-string/jumbo v0, "afr"

    #@20d3
    const v1, 0x1d51e

    #@20d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20d9
    .line 797
    const-string/jumbo v0, "Agr"

    #@20dc
    const/16 v1, 0x391

    #@20de
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20e1
    .line 798
    const-string/jumbo v0, "agr"

    #@20e4
    const/16 v1, 0x3b1

    #@20e6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20e9
    .line 799
    const-string/jumbo v0, "Agrave"

    #@20ec
    const/16 v1, 0xc0

    #@20ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20f1
    .line 800
    const-string/jumbo v0, "agrave"

    #@20f4
    const/16 v1, 0xe0

    #@20f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@20f9
    .line 801
    const-string/jumbo v0, "alefsym"

    #@20fc
    const/16 v1, 0x2135

    #@20fe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2101
    .line 802
    const-string/jumbo v0, "aleph"

    #@2104
    const/16 v1, 0x2135

    #@2106
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2109
    .line 803
    const-string/jumbo v0, "Alpha"

    #@210c
    const/16 v1, 0x391

    #@210e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2111
    .line 804
    const-string/jumbo v0, "alpha"

    #@2114
    const/16 v1, 0x3b1

    #@2116
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2119
    .line 805
    const-string/jumbo v0, "Amacr"

    #@211c
    const/16 v1, 0x100

    #@211e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2121
    .line 806
    const-string/jumbo v0, "amacr"

    #@2124
    const/16 v1, 0x101

    #@2126
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2129
    .line 807
    const-string/jumbo v0, "amalg"

    #@212c
    const/16 v1, 0x2a3f

    #@212e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2131
    .line 808
    const-string/jumbo v0, "amp"

    #@2134
    const/16 v1, 0x26

    #@2136
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2139
    .line 809
    const-string/jumbo v0, "And"

    #@213c
    const/16 v1, 0x2a53

    #@213e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2141
    .line 810
    const-string/jumbo v0, "and"

    #@2144
    const/16 v1, 0x2227

    #@2146
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2149
    .line 811
    const-string/jumbo v0, "andand"

    #@214c
    const/16 v1, 0x2a55

    #@214e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2151
    .line 812
    const-string/jumbo v0, "andd"

    #@2154
    const/16 v1, 0x2a5c

    #@2156
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2159
    .line 813
    const-string/jumbo v0, "andslope"

    #@215c
    const/16 v1, 0x2a58

    #@215e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2161
    .line 814
    const-string/jumbo v0, "andv"

    #@2164
    const/16 v1, 0x2a5a

    #@2166
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2169
    .line 815
    const-string/jumbo v0, "ang"

    #@216c
    const/16 v1, 0x2220

    #@216e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2171
    .line 816
    const-string/jumbo v0, "ange"

    #@2174
    const/16 v1, 0x29a4

    #@2176
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2179
    .line 817
    const-string/jumbo v0, "angle"

    #@217c
    const/16 v1, 0x2220

    #@217e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2181
    .line 818
    const-string/jumbo v0, "angmsd"

    #@2184
    const/16 v1, 0x2221

    #@2186
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2189
    .line 819
    const-string/jumbo v0, "angmsdaa"

    #@218c
    const/16 v1, 0x29a8

    #@218e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2191
    .line 820
    const-string/jumbo v0, "angmsdab"

    #@2194
    const/16 v1, 0x29a9

    #@2196
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2199
    .line 821
    const-string/jumbo v0, "angmsdac"

    #@219c
    const/16 v1, 0x29aa

    #@219e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21a1
    .line 822
    const-string/jumbo v0, "angmsdad"

    #@21a4
    const/16 v1, 0x29ab

    #@21a6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21a9
    .line 823
    const-string/jumbo v0, "angmsdae"

    #@21ac
    const/16 v1, 0x29ac

    #@21ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21b1
    .line 824
    const-string/jumbo v0, "angmsdaf"

    #@21b4
    const/16 v1, 0x29ad

    #@21b6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21b9
    .line 825
    const-string/jumbo v0, "angmsdag"

    #@21bc
    const/16 v1, 0x29ae

    #@21be
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21c1
    .line 826
    const-string/jumbo v0, "angmsdah"

    #@21c4
    const/16 v1, 0x29af

    #@21c6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21c9
    .line 827
    const-string/jumbo v0, "angrt"

    #@21cc
    const/16 v1, 0x221f

    #@21ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21d1
    .line 828
    const-string/jumbo v0, "angrtvb"

    #@21d4
    const/16 v1, 0x22be

    #@21d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21d9
    .line 829
    const-string/jumbo v0, "angrtvbd"

    #@21dc
    const/16 v1, 0x299d

    #@21de
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21e1
    .line 830
    const-string/jumbo v0, "angsph"

    #@21e4
    const/16 v1, 0x2222

    #@21e6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21e9
    .line 831
    const-string/jumbo v0, "angst"

    #@21ec
    const/16 v1, 0x212b

    #@21ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21f1
    .line 832
    const-string/jumbo v0, "angzarr"

    #@21f4
    const/16 v1, 0x237c

    #@21f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@21f9
    .line 833
    const-string/jumbo v0, "Aogon"

    #@21fc
    const/16 v1, 0x104

    #@21fe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2201
    .line 834
    const-string/jumbo v0, "aogon"

    #@2204
    const/16 v1, 0x105

    #@2206
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2209
    .line 835
    const-string/jumbo v0, "Aopf"

    #@220c
    const v1, 0x1d538

    #@220f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2212
    .line 836
    const-string/jumbo v0, "aopf"

    #@2215
    const v1, 0x1d552

    #@2218
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@221b
    .line 837
    const-string/jumbo v0, "ap"

    #@221e
    const/16 v1, 0x2248

    #@2220
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2223
    .line 838
    const-string/jumbo v0, "apacir"

    #@2226
    const/16 v1, 0x2a6f

    #@2228
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@222b
    .line 839
    const-string/jumbo v0, "apE"

    #@222e
    const/16 v1, 0x2a70

    #@2230
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2233
    .line 840
    const-string/jumbo v0, "ape"

    #@2236
    const/16 v1, 0x224a

    #@2238
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@223b
    .line 841
    const-string/jumbo v0, "apid"

    #@223e
    const/16 v1, 0x224b

    #@2240
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2243
    .line 842
    const-string/jumbo v0, "apos"

    #@2246
    const/16 v1, 0x27

    #@2248
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@224b
    .line 843
    const-string/jumbo v0, "ApplyFunction"

    #@224e
    const/16 v1, 0x2061

    #@2250
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2253
    .line 844
    const-string/jumbo v0, "approx"

    #@2256
    const/16 v1, 0x2248

    #@2258
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@225b
    .line 845
    const-string/jumbo v0, "approxeq"

    #@225e
    const/16 v1, 0x224a

    #@2260
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2263
    .line 846
    const-string/jumbo v0, "Aring"

    #@2266
    const/16 v1, 0xc5

    #@2268
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@226b
    .line 847
    const-string/jumbo v0, "aring"

    #@226e
    const/16 v1, 0xe5

    #@2270
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2273
    .line 848
    const-string/jumbo v0, "Ascr"

    #@2276
    const v1, 0x1d49c

    #@2279
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@227c
    .line 849
    const-string/jumbo v0, "ascr"

    #@227f
    const v1, 0x1d4b6

    #@2282
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2285
    .line 850
    const-string/jumbo v0, "Assign"

    #@2288
    const/16 v1, 0x2254

    #@228a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@228d
    .line 851
    const-string/jumbo v0, "ast"

    #@2290
    const/16 v1, 0x2a

    #@2292
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2295
    .line 852
    const-string/jumbo v0, "asymp"

    #@2298
    const/16 v1, 0x2248

    #@229a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@229d
    .line 853
    const-string/jumbo v0, "asympeq"

    #@22a0
    const/16 v1, 0x224d

    #@22a2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22a5
    .line 854
    const-string/jumbo v0, "Atilde"

    #@22a8
    const/16 v1, 0xc3

    #@22aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22ad
    .line 855
    const-string/jumbo v0, "atilde"

    #@22b0
    const/16 v1, 0xe3

    #@22b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22b5
    .line 856
    const-string/jumbo v0, "Auml"

    #@22b8
    const/16 v1, 0xc4

    #@22ba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22bd
    .line 857
    const-string/jumbo v0, "auml"

    #@22c0
    const/16 v1, 0xe4

    #@22c2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22c5
    .line 858
    const-string/jumbo v0, "awconint"

    #@22c8
    const/16 v1, 0x2233

    #@22ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22cd
    .line 859
    const-string/jumbo v0, "awint"

    #@22d0
    const/16 v1, 0x2a11

    #@22d2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22d5
    .line 860
    const-string/jumbo v0, "b.alpha"

    #@22d8
    const v1, 0x1d6c2

    #@22db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22de
    .line 861
    const-string/jumbo v0, "b.beta"

    #@22e1
    const v1, 0x1d6c3

    #@22e4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22e7
    .line 862
    const-string/jumbo v0, "b.chi"

    #@22ea
    const v1, 0x1d6d8

    #@22ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22f0
    .line 863
    const-string/jumbo v0, "b.Delta"

    #@22f3
    const v1, 0x1d6ab

    #@22f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@22f9
    .line 864
    const-string/jumbo v0, "b.delta"

    #@22fc
    const v1, 0x1d6c5

    #@22ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2302
    .line 865
    const-string/jumbo v0, "b.epsi"

    #@2305
    const v1, 0x1d6c6

    #@2308
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@230b
    .line 866
    const-string/jumbo v0, "b.epsiv"

    #@230e
    const v1, 0x1d6dc

    #@2311
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2314
    .line 867
    const-string/jumbo v0, "b.eta"

    #@2317
    const v1, 0x1d6c8

    #@231a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@231d
    .line 868
    const-string/jumbo v0, "b.Gamma"

    #@2320
    const v1, 0x1d6aa

    #@2323
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2326
    .line 869
    const-string/jumbo v0, "b.gamma"

    #@2329
    const v1, 0x1d6c4

    #@232c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@232f
    .line 870
    const-string/jumbo v0, "b.Gammad"

    #@2332
    const v1, 0x1d7ca

    #@2335
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2338
    .line 871
    const-string/jumbo v0, "b.gammad"

    #@233b
    const v1, 0x1d7cb

    #@233e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2341
    .line 872
    const-string/jumbo v0, "b.iota"

    #@2344
    const v1, 0x1d6ca

    #@2347
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@234a
    .line 873
    const-string/jumbo v0, "b.kappa"

    #@234d
    const v1, 0x1d6cb

    #@2350
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2353
    .line 874
    const-string/jumbo v0, "b.kappav"

    #@2356
    const v1, 0x1d6de

    #@2359
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@235c
    .line 875
    const-string/jumbo v0, "b.Lambda"

    #@235f
    const v1, 0x1d6b2

    #@2362
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2365
    .line 876
    const-string/jumbo v0, "b.lambda"

    #@2368
    const v1, 0x1d6cc

    #@236b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@236e
    .line 877
    const-string/jumbo v0, "b.mu"

    #@2371
    const v1, 0x1d6cd

    #@2374
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2377
    .line 878
    const-string/jumbo v0, "b.nu"

    #@237a
    const v1, 0x1d6ce

    #@237d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2380
    .line 879
    const-string/jumbo v0, "b.Omega"

    #@2383
    const v1, 0x1d6c0

    #@2386
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2389
    .line 880
    const-string/jumbo v0, "b.omega"

    #@238c
    const v1, 0x1d6da

    #@238f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2392
    .line 881
    const-string/jumbo v0, "b.Phi"

    #@2395
    const v1, 0x1d6bd

    #@2398
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@239b
    .line 882
    const-string/jumbo v0, "b.phi"

    #@239e
    const v1, 0x1d6d7

    #@23a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23a4
    .line 883
    const-string/jumbo v0, "b.phiv"

    #@23a7
    const v1, 0x1d6df

    #@23aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23ad
    .line 884
    const-string/jumbo v0, "b.Pi"

    #@23b0
    const v1, 0x1d6b7

    #@23b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23b6
    .line 885
    const-string/jumbo v0, "b.pi"

    #@23b9
    const v1, 0x1d6d1

    #@23bc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23bf
    .line 886
    const-string/jumbo v0, "b.piv"

    #@23c2
    const v1, 0x1d6e1

    #@23c5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23c8
    .line 887
    const-string/jumbo v0, "b.Psi"

    #@23cb
    const v1, 0x1d6bf

    #@23ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23d1
    .line 888
    const-string/jumbo v0, "b.psi"

    #@23d4
    const v1, 0x1d6d9

    #@23d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23da
    .line 889
    const-string/jumbo v0, "b.rho"

    #@23dd
    const v1, 0x1d6d2

    #@23e0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23e3
    .line 890
    const-string/jumbo v0, "b.rhov"

    #@23e6
    const v1, 0x1d6e0

    #@23e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23ec
    .line 891
    const-string/jumbo v0, "b.Sigma"

    #@23ef
    const v1, 0x1d6ba

    #@23f2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23f5
    .line 892
    const-string/jumbo v0, "b.sigma"

    #@23f8
    const v1, 0x1d6d4

    #@23fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@23fe
    .line 893
    const-string/jumbo v0, "b.sigmav"

    #@2401
    const v1, 0x1d6d3

    #@2404
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2407
    .line 894
    const-string/jumbo v0, "b.tau"

    #@240a
    const v1, 0x1d6d5

    #@240d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2410
    .line 895
    const-string/jumbo v0, "b.Theta"

    #@2413
    const v1, 0x1d6af

    #@2416
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2419
    .line 896
    const-string/jumbo v0, "b.thetas"

    #@241c
    const v1, 0x1d6c9

    #@241f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2422
    .line 897
    const-string/jumbo v0, "b.thetav"

    #@2425
    const v1, 0x1d6dd

    #@2428
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@242b
    .line 898
    const-string/jumbo v0, "b.Upsi"

    #@242e
    const v1, 0x1d6bc

    #@2431
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2434
    .line 899
    const-string/jumbo v0, "b.upsi"

    #@2437
    const v1, 0x1d6d6

    #@243a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@243d
    .line 900
    const-string/jumbo v0, "b.Xi"

    #@2440
    const v1, 0x1d6b5

    #@2443
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2446
    .line 901
    const-string/jumbo v0, "b.xi"

    #@2449
    const v1, 0x1d6cf

    #@244c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@244f
    .line 902
    const-string/jumbo v0, "b.zeta"

    #@2452
    const v1, 0x1d6c7

    #@2455
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2458
    .line 903
    const-string/jumbo v0, "backcong"

    #@245b
    const/16 v1, 0x224c

    #@245d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2460
    .line 904
    const-string/jumbo v0, "backepsilon"

    #@2463
    const/16 v1, 0x3f6

    #@2465
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2468
    .line 905
    const-string/jumbo v0, "backprime"

    #@246b
    const/16 v1, 0x2035

    #@246d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2470
    .line 906
    const-string/jumbo v0, "backsim"

    #@2473
    const/16 v1, 0x223d

    #@2475
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2478
    .line 907
    const-string/jumbo v0, "backsimeq"

    #@247b
    const/16 v1, 0x22cd

    #@247d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2480
    .line 908
    const-string/jumbo v0, "Backslash"

    #@2483
    const/16 v1, 0x2216

    #@2485
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2488
    .line 909
    const-string/jumbo v0, "Barv"

    #@248b
    const/16 v1, 0x2ae7

    #@248d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2490
    .line 910
    const-string/jumbo v0, "barvee"

    #@2493
    const/16 v1, 0x22bd

    #@2495
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2498
    .line 911
    const-string/jumbo v0, "Barwed"

    #@249b
    const/16 v1, 0x2306

    #@249d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24a0
    .line 912
    const-string/jumbo v0, "barwed"

    #@24a3
    const/16 v1, 0x2305

    #@24a5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24a8
    .line 913
    const-string/jumbo v0, "barwedge"

    #@24ab
    const/16 v1, 0x2305

    #@24ad
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24b0
    .line 914
    const-string/jumbo v0, "bbrk"

    #@24b3
    const/16 v1, 0x23b5

    #@24b5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24b8
    .line 915
    const-string/jumbo v0, "bbrktbrk"

    #@24bb
    const/16 v1, 0x23b6

    #@24bd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24c0
    .line 916
    const-string/jumbo v0, "bcong"

    #@24c3
    const/16 v1, 0x224c

    #@24c5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24c8
    .line 917
    const-string/jumbo v0, "Bcy"

    #@24cb
    const/16 v1, 0x411

    #@24cd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24d0
    .line 918
    const-string/jumbo v0, "bcy"

    #@24d3
    const/16 v1, 0x431

    #@24d5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24d8
    .line 919
    const-string/jumbo v0, "bdquo"

    #@24db
    const/16 v1, 0x201e

    #@24dd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24e0
    .line 920
    const-string/jumbo v0, "becaus"

    #@24e3
    const/16 v1, 0x2235

    #@24e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24e8
    .line 921
    const-string/jumbo v0, "because"

    #@24eb
    const/16 v1, 0x2235

    #@24ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24f0
    .line 922
    const-string/jumbo v0, "bemptyv"

    #@24f3
    const/16 v1, 0x29b0

    #@24f5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@24f8
    .line 923
    const-string/jumbo v0, "bepsi"

    #@24fb
    const/16 v1, 0x3f6

    #@24fd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2500
    .line 924
    const-string/jumbo v0, "bernou"

    #@2503
    const/16 v1, 0x212c

    #@2505
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2508
    .line 925
    const-string/jumbo v0, "Bernoullis"

    #@250b
    const/16 v1, 0x212c

    #@250d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2510
    .line 926
    const-string/jumbo v0, "Beta"

    #@2513
    const/16 v1, 0x392

    #@2515
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2518
    .line 927
    const-string/jumbo v0, "beta"

    #@251b
    const/16 v1, 0x3b2

    #@251d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2520
    .line 928
    const-string/jumbo v0, "beth"

    #@2523
    const/16 v1, 0x2136

    #@2525
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2528
    .line 929
    const-string/jumbo v0, "between"

    #@252b
    const/16 v1, 0x226c

    #@252d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2530
    .line 930
    const-string/jumbo v0, "Bfr"

    #@2533
    const v1, 0x1d505

    #@2536
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2539
    .line 931
    const-string/jumbo v0, "bfr"

    #@253c
    const v1, 0x1d51f

    #@253f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2542
    .line 932
    const-string/jumbo v0, "Bgr"

    #@2545
    const/16 v1, 0x392

    #@2547
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@254a
    .line 933
    const-string/jumbo v0, "bgr"

    #@254d
    const/16 v1, 0x3b2

    #@254f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2552
    .line 934
    const-string/jumbo v0, "bigcap"

    #@2555
    const/16 v1, 0x22c2

    #@2557
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@255a
    .line 935
    const-string/jumbo v0, "bigcirc"

    #@255d
    const/16 v1, 0x25ef

    #@255f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2562
    .line 936
    const-string/jumbo v0, "bigcup"

    #@2565
    const/16 v1, 0x22c3

    #@2567
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@256a
    .line 937
    const-string/jumbo v0, "bigodot"

    #@256d
    const/16 v1, 0x2a00

    #@256f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2572
    .line 938
    const-string/jumbo v0, "bigoplus"

    #@2575
    const/16 v1, 0x2a01

    #@2577
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@257a
    .line 939
    const-string/jumbo v0, "bigotimes"

    #@257d
    const/16 v1, 0x2a02

    #@257f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2582
    .line 940
    const-string/jumbo v0, "bigsqcup"

    #@2585
    const/16 v1, 0x2a06

    #@2587
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@258a
    .line 941
    const-string/jumbo v0, "bigstar"

    #@258d
    const/16 v1, 0x2605

    #@258f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2592
    .line 942
    const-string/jumbo v0, "bigtriangledown"

    #@2595
    const/16 v1, 0x25bd

    #@2597
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@259a
    .line 943
    const-string/jumbo v0, "bigtriangleup"

    #@259d
    const/16 v1, 0x25b3

    #@259f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25a2
    .line 944
    const-string/jumbo v0, "biguplus"

    #@25a5
    const/16 v1, 0x2a04

    #@25a7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25aa
    .line 945
    const-string/jumbo v0, "bigvee"

    #@25ad
    const/16 v1, 0x22c1

    #@25af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25b2
    .line 946
    const-string/jumbo v0, "bigwedge"

    #@25b5
    const/16 v1, 0x22c0

    #@25b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25ba
    .line 947
    const-string/jumbo v0, "bkarow"

    #@25bd
    const/16 v1, 0x290d

    #@25bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25c2
    .line 948
    const-string/jumbo v0, "blacklozenge"

    #@25c5
    const/16 v1, 0x29eb

    #@25c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25ca
    .line 949
    const-string/jumbo v0, "blacksquare"

    #@25cd
    const/16 v1, 0x25aa

    #@25cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25d2
    .line 950
    const-string/jumbo v0, "blacktriangle"

    #@25d5
    const/16 v1, 0x25b4

    #@25d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25da
    .line 951
    const-string/jumbo v0, "blacktriangledown"

    #@25dd
    const/16 v1, 0x25be

    #@25df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25e2
    .line 952
    const-string/jumbo v0, "blacktriangleleft"

    #@25e5
    const/16 v1, 0x25c2

    #@25e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25ea
    .line 953
    const-string/jumbo v0, "blacktriangleright"

    #@25ed
    const/16 v1, 0x25b8

    #@25ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25f2
    .line 954
    const-string/jumbo v0, "blank"

    #@25f5
    const/16 v1, 0x2423

    #@25f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@25fa
    .line 955
    const-string/jumbo v0, "blk12"

    #@25fd
    const/16 v1, 0x2592

    #@25ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2602
    .line 956
    const-string/jumbo v0, "blk14"

    #@2605
    const/16 v1, 0x2591

    #@2607
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@260a
    .line 957
    const-string/jumbo v0, "blk34"

    #@260d
    const/16 v1, 0x2593

    #@260f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2612
    .line 958
    const-string/jumbo v0, "block"

    #@2615
    const/16 v1, 0x2588

    #@2617
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@261a
    .line 959
    const-string/jumbo v0, "bNot"

    #@261d
    const/16 v1, 0x2aed

    #@261f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2622
    .line 960
    const-string/jumbo v0, "bnot"

    #@2625
    const/16 v1, 0x2310

    #@2627
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@262a
    .line 961
    const-string/jumbo v0, "Bopf"

    #@262d
    const v1, 0x1d539

    #@2630
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2633
    .line 962
    const-string/jumbo v0, "bopf"

    #@2636
    const v1, 0x1d553

    #@2639
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@263c
    .line 963
    const-string/jumbo v0, "bot"

    #@263f
    const/16 v1, 0x22a5

    #@2641
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2644
    .line 964
    const-string/jumbo v0, "bottom"

    #@2647
    const/16 v1, 0x22a5

    #@2649
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@264c
    .line 965
    const-string/jumbo v0, "bowtie"

    #@264f
    const/16 v1, 0x22c8

    #@2651
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2654
    .line 966
    const-string/jumbo v0, "boxbox"

    #@2657
    const/16 v1, 0x29c9

    #@2659
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@265c
    .line 967
    const-string/jumbo v0, "boxDL"

    #@265f
    const/16 v1, 0x2557

    #@2661
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2664
    .line 968
    const-string/jumbo v0, "boxDl"

    #@2667
    const/16 v1, 0x2556

    #@2669
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@266c
    .line 969
    const-string/jumbo v0, "boxdL"

    #@266f
    const/16 v1, 0x2555

    #@2671
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2674
    .line 970
    const-string/jumbo v0, "boxdl"

    #@2677
    const/16 v1, 0x2510

    #@2679
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@267c
    .line 971
    const-string/jumbo v0, "boxDR"

    #@267f
    const/16 v1, 0x2554

    #@2681
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2684
    .line 972
    const-string/jumbo v0, "boxDr"

    #@2687
    const/16 v1, 0x2553

    #@2689
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@268c
    .line 973
    const-string/jumbo v0, "boxdR"

    #@268f
    const/16 v1, 0x2552

    #@2691
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2694
    .line 974
    const-string/jumbo v0, "boxdr"

    #@2697
    const/16 v1, 0x250c

    #@2699
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@269c
    .line 975
    const-string/jumbo v0, "boxH"

    #@269f
    const/16 v1, 0x2550

    #@26a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26a4
    .line 976
    const-string/jumbo v0, "boxh"

    #@26a7
    const/16 v1, 0x2500

    #@26a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26ac
    .line 977
    const-string/jumbo v0, "boxHD"

    #@26af
    const/16 v1, 0x2566

    #@26b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26b4
    .line 978
    const-string/jumbo v0, "boxHd"

    #@26b7
    const/16 v1, 0x2564

    #@26b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26bc
    .line 979
    const-string/jumbo v0, "boxhD"

    #@26bf
    const/16 v1, 0x2565

    #@26c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26c4
    .line 980
    const-string/jumbo v0, "boxhd"

    #@26c7
    const/16 v1, 0x252c

    #@26c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26cc
    .line 981
    const-string/jumbo v0, "boxHU"

    #@26cf
    const/16 v1, 0x2569

    #@26d1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26d4
    .line 982
    const-string/jumbo v0, "boxHu"

    #@26d7
    const/16 v1, 0x2567

    #@26d9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26dc
    .line 983
    const-string/jumbo v0, "boxhU"

    #@26df
    const/16 v1, 0x2568

    #@26e1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26e4
    .line 984
    const-string/jumbo v0, "boxhu"

    #@26e7
    const/16 v1, 0x2534

    #@26e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26ec
    .line 985
    const-string/jumbo v0, "boxminus"

    #@26ef
    const/16 v1, 0x229f

    #@26f1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26f4
    .line 986
    const-string/jumbo v0, "boxplus"

    #@26f7
    const/16 v1, 0x229e

    #@26f9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@26fc
    .line 987
    const-string/jumbo v0, "boxtimes"

    #@26ff
    const/16 v1, 0x22a0

    #@2701
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2704
    .line 988
    const-string/jumbo v0, "boxUL"

    #@2707
    const/16 v1, 0x255d

    #@2709
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@270c
    .line 989
    const-string/jumbo v0, "boxUl"

    #@270f
    const/16 v1, 0x255c

    #@2711
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2714
    .line 990
    const-string/jumbo v0, "boxuL"

    #@2717
    const/16 v1, 0x255b

    #@2719
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@271c
    .line 991
    const-string/jumbo v0, "boxul"

    #@271f
    const/16 v1, 0x2518

    #@2721
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2724
    .line 992
    const-string/jumbo v0, "boxUR"

    #@2727
    const/16 v1, 0x255a

    #@2729
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@272c
    .line 993
    const-string/jumbo v0, "boxUr"

    #@272f
    const/16 v1, 0x2559

    #@2731
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2734
    .line 994
    const-string/jumbo v0, "boxuR"

    #@2737
    const/16 v1, 0x2558

    #@2739
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@273c
    .line 995
    const-string/jumbo v0, "boxur"

    #@273f
    const/16 v1, 0x2514

    #@2741
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2744
    .line 996
    const-string/jumbo v0, "boxV"

    #@2747
    const/16 v1, 0x2551

    #@2749
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@274c
    .line 997
    const-string/jumbo v0, "boxv"

    #@274f
    const/16 v1, 0x2502

    #@2751
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2754
    .line 998
    const-string/jumbo v0, "boxVH"

    #@2757
    const/16 v1, 0x256c

    #@2759
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@275c
    .line 999
    const-string/jumbo v0, "boxVh"

    #@275f
    const/16 v1, 0x256b

    #@2761
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2764
    .line 1000
    const-string/jumbo v0, "boxvH"

    #@2767
    const/16 v1, 0x256a

    #@2769
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@276c
    .line 1001
    const-string/jumbo v0, "boxvh"

    #@276f
    const/16 v1, 0x253c

    #@2771
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2774
    .line 1002
    const-string/jumbo v0, "boxVL"

    #@2777
    const/16 v1, 0x2563

    #@2779
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@277c
    .line 1003
    const-string/jumbo v0, "boxVl"

    #@277f
    const/16 v1, 0x2562

    #@2781
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2784
    .line 1004
    const-string/jumbo v0, "boxvL"

    #@2787
    const/16 v1, 0x2561

    #@2789
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@278c
    .line 1005
    const-string/jumbo v0, "boxvl"

    #@278f
    const/16 v1, 0x2524

    #@2791
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2794
    .line 1006
    const-string/jumbo v0, "boxVR"

    #@2797
    const/16 v1, 0x2560

    #@2799
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@279c
    .line 1007
    const-string/jumbo v0, "boxVr"

    #@279f
    const/16 v1, 0x255f

    #@27a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27a4
    .line 1008
    const-string/jumbo v0, "boxvR"

    #@27a7
    const/16 v1, 0x255e

    #@27a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27ac
    .line 1009
    const-string/jumbo v0, "boxvr"

    #@27af
    const/16 v1, 0x251c

    #@27b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27b4
    .line 1010
    const-string/jumbo v0, "bprime"

    #@27b7
    const/16 v1, 0x2035

    #@27b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27bc
    .line 1011
    const-string/jumbo v0, "breve"

    #@27bf
    const/16 v1, 0x2d8

    #@27c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27c4
    .line 1012
    const-string/jumbo v0, "brvbar"

    #@27c7
    const/16 v1, 0xa6

    #@27c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27cc
    .line 1013
    const-string/jumbo v0, "Bscr"

    #@27cf
    const/16 v1, 0x212c

    #@27d1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27d4
    .line 1014
    const-string/jumbo v0, "bscr"

    #@27d7
    const v1, 0x1d4b7

    #@27da
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27dd
    .line 1015
    const-string/jumbo v0, "bsemi"

    #@27e0
    const/16 v1, 0x204f

    #@27e2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27e5
    .line 1016
    const-string/jumbo v0, "bsim"

    #@27e8
    const/16 v1, 0x223d

    #@27ea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27ed
    .line 1017
    const-string/jumbo v0, "bsime"

    #@27f0
    const/16 v1, 0x22cd

    #@27f2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27f5
    .line 1018
    const-string/jumbo v0, "bsol"

    #@27f8
    const/16 v1, 0x5c

    #@27fa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@27fd
    .line 1019
    const-string/jumbo v0, "bsolb"

    #@2800
    const/16 v1, 0x29c5

    #@2802
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2805
    .line 1020
    const-string/jumbo v0, "bull"

    #@2808
    const/16 v1, 0x2022

    #@280a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@280d
    .line 1021
    const-string/jumbo v0, "bullet"

    #@2810
    const/16 v1, 0x2022

    #@2812
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2815
    .line 1022
    const-string/jumbo v0, "bump"

    #@2818
    const/16 v1, 0x224e

    #@281a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@281d
    .line 1023
    const-string/jumbo v0, "bumpE"

    #@2820
    const/16 v1, 0x2aae

    #@2822
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2825
    .line 1024
    const-string/jumbo v0, "bumpe"

    #@2828
    const/16 v1, 0x224f

    #@282a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@282d
    .line 1025
    const-string/jumbo v0, "Bumpeq"

    #@2830
    const/16 v1, 0x224e

    #@2832
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2835
    .line 1026
    const-string/jumbo v0, "bumpeq"

    #@2838
    const/16 v1, 0x224f

    #@283a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@283d
    .line 1027
    const-string/jumbo v0, "Cacute"

    #@2840
    const/16 v1, 0x106

    #@2842
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2845
    .line 1028
    const-string/jumbo v0, "cacute"

    #@2848
    const/16 v1, 0x107

    #@284a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@284d
    .line 1029
    const-string/jumbo v0, "Cap"

    #@2850
    const/16 v1, 0x22d2

    #@2852
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2855
    .line 1030
    const-string/jumbo v0, "cap"

    #@2858
    const/16 v1, 0x2229

    #@285a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@285d
    .line 1031
    const-string/jumbo v0, "capand"

    #@2860
    const/16 v1, 0x2a44

    #@2862
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2865
    .line 1032
    const-string/jumbo v0, "capbrcup"

    #@2868
    const/16 v1, 0x2a49

    #@286a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@286d
    .line 1033
    const-string/jumbo v0, "capcap"

    #@2870
    const/16 v1, 0x2a4b

    #@2872
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2875
    .line 1034
    const-string/jumbo v0, "capcup"

    #@2878
    const/16 v1, 0x2a47

    #@287a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@287d
    .line 1035
    const-string/jumbo v0, "capdot"

    #@2880
    const/16 v1, 0x2a40

    #@2882
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2885
    .line 1036
    const-string/jumbo v0, "CapitalDifferentialD"

    #@2888
    const/16 v1, 0x2145

    #@288a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@288d
    .line 1037
    const-string/jumbo v0, "caret"

    #@2890
    const/16 v1, 0x2041

    #@2892
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2895
    .line 1038
    const-string/jumbo v0, "caron"

    #@2898
    const/16 v1, 0x2c7

    #@289a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@289d
    .line 1039
    const-string/jumbo v0, "Cayleys"

    #@28a0
    const/16 v1, 0x212d

    #@28a2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28a5
    .line 1040
    const-string/jumbo v0, "ccaps"

    #@28a8
    const/16 v1, 0x2a4d

    #@28aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28ad
    .line 1041
    const-string/jumbo v0, "Ccaron"

    #@28b0
    const/16 v1, 0x10c

    #@28b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28b5
    .line 1042
    const-string/jumbo v0, "ccaron"

    #@28b8
    const/16 v1, 0x10d

    #@28ba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28bd
    .line 1043
    const-string/jumbo v0, "Ccedil"

    #@28c0
    const/16 v1, 0xc7

    #@28c2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28c5
    .line 1044
    const-string/jumbo v0, "ccedil"

    #@28c8
    const/16 v1, 0xe7

    #@28ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28cd
    .line 1045
    const-string/jumbo v0, "Ccirc"

    #@28d0
    const/16 v1, 0x108

    #@28d2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28d5
    .line 1046
    const-string/jumbo v0, "ccirc"

    #@28d8
    const/16 v1, 0x109

    #@28da
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28dd
    .line 1047
    const-string/jumbo v0, "Cconint"

    #@28e0
    const/16 v1, 0x2230

    #@28e2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28e5
    .line 1048
    const-string/jumbo v0, "ccups"

    #@28e8
    const/16 v1, 0x2a4c

    #@28ea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28ed
    .line 1049
    const-string/jumbo v0, "ccupssm"

    #@28f0
    const/16 v1, 0x2a50

    #@28f2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28f5
    .line 1050
    const-string/jumbo v0, "Cdot"

    #@28f8
    const/16 v1, 0x10a

    #@28fa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@28fd
    .line 1051
    const-string/jumbo v0, "cdot"

    #@2900
    const/16 v1, 0x10b

    #@2902
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2905
    .line 1052
    const-string/jumbo v0, "cedil"

    #@2908
    const/16 v1, 0xb8

    #@290a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@290d
    .line 1053
    const-string/jumbo v0, "Cedilla"

    #@2910
    const/16 v1, 0xb8

    #@2912
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2915
    .line 1054
    const-string/jumbo v0, "cemptyv"

    #@2918
    const/16 v1, 0x29b2

    #@291a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@291d
    .line 1055
    const-string/jumbo v0, "cent"

    #@2920
    const/16 v1, 0xa2

    #@2922
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2925
    .line 1056
    const-string/jumbo v0, "centerdot"

    #@2928
    const/16 v1, 0xb7

    #@292a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@292d
    .line 1057
    const-string/jumbo v0, "Cfr"

    #@2930
    const/16 v1, 0x212d

    #@2932
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2935
    .line 1058
    const-string/jumbo v0, "cfr"

    #@2938
    const v1, 0x1d520

    #@293b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@293e
    .line 1059
    const-string/jumbo v0, "CHcy"

    #@2941
    const/16 v1, 0x427

    #@2943
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2946
    .line 1060
    const-string/jumbo v0, "chcy"

    #@2949
    const/16 v1, 0x447

    #@294b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@294e
    .line 1061
    const-string/jumbo v0, "check"

    #@2951
    const/16 v1, 0x2713

    #@2953
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2956
    .line 1062
    const-string/jumbo v0, "checkmark"

    #@2959
    const/16 v1, 0x2713

    #@295b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@295e
    .line 1063
    const-string/jumbo v0, "Chi"

    #@2961
    const/16 v1, 0x3a7

    #@2963
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2966
    .line 1064
    const-string/jumbo v0, "chi"

    #@2969
    const/16 v1, 0x3c7

    #@296b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@296e
    .line 1065
    const-string/jumbo v0, "cir"

    #@2971
    const/16 v1, 0x25cb

    #@2973
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2976
    .line 1066
    const-string/jumbo v0, "circ"

    #@2979
    const/16 v1, 0x2c6

    #@297b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@297e
    .line 1067
    const-string/jumbo v0, "circeq"

    #@2981
    const/16 v1, 0x2257

    #@2983
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2986
    .line 1068
    const-string/jumbo v0, "circlearrowleft"

    #@2989
    const/16 v1, 0x21ba

    #@298b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@298e
    .line 1069
    const-string/jumbo v0, "circlearrowright"

    #@2991
    const/16 v1, 0x21bb

    #@2993
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2996
    .line 1070
    const-string/jumbo v0, "circledast"

    #@2999
    const/16 v1, 0x229b

    #@299b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@299e
    .line 1071
    const-string/jumbo v0, "circledcirc"

    #@29a1
    const/16 v1, 0x229a

    #@29a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29a6
    .line 1072
    const-string/jumbo v0, "circleddash"

    #@29a9
    const/16 v1, 0x229d

    #@29ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29ae
    .line 1073
    const-string/jumbo v0, "CircleDot"

    #@29b1
    const/16 v1, 0x2299

    #@29b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29b6
    .line 1074
    const-string/jumbo v0, "circledR"

    #@29b9
    const/16 v1, 0xae

    #@29bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29be
    .line 1075
    const-string/jumbo v0, "circledS"

    #@29c1
    const/16 v1, 0x24c8

    #@29c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29c6
    .line 1076
    const-string/jumbo v0, "CircleMinus"

    #@29c9
    const/16 v1, 0x2296

    #@29cb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29ce
    .line 1077
    const-string/jumbo v0, "CirclePlus"

    #@29d1
    const/16 v1, 0x2295

    #@29d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29d6
    .line 1078
    const-string/jumbo v0, "CircleTimes"

    #@29d9
    const/16 v1, 0x2297

    #@29db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29de
    .line 1079
    const-string/jumbo v0, "cirE"

    #@29e1
    const/16 v1, 0x29c3

    #@29e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29e6
    .line 1080
    const-string/jumbo v0, "cire"

    #@29e9
    const/16 v1, 0x2257

    #@29eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29ee
    .line 1081
    const-string/jumbo v0, "cirfnint"

    #@29f1
    const/16 v1, 0x2a10

    #@29f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29f6
    .line 1082
    const-string/jumbo v0, "cirmid"

    #@29f9
    const/16 v1, 0x2aef

    #@29fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@29fe
    .line 1083
    const-string/jumbo v0, "cirscir"

    #@2a01
    const/16 v1, 0x29c2

    #@2a03
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a06
    .line 1084
    const-string/jumbo v0, "ClockwiseContourIntegral"

    #@2a09
    const/16 v1, 0x2232

    #@2a0b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a0e
    .line 1085
    const-string/jumbo v0, "CloseCurlyDoubleQuote"

    #@2a11
    const/16 v1, 0x201d

    #@2a13
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a16
    .line 1086
    const-string/jumbo v0, "CloseCurlyQuote"

    #@2a19
    const/16 v1, 0x2019

    #@2a1b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a1e
    .line 1087
    const-string/jumbo v0, "clubs"

    #@2a21
    const/16 v1, 0x2663

    #@2a23
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a26
    .line 1088
    const-string/jumbo v0, "clubsuit"

    #@2a29
    const/16 v1, 0x2663

    #@2a2b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a2e
    .line 1089
    const-string/jumbo v0, "Colon"

    #@2a31
    const/16 v1, 0x2237

    #@2a33
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a36
    .line 1090
    const-string/jumbo v0, "colon"

    #@2a39
    const/16 v1, 0x3a

    #@2a3b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a3e
    .line 1091
    const-string/jumbo v0, "Colone"

    #@2a41
    const/16 v1, 0x2a74

    #@2a43
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a46
    .line 1092
    const-string/jumbo v0, "colone"

    #@2a49
    const/16 v1, 0x2254

    #@2a4b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a4e
    .line 1093
    const-string/jumbo v0, "coloneq"

    #@2a51
    const/16 v1, 0x2254

    #@2a53
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a56
    .line 1094
    const-string/jumbo v0, "comma"

    #@2a59
    const/16 v1, 0x2c

    #@2a5b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a5e
    .line 1095
    const-string/jumbo v0, "commat"

    #@2a61
    const/16 v1, 0x40

    #@2a63
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a66
    .line 1096
    const-string/jumbo v0, "comp"

    #@2a69
    const/16 v1, 0x2201

    #@2a6b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a6e
    .line 1097
    const-string/jumbo v0, "compfn"

    #@2a71
    const/16 v1, 0x2218

    #@2a73
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a76
    .line 1098
    const-string/jumbo v0, "complement"

    #@2a79
    const/16 v1, 0x2201

    #@2a7b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a7e
    .line 1099
    const-string/jumbo v0, "complexes"

    #@2a81
    const/16 v1, 0x2102

    #@2a83
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a86
    .line 1100
    const-string/jumbo v0, "cong"

    #@2a89
    const/16 v1, 0x2245

    #@2a8b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a8e
    .line 1101
    const-string/jumbo v0, "congdot"

    #@2a91
    const/16 v1, 0x2a6d

    #@2a93
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a96
    .line 1102
    const-string/jumbo v0, "Congruent"

    #@2a99
    const/16 v1, 0x2261

    #@2a9b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2a9e
    .line 1103
    const-string/jumbo v0, "Conint"

    #@2aa1
    const/16 v1, 0x222f

    #@2aa3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2aa6
    .line 1104
    const-string/jumbo v0, "conint"

    #@2aa9
    const/16 v1, 0x222e

    #@2aab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2aae
    .line 1105
    const-string/jumbo v0, "ContourIntegral"

    #@2ab1
    const/16 v1, 0x222e

    #@2ab3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ab6
    .line 1106
    const-string/jumbo v0, "Copf"

    #@2ab9
    const/16 v1, 0x2102

    #@2abb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2abe
    .line 1107
    const-string/jumbo v0, "copf"

    #@2ac1
    const v1, 0x1d554

    #@2ac4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ac7
    .line 1108
    const-string/jumbo v0, "coprod"

    #@2aca
    const/16 v1, 0x2210

    #@2acc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2acf
    .line 1109
    const-string/jumbo v0, "Coproduct"

    #@2ad2
    const/16 v1, 0x2210

    #@2ad4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ad7
    .line 1110
    const-string/jumbo v0, "copy"

    #@2ada
    const/16 v1, 0xa9

    #@2adc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2adf
    .line 1111
    const-string/jumbo v0, "copysr"

    #@2ae2
    const/16 v1, 0x2117

    #@2ae4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ae7
    .line 1112
    const-string/jumbo v0, "CounterClockwiseContourIntegral"

    #@2aea
    const/16 v1, 0x2233

    #@2aec
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2aef
    .line 1113
    const-string/jumbo v0, "crarr"

    #@2af2
    const/16 v1, 0x21b5

    #@2af4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2af7
    .line 1114
    const-string/jumbo v0, "Cross"

    #@2afa
    const/16 v1, 0x2a2f

    #@2afc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2aff
    .line 1115
    const-string/jumbo v0, "cross"

    #@2b02
    const/16 v1, 0x2717

    #@2b04
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b07
    .line 1116
    const-string/jumbo v0, "Cscr"

    #@2b0a
    const v1, 0x1d49e

    #@2b0d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b10
    .line 1117
    const-string/jumbo v0, "cscr"

    #@2b13
    const v1, 0x1d4b8

    #@2b16
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b19
    .line 1118
    const-string/jumbo v0, "csub"

    #@2b1c
    const/16 v1, 0x2acf

    #@2b1e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b21
    .line 1119
    const-string/jumbo v0, "csube"

    #@2b24
    const/16 v1, 0x2ad1

    #@2b26
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b29
    .line 1120
    const-string/jumbo v0, "csup"

    #@2b2c
    const/16 v1, 0x2ad0

    #@2b2e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b31
    .line 1121
    const-string/jumbo v0, "csupe"

    #@2b34
    const/16 v1, 0x2ad2

    #@2b36
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b39
    .line 1122
    const-string/jumbo v0, "ctdot"

    #@2b3c
    const/16 v1, 0x22ef

    #@2b3e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b41
    .line 1123
    const-string/jumbo v0, "cudarrl"

    #@2b44
    const/16 v1, 0x2938

    #@2b46
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b49
    .line 1124
    const-string/jumbo v0, "cudarrr"

    #@2b4c
    const/16 v1, 0x2935

    #@2b4e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b51
    .line 1125
    const-string/jumbo v0, "cuepr"

    #@2b54
    const/16 v1, 0x22de

    #@2b56
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b59
    .line 1126
    const-string/jumbo v0, "cuesc"

    #@2b5c
    const/16 v1, 0x22df

    #@2b5e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b61
    .line 1127
    const-string/jumbo v0, "cularr"

    #@2b64
    const/16 v1, 0x21b6

    #@2b66
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b69
    .line 1128
    const-string/jumbo v0, "cularrp"

    #@2b6c
    const/16 v1, 0x293d

    #@2b6e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b71
    .line 1129
    const-string/jumbo v0, "Cup"

    #@2b74
    const/16 v1, 0x22d3

    #@2b76
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b79
    .line 1130
    const-string/jumbo v0, "cup"

    #@2b7c
    const/16 v1, 0x222a

    #@2b7e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b81
    .line 1131
    const-string/jumbo v0, "cupbrcap"

    #@2b84
    const/16 v1, 0x2a48

    #@2b86
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b89
    .line 1132
    const-string/jumbo v0, "CupCap"

    #@2b8c
    const/16 v1, 0x224d

    #@2b8e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b91
    .line 1133
    const-string/jumbo v0, "cupcap"

    #@2b94
    const/16 v1, 0x2a46

    #@2b96
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2b99
    .line 1134
    const-string/jumbo v0, "cupcup"

    #@2b9c
    const/16 v1, 0x2a4a

    #@2b9e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ba1
    .line 1135
    const-string/jumbo v0, "cupdot"

    #@2ba4
    const/16 v1, 0x228d

    #@2ba6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ba9
    .line 1136
    const-string/jumbo v0, "cupor"

    #@2bac
    const/16 v1, 0x2a45

    #@2bae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bb1
    .line 1137
    const-string/jumbo v0, "curarr"

    #@2bb4
    const/16 v1, 0x21b7

    #@2bb6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bb9
    .line 1138
    const-string/jumbo v0, "curarrm"

    #@2bbc
    const/16 v1, 0x293c

    #@2bbe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bc1
    .line 1139
    const-string/jumbo v0, "curlyeqprec"

    #@2bc4
    const/16 v1, 0x22de

    #@2bc6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bc9
    .line 1140
    const-string/jumbo v0, "curlyeqsucc"

    #@2bcc
    const/16 v1, 0x22df

    #@2bce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bd1
    .line 1141
    const-string/jumbo v0, "curlyvee"

    #@2bd4
    const/16 v1, 0x22ce

    #@2bd6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bd9
    .line 1142
    const-string/jumbo v0, "curlywedge"

    #@2bdc
    const/16 v1, 0x22cf

    #@2bde
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2be1
    .line 1143
    const-string/jumbo v0, "curren"

    #@2be4
    const/16 v1, 0xa4

    #@2be6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2be9
    .line 1144
    const-string/jumbo v0, "curvearrowleft"

    #@2bec
    const/16 v1, 0x21b6

    #@2bee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bf1
    .line 1145
    const-string/jumbo v0, "curvearrowright"

    #@2bf4
    const/16 v1, 0x21b7

    #@2bf6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2bf9
    .line 1146
    const-string/jumbo v0, "cuvee"

    #@2bfc
    const/16 v1, 0x22ce

    #@2bfe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c01
    .line 1147
    const-string/jumbo v0, "cuwed"

    #@2c04
    const/16 v1, 0x22cf

    #@2c06
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c09
    .line 1148
    const-string/jumbo v0, "cwconint"

    #@2c0c
    const/16 v1, 0x2232

    #@2c0e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c11
    .line 1149
    const-string/jumbo v0, "cwint"

    #@2c14
    const/16 v1, 0x2231

    #@2c16
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c19
    .line 1150
    const-string/jumbo v0, "cylcty"

    #@2c1c
    const/16 v1, 0x232d

    #@2c1e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c21
    .line 1151
    const-string/jumbo v0, "Dagger"

    #@2c24
    const/16 v1, 0x2021

    #@2c26
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c29
    .line 1152
    const-string/jumbo v0, "dagger"

    #@2c2c
    const/16 v1, 0x2020

    #@2c2e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c31
    .line 1153
    const-string/jumbo v0, "daleth"

    #@2c34
    const/16 v1, 0x2138

    #@2c36
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c39
    .line 1154
    const-string/jumbo v0, "Darr"

    #@2c3c
    const/16 v1, 0x21a1

    #@2c3e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c41
    .line 1155
    const-string/jumbo v0, "dArr"

    #@2c44
    const/16 v1, 0x21d3

    #@2c46
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c49
    .line 1156
    const-string/jumbo v0, "darr"

    #@2c4c
    const/16 v1, 0x2193

    #@2c4e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c51
    .line 1157
    const-string/jumbo v0, "dash"

    #@2c54
    const/16 v1, 0x2010

    #@2c56
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c59
    .line 1158
    const-string/jumbo v0, "Dashv"

    #@2c5c
    const/16 v1, 0x2ae4

    #@2c5e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c61
    .line 1159
    const-string/jumbo v0, "dashv"

    #@2c64
    const/16 v1, 0x22a3

    #@2c66
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c69
    .line 1160
    const-string/jumbo v0, "dbkarow"

    #@2c6c
    const/16 v1, 0x290f

    #@2c6e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c71
    .line 1161
    const-string/jumbo v0, "dblac"

    #@2c74
    const/16 v1, 0x2dd

    #@2c76
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c79
    .line 1162
    const-string/jumbo v0, "Dcaron"

    #@2c7c
    const/16 v1, 0x10e

    #@2c7e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c81
    .line 1163
    const-string/jumbo v0, "dcaron"

    #@2c84
    const/16 v1, 0x10f

    #@2c86
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c89
    .line 1164
    const-string/jumbo v0, "Dcy"

    #@2c8c
    const/16 v1, 0x414

    #@2c8e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c91
    .line 1165
    const-string/jumbo v0, "dcy"

    #@2c94
    const/16 v1, 0x434

    #@2c96
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2c99
    .line 1166
    const-string/jumbo v0, "DD"

    #@2c9c
    const/16 v1, 0x2145

    #@2c9e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ca1
    .line 1167
    const-string/jumbo v0, "dd"

    #@2ca4
    const/16 v1, 0x2146

    #@2ca6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ca9
    .line 1168
    const-string/jumbo v0, "ddagger"

    #@2cac
    const/16 v1, 0x2021

    #@2cae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cb1
    .line 1169
    const-string/jumbo v0, "ddarr"

    #@2cb4
    const/16 v1, 0x21ca

    #@2cb6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cb9
    .line 1170
    const-string/jumbo v0, "DDotrahd"

    #@2cbc
    const/16 v1, 0x2911

    #@2cbe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cc1
    .line 1171
    const-string/jumbo v0, "ddotseq"

    #@2cc4
    const/16 v1, 0x2a77

    #@2cc6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cc9
    .line 1172
    const-string/jumbo v0, "deg"

    #@2ccc
    const/16 v1, 0xb0

    #@2cce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cd1
    .line 1173
    const-string/jumbo v0, "Del"

    #@2cd4
    const/16 v1, 0x2207

    #@2cd6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cd9
    .line 1174
    const-string/jumbo v0, "Delta"

    #@2cdc
    const/16 v1, 0x394

    #@2cde
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ce1
    .line 1175
    const-string/jumbo v0, "delta"

    #@2ce4
    const/16 v1, 0x3b4

    #@2ce6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ce9
    .line 1176
    const-string/jumbo v0, "demptyv"

    #@2cec
    const/16 v1, 0x29b1

    #@2cee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cf1
    .line 1177
    const-string/jumbo v0, "dfisht"

    #@2cf4
    const/16 v1, 0x297f

    #@2cf6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2cf9
    .line 1178
    const-string/jumbo v0, "Dfr"

    #@2cfc
    const v1, 0x1d507

    #@2cff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d02
    .line 1179
    const-string/jumbo v0, "dfr"

    #@2d05
    const v1, 0x1d521

    #@2d08
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d0b
    .line 1180
    const-string/jumbo v0, "Dgr"

    #@2d0e
    const/16 v1, 0x394

    #@2d10
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d13
    .line 1181
    const-string/jumbo v0, "dgr"

    #@2d16
    const/16 v1, 0x3b4

    #@2d18
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d1b
    .line 1182
    const-string/jumbo v0, "dHar"

    #@2d1e
    const/16 v1, 0x2965

    #@2d20
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d23
    .line 1183
    const-string/jumbo v0, "dharl"

    #@2d26
    const/16 v1, 0x21c3

    #@2d28
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d2b
    .line 1184
    const-string/jumbo v0, "dharr"

    #@2d2e
    const/16 v1, 0x21c2

    #@2d30
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d33
    .line 1185
    const-string/jumbo v0, "DiacriticalAcute"

    #@2d36
    const/16 v1, 0xb4

    #@2d38
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d3b
    .line 1186
    const-string/jumbo v0, "DiacriticalDot"

    #@2d3e
    const/16 v1, 0x2d9

    #@2d40
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d43
    .line 1187
    const-string/jumbo v0, "DiacriticalDoubleAcute"

    #@2d46
    const/16 v1, 0x2dd

    #@2d48
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d4b
    .line 1188
    const-string/jumbo v0, "DiacriticalGrave"

    #@2d4e
    const/16 v1, 0x60

    #@2d50
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d53
    .line 1189
    const-string/jumbo v0, "DiacriticalTilde"

    #@2d56
    const/16 v1, 0x2dc

    #@2d58
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d5b
    .line 1190
    const-string/jumbo v0, "diam"

    #@2d5e
    const/16 v1, 0x22c4

    #@2d60
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d63
    .line 1191
    const-string/jumbo v0, "diamond"

    #@2d66
    const/16 v1, 0x22c4

    #@2d68
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d6b
    .line 1192
    const-string/jumbo v0, "diamondsuit"

    #@2d6e
    const/16 v1, 0x2666

    #@2d70
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d73
    .line 1193
    const-string/jumbo v0, "diams"

    #@2d76
    const/16 v1, 0x2666

    #@2d78
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d7b
    .line 1194
    const-string/jumbo v0, "die"

    #@2d7e
    const/16 v1, 0xa8

    #@2d80
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d83
    .line 1195
    const-string/jumbo v0, "DifferentialD"

    #@2d86
    const/16 v1, 0x2146

    #@2d88
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d8b
    .line 1196
    const-string/jumbo v0, "digamma"

    #@2d8e
    const/16 v1, 0x3dd

    #@2d90
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d93
    .line 1197
    const-string/jumbo v0, "disin"

    #@2d96
    const/16 v1, 0x22f2

    #@2d98
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2d9b
    .line 1198
    const-string/jumbo v0, "div"

    #@2d9e
    const/16 v1, 0xf7

    #@2da0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2da3
    .line 1199
    const-string/jumbo v0, "divide"

    #@2da6
    const/16 v1, 0xf7

    #@2da8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dab
    .line 1200
    const-string/jumbo v0, "divideontimes"

    #@2dae
    const/16 v1, 0x22c7

    #@2db0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2db3
    .line 1201
    const-string/jumbo v0, "divonx"

    #@2db6
    const/16 v1, 0x22c7

    #@2db8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dbb
    .line 1202
    const-string/jumbo v0, "DJcy"

    #@2dbe
    const/16 v1, 0x402

    #@2dc0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dc3
    .line 1203
    const-string/jumbo v0, "djcy"

    #@2dc6
    const/16 v1, 0x452

    #@2dc8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dcb
    .line 1204
    const-string/jumbo v0, "dlcorn"

    #@2dce
    const/16 v1, 0x231e

    #@2dd0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dd3
    .line 1205
    const-string/jumbo v0, "dlcrop"

    #@2dd6
    const/16 v1, 0x230d

    #@2dd8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ddb
    .line 1206
    const-string/jumbo v0, "dollar"

    #@2dde
    const/16 v1, 0x24

    #@2de0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2de3
    .line 1207
    const-string/jumbo v0, "Dopf"

    #@2de6
    const v1, 0x1d53b

    #@2de9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dec
    .line 1208
    const-string/jumbo v0, "dopf"

    #@2def
    const v1, 0x1d555

    #@2df2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2df5
    .line 1209
    const-string/jumbo v0, "Dot"

    #@2df8
    const/16 v1, 0xa8

    #@2dfa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2dfd
    .line 1210
    const-string/jumbo v0, "dot"

    #@2e00
    const/16 v1, 0x2d9

    #@2e02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e05
    .line 1211
    const-string/jumbo v0, "doteq"

    #@2e08
    const/16 v1, 0x2250

    #@2e0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e0d
    .line 1212
    const-string/jumbo v0, "doteqdot"

    #@2e10
    const/16 v1, 0x2251

    #@2e12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e15
    .line 1213
    const-string/jumbo v0, "DotEqual"

    #@2e18
    const/16 v1, 0x2250

    #@2e1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e1d
    .line 1214
    const-string/jumbo v0, "dotminus"

    #@2e20
    const/16 v1, 0x2238

    #@2e22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e25
    .line 1215
    const-string/jumbo v0, "dotplus"

    #@2e28
    const/16 v1, 0x2214

    #@2e2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e2d
    .line 1216
    const-string/jumbo v0, "dotsquare"

    #@2e30
    const/16 v1, 0x22a1

    #@2e32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e35
    .line 1217
    const-string/jumbo v0, "doublebarwedge"

    #@2e38
    const/16 v1, 0x2306

    #@2e3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e3d
    .line 1218
    const-string/jumbo v0, "DoubleContourIntegral"

    #@2e40
    const/16 v1, 0x222f

    #@2e42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e45
    .line 1219
    const-string/jumbo v0, "DoubleDot"

    #@2e48
    const/16 v1, 0xa8

    #@2e4a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e4d
    .line 1220
    const-string/jumbo v0, "DoubleDownArrow"

    #@2e50
    const/16 v1, 0x21d3

    #@2e52
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e55
    .line 1221
    const-string/jumbo v0, "DoubleLeftArrow"

    #@2e58
    const/16 v1, 0x21d0

    #@2e5a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e5d
    .line 1222
    const-string/jumbo v0, "DoubleLeftRightArrow"

    #@2e60
    const/16 v1, 0x21d4

    #@2e62
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e65
    .line 1223
    const-string/jumbo v0, "DoubleLeftTee"

    #@2e68
    const/16 v1, 0x2ae4

    #@2e6a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e6d
    .line 1224
    const-string/jumbo v0, "DoubleLongLeftArrow"

    #@2e70
    const/16 v1, 0x27f8

    #@2e72
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e75
    .line 1225
    const-string/jumbo v0, "DoubleLongLeftRightArrow"

    #@2e78
    const/16 v1, 0x27fa

    #@2e7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e7d
    .line 1226
    const-string/jumbo v0, "DoubleLongRightArrow"

    #@2e80
    const/16 v1, 0x27f9

    #@2e82
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e85
    .line 1227
    const-string/jumbo v0, "DoubleRightArrow"

    #@2e88
    const/16 v1, 0x21d2

    #@2e8a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e8d
    .line 1228
    const-string/jumbo v0, "DoubleRightTee"

    #@2e90
    const/16 v1, 0x22a8

    #@2e92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e95
    .line 1229
    const-string/jumbo v0, "DoubleUpArrow"

    #@2e98
    const/16 v1, 0x21d1

    #@2e9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2e9d
    .line 1230
    const-string/jumbo v0, "DoubleUpDownArrow"

    #@2ea0
    const/16 v1, 0x21d5

    #@2ea2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ea5
    .line 1231
    const-string/jumbo v0, "DoubleVerticalBar"

    #@2ea8
    const/16 v1, 0x2225

    #@2eaa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ead
    .line 1232
    const-string/jumbo v0, "Downarrow"

    #@2eb0
    const/16 v1, 0x21d3

    #@2eb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2eb5
    .line 1233
    const-string/jumbo v0, "downarrow"

    #@2eb8
    const/16 v1, 0x2193

    #@2eba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ebd
    .line 1234
    const-string/jumbo v0, "DownArrowBar"

    #@2ec0
    const/16 v1, 0x2913

    #@2ec2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ec5
    .line 1235
    const-string/jumbo v0, "DownArrowUpArrow"

    #@2ec8
    const/16 v1, 0x21f5

    #@2eca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ecd
    .line 1236
    const-string/jumbo v0, "downdownarrows"

    #@2ed0
    const/16 v1, 0x21ca

    #@2ed2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ed5
    .line 1237
    const-string/jumbo v0, "downharpoonleft"

    #@2ed8
    const/16 v1, 0x21c3

    #@2eda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2edd
    .line 1238
    const-string/jumbo v0, "downharpoonright"

    #@2ee0
    const/16 v1, 0x21c2

    #@2ee2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ee5
    .line 1239
    const-string/jumbo v0, "DownLeftRightVector"

    #@2ee8
    const/16 v1, 0x2950

    #@2eea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2eed
    .line 1240
    const-string/jumbo v0, "DownLeftTeeVector"

    #@2ef0
    const/16 v1, 0x295e

    #@2ef2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ef5
    .line 1241
    const-string/jumbo v0, "DownLeftVector"

    #@2ef8
    const/16 v1, 0x21bd

    #@2efa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2efd
    .line 1242
    const-string/jumbo v0, "DownLeftVectorBar"

    #@2f00
    const/16 v1, 0x2956

    #@2f02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f05
    .line 1243
    const-string/jumbo v0, "DownRightTeeVector"

    #@2f08
    const/16 v1, 0x295f

    #@2f0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f0d
    .line 1244
    const-string/jumbo v0, "DownRightVector"

    #@2f10
    const/16 v1, 0x21c1

    #@2f12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f15
    .line 1245
    const-string/jumbo v0, "DownRightVectorBar"

    #@2f18
    const/16 v1, 0x2957

    #@2f1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f1d
    .line 1246
    const-string/jumbo v0, "DownTee"

    #@2f20
    const/16 v1, 0x22a4

    #@2f22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f25
    .line 1247
    const-string/jumbo v0, "DownTeeArrow"

    #@2f28
    const/16 v1, 0x21a7

    #@2f2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f2d
    .line 1248
    const-string/jumbo v0, "drbkarow"

    #@2f30
    const/16 v1, 0x2910

    #@2f32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f35
    .line 1249
    const-string/jumbo v0, "drcorn"

    #@2f38
    const/16 v1, 0x231f

    #@2f3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f3d
    .line 1250
    const-string/jumbo v0, "drcrop"

    #@2f40
    const/16 v1, 0x230c

    #@2f42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f45
    .line 1251
    const-string/jumbo v0, "Dscr"

    #@2f48
    const v1, 0x1d49f

    #@2f4b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f4e
    .line 1252
    const-string/jumbo v0, "dscr"

    #@2f51
    const v1, 0x1d4b9

    #@2f54
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f57
    .line 1253
    const-string/jumbo v0, "DScy"

    #@2f5a
    const/16 v1, 0x405

    #@2f5c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f5f
    .line 1254
    const-string/jumbo v0, "dscy"

    #@2f62
    const/16 v1, 0x455

    #@2f64
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f67
    .line 1255
    const-string/jumbo v0, "dsol"

    #@2f6a
    const/16 v1, 0x29f6

    #@2f6c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f6f
    .line 1256
    const-string/jumbo v0, "Dstrok"

    #@2f72
    const/16 v1, 0x110

    #@2f74
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f77
    .line 1257
    const-string/jumbo v0, "dstrok"

    #@2f7a
    const/16 v1, 0x111

    #@2f7c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f7f
    .line 1258
    const-string/jumbo v0, "dtdot"

    #@2f82
    const/16 v1, 0x22f1

    #@2f84
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f87
    .line 1259
    const-string/jumbo v0, "dtri"

    #@2f8a
    const/16 v1, 0x25bf

    #@2f8c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f8f
    .line 1260
    const-string/jumbo v0, "dtrif"

    #@2f92
    const/16 v1, 0x25be

    #@2f94
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f97
    .line 1261
    const-string/jumbo v0, "duarr"

    #@2f9a
    const/16 v1, 0x21f5

    #@2f9c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2f9f
    .line 1262
    const-string/jumbo v0, "duhar"

    #@2fa2
    const/16 v1, 0x296f

    #@2fa4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fa7
    .line 1263
    const-string/jumbo v0, "dwangle"

    #@2faa
    const/16 v1, 0x29a6

    #@2fac
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2faf
    .line 1264
    const-string/jumbo v0, "DZcy"

    #@2fb2
    const/16 v1, 0x40f

    #@2fb4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fb7
    .line 1265
    const-string/jumbo v0, "dzcy"

    #@2fba
    const/16 v1, 0x45f

    #@2fbc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fbf
    .line 1266
    const-string/jumbo v0, "dzigrarr"

    #@2fc2
    const/16 v1, 0x27ff

    #@2fc4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fc7
    .line 1267
    const-string/jumbo v0, "Eacgr"

    #@2fca
    const/16 v1, 0x388

    #@2fcc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fcf
    .line 1268
    const-string/jumbo v0, "eacgr"

    #@2fd2
    const/16 v1, 0x3ad

    #@2fd4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fd7
    .line 1269
    const-string/jumbo v0, "Eacute"

    #@2fda
    const/16 v1, 0xc9

    #@2fdc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fdf
    .line 1270
    const-string/jumbo v0, "eacute"

    #@2fe2
    const/16 v1, 0xe9

    #@2fe4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fe7
    .line 1271
    const-string/jumbo v0, "easter"

    #@2fea
    const/16 v1, 0x2a6e

    #@2fec
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fef
    .line 1272
    const-string/jumbo v0, "Ecaron"

    #@2ff2
    const/16 v1, 0x11a

    #@2ff4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2ff7
    .line 1273
    const-string/jumbo v0, "ecaron"

    #@2ffa
    const/16 v1, 0x11b

    #@2ffc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@2fff
    .line 1274
    const-string/jumbo v0, "ecir"

    #@3002
    const/16 v1, 0x2256

    #@3004
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3007
    .line 1275
    const-string/jumbo v0, "Ecirc"

    #@300a
    const/16 v1, 0xca

    #@300c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@300f
    .line 1276
    const-string/jumbo v0, "ecirc"

    #@3012
    const/16 v1, 0xea

    #@3014
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3017
    .line 1277
    const-string/jumbo v0, "ecolon"

    #@301a
    const/16 v1, 0x2255

    #@301c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@301f
    .line 1278
    const-string/jumbo v0, "Ecy"

    #@3022
    const/16 v1, 0x42d

    #@3024
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3027
    .line 1279
    const-string/jumbo v0, "ecy"

    #@302a
    const/16 v1, 0x44d

    #@302c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@302f
    .line 1280
    const-string/jumbo v0, "eDDot"

    #@3032
    const/16 v1, 0x2a77

    #@3034
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3037
    .line 1281
    const-string/jumbo v0, "Edot"

    #@303a
    const/16 v1, 0x116

    #@303c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@303f
    .line 1282
    const-string/jumbo v0, "eDot"

    #@3042
    const/16 v1, 0x2251

    #@3044
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3047
    .line 1283
    const-string/jumbo v0, "edot"

    #@304a
    const/16 v1, 0x117

    #@304c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@304f
    .line 1284
    const-string/jumbo v0, "ee"

    #@3052
    const/16 v1, 0x2147

    #@3054
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3057
    .line 1285
    const-string/jumbo v0, "EEacgr"

    #@305a
    const/16 v1, 0x389

    #@305c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@305f
    .line 1286
    const-string/jumbo v0, "eeacgr"

    #@3062
    const/16 v1, 0x3ae

    #@3064
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3067
    .line 1287
    const-string/jumbo v0, "EEgr"

    #@306a
    const/16 v1, 0x397

    #@306c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@306f
    .line 1288
    const-string/jumbo v0, "eegr"

    #@3072
    const/16 v1, 0x3b7

    #@3074
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3077
    .line 1289
    const-string/jumbo v0, "efDot"

    #@307a
    const/16 v1, 0x2252

    #@307c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@307f
    .line 1290
    const-string/jumbo v0, "Efr"

    #@3082
    const v1, 0x1d508

    #@3085
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3088
    .line 1291
    const-string/jumbo v0, "efr"

    #@308b
    const v1, 0x1d522

    #@308e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3091
    .line 1292
    const-string/jumbo v0, "eg"

    #@3094
    const/16 v1, 0x2a9a

    #@3096
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3099
    .line 1293
    const-string/jumbo v0, "Egr"

    #@309c
    const/16 v1, 0x395

    #@309e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30a1
    .line 1294
    const-string/jumbo v0, "egr"

    #@30a4
    const/16 v1, 0x3b5

    #@30a6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30a9
    .line 1295
    const-string/jumbo v0, "Egrave"

    #@30ac
    const/16 v1, 0xc8

    #@30ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30b1
    .line 1296
    const-string/jumbo v0, "egrave"

    #@30b4
    const/16 v1, 0xe8

    #@30b6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30b9
    .line 1297
    const-string/jumbo v0, "egs"

    #@30bc
    const/16 v1, 0x2a96

    #@30be
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30c1
    .line 1298
    const-string/jumbo v0, "egsdot"

    #@30c4
    const/16 v1, 0x2a98

    #@30c6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30c9
    .line 1299
    const-string/jumbo v0, "el"

    #@30cc
    const/16 v1, 0x2a99

    #@30ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30d1
    .line 1300
    const-string/jumbo v0, "Element"

    #@30d4
    const/16 v1, 0x2208

    #@30d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30d9
    .line 1301
    const-string/jumbo v0, "elinters"

    #@30dc
    const/16 v1, 0x23e7

    #@30de
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30e1
    .line 1302
    const-string/jumbo v0, "ell"

    #@30e4
    const/16 v1, 0x2113

    #@30e6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30e9
    .line 1303
    const-string/jumbo v0, "els"

    #@30ec
    const/16 v1, 0x2a95

    #@30ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30f1
    .line 1304
    const-string/jumbo v0, "elsdot"

    #@30f4
    const/16 v1, 0x2a97

    #@30f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@30f9
    .line 1305
    const-string/jumbo v0, "Emacr"

    #@30fc
    const/16 v1, 0x112

    #@30fe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3101
    .line 1306
    const-string/jumbo v0, "emacr"

    #@3104
    const/16 v1, 0x113

    #@3106
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3109
    .line 1307
    const-string/jumbo v0, "empty"

    #@310c
    const/16 v1, 0x2205

    #@310e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3111
    .line 1308
    const-string/jumbo v0, "emptyset"

    #@3114
    const/16 v1, 0x2205

    #@3116
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3119
    .line 1309
    const-string/jumbo v0, "EmptySmallSquare"

    #@311c
    const/16 v1, 0x25fb

    #@311e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3121
    .line 1310
    const-string/jumbo v0, "emptyv"

    #@3124
    const/16 v1, 0x2205

    #@3126
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3129
    .line 1311
    const-string/jumbo v0, "EmptyVerySmallSquare"

    #@312c
    const/16 v1, 0x25ab

    #@312e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3131
    .line 1312
    const-string/jumbo v0, "emsp"

    #@3134
    const/16 v1, 0x2003

    #@3136
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3139
    .line 1313
    const-string/jumbo v0, "emsp13"

    #@313c
    const/16 v1, 0x2004

    #@313e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3141
    .line 1314
    const-string/jumbo v0, "emsp14"

    #@3144
    const/16 v1, 0x2005

    #@3146
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3149
    .line 1315
    const-string/jumbo v0, "ENG"

    #@314c
    const/16 v1, 0x14a

    #@314e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3151
    .line 1316
    const-string/jumbo v0, "eng"

    #@3154
    const/16 v1, 0x14b

    #@3156
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3159
    .line 1317
    const-string/jumbo v0, "ensp"

    #@315c
    const/16 v1, 0x2002

    #@315e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3161
    .line 1318
    const-string/jumbo v0, "Eogon"

    #@3164
    const/16 v1, 0x118

    #@3166
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3169
    .line 1319
    const-string/jumbo v0, "eogon"

    #@316c
    const/16 v1, 0x119

    #@316e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3171
    .line 1320
    const-string/jumbo v0, "Eopf"

    #@3174
    const v1, 0x1d53c

    #@3177
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@317a
    .line 1321
    const-string/jumbo v0, "eopf"

    #@317d
    const v1, 0x1d556

    #@3180
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3183
    .line 1322
    const-string/jumbo v0, "epar"

    #@3186
    const/16 v1, 0x22d5

    #@3188
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@318b
    .line 1323
    const-string/jumbo v0, "eparsl"

    #@318e
    const/16 v1, 0x29e3

    #@3190
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3193
    .line 1324
    const-string/jumbo v0, "eplus"

    #@3196
    const/16 v1, 0x2a71

    #@3198
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@319b
    .line 1325
    const-string/jumbo v0, "epsi"

    #@319e
    const/16 v1, 0x3f5

    #@31a0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31a3
    .line 1326
    const-string/jumbo v0, "Epsilon"

    #@31a6
    const/16 v1, 0x395

    #@31a8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31ab
    .line 1327
    const-string/jumbo v0, "epsilon"

    #@31ae
    const/16 v1, 0x3b5

    #@31b0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31b3
    .line 1328
    const-string/jumbo v0, "epsiv"

    #@31b6
    const/16 v1, 0x3b5

    #@31b8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31bb
    .line 1329
    const-string/jumbo v0, "eqcirc"

    #@31be
    const/16 v1, 0x2256

    #@31c0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31c3
    .line 1330
    const-string/jumbo v0, "eqcolon"

    #@31c6
    const/16 v1, 0x2255

    #@31c8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31cb
    .line 1331
    const-string/jumbo v0, "eqsim"

    #@31ce
    const/16 v1, 0x2242

    #@31d0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31d3
    .line 1332
    const-string/jumbo v0, "eqslantgtr"

    #@31d6
    const/16 v1, 0x2a96

    #@31d8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31db
    .line 1333
    const-string/jumbo v0, "eqslantless"

    #@31de
    const/16 v1, 0x2a95

    #@31e0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31e3
    .line 1334
    const-string/jumbo v0, "Equal"

    #@31e6
    const/16 v1, 0x2a75

    #@31e8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31eb
    .line 1335
    const-string/jumbo v0, "equals"

    #@31ee
    const/16 v1, 0x3d

    #@31f0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31f3
    .line 1336
    const-string/jumbo v0, "EqualTilde"

    #@31f6
    const/16 v1, 0x2242

    #@31f8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@31fb
    .line 1337
    const-string/jumbo v0, "equest"

    #@31fe
    const/16 v1, 0x225f

    #@3200
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3203
    .line 1338
    const-string/jumbo v0, "Equilibrium"

    #@3206
    const/16 v1, 0x21cc

    #@3208
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@320b
    .line 1339
    const-string/jumbo v0, "equiv"

    #@320e
    const/16 v1, 0x2261

    #@3210
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3213
    .line 1340
    const-string/jumbo v0, "equivDD"

    #@3216
    const/16 v1, 0x2a78

    #@3218
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@321b
    .line 1341
    const-string/jumbo v0, "eqvparsl"

    #@321e
    const/16 v1, 0x29e5

    #@3220
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3223
    .line 1342
    const-string/jumbo v0, "erarr"

    #@3226
    const/16 v1, 0x2971

    #@3228
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@322b
    .line 1343
    const-string/jumbo v0, "erDot"

    #@322e
    const/16 v1, 0x2253

    #@3230
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3233
    .line 1344
    const-string/jumbo v0, "Escr"

    #@3236
    const/16 v1, 0x2130

    #@3238
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@323b
    .line 1345
    const-string/jumbo v0, "escr"

    #@323e
    const/16 v1, 0x212f

    #@3240
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3243
    .line 1346
    const-string/jumbo v0, "esdot"

    #@3246
    const/16 v1, 0x2250

    #@3248
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@324b
    .line 1347
    const-string/jumbo v0, "Esim"

    #@324e
    const/16 v1, 0x2a73

    #@3250
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3253
    .line 1348
    const-string/jumbo v0, "esim"

    #@3256
    const/16 v1, 0x2242

    #@3258
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@325b
    .line 1349
    const-string/jumbo v0, "Eta"

    #@325e
    const/16 v1, 0x397

    #@3260
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3263
    .line 1350
    const-string/jumbo v0, "eta"

    #@3266
    const/16 v1, 0x3b7

    #@3268
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@326b
    .line 1351
    const-string/jumbo v0, "ETH"

    #@326e
    const/16 v1, 0xd0

    #@3270
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3273
    .line 1352
    const-string/jumbo v0, "eth"

    #@3276
    const/16 v1, 0xf0

    #@3278
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@327b
    .line 1353
    const-string/jumbo v0, "Euml"

    #@327e
    const/16 v1, 0xcb

    #@3280
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3283
    .line 1354
    const-string/jumbo v0, "euml"

    #@3286
    const/16 v1, 0xeb

    #@3288
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@328b
    .line 1355
    const-string/jumbo v0, "euro"

    #@328e
    const/16 v1, 0x20ac

    #@3290
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3293
    .line 1356
    const-string/jumbo v0, "excl"

    #@3296
    const/16 v1, 0x21

    #@3298
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@329b
    .line 1357
    const-string/jumbo v0, "exist"

    #@329e
    const/16 v1, 0x2203

    #@32a0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32a3
    .line 1358
    const-string/jumbo v0, "Exists"

    #@32a6
    const/16 v1, 0x2203

    #@32a8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32ab
    .line 1359
    const-string/jumbo v0, "expectation"

    #@32ae
    const/16 v1, 0x2130

    #@32b0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32b3
    .line 1360
    const-string/jumbo v0, "exponentiale"

    #@32b6
    const/16 v1, 0x2147

    #@32b8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32bb
    .line 1361
    const-string/jumbo v0, "fallingdotseq"

    #@32be
    const/16 v1, 0x2252

    #@32c0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32c3
    .line 1362
    const-string/jumbo v0, "Fcy"

    #@32c6
    const/16 v1, 0x424

    #@32c8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32cb
    .line 1363
    const-string/jumbo v0, "fcy"

    #@32ce
    const/16 v1, 0x444

    #@32d0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32d3
    .line 1364
    const-string/jumbo v0, "female"

    #@32d6
    const/16 v1, 0x2640

    #@32d8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32db
    .line 1365
    const-string/jumbo v0, "ffilig"

    #@32de
    const v1, 0xfb03

    #@32e1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32e4
    .line 1366
    const-string/jumbo v0, "fflig"

    #@32e7
    const v1, 0xfb00

    #@32ea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32ed
    .line 1367
    const-string/jumbo v0, "ffllig"

    #@32f0
    const v1, 0xfb04

    #@32f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32f6
    .line 1368
    const-string/jumbo v0, "Ffr"

    #@32f9
    const v1, 0x1d509

    #@32fc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@32ff
    .line 1369
    const-string/jumbo v0, "ffr"

    #@3302
    const v1, 0x1d523

    #@3305
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3308
    .line 1370
    const-string/jumbo v0, "filig"

    #@330b
    const v1, 0xfb01

    #@330e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3311
    .line 1371
    const-string/jumbo v0, "FilledSmallSquare"

    #@3314
    const/16 v1, 0x25fc

    #@3316
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3319
    .line 1372
    const-string/jumbo v0, "FilledVerySmallSquare"

    #@331c
    const/16 v1, 0x25aa

    #@331e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3321
    .line 1373
    const-string/jumbo v0, "flat"

    #@3324
    const/16 v1, 0x266d

    #@3326
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3329
    .line 1374
    const-string/jumbo v0, "fllig"

    #@332c
    const v1, 0xfb02

    #@332f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3332
    .line 1375
    const-string/jumbo v0, "fltns"

    #@3335
    const/16 v1, 0x25b1

    #@3337
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@333a
    .line 1376
    const-string/jumbo v0, "fnof"

    #@333d
    const/16 v1, 0x192

    #@333f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3342
    .line 1377
    const-string/jumbo v0, "Fopf"

    #@3345
    const v1, 0x1d53d

    #@3348
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@334b
    .line 1378
    const-string/jumbo v0, "fopf"

    #@334e
    const v1, 0x1d557

    #@3351
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3354
    .line 1379
    const-string/jumbo v0, "forall"

    #@3357
    const/16 v1, 0x2200

    #@3359
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@335c
    .line 1380
    const-string/jumbo v0, "fork"

    #@335f
    const/16 v1, 0x22d4

    #@3361
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3364
    .line 1381
    const-string/jumbo v0, "forkv"

    #@3367
    const/16 v1, 0x2ad9

    #@3369
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@336c
    .line 1382
    const-string/jumbo v0, "Fouriertrf"

    #@336f
    const/16 v1, 0x2131

    #@3371
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3374
    .line 1383
    const-string/jumbo v0, "fpartint"

    #@3377
    const/16 v1, 0x2a0d

    #@3379
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@337c
    .line 1384
    const-string/jumbo v0, "frac12"

    #@337f
    const/16 v1, 0xbd

    #@3381
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3384
    .line 1385
    const-string/jumbo v0, "frac13"

    #@3387
    const/16 v1, 0x2153

    #@3389
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@338c
    .line 1386
    const-string/jumbo v0, "frac14"

    #@338f
    const/16 v1, 0xbc

    #@3391
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3394
    .line 1387
    const-string/jumbo v0, "frac15"

    #@3397
    const/16 v1, 0x2155

    #@3399
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@339c
    .line 1388
    const-string/jumbo v0, "frac16"

    #@339f
    const/16 v1, 0x2159

    #@33a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33a4
    .line 1389
    const-string/jumbo v0, "frac18"

    #@33a7
    const/16 v1, 0x215b

    #@33a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33ac
    .line 1390
    const-string/jumbo v0, "frac23"

    #@33af
    const/16 v1, 0x2154

    #@33b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33b4
    .line 1391
    const-string/jumbo v0, "frac25"

    #@33b7
    const/16 v1, 0x2156

    #@33b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33bc
    .line 1392
    const-string/jumbo v0, "frac34"

    #@33bf
    const/16 v1, 0xbe

    #@33c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33c4
    .line 1393
    const-string/jumbo v0, "frac35"

    #@33c7
    const/16 v1, 0x2157

    #@33c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33cc
    .line 1394
    const-string/jumbo v0, "frac38"

    #@33cf
    const/16 v1, 0x215c

    #@33d1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33d4
    .line 1395
    const-string/jumbo v0, "frac45"

    #@33d7
    const/16 v1, 0x2158

    #@33d9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33dc
    .line 1396
    const-string/jumbo v0, "frac56"

    #@33df
    const/16 v1, 0x215a

    #@33e1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33e4
    .line 1397
    const-string/jumbo v0, "frac58"

    #@33e7
    const/16 v1, 0x215d

    #@33e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33ec
    .line 1398
    const-string/jumbo v0, "frac78"

    #@33ef
    const/16 v1, 0x215e

    #@33f1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33f4
    .line 1399
    const-string/jumbo v0, "frasl"

    #@33f7
    const/16 v1, 0x2044

    #@33f9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@33fc
    .line 1400
    const-string/jumbo v0, "frown"

    #@33ff
    const/16 v1, 0x2322

    #@3401
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3404
    .line 1401
    const-string/jumbo v0, "Fscr"

    #@3407
    const/16 v1, 0x2131

    #@3409
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@340c
    .line 1402
    const-string/jumbo v0, "fscr"

    #@340f
    const v1, 0x1d4bb

    #@3412
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3415
    .line 1403
    const-string/jumbo v0, "gacute"

    #@3418
    const/16 v1, 0x1f5

    #@341a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@341d
    .line 1404
    const-string/jumbo v0, "Gamma"

    #@3420
    const/16 v1, 0x393

    #@3422
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3425
    .line 1405
    const-string/jumbo v0, "gamma"

    #@3428
    const/16 v1, 0x3b3

    #@342a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@342d
    .line 1406
    const-string/jumbo v0, "Gammad"

    #@3430
    const/16 v1, 0x3dc

    #@3432
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3435
    .line 1407
    const-string/jumbo v0, "gammad"

    #@3438
    const/16 v1, 0x3dd

    #@343a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@343d
    .line 1408
    const-string/jumbo v0, "gap"

    #@3440
    const/16 v1, 0x2a86

    #@3442
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3445
    .line 1409
    const-string/jumbo v0, "Gbreve"

    #@3448
    const/16 v1, 0x11e

    #@344a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@344d
    .line 1410
    const-string/jumbo v0, "gbreve"

    #@3450
    const/16 v1, 0x11f

    #@3452
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3455
    .line 1411
    const-string/jumbo v0, "Gcedil"

    #@3458
    const/16 v1, 0x122

    #@345a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@345d
    .line 1412
    const-string/jumbo v0, "Gcirc"

    #@3460
    const/16 v1, 0x11c

    #@3462
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3465
    .line 1413
    const-string/jumbo v0, "gcirc"

    #@3468
    const/16 v1, 0x11d

    #@346a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@346d
    .line 1414
    const-string/jumbo v0, "Gcy"

    #@3470
    const/16 v1, 0x413

    #@3472
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3475
    .line 1415
    const-string/jumbo v0, "gcy"

    #@3478
    const/16 v1, 0x433

    #@347a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@347d
    .line 1416
    const-string/jumbo v0, "Gdot"

    #@3480
    const/16 v1, 0x120

    #@3482
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3485
    .line 1417
    const-string/jumbo v0, "gdot"

    #@3488
    const/16 v1, 0x121

    #@348a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@348d
    .line 1418
    const-string/jumbo v0, "gE"

    #@3490
    const/16 v1, 0x2267

    #@3492
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3495
    .line 1419
    const-string/jumbo v0, "ge"

    #@3498
    const/16 v1, 0x2265

    #@349a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@349d
    .line 1420
    const-string/jumbo v0, "gEl"

    #@34a0
    const/16 v1, 0x2a8c

    #@34a2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34a5
    .line 1421
    const-string/jumbo v0, "gel"

    #@34a8
    const/16 v1, 0x22db

    #@34aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34ad
    .line 1422
    const-string/jumbo v0, "geq"

    #@34b0
    const/16 v1, 0x2265

    #@34b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34b5
    .line 1423
    const-string/jumbo v0, "geqq"

    #@34b8
    const/16 v1, 0x2267

    #@34ba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34bd
    .line 1424
    const-string/jumbo v0, "geqslant"

    #@34c0
    const/16 v1, 0x2a7e

    #@34c2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34c5
    .line 1425
    const-string/jumbo v0, "ges"

    #@34c8
    const/16 v1, 0x2a7e

    #@34ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34cd
    .line 1426
    const-string/jumbo v0, "gescc"

    #@34d0
    const/16 v1, 0x2aa9

    #@34d2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34d5
    .line 1427
    const-string/jumbo v0, "gesdot"

    #@34d8
    const/16 v1, 0x2a80

    #@34da
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34dd
    .line 1428
    const-string/jumbo v0, "gesdoto"

    #@34e0
    const/16 v1, 0x2a82

    #@34e2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34e5
    .line 1429
    const-string/jumbo v0, "gesdotol"

    #@34e8
    const/16 v1, 0x2a84

    #@34ea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34ed
    .line 1430
    const-string/jumbo v0, "gesles"

    #@34f0
    const/16 v1, 0x2a94

    #@34f2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34f5
    .line 1431
    const-string/jumbo v0, "Gfr"

    #@34f8
    const v1, 0x1d50a

    #@34fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@34fe
    .line 1432
    const-string/jumbo v0, "gfr"

    #@3501
    const v1, 0x1d524

    #@3504
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3507
    .line 1433
    const-string/jumbo v0, "Gg"

    #@350a
    const/16 v1, 0x22d9

    #@350c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@350f
    .line 1434
    const-string/jumbo v0, "gg"

    #@3512
    const/16 v1, 0x226b

    #@3514
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3517
    .line 1435
    const-string/jumbo v0, "ggg"

    #@351a
    const/16 v1, 0x22d9

    #@351c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@351f
    .line 1436
    const-string/jumbo v0, "Ggr"

    #@3522
    const/16 v1, 0x393

    #@3524
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3527
    .line 1437
    const-string/jumbo v0, "ggr"

    #@352a
    const/16 v1, 0x3b3

    #@352c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@352f
    .line 1438
    const-string/jumbo v0, "gimel"

    #@3532
    const/16 v1, 0x2137

    #@3534
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3537
    .line 1439
    const-string/jumbo v0, "GJcy"

    #@353a
    const/16 v1, 0x403

    #@353c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@353f
    .line 1440
    const-string/jumbo v0, "gjcy"

    #@3542
    const/16 v1, 0x453

    #@3544
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3547
    .line 1441
    const-string/jumbo v0, "gl"

    #@354a
    const/16 v1, 0x2277

    #@354c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@354f
    .line 1442
    const-string/jumbo v0, "gla"

    #@3552
    const/16 v1, 0x2aa5

    #@3554
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3557
    .line 1443
    const-string/jumbo v0, "glE"

    #@355a
    const/16 v1, 0x2a92

    #@355c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@355f
    .line 1444
    const-string/jumbo v0, "glj"

    #@3562
    const/16 v1, 0x2aa4

    #@3564
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3567
    .line 1445
    const-string/jumbo v0, "gnap"

    #@356a
    const/16 v1, 0x2a8a

    #@356c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@356f
    .line 1446
    const-string/jumbo v0, "gnapprox"

    #@3572
    const/16 v1, 0x2a8a

    #@3574
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3577
    .line 1447
    const-string/jumbo v0, "gnE"

    #@357a
    const/16 v1, 0x2269

    #@357c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@357f
    .line 1448
    const-string/jumbo v0, "gne"

    #@3582
    const/16 v1, 0x2a88

    #@3584
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3587
    .line 1449
    const-string/jumbo v0, "gneq"

    #@358a
    const/16 v1, 0x2a88

    #@358c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@358f
    .line 1450
    const-string/jumbo v0, "gneqq"

    #@3592
    const/16 v1, 0x2269

    #@3594
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3597
    .line 1451
    const-string/jumbo v0, "gnsim"

    #@359a
    const/16 v1, 0x22e7

    #@359c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@359f
    .line 1452
    const-string/jumbo v0, "Gopf"

    #@35a2
    const v1, 0x1d53e

    #@35a5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35a8
    .line 1453
    const-string/jumbo v0, "gopf"

    #@35ab
    const v1, 0x1d558

    #@35ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35b1
    .line 1454
    const-string/jumbo v0, "grave"

    #@35b4
    const/16 v1, 0x60

    #@35b6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35b9
    .line 1455
    const-string/jumbo v0, "GreaterEqual"

    #@35bc
    const/16 v1, 0x2265

    #@35be
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35c1
    .line 1456
    const-string/jumbo v0, "GreaterEqualLess"

    #@35c4
    const/16 v1, 0x22db

    #@35c6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35c9
    .line 1457
    const-string/jumbo v0, "GreaterFullEqual"

    #@35cc
    const/16 v1, 0x2267

    #@35ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35d1
    .line 1458
    const-string/jumbo v0, "GreaterGreater"

    #@35d4
    const/16 v1, 0x2aa2

    #@35d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35d9
    .line 1459
    const-string/jumbo v0, "GreaterLess"

    #@35dc
    const/16 v1, 0x2277

    #@35de
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35e1
    .line 1460
    const-string/jumbo v0, "GreaterSlantEqual"

    #@35e4
    const/16 v1, 0x2a7e

    #@35e6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35e9
    .line 1461
    const-string/jumbo v0, "GreaterTilde"

    #@35ec
    const/16 v1, 0x2273

    #@35ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35f1
    .line 1462
    const-string/jumbo v0, "Gscr"

    #@35f4
    const v1, 0x1d4a2

    #@35f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@35fa
    .line 1463
    const-string/jumbo v0, "gscr"

    #@35fd
    const/16 v1, 0x210a

    #@35ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3602
    .line 1464
    const-string/jumbo v0, "gsim"

    #@3605
    const/16 v1, 0x2273

    #@3607
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@360a
    .line 1465
    const-string/jumbo v0, "gsime"

    #@360d
    const/16 v1, 0x2a8e

    #@360f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3612
    .line 1466
    const-string/jumbo v0, "gsiml"

    #@3615
    const/16 v1, 0x2a90

    #@3617
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@361a
    .line 1467
    const-string/jumbo v0, "Gt"

    #@361d
    const/16 v1, 0x226b

    #@361f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3622
    .line 1468
    const-string/jumbo v0, "gt"

    #@3625
    const/16 v1, 0x3e

    #@3627
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@362a
    .line 1469
    const-string/jumbo v0, "gtcc"

    #@362d
    const/16 v1, 0x2aa7

    #@362f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3632
    .line 1470
    const-string/jumbo v0, "gtcir"

    #@3635
    const/16 v1, 0x2a7a

    #@3637
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@363a
    .line 1471
    const-string/jumbo v0, "gtdot"

    #@363d
    const/16 v1, 0x22d7

    #@363f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3642
    .line 1472
    const-string/jumbo v0, "gtlPar"

    #@3645
    const/16 v1, 0x2995

    #@3647
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@364a
    .line 1473
    const-string/jumbo v0, "gtquest"

    #@364d
    const/16 v1, 0x2a7c

    #@364f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3652
    .line 1474
    const-string/jumbo v0, "gtrapprox"

    #@3655
    const/16 v1, 0x2a86

    #@3657
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@365a
    .line 1475
    const-string/jumbo v0, "gtrarr"

    #@365d
    const/16 v1, 0x2978

    #@365f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3662
    .line 1476
    const-string/jumbo v0, "gtrdot"

    #@3665
    const/16 v1, 0x22d7

    #@3667
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@366a
    .line 1477
    const-string/jumbo v0, "gtreqless"

    #@366d
    const/16 v1, 0x22db

    #@366f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3672
    .line 1478
    const-string/jumbo v0, "gtreqqless"

    #@3675
    const/16 v1, 0x2a8c

    #@3677
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@367a
    .line 1479
    const-string/jumbo v0, "gtrless"

    #@367d
    const/16 v1, 0x2277

    #@367f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3682
    .line 1480
    const-string/jumbo v0, "gtrsim"

    #@3685
    const/16 v1, 0x2273

    #@3687
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@368a
    .line 1481
    const-string/jumbo v0, "Hacek"

    #@368d
    const/16 v1, 0x2c7

    #@368f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3692
    .line 1482
    const-string/jumbo v0, "hairsp"

    #@3695
    const/16 v1, 0x200a

    #@3697
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@369a
    .line 1483
    const-string/jumbo v0, "half"

    #@369d
    const/16 v1, 0xbd

    #@369f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36a2
    .line 1484
    const-string/jumbo v0, "hamilt"

    #@36a5
    const/16 v1, 0x210b

    #@36a7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36aa
    .line 1485
    const-string/jumbo v0, "HARDcy"

    #@36ad
    const/16 v1, 0x42a

    #@36af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36b2
    .line 1486
    const-string/jumbo v0, "hardcy"

    #@36b5
    const/16 v1, 0x44a

    #@36b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36ba
    .line 1487
    const-string/jumbo v0, "hArr"

    #@36bd
    const/16 v1, 0x21d4

    #@36bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36c2
    .line 1488
    const-string/jumbo v0, "harr"

    #@36c5
    const/16 v1, 0x2194

    #@36c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36ca
    .line 1489
    const-string/jumbo v0, "harrcir"

    #@36cd
    const/16 v1, 0x2948

    #@36cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36d2
    .line 1490
    const-string/jumbo v0, "harrw"

    #@36d5
    const/16 v1, 0x21ad

    #@36d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36da
    .line 1491
    const-string/jumbo v0, "Hat"

    #@36dd
    const/16 v1, 0x5e

    #@36df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36e2
    .line 1492
    const-string/jumbo v0, "hbar"

    #@36e5
    const/16 v1, 0x210f

    #@36e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36ea
    .line 1493
    const-string/jumbo v0, "Hcirc"

    #@36ed
    const/16 v1, 0x124

    #@36ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36f2
    .line 1494
    const-string/jumbo v0, "hcirc"

    #@36f5
    const/16 v1, 0x125

    #@36f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@36fa
    .line 1495
    const-string/jumbo v0, "hearts"

    #@36fd
    const/16 v1, 0x2665

    #@36ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3702
    .line 1496
    const-string/jumbo v0, "heartsuit"

    #@3705
    const/16 v1, 0x2665

    #@3707
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@370a
    .line 1497
    const-string/jumbo v0, "hellip"

    #@370d
    const/16 v1, 0x2026

    #@370f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3712
    .line 1498
    const-string/jumbo v0, "hercon"

    #@3715
    const/16 v1, 0x22b9

    #@3717
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@371a
    .line 1499
    const-string/jumbo v0, "Hfr"

    #@371d
    const/16 v1, 0x210c

    #@371f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3722
    .line 1500
    const-string/jumbo v0, "hfr"

    #@3725
    const v1, 0x1d525

    #@3728
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@372b
    .line 1501
    const-string/jumbo v0, "HilbertSpace"

    #@372e
    const/16 v1, 0x210b

    #@3730
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3733
    .line 1502
    const-string/jumbo v0, "hksearow"

    #@3736
    const/16 v1, 0x2925

    #@3738
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@373b
    .line 1503
    const-string/jumbo v0, "hkswarow"

    #@373e
    const/16 v1, 0x2926

    #@3740
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3743
    .line 1504
    const-string/jumbo v0, "hoarr"

    #@3746
    const/16 v1, 0x21ff

    #@3748
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@374b
    .line 1505
    const-string/jumbo v0, "homtht"

    #@374e
    const/16 v1, 0x223b

    #@3750
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3753
    .line 1506
    const-string/jumbo v0, "hookleftarrow"

    #@3756
    const/16 v1, 0x21a9

    #@3758
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@375b
    .line 1507
    const-string/jumbo v0, "hookrightarrow"

    #@375e
    const/16 v1, 0x21aa

    #@3760
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3763
    .line 1508
    const-string/jumbo v0, "Hopf"

    #@3766
    const/16 v1, 0x210d

    #@3768
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@376b
    .line 1509
    const-string/jumbo v0, "hopf"

    #@376e
    const v1, 0x1d559

    #@3771
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3774
    .line 1510
    const-string/jumbo v0, "horbar"

    #@3777
    const/16 v1, 0x2015

    #@3779
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@377c
    .line 1511
    const-string/jumbo v0, "HorizontalLine"

    #@377f
    const/16 v1, 0x2500

    #@3781
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3784
    .line 1512
    const-string/jumbo v0, "Hscr"

    #@3787
    const/16 v1, 0x210b

    #@3789
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@378c
    .line 1513
    const-string/jumbo v0, "hscr"

    #@378f
    const v1, 0x1d4bd

    #@3792
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3795
    .line 1514
    const-string/jumbo v0, "hslash"

    #@3798
    const/16 v1, 0x210f

    #@379a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@379d
    .line 1515
    const-string/jumbo v0, "Hstrok"

    #@37a0
    const/16 v1, 0x126

    #@37a2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37a5
    .line 1516
    const-string/jumbo v0, "hstrok"

    #@37a8
    const/16 v1, 0x127

    #@37aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37ad
    .line 1517
    const-string/jumbo v0, "HumpDownHump"

    #@37b0
    const/16 v1, 0x224e

    #@37b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37b5
    .line 1518
    const-string/jumbo v0, "HumpEqual"

    #@37b8
    const/16 v1, 0x224f

    #@37ba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37bd
    .line 1519
    const-string/jumbo v0, "hybull"

    #@37c0
    const/16 v1, 0x2043

    #@37c2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37c5
    .line 1520
    const-string/jumbo v0, "hyphen"

    #@37c8
    const/16 v1, 0x2010

    #@37ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37cd
    .line 1521
    const-string/jumbo v0, "Iacgr"

    #@37d0
    const/16 v1, 0x38a

    #@37d2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37d5
    .line 1522
    const-string/jumbo v0, "iacgr"

    #@37d8
    const/16 v1, 0x3af

    #@37da
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37dd
    .line 1523
    const-string/jumbo v0, "Iacute"

    #@37e0
    const/16 v1, 0xcd

    #@37e2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37e5
    .line 1524
    const-string/jumbo v0, "iacute"

    #@37e8
    const/16 v1, 0xed

    #@37ea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37ed
    .line 1525
    const-string/jumbo v0, "ic"

    #@37f0
    const/16 v1, 0x2063

    #@37f2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37f5
    .line 1526
    const-string/jumbo v0, "Icirc"

    #@37f8
    const/16 v1, 0xce

    #@37fa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@37fd
    .line 1527
    const-string/jumbo v0, "icirc"

    #@3800
    const/16 v1, 0xee

    #@3802
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3805
    .line 1528
    const-string/jumbo v0, "Icy"

    #@3808
    const/16 v1, 0x418

    #@380a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@380d
    .line 1529
    const-string/jumbo v0, "icy"

    #@3810
    const/16 v1, 0x438

    #@3812
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3815
    .line 1530
    const-string/jumbo v0, "idiagr"

    #@3818
    const/16 v1, 0x390

    #@381a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@381d
    .line 1531
    const-string/jumbo v0, "Idigr"

    #@3820
    const/16 v1, 0x3aa

    #@3822
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3825
    .line 1532
    const-string/jumbo v0, "idigr"

    #@3828
    const/16 v1, 0x3ca

    #@382a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@382d
    .line 1533
    const-string/jumbo v0, "Idot"

    #@3830
    const/16 v1, 0x130

    #@3832
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3835
    .line 1534
    const-string/jumbo v0, "IEcy"

    #@3838
    const/16 v1, 0x415

    #@383a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@383d
    .line 1535
    const-string/jumbo v0, "iecy"

    #@3840
    const/16 v1, 0x435

    #@3842
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3845
    .line 1536
    const-string/jumbo v0, "iexcl"

    #@3848
    const/16 v1, 0xa1

    #@384a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@384d
    .line 1537
    const-string/jumbo v0, "iff"

    #@3850
    const/16 v1, 0x21d4

    #@3852
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3855
    .line 1538
    const-string/jumbo v0, "Ifr"

    #@3858
    const/16 v1, 0x2111

    #@385a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@385d
    .line 1539
    const-string/jumbo v0, "ifr"

    #@3860
    const v1, 0x1d526

    #@3863
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3866
    .line 1540
    const-string/jumbo v0, "Igr"

    #@3869
    const/16 v1, 0x399

    #@386b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@386e
    .line 1541
    const-string/jumbo v0, "igr"

    #@3871
    const/16 v1, 0x3b9

    #@3873
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3876
    .line 1542
    const-string/jumbo v0, "Igrave"

    #@3879
    const/16 v1, 0xcc

    #@387b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@387e
    .line 1543
    const-string/jumbo v0, "igrave"

    #@3881
    const/16 v1, 0xec

    #@3883
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3886
    .line 1544
    const-string/jumbo v0, "ii"

    #@3889
    const/16 v1, 0x2148

    #@388b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@388e
    .line 1545
    const-string/jumbo v0, "iiiint"

    #@3891
    const/16 v1, 0x2a0c

    #@3893
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3896
    .line 1546
    const-string/jumbo v0, "iiint"

    #@3899
    const/16 v1, 0x222d

    #@389b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@389e
    .line 1547
    const-string/jumbo v0, "iinfin"

    #@38a1
    const/16 v1, 0x29dc

    #@38a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38a6
    .line 1548
    const-string/jumbo v0, "iiota"

    #@38a9
    const/16 v1, 0x2129

    #@38ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38ae
    .line 1549
    const-string/jumbo v0, "IJlig"

    #@38b1
    const/16 v1, 0x132

    #@38b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38b6
    .line 1550
    const-string/jumbo v0, "ijlig"

    #@38b9
    const/16 v1, 0x133

    #@38bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38be
    .line 1551
    const-string/jumbo v0, "Im"

    #@38c1
    const/16 v1, 0x2111

    #@38c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38c6
    .line 1552
    const-string/jumbo v0, "Imacr"

    #@38c9
    const/16 v1, 0x12a

    #@38cb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38ce
    .line 1553
    const-string/jumbo v0, "imacr"

    #@38d1
    const/16 v1, 0x12b

    #@38d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38d6
    .line 1554
    const-string/jumbo v0, "image"

    #@38d9
    const/16 v1, 0x2111

    #@38db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38de
    .line 1555
    const-string/jumbo v0, "ImaginaryI"

    #@38e1
    const/16 v1, 0x2148

    #@38e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38e6
    .line 1556
    const-string/jumbo v0, "imagline"

    #@38e9
    const/16 v1, 0x2110

    #@38eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38ee
    .line 1557
    const-string/jumbo v0, "imagpart"

    #@38f1
    const/16 v1, 0x2111

    #@38f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38f6
    .line 1558
    const-string/jumbo v0, "imath"

    #@38f9
    const/16 v1, 0x131

    #@38fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@38fe
    .line 1559
    const-string/jumbo v0, "imof"

    #@3901
    const/16 v1, 0x22b7

    #@3903
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3906
    .line 1560
    const-string/jumbo v0, "imped"

    #@3909
    const/16 v1, 0x1b5

    #@390b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@390e
    .line 1561
    const-string/jumbo v0, "Implies"

    #@3911
    const/16 v1, 0x21d2

    #@3913
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3916
    .line 1562
    const-string/jumbo v0, "in"

    #@3919
    const/16 v1, 0x2208

    #@391b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@391e
    .line 1563
    const-string/jumbo v0, "incare"

    #@3921
    const/16 v1, 0x2105

    #@3923
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3926
    .line 1564
    const-string/jumbo v0, "infin"

    #@3929
    const/16 v1, 0x221e

    #@392b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@392e
    .line 1565
    const-string/jumbo v0, "infintie"

    #@3931
    const/16 v1, 0x29dd

    #@3933
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3936
    .line 1566
    const-string/jumbo v0, "inodot"

    #@3939
    const/16 v1, 0x131

    #@393b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@393e
    .line 1567
    const-string/jumbo v0, "Int"

    #@3941
    const/16 v1, 0x222c

    #@3943
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3946
    .line 1568
    const-string/jumbo v0, "int"

    #@3949
    const/16 v1, 0x222b

    #@394b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@394e
    .line 1569
    const-string/jumbo v0, "intcal"

    #@3951
    const/16 v1, 0x22ba

    #@3953
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3956
    .line 1570
    const-string/jumbo v0, "integers"

    #@3959
    const/16 v1, 0x2124

    #@395b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@395e
    .line 1571
    const-string/jumbo v0, "Integral"

    #@3961
    const/16 v1, 0x222b

    #@3963
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3966
    .line 1572
    const-string/jumbo v0, "intercal"

    #@3969
    const/16 v1, 0x22ba

    #@396b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@396e
    .line 1573
    const-string/jumbo v0, "Intersection"

    #@3971
    const/16 v1, 0x22c2

    #@3973
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3976
    .line 1574
    const-string/jumbo v0, "intlarhk"

    #@3979
    const/16 v1, 0x2a17

    #@397b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@397e
    .line 1575
    const-string/jumbo v0, "intprod"

    #@3981
    const/16 v1, 0x2a3c

    #@3983
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3986
    .line 1576
    const-string/jumbo v0, "InvisibleComma"

    #@3989
    const/16 v1, 0x2063

    #@398b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@398e
    .line 1577
    const-string/jumbo v0, "InvisibleTimes"

    #@3991
    const/16 v1, 0x2062

    #@3993
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3996
    .line 1578
    const-string/jumbo v0, "IOcy"

    #@3999
    const/16 v1, 0x401

    #@399b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@399e
    .line 1579
    const-string/jumbo v0, "iocy"

    #@39a1
    const/16 v1, 0x451

    #@39a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39a6
    .line 1580
    const-string/jumbo v0, "Iogon"

    #@39a9
    const/16 v1, 0x12e

    #@39ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39ae
    .line 1581
    const-string/jumbo v0, "iogon"

    #@39b1
    const/16 v1, 0x12f

    #@39b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39b6
    .line 1582
    const-string/jumbo v0, "Iopf"

    #@39b9
    const v1, 0x1d540

    #@39bc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39bf
    .line 1583
    const-string/jumbo v0, "iopf"

    #@39c2
    const v1, 0x1d55a

    #@39c5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39c8
    .line 1584
    const-string/jumbo v0, "Iota"

    #@39cb
    const/16 v1, 0x399

    #@39cd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39d0
    .line 1585
    const-string/jumbo v0, "iota"

    #@39d3
    const/16 v1, 0x3b9

    #@39d5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39d8
    .line 1586
    const-string/jumbo v0, "iprod"

    #@39db
    const/16 v1, 0x2a3c

    #@39dd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39e0
    .line 1587
    const-string/jumbo v0, "iquest"

    #@39e3
    const/16 v1, 0xbf

    #@39e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39e8
    .line 1588
    const-string/jumbo v0, "Iscr"

    #@39eb
    const/16 v1, 0x2110

    #@39ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39f0
    .line 1589
    const-string/jumbo v0, "iscr"

    #@39f3
    const v1, 0x1d4be

    #@39f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@39f9
    .line 1590
    const-string/jumbo v0, "isin"

    #@39fc
    const/16 v1, 0x2208

    #@39fe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a01
    .line 1591
    const-string/jumbo v0, "isindot"

    #@3a04
    const/16 v1, 0x22f5

    #@3a06
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a09
    .line 1592
    const-string/jumbo v0, "isinE"

    #@3a0c
    const/16 v1, 0x22f9

    #@3a0e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a11
    .line 1593
    const-string/jumbo v0, "isins"

    #@3a14
    const/16 v1, 0x22f4

    #@3a16
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a19
    .line 1594
    const-string/jumbo v0, "isinsv"

    #@3a1c
    const/16 v1, 0x22f3

    #@3a1e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a21
    .line 1595
    const-string/jumbo v0, "isinv"

    #@3a24
    const/16 v1, 0x2208

    #@3a26
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a29
    .line 1596
    const-string/jumbo v0, "it"

    #@3a2c
    const/16 v1, 0x2062

    #@3a2e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a31
    .line 1597
    const-string/jumbo v0, "Itilde"

    #@3a34
    const/16 v1, 0x128

    #@3a36
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a39
    .line 1598
    const-string/jumbo v0, "itilde"

    #@3a3c
    const/16 v1, 0x129

    #@3a3e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a41
    .line 1599
    const-string/jumbo v0, "Iukcy"

    #@3a44
    const/16 v1, 0x406

    #@3a46
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a49
    .line 1600
    const-string/jumbo v0, "iukcy"

    #@3a4c
    const/16 v1, 0x456

    #@3a4e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a51
    .line 1601
    const-string/jumbo v0, "Iuml"

    #@3a54
    const/16 v1, 0xcf

    #@3a56
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a59
    .line 1602
    const-string/jumbo v0, "iuml"

    #@3a5c
    const/16 v1, 0xef

    #@3a5e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a61
    .line 1603
    const-string/jumbo v0, "Jcirc"

    #@3a64
    const/16 v1, 0x134

    #@3a66
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a69
    .line 1604
    const-string/jumbo v0, "jcirc"

    #@3a6c
    const/16 v1, 0x135

    #@3a6e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a71
    .line 1605
    const-string/jumbo v0, "Jcy"

    #@3a74
    const/16 v1, 0x419

    #@3a76
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a79
    .line 1606
    const-string/jumbo v0, "jcy"

    #@3a7c
    const/16 v1, 0x439

    #@3a7e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a81
    .line 1607
    const-string/jumbo v0, "Jfr"

    #@3a84
    const v1, 0x1d50d

    #@3a87
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a8a
    .line 1608
    const-string/jumbo v0, "jfr"

    #@3a8d
    const v1, 0x1d527

    #@3a90
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a93
    .line 1609
    const-string/jumbo v0, "jmath"

    #@3a96
    const/16 v1, 0x237

    #@3a98
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3a9b
    .line 1610
    const-string/jumbo v0, "Jopf"

    #@3a9e
    const v1, 0x1d541

    #@3aa1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3aa4
    .line 1611
    const-string/jumbo v0, "jopf"

    #@3aa7
    const v1, 0x1d55b

    #@3aaa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3aad
    .line 1612
    const-string/jumbo v0, "Jscr"

    #@3ab0
    const v1, 0x1d4a5

    #@3ab3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ab6
    .line 1613
    const-string/jumbo v0, "jscr"

    #@3ab9
    const v1, 0x1d4bf

    #@3abc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3abf
    .line 1614
    const-string/jumbo v0, "Jsercy"

    #@3ac2
    const/16 v1, 0x408

    #@3ac4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ac7
    .line 1615
    const-string/jumbo v0, "jsercy"

    #@3aca
    const/16 v1, 0x458

    #@3acc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3acf
    .line 1616
    const-string/jumbo v0, "Jukcy"

    #@3ad2
    const/16 v1, 0x404

    #@3ad4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ad7
    .line 1617
    const-string/jumbo v0, "jukcy"

    #@3ada
    const/16 v1, 0x454

    #@3adc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3adf
    .line 1618
    const-string/jumbo v0, "Kappa"

    #@3ae2
    const/16 v1, 0x39a

    #@3ae4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ae7
    .line 1619
    const-string/jumbo v0, "kappa"

    #@3aea
    const/16 v1, 0x3ba

    #@3aec
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3aef
    .line 1620
    const-string/jumbo v0, "kappav"

    #@3af2
    const/16 v1, 0x3f0

    #@3af4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3af7
    .line 1621
    const-string/jumbo v0, "Kcedil"

    #@3afa
    const/16 v1, 0x136

    #@3afc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3aff
    .line 1622
    const-string/jumbo v0, "kcedil"

    #@3b02
    const/16 v1, 0x137

    #@3b04
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b07
    .line 1623
    const-string/jumbo v0, "Kcy"

    #@3b0a
    const/16 v1, 0x41a

    #@3b0c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b0f
    .line 1624
    const-string/jumbo v0, "kcy"

    #@3b12
    const/16 v1, 0x43a

    #@3b14
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b17
    .line 1625
    const-string/jumbo v0, "Kfr"

    #@3b1a
    const v1, 0x1d50e

    #@3b1d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b20
    .line 1626
    const-string/jumbo v0, "kfr"

    #@3b23
    const v1, 0x1d528

    #@3b26
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b29
    .line 1627
    const-string/jumbo v0, "Kgr"

    #@3b2c
    const/16 v1, 0x39a

    #@3b2e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b31
    .line 1628
    const-string/jumbo v0, "kgr"

    #@3b34
    const/16 v1, 0x3ba

    #@3b36
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b39
    .line 1629
    const-string/jumbo v0, "kgreen"

    #@3b3c
    const/16 v1, 0x138

    #@3b3e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b41
    .line 1630
    const-string/jumbo v0, "KHcy"

    #@3b44
    const/16 v1, 0x425

    #@3b46
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b49
    .line 1631
    const-string/jumbo v0, "khcy"

    #@3b4c
    const/16 v1, 0x445

    #@3b4e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b51
    .line 1632
    const-string/jumbo v0, "KHgr"

    #@3b54
    const/16 v1, 0x3a7

    #@3b56
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b59
    .line 1633
    const-string/jumbo v0, "khgr"

    #@3b5c
    const/16 v1, 0x3c7

    #@3b5e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b61
    .line 1634
    const-string/jumbo v0, "KJcy"

    #@3b64
    const/16 v1, 0x40c

    #@3b66
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b69
    .line 1635
    const-string/jumbo v0, "kjcy"

    #@3b6c
    const/16 v1, 0x45c

    #@3b6e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b71
    .line 1636
    const-string/jumbo v0, "Kopf"

    #@3b74
    const v1, 0x1d542

    #@3b77
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b7a
    .line 1637
    const-string/jumbo v0, "kopf"

    #@3b7d
    const v1, 0x1d55c

    #@3b80
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b83
    .line 1638
    const-string/jumbo v0, "Kscr"

    #@3b86
    const v1, 0x1d4a6

    #@3b89
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b8c
    .line 1639
    const-string/jumbo v0, "kscr"

    #@3b8f
    const v1, 0x1d4c0

    #@3b92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b95
    .line 1640
    const-string/jumbo v0, "lAarr"

    #@3b98
    const/16 v1, 0x21da

    #@3b9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3b9d
    .line 1641
    const-string/jumbo v0, "Lacute"

    #@3ba0
    const/16 v1, 0x139

    #@3ba2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ba5
    .line 1642
    const-string/jumbo v0, "lacute"

    #@3ba8
    const/16 v1, 0x13a

    #@3baa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bad
    .line 1643
    const-string/jumbo v0, "laemptyv"

    #@3bb0
    const/16 v1, 0x29b4

    #@3bb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bb5
    .line 1644
    const-string/jumbo v0, "lagran"

    #@3bb8
    const/16 v1, 0x2112

    #@3bba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bbd
    .line 1645
    const-string/jumbo v0, "Lambda"

    #@3bc0
    const/16 v1, 0x39b

    #@3bc2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bc5
    .line 1646
    const-string/jumbo v0, "lambda"

    #@3bc8
    const/16 v1, 0x3bb

    #@3bca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bcd
    .line 1647
    const-string/jumbo v0, "Lang"

    #@3bd0
    const/16 v1, 0x27ea

    #@3bd2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bd5
    .line 1648
    const-string/jumbo v0, "lang"

    #@3bd8
    const/16 v1, 0x2329

    #@3bda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bdd
    .line 1649
    const-string/jumbo v0, "langd"

    #@3be0
    const/16 v1, 0x2991

    #@3be2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3be5
    .line 1650
    const-string/jumbo v0, "langle"

    #@3be8
    const/16 v1, 0x2329

    #@3bea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bed
    .line 1651
    const-string/jumbo v0, "lap"

    #@3bf0
    const/16 v1, 0x2a85

    #@3bf2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bf5
    .line 1652
    const-string/jumbo v0, "Laplacetrf"

    #@3bf8
    const/16 v1, 0x2112

    #@3bfa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3bfd
    .line 1653
    const-string/jumbo v0, "laquo"

    #@3c00
    const/16 v1, 0xab

    #@3c02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c05
    .line 1654
    const-string/jumbo v0, "Larr"

    #@3c08
    const/16 v1, 0x219e

    #@3c0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c0d
    .line 1655
    const-string/jumbo v0, "lArr"

    #@3c10
    const/16 v1, 0x21d0

    #@3c12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c15
    .line 1656
    const-string/jumbo v0, "larr"

    #@3c18
    const/16 v1, 0x2190

    #@3c1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c1d
    .line 1657
    const-string/jumbo v0, "larrb"

    #@3c20
    const/16 v1, 0x21e4

    #@3c22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c25
    .line 1658
    const-string/jumbo v0, "larrbfs"

    #@3c28
    const/16 v1, 0x291f

    #@3c2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c2d
    .line 1659
    const-string/jumbo v0, "larrfs"

    #@3c30
    const/16 v1, 0x291d

    #@3c32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c35
    .line 1660
    const-string/jumbo v0, "larrhk"

    #@3c38
    const/16 v1, 0x21a9

    #@3c3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c3d
    .line 1661
    const-string/jumbo v0, "larrlp"

    #@3c40
    const/16 v1, 0x21ab

    #@3c42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c45
    .line 1662
    const-string/jumbo v0, "larrpl"

    #@3c48
    const/16 v1, 0x2939

    #@3c4a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c4d
    .line 1663
    const-string/jumbo v0, "larrsim"

    #@3c50
    const/16 v1, 0x2973

    #@3c52
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c55
    .line 1664
    const-string/jumbo v0, "larrtl"

    #@3c58
    const/16 v1, 0x21a2

    #@3c5a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c5d
    .line 1665
    const-string/jumbo v0, "lat"

    #@3c60
    const/16 v1, 0x2aab

    #@3c62
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c65
    .line 1666
    const-string/jumbo v0, "lAtail"

    #@3c68
    const/16 v1, 0x291b

    #@3c6a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c6d
    .line 1667
    const-string/jumbo v0, "latail"

    #@3c70
    const/16 v1, 0x2919

    #@3c72
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c75
    .line 1668
    const-string/jumbo v0, "late"

    #@3c78
    const/16 v1, 0x2aad

    #@3c7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c7d
    .line 1669
    const-string/jumbo v0, "lBarr"

    #@3c80
    const/16 v1, 0x290e

    #@3c82
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c85
    .line 1670
    const-string/jumbo v0, "lbarr"

    #@3c88
    const/16 v1, 0x290c

    #@3c8a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c8d
    .line 1671
    const-string/jumbo v0, "lbbrk"

    #@3c90
    const/16 v1, 0x2997

    #@3c92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c95
    .line 1672
    const-string/jumbo v0, "lbrace"

    #@3c98
    const/16 v1, 0x7b

    #@3c9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3c9d
    .line 1673
    const-string/jumbo v0, "lbrack"

    #@3ca0
    const/16 v1, 0x5b

    #@3ca2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ca5
    .line 1674
    const-string/jumbo v0, "lbrke"

    #@3ca8
    const/16 v1, 0x298b

    #@3caa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cad
    .line 1675
    const-string/jumbo v0, "lbrksld"

    #@3cb0
    const/16 v1, 0x298f

    #@3cb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cb5
    .line 1676
    const-string/jumbo v0, "lbrkslu"

    #@3cb8
    const/16 v1, 0x298d

    #@3cba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cbd
    .line 1677
    const-string/jumbo v0, "Lcaron"

    #@3cc0
    const/16 v1, 0x13d

    #@3cc2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cc5
    .line 1678
    const-string/jumbo v0, "lcaron"

    #@3cc8
    const/16 v1, 0x13e

    #@3cca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ccd
    .line 1679
    const-string/jumbo v0, "Lcedil"

    #@3cd0
    const/16 v1, 0x13b

    #@3cd2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cd5
    .line 1680
    const-string/jumbo v0, "lcedil"

    #@3cd8
    const/16 v1, 0x13c

    #@3cda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cdd
    .line 1681
    const-string/jumbo v0, "lceil"

    #@3ce0
    const/16 v1, 0x2308

    #@3ce2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ce5
    .line 1682
    const-string/jumbo v0, "lcub"

    #@3ce8
    const/16 v1, 0x7b

    #@3cea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ced
    .line 1683
    const-string/jumbo v0, "Lcy"

    #@3cf0
    const/16 v1, 0x41b

    #@3cf2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cf5
    .line 1684
    const-string/jumbo v0, "lcy"

    #@3cf8
    const/16 v1, 0x43b

    #@3cfa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3cfd
    .line 1685
    const-string/jumbo v0, "ldca"

    #@3d00
    const/16 v1, 0x2936

    #@3d02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d05
    .line 1686
    const-string/jumbo v0, "ldquo"

    #@3d08
    const/16 v1, 0x201c

    #@3d0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d0d
    .line 1687
    const-string/jumbo v0, "ldquor"

    #@3d10
    const/16 v1, 0x201e

    #@3d12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d15
    .line 1688
    const-string/jumbo v0, "ldrdhar"

    #@3d18
    const/16 v1, 0x2967

    #@3d1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d1d
    .line 1689
    const-string/jumbo v0, "ldrushar"

    #@3d20
    const/16 v1, 0x294b

    #@3d22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d25
    .line 1690
    const-string/jumbo v0, "ldsh"

    #@3d28
    const/16 v1, 0x21b2

    #@3d2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d2d
    .line 1691
    const-string/jumbo v0, "lE"

    #@3d30
    const/16 v1, 0x2266

    #@3d32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d35
    .line 1692
    const-string/jumbo v0, "le"

    #@3d38
    const/16 v1, 0x2264

    #@3d3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d3d
    .line 1693
    const-string/jumbo v0, "LeftAngleBracket"

    #@3d40
    const/16 v1, 0x2329

    #@3d42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d45
    .line 1694
    const-string/jumbo v0, "Leftarrow"

    #@3d48
    const/16 v1, 0x21d0

    #@3d4a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d4d
    .line 1695
    const-string/jumbo v0, "leftarrow"

    #@3d50
    const/16 v1, 0x2190

    #@3d52
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d55
    .line 1696
    const-string/jumbo v0, "LeftArrowBar"

    #@3d58
    const/16 v1, 0x21e4

    #@3d5a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d5d
    .line 1697
    const-string/jumbo v0, "LeftArrowRightArrow"

    #@3d60
    const/16 v1, 0x21c6

    #@3d62
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d65
    .line 1698
    const-string/jumbo v0, "leftarrowtail"

    #@3d68
    const/16 v1, 0x21a2

    #@3d6a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d6d
    .line 1699
    const-string/jumbo v0, "LeftCeiling"

    #@3d70
    const/16 v1, 0x2308

    #@3d72
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d75
    .line 1700
    const-string/jumbo v0, "LeftDoubleBracket"

    #@3d78
    const/16 v1, 0x27e6

    #@3d7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d7d
    .line 1701
    const-string/jumbo v0, "LeftDownTeeVector"

    #@3d80
    const/16 v1, 0x2961

    #@3d82
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d85
    .line 1702
    const-string/jumbo v0, "LeftDownVector"

    #@3d88
    const/16 v1, 0x21c3

    #@3d8a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d8d
    .line 1703
    const-string/jumbo v0, "LeftDownVectorBar"

    #@3d90
    const/16 v1, 0x2959

    #@3d92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d95
    .line 1704
    const-string/jumbo v0, "LeftFloor"

    #@3d98
    const/16 v1, 0x230a

    #@3d9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3d9d
    .line 1705
    const-string/jumbo v0, "leftharpoondown"

    #@3da0
    const/16 v1, 0x21bd

    #@3da2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3da5
    .line 1706
    const-string/jumbo v0, "leftharpoonup"

    #@3da8
    const/16 v1, 0x21bc

    #@3daa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3dad
    .line 1707
    const-string/jumbo v0, "leftleftarrows"

    #@3db0
    const/16 v1, 0x21c7

    #@3db2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3db5
    .line 1708
    const-string/jumbo v0, "Leftrightarrow"

    #@3db8
    const/16 v1, 0x21d4

    #@3dba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3dbd
    .line 1709
    const-string/jumbo v0, "leftrightarrow"

    #@3dc0
    const/16 v1, 0x2194

    #@3dc2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3dc5
    .line 1710
    const-string/jumbo v0, "leftrightarrows"

    #@3dc8
    const/16 v1, 0x21c6

    #@3dca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3dcd
    .line 1711
    const-string/jumbo v0, "leftrightharpoons"

    #@3dd0
    const/16 v1, 0x21cb

    #@3dd2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3dd5
    .line 1712
    const-string/jumbo v0, "leftrightsquigarrow"

    #@3dd8
    const/16 v1, 0x21ad

    #@3dda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ddd
    .line 1713
    const-string/jumbo v0, "LeftRightVector"

    #@3de0
    const/16 v1, 0x294e

    #@3de2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3de5
    .line 1714
    const-string/jumbo v0, "LeftTee"

    #@3de8
    const/16 v1, 0x22a3

    #@3dea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ded
    .line 1715
    const-string/jumbo v0, "LeftTeeArrow"

    #@3df0
    const/16 v1, 0x21a4

    #@3df2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3df5
    .line 1716
    const-string/jumbo v0, "LeftTeeVector"

    #@3df8
    const/16 v1, 0x295a

    #@3dfa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3dfd
    .line 1717
    const-string/jumbo v0, "leftthreetimes"

    #@3e00
    const/16 v1, 0x22cb

    #@3e02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e05
    .line 1718
    const-string/jumbo v0, "LeftTriangle"

    #@3e08
    const/16 v1, 0x22b2

    #@3e0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e0d
    .line 1719
    const-string/jumbo v0, "LeftTriangleBar"

    #@3e10
    const/16 v1, 0x29cf

    #@3e12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e15
    .line 1720
    const-string/jumbo v0, "LeftTriangleEqual"

    #@3e18
    const/16 v1, 0x22b4

    #@3e1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e1d
    .line 1721
    const-string/jumbo v0, "LeftUpDownVector"

    #@3e20
    const/16 v1, 0x2951

    #@3e22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e25
    .line 1722
    const-string/jumbo v0, "LeftUpTeeVector"

    #@3e28
    const/16 v1, 0x2960

    #@3e2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e2d
    .line 1723
    const-string/jumbo v0, "LeftUpVector"

    #@3e30
    const/16 v1, 0x21bf

    #@3e32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e35
    .line 1724
    const-string/jumbo v0, "LeftUpVectorBar"

    #@3e38
    const/16 v1, 0x2958

    #@3e3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e3d
    .line 1725
    const-string/jumbo v0, "LeftVector"

    #@3e40
    const/16 v1, 0x21bc

    #@3e42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e45
    .line 1726
    const-string/jumbo v0, "LeftVectorBar"

    #@3e48
    const/16 v1, 0x2952

    #@3e4a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e4d
    .line 1727
    const-string/jumbo v0, "lEg"

    #@3e50
    const/16 v1, 0x2a8b

    #@3e52
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e55
    .line 1728
    const-string/jumbo v0, "leg"

    #@3e58
    const/16 v1, 0x22da

    #@3e5a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e5d
    .line 1729
    const-string/jumbo v0, "leq"

    #@3e60
    const/16 v1, 0x2264

    #@3e62
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e65
    .line 1730
    const-string/jumbo v0, "leqq"

    #@3e68
    const/16 v1, 0x2266

    #@3e6a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e6d
    .line 1731
    const-string/jumbo v0, "leqslant"

    #@3e70
    const/16 v1, 0x2a7d

    #@3e72
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e75
    .line 1732
    const-string/jumbo v0, "les"

    #@3e78
    const/16 v1, 0x2a7d

    #@3e7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e7d
    .line 1733
    const-string/jumbo v0, "lescc"

    #@3e80
    const/16 v1, 0x2aa8

    #@3e82
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e85
    .line 1734
    const-string/jumbo v0, "lesdot"

    #@3e88
    const/16 v1, 0x2a7f

    #@3e8a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e8d
    .line 1735
    const-string/jumbo v0, "lesdoto"

    #@3e90
    const/16 v1, 0x2a81

    #@3e92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e95
    .line 1736
    const-string/jumbo v0, "lesdotor"

    #@3e98
    const/16 v1, 0x2a83

    #@3e9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3e9d
    .line 1737
    const-string/jumbo v0, "lesges"

    #@3ea0
    const/16 v1, 0x2a93

    #@3ea2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ea5
    .line 1738
    const-string/jumbo v0, "lessapprox"

    #@3ea8
    const/16 v1, 0x2a85

    #@3eaa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ead
    .line 1739
    const-string/jumbo v0, "lessdot"

    #@3eb0
    const/16 v1, 0x22d6

    #@3eb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3eb5
    .line 1740
    const-string/jumbo v0, "lesseqgtr"

    #@3eb8
    const/16 v1, 0x22da

    #@3eba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ebd
    .line 1741
    const-string/jumbo v0, "lesseqqgtr"

    #@3ec0
    const/16 v1, 0x2a8b

    #@3ec2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ec5
    .line 1742
    const-string/jumbo v0, "LessEqualGreater"

    #@3ec8
    const/16 v1, 0x22da

    #@3eca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ecd
    .line 1743
    const-string/jumbo v0, "LessFullEqual"

    #@3ed0
    const/16 v1, 0x2266

    #@3ed2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ed5
    .line 1744
    const-string/jumbo v0, "LessGreater"

    #@3ed8
    const/16 v1, 0x2276

    #@3eda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3edd
    .line 1745
    const-string/jumbo v0, "lessgtr"

    #@3ee0
    const/16 v1, 0x2276

    #@3ee2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ee5
    .line 1746
    const-string/jumbo v0, "LessLess"

    #@3ee8
    const/16 v1, 0x2aa1

    #@3eea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3eed
    .line 1747
    const-string/jumbo v0, "lesssim"

    #@3ef0
    const/16 v1, 0x2272

    #@3ef2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ef5
    .line 1748
    const-string/jumbo v0, "LessSlantEqual"

    #@3ef8
    const/16 v1, 0x2a7d

    #@3efa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3efd
    .line 1749
    const-string/jumbo v0, "LessTilde"

    #@3f00
    const/16 v1, 0x2272

    #@3f02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f05
    .line 1750
    const-string/jumbo v0, "lfisht"

    #@3f08
    const/16 v1, 0x297c

    #@3f0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f0d
    .line 1751
    const-string/jumbo v0, "lfloor"

    #@3f10
    const/16 v1, 0x230a

    #@3f12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f15
    .line 1752
    const-string/jumbo v0, "Lfr"

    #@3f18
    const v1, 0x1d50f

    #@3f1b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f1e
    .line 1753
    const-string/jumbo v0, "lfr"

    #@3f21
    const v1, 0x1d529

    #@3f24
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f27
    .line 1754
    const-string/jumbo v0, "lg"

    #@3f2a
    const/16 v1, 0x2276

    #@3f2c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f2f
    .line 1755
    const-string/jumbo v0, "lgE"

    #@3f32
    const/16 v1, 0x2a91

    #@3f34
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f37
    .line 1756
    const-string/jumbo v0, "Lgr"

    #@3f3a
    const/16 v1, 0x39b

    #@3f3c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f3f
    .line 1757
    const-string/jumbo v0, "lgr"

    #@3f42
    const/16 v1, 0x3bb

    #@3f44
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f47
    .line 1758
    const-string/jumbo v0, "lHar"

    #@3f4a
    const/16 v1, 0x2962

    #@3f4c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f4f
    .line 1759
    const-string/jumbo v0, "lhard"

    #@3f52
    const/16 v1, 0x21bd

    #@3f54
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f57
    .line 1760
    const-string/jumbo v0, "lharu"

    #@3f5a
    const/16 v1, 0x21bc

    #@3f5c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f5f
    .line 1761
    const-string/jumbo v0, "lharul"

    #@3f62
    const/16 v1, 0x296a

    #@3f64
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f67
    .line 1762
    const-string/jumbo v0, "lhblk"

    #@3f6a
    const/16 v1, 0x2584

    #@3f6c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f6f
    .line 1763
    const-string/jumbo v0, "LJcy"

    #@3f72
    const/16 v1, 0x409

    #@3f74
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f77
    .line 1764
    const-string/jumbo v0, "ljcy"

    #@3f7a
    const/16 v1, 0x459

    #@3f7c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f7f
    .line 1765
    const-string/jumbo v0, "Ll"

    #@3f82
    const/16 v1, 0x22d8

    #@3f84
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f87
    .line 1766
    const-string/jumbo v0, "ll"

    #@3f8a
    const/16 v1, 0x226a

    #@3f8c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f8f
    .line 1767
    const-string/jumbo v0, "llarr"

    #@3f92
    const/16 v1, 0x21c7

    #@3f94
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f97
    .line 1768
    const-string/jumbo v0, "llcorner"

    #@3f9a
    const/16 v1, 0x231e

    #@3f9c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3f9f
    .line 1769
    const-string/jumbo v0, "Lleftarrow"

    #@3fa2
    const/16 v1, 0x21da

    #@3fa4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fa7
    .line 1770
    const-string/jumbo v0, "llhard"

    #@3faa
    const/16 v1, 0x296b

    #@3fac
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3faf
    .line 1771
    const-string/jumbo v0, "lltri"

    #@3fb2
    const/16 v1, 0x25fa

    #@3fb4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fb7
    .line 1772
    const-string/jumbo v0, "Lmidot"

    #@3fba
    const/16 v1, 0x13f

    #@3fbc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fbf
    .line 1773
    const-string/jumbo v0, "lmidot"

    #@3fc2
    const/16 v1, 0x140

    #@3fc4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fc7
    .line 1774
    const-string/jumbo v0, "lmoust"

    #@3fca
    const/16 v1, 0x23b0

    #@3fcc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fcf
    .line 1775
    const-string/jumbo v0, "lmoustache"

    #@3fd2
    const/16 v1, 0x23b0

    #@3fd4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fd7
    .line 1776
    const-string/jumbo v0, "lnap"

    #@3fda
    const/16 v1, 0x2a89

    #@3fdc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fdf
    .line 1777
    const-string/jumbo v0, "lnapprox"

    #@3fe2
    const/16 v1, 0x2a89

    #@3fe4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fe7
    .line 1778
    const-string/jumbo v0, "lnE"

    #@3fea
    const/16 v1, 0x2268

    #@3fec
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fef
    .line 1779
    const-string/jumbo v0, "lne"

    #@3ff2
    const/16 v1, 0x2a87

    #@3ff4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3ff7
    .line 1780
    const-string/jumbo v0, "lneq"

    #@3ffa
    const/16 v1, 0x2a87

    #@3ffc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@3fff
    .line 1781
    const-string/jumbo v0, "lneqq"

    #@4002
    const/16 v1, 0x2268

    #@4004
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4007
    .line 1782
    const-string/jumbo v0, "lnsim"

    #@400a
    const/16 v1, 0x22e6

    #@400c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@400f
    .line 1783
    const-string/jumbo v0, "loang"

    #@4012
    const/16 v1, 0x27ec

    #@4014
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4017
    .line 1784
    const-string/jumbo v0, "loarr"

    #@401a
    const/16 v1, 0x21fd

    #@401c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@401f
    .line 1785
    const-string/jumbo v0, "lobrk"

    #@4022
    const/16 v1, 0x27e6

    #@4024
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4027
    .line 1786
    const-string/jumbo v0, "Longleftarrow"

    #@402a
    const/16 v1, 0x27f8

    #@402c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@402f
    .line 1787
    const-string/jumbo v0, "longleftarrow"

    #@4032
    const/16 v1, 0x27f5

    #@4034
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4037
    .line 1788
    const-string/jumbo v0, "Longleftrightarrow"

    #@403a
    const/16 v1, 0x27fa

    #@403c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@403f
    .line 1789
    const-string/jumbo v0, "longleftrightarrow"

    #@4042
    const/16 v1, 0x27f7

    #@4044
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4047
    .line 1790
    const-string/jumbo v0, "longmapsto"

    #@404a
    const/16 v1, 0x27fc

    #@404c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@404f
    .line 1791
    const-string/jumbo v0, "Longrightarrow"

    #@4052
    const/16 v1, 0x27f9

    #@4054
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4057
    .line 1792
    const-string/jumbo v0, "longrightarrow"

    #@405a
    const/16 v1, 0x27f6

    #@405c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@405f
    .line 1793
    const-string/jumbo v0, "looparrowleft"

    #@4062
    const/16 v1, 0x21ab

    #@4064
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4067
    .line 1794
    const-string/jumbo v0, "looparrowright"

    #@406a
    const/16 v1, 0x21ac

    #@406c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@406f
    .line 1795
    const-string/jumbo v0, "lopar"

    #@4072
    const/16 v1, 0x2985

    #@4074
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4077
    .line 1796
    const-string/jumbo v0, "Lopf"

    #@407a
    const v1, 0x1d543

    #@407d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4080
    .line 1797
    const-string/jumbo v0, "lopf"

    #@4083
    const v1, 0x1d55d

    #@4086
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4089
    .line 1798
    const-string/jumbo v0, "loplus"

    #@408c
    const/16 v1, 0x2a2d

    #@408e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4091
    .line 1799
    const-string/jumbo v0, "lotimes"

    #@4094
    const/16 v1, 0x2a34

    #@4096
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4099
    .line 1800
    const-string/jumbo v0, "lowast"

    #@409c
    const/16 v1, 0x2217

    #@409e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40a1
    .line 1801
    const-string/jumbo v0, "lowbar"

    #@40a4
    const/16 v1, 0x5f

    #@40a6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40a9
    .line 1802
    const-string/jumbo v0, "LowerLeftArrow"

    #@40ac
    const/16 v1, 0x2199

    #@40ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40b1
    .line 1803
    const-string/jumbo v0, "LowerRightArrow"

    #@40b4
    const/16 v1, 0x2198

    #@40b6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40b9
    .line 1804
    const-string/jumbo v0, "loz"

    #@40bc
    const/16 v1, 0x25ca

    #@40be
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40c1
    .line 1805
    const-string/jumbo v0, "lozenge"

    #@40c4
    const/16 v1, 0x25ca

    #@40c6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40c9
    .line 1806
    const-string/jumbo v0, "lozf"

    #@40cc
    const/16 v1, 0x29eb

    #@40ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40d1
    .line 1807
    const-string/jumbo v0, "lpar"

    #@40d4
    const/16 v1, 0x28

    #@40d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40d9
    .line 1808
    const-string/jumbo v0, "lparlt"

    #@40dc
    const/16 v1, 0x2993

    #@40de
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40e1
    .line 1809
    const-string/jumbo v0, "lrarr"

    #@40e4
    const/16 v1, 0x21c6

    #@40e6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40e9
    .line 1810
    const-string/jumbo v0, "lrcorner"

    #@40ec
    const/16 v1, 0x231f

    #@40ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40f1
    .line 1811
    const-string/jumbo v0, "lrhar"

    #@40f4
    const/16 v1, 0x21cb

    #@40f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@40f9
    .line 1812
    const-string/jumbo v0, "lrhard"

    #@40fc
    const/16 v1, 0x296d

    #@40fe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4101
    .line 1813
    const-string/jumbo v0, "lrm"

    #@4104
    const/16 v1, 0x200e

    #@4106
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4109
    .line 1814
    const-string/jumbo v0, "lrtri"

    #@410c
    const/16 v1, 0x22bf

    #@410e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4111
    .line 1815
    const-string/jumbo v0, "lsaquo"

    #@4114
    const/16 v1, 0x2039

    #@4116
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4119
    .line 1816
    const-string/jumbo v0, "Lscr"

    #@411c
    const/16 v1, 0x2112

    #@411e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4121
    .line 1817
    const-string/jumbo v0, "lscr"

    #@4124
    const v1, 0x1d4c1

    #@4127
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@412a
    .line 1818
    const-string/jumbo v0, "lsh"

    #@412d
    const/16 v1, 0x21b0

    #@412f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4132
    .line 1819
    const-string/jumbo v0, "lsim"

    #@4135
    const/16 v1, 0x2272

    #@4137
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@413a
    .line 1820
    const-string/jumbo v0, "lsime"

    #@413d
    const/16 v1, 0x2a8d

    #@413f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4142
    .line 1821
    const-string/jumbo v0, "lsimg"

    #@4145
    const/16 v1, 0x2a8f

    #@4147
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@414a
    .line 1822
    const-string/jumbo v0, "lsqb"

    #@414d
    const/16 v1, 0x5b

    #@414f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4152
    .line 1823
    const-string/jumbo v0, "lsquo"

    #@4155
    const/16 v1, 0x2018

    #@4157
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@415a
    .line 1824
    const-string/jumbo v0, "lsquor"

    #@415d
    const/16 v1, 0x201a

    #@415f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4162
    .line 1825
    const-string/jumbo v0, "Lstrok"

    #@4165
    const/16 v1, 0x141

    #@4167
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@416a
    .line 1826
    const-string/jumbo v0, "lstrok"

    #@416d
    const/16 v1, 0x142

    #@416f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4172
    .line 1827
    const-string/jumbo v0, "Lt"

    #@4175
    const/16 v1, 0x226a

    #@4177
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@417a
    .line 1828
    const-string/jumbo v0, "lt"

    #@417d
    const/16 v1, 0x3c

    #@417f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4182
    .line 1829
    const-string/jumbo v0, "ltcc"

    #@4185
    const/16 v1, 0x2aa6

    #@4187
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@418a
    .line 1830
    const-string/jumbo v0, "ltcir"

    #@418d
    const/16 v1, 0x2a79

    #@418f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4192
    .line 1831
    const-string/jumbo v0, "ltdot"

    #@4195
    const/16 v1, 0x22d6

    #@4197
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@419a
    .line 1832
    const-string/jumbo v0, "lthree"

    #@419d
    const/16 v1, 0x22cb

    #@419f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41a2
    .line 1833
    const-string/jumbo v0, "ltimes"

    #@41a5
    const/16 v1, 0x22c9

    #@41a7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41aa
    .line 1834
    const-string/jumbo v0, "ltlarr"

    #@41ad
    const/16 v1, 0x2976

    #@41af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41b2
    .line 1835
    const-string/jumbo v0, "ltquest"

    #@41b5
    const/16 v1, 0x2a7b

    #@41b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41ba
    .line 1836
    const-string/jumbo v0, "ltri"

    #@41bd
    const/16 v1, 0x25c3

    #@41bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41c2
    .line 1837
    const-string/jumbo v0, "ltrie"

    #@41c5
    const/16 v1, 0x22b4

    #@41c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41ca
    .line 1838
    const-string/jumbo v0, "ltrif"

    #@41cd
    const/16 v1, 0x25c2

    #@41cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41d2
    .line 1839
    const-string/jumbo v0, "ltrPar"

    #@41d5
    const/16 v1, 0x2996

    #@41d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41da
    .line 1840
    const-string/jumbo v0, "lurdshar"

    #@41dd
    const/16 v1, 0x294a

    #@41df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41e2
    .line 1841
    const-string/jumbo v0, "luruhar"

    #@41e5
    const/16 v1, 0x2966

    #@41e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41ea
    .line 1842
    const-string/jumbo v0, "macr"

    #@41ed
    const/16 v1, 0xaf

    #@41ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41f2
    .line 1843
    const-string/jumbo v0, "male"

    #@41f5
    const/16 v1, 0x2642

    #@41f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@41fa
    .line 1844
    const-string/jumbo v0, "malt"

    #@41fd
    const/16 v1, 0x2720

    #@41ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4202
    .line 1845
    const-string/jumbo v0, "maltese"

    #@4205
    const/16 v1, 0x2720

    #@4207
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@420a
    .line 1846
    const-string/jumbo v0, "Map"

    #@420d
    const/16 v1, 0x2905

    #@420f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4212
    .line 1847
    const-string/jumbo v0, "map"

    #@4215
    const/16 v1, 0x21a6

    #@4217
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@421a
    .line 1848
    const-string/jumbo v0, "mapsto"

    #@421d
    const/16 v1, 0x21a6

    #@421f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4222
    .line 1849
    const-string/jumbo v0, "mapstodown"

    #@4225
    const/16 v1, 0x21a7

    #@4227
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@422a
    .line 1850
    const-string/jumbo v0, "mapstoleft"

    #@422d
    const/16 v1, 0x21a4

    #@422f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4232
    .line 1851
    const-string/jumbo v0, "mapstoup"

    #@4235
    const/16 v1, 0x21a5

    #@4237
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@423a
    .line 1852
    const-string/jumbo v0, "marker"

    #@423d
    const/16 v1, 0x25ae

    #@423f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4242
    .line 1853
    const-string/jumbo v0, "mcomma"

    #@4245
    const/16 v1, 0x2a29

    #@4247
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@424a
    .line 1854
    const-string/jumbo v0, "Mcy"

    #@424d
    const/16 v1, 0x41c

    #@424f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4252
    .line 1855
    const-string/jumbo v0, "mcy"

    #@4255
    const/16 v1, 0x43c

    #@4257
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@425a
    .line 1856
    const-string/jumbo v0, "mdash"

    #@425d
    const/16 v1, 0x2014

    #@425f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4262
    .line 1857
    const-string/jumbo v0, "mDDot"

    #@4265
    const/16 v1, 0x223a

    #@4267
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@426a
    .line 1858
    const-string/jumbo v0, "measuredangle"

    #@426d
    const/16 v1, 0x2221

    #@426f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4272
    .line 1859
    const-string/jumbo v0, "MediumSpace"

    #@4275
    const/16 v1, 0x205f

    #@4277
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@427a
    .line 1860
    const-string/jumbo v0, "Mellintrf"

    #@427d
    const/16 v1, 0x2133

    #@427f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4282
    .line 1861
    const-string/jumbo v0, "Mfr"

    #@4285
    const v1, 0x1d510

    #@4288
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@428b
    .line 1862
    const-string/jumbo v0, "mfr"

    #@428e
    const v1, 0x1d52a

    #@4291
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4294
    .line 1863
    const-string/jumbo v0, "Mgr"

    #@4297
    const/16 v1, 0x39c

    #@4299
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@429c
    .line 1864
    const-string/jumbo v0, "mgr"

    #@429f
    const/16 v1, 0x3bc

    #@42a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42a4
    .line 1865
    const-string/jumbo v0, "mho"

    #@42a7
    const/16 v1, 0x2127

    #@42a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42ac
    .line 1866
    const-string/jumbo v0, "micro"

    #@42af
    const/16 v1, 0xb5

    #@42b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42b4
    .line 1867
    const-string/jumbo v0, "mid"

    #@42b7
    const/16 v1, 0x2223

    #@42b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42bc
    .line 1868
    const-string/jumbo v0, "midast"

    #@42bf
    const/16 v1, 0x2a

    #@42c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42c4
    .line 1869
    const-string/jumbo v0, "midcir"

    #@42c7
    const/16 v1, 0x2af0

    #@42c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42cc
    .line 1870
    const-string/jumbo v0, "middot"

    #@42cf
    const/16 v1, 0xb7

    #@42d1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42d4
    .line 1871
    const-string/jumbo v0, "minus"

    #@42d7
    const/16 v1, 0x2212

    #@42d9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42dc
    .line 1872
    const-string/jumbo v0, "minusb"

    #@42df
    const/16 v1, 0x229f

    #@42e1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42e4
    .line 1873
    const-string/jumbo v0, "minusd"

    #@42e7
    const/16 v1, 0x2238

    #@42e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42ec
    .line 1874
    const-string/jumbo v0, "minusdu"

    #@42ef
    const/16 v1, 0x2a2a

    #@42f1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42f4
    .line 1875
    const-string/jumbo v0, "MinusPlus"

    #@42f7
    const/16 v1, 0x2213

    #@42f9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@42fc
    .line 1876
    const-string/jumbo v0, "mlcp"

    #@42ff
    const/16 v1, 0x2adb

    #@4301
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4304
    .line 1877
    const-string/jumbo v0, "mldr"

    #@4307
    const/16 v1, 0x2026

    #@4309
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@430c
    .line 1878
    const-string/jumbo v0, "mnplus"

    #@430f
    const/16 v1, 0x2213

    #@4311
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4314
    .line 1879
    const-string/jumbo v0, "models"

    #@4317
    const/16 v1, 0x22a7

    #@4319
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@431c
    .line 1880
    const-string/jumbo v0, "Mopf"

    #@431f
    const v1, 0x1d544

    #@4322
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4325
    .line 1881
    const-string/jumbo v0, "mopf"

    #@4328
    const v1, 0x1d55e

    #@432b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@432e
    .line 1882
    const-string/jumbo v0, "mp"

    #@4331
    const/16 v1, 0x2213

    #@4333
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4336
    .line 1883
    const-string/jumbo v0, "Mscr"

    #@4339
    const/16 v1, 0x2133

    #@433b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@433e
    .line 1884
    const-string/jumbo v0, "mscr"

    #@4341
    const v1, 0x1d4c2

    #@4344
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4347
    .line 1885
    const-string/jumbo v0, "mstpos"

    #@434a
    const/16 v1, 0x223e

    #@434c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@434f
    .line 1886
    const-string/jumbo v0, "Mu"

    #@4352
    const/16 v1, 0x39c

    #@4354
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4357
    .line 1887
    const-string/jumbo v0, "mu"

    #@435a
    const/16 v1, 0x3bc

    #@435c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@435f
    .line 1888
    const-string/jumbo v0, "multimap"

    #@4362
    const/16 v1, 0x22b8

    #@4364
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4367
    .line 1889
    const-string/jumbo v0, "mumap"

    #@436a
    const/16 v1, 0x22b8

    #@436c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@436f
    .line 1890
    const-string/jumbo v0, "nabla"

    #@4372
    const/16 v1, 0x2207

    #@4374
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4377
    .line 1891
    const-string/jumbo v0, "Nacute"

    #@437a
    const/16 v1, 0x143

    #@437c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@437f
    .line 1892
    const-string/jumbo v0, "nacute"

    #@4382
    const/16 v1, 0x144

    #@4384
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4387
    .line 1893
    const-string/jumbo v0, "nap"

    #@438a
    const/16 v1, 0x2249

    #@438c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@438f
    .line 1894
    const-string/jumbo v0, "napos"

    #@4392
    const/16 v1, 0x149

    #@4394
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4397
    .line 1895
    const-string/jumbo v0, "napprox"

    #@439a
    const/16 v1, 0x2249

    #@439c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@439f
    .line 1896
    const-string/jumbo v0, "natur"

    #@43a2
    const/16 v1, 0x266e

    #@43a4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43a7
    .line 1897
    const-string/jumbo v0, "natural"

    #@43aa
    const/16 v1, 0x266e

    #@43ac
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43af
    .line 1898
    const-string/jumbo v0, "naturals"

    #@43b2
    const/16 v1, 0x2115

    #@43b4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43b7
    .line 1899
    const-string/jumbo v0, "nbsp"

    #@43ba
    const/16 v1, 0xa0

    #@43bc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43bf
    .line 1900
    const-string/jumbo v0, "ncap"

    #@43c2
    const/16 v1, 0x2a43

    #@43c4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43c7
    .line 1901
    const-string/jumbo v0, "Ncaron"

    #@43ca
    const/16 v1, 0x147

    #@43cc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43cf
    .line 1902
    const-string/jumbo v0, "ncaron"

    #@43d2
    const/16 v1, 0x148

    #@43d4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43d7
    .line 1903
    const-string/jumbo v0, "Ncedil"

    #@43da
    const/16 v1, 0x145

    #@43dc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43df
    .line 1904
    const-string/jumbo v0, "ncedil"

    #@43e2
    const/16 v1, 0x146

    #@43e4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43e7
    .line 1905
    const-string/jumbo v0, "ncong"

    #@43ea
    const/16 v1, 0x2247

    #@43ec
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43ef
    .line 1906
    const-string/jumbo v0, "ncup"

    #@43f2
    const/16 v1, 0x2a42

    #@43f4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43f7
    .line 1907
    const-string/jumbo v0, "Ncy"

    #@43fa
    const/16 v1, 0x41d

    #@43fc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@43ff
    .line 1908
    const-string/jumbo v0, "ncy"

    #@4402
    const/16 v1, 0x43d

    #@4404
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4407
    .line 1909
    const-string/jumbo v0, "ndash"

    #@440a
    const/16 v1, 0x2013

    #@440c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@440f
    .line 1910
    const-string/jumbo v0, "ne"

    #@4412
    const/16 v1, 0x2260

    #@4414
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4417
    .line 1911
    const-string/jumbo v0, "nearhk"

    #@441a
    const/16 v1, 0x2924

    #@441c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@441f
    .line 1912
    const-string/jumbo v0, "neArr"

    #@4422
    const/16 v1, 0x21d7

    #@4424
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4427
    .line 1913
    const-string/jumbo v0, "nearr"

    #@442a
    const/16 v1, 0x2197

    #@442c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@442f
    .line 1914
    const-string/jumbo v0, "nearrow"

    #@4432
    const/16 v1, 0x2197

    #@4434
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4437
    .line 1915
    const-string/jumbo v0, "NegativeMediumSpace"

    #@443a
    const/16 v1, 0x200b

    #@443c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@443f
    .line 1916
    const-string/jumbo v0, "NegativeThickSpace"

    #@4442
    const/16 v1, 0x200b

    #@4444
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4447
    .line 1917
    const-string/jumbo v0, "NegativeThinSpace"

    #@444a
    const/16 v1, 0x200b

    #@444c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@444f
    .line 1918
    const-string/jumbo v0, "NegativeVeryThinSpace"

    #@4452
    const/16 v1, 0x200b

    #@4454
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4457
    .line 1919
    const-string/jumbo v0, "nequiv"

    #@445a
    const/16 v1, 0x2262

    #@445c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@445f
    .line 1920
    const-string/jumbo v0, "nesear"

    #@4462
    const/16 v1, 0x2928

    #@4464
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4467
    .line 1921
    const-string/jumbo v0, "NestedGreaterGreater"

    #@446a
    const/16 v1, 0x226b

    #@446c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@446f
    .line 1922
    const-string/jumbo v0, "NestedLessLess"

    #@4472
    const/16 v1, 0x226a

    #@4474
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4477
    .line 1923
    const-string/jumbo v0, "NewLine"

    #@447a
    const/16 v1, 0xa

    #@447c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@447f
    .line 1924
    const-string/jumbo v0, "nexist"

    #@4482
    const/16 v1, 0x2204

    #@4484
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4487
    .line 1925
    const-string/jumbo v0, "nexists"

    #@448a
    const/16 v1, 0x2204

    #@448c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@448f
    .line 1926
    const-string/jumbo v0, "Nfr"

    #@4492
    const v1, 0x1d511

    #@4495
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4498
    .line 1927
    const-string/jumbo v0, "nfr"

    #@449b
    const v1, 0x1d52b

    #@449e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44a1
    .line 1928
    const-string/jumbo v0, "nge"

    #@44a4
    const/16 v1, 0x2271

    #@44a6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44a9
    .line 1929
    const-string/jumbo v0, "ngeq"

    #@44ac
    const/16 v1, 0x2271

    #@44ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44b1
    .line 1930
    const-string/jumbo v0, "Ngr"

    #@44b4
    const/16 v1, 0x39d

    #@44b6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44b9
    .line 1931
    const-string/jumbo v0, "ngr"

    #@44bc
    const/16 v1, 0x3bd

    #@44be
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44c1
    .line 1932
    const-string/jumbo v0, "ngsim"

    #@44c4
    const/16 v1, 0x2275

    #@44c6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44c9
    .line 1933
    const-string/jumbo v0, "ngt"

    #@44cc
    const/16 v1, 0x226f

    #@44ce
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44d1
    .line 1934
    const-string/jumbo v0, "ngtr"

    #@44d4
    const/16 v1, 0x226f

    #@44d6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44d9
    .line 1935
    const-string/jumbo v0, "nhArr"

    #@44dc
    const/16 v1, 0x21ce

    #@44de
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44e1
    .line 1936
    const-string/jumbo v0, "nharr"

    #@44e4
    const/16 v1, 0x21ae

    #@44e6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44e9
    .line 1937
    const-string/jumbo v0, "nhpar"

    #@44ec
    const/16 v1, 0x2af2

    #@44ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44f1
    .line 1938
    const-string/jumbo v0, "ni"

    #@44f4
    const/16 v1, 0x220b

    #@44f6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@44f9
    .line 1939
    const-string/jumbo v0, "nis"

    #@44fc
    const/16 v1, 0x22fc

    #@44fe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4501
    .line 1940
    const-string/jumbo v0, "nisd"

    #@4504
    const/16 v1, 0x22fa

    #@4506
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4509
    .line 1941
    const-string/jumbo v0, "niv"

    #@450c
    const/16 v1, 0x220b

    #@450e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4511
    .line 1942
    const-string/jumbo v0, "NJcy"

    #@4514
    const/16 v1, 0x40a

    #@4516
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4519
    .line 1943
    const-string/jumbo v0, "njcy"

    #@451c
    const/16 v1, 0x45a

    #@451e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4521
    .line 1944
    const-string/jumbo v0, "nlArr"

    #@4524
    const/16 v1, 0x21cd

    #@4526
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4529
    .line 1945
    const-string/jumbo v0, "nlarr"

    #@452c
    const/16 v1, 0x219a

    #@452e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4531
    .line 1946
    const-string/jumbo v0, "nldr"

    #@4534
    const/16 v1, 0x2025

    #@4536
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4539
    .line 1947
    const-string/jumbo v0, "nle"

    #@453c
    const/16 v1, 0x2270

    #@453e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4541
    .line 1948
    const-string/jumbo v0, "nLeftarrow"

    #@4544
    const/16 v1, 0x21cd

    #@4546
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4549
    .line 1949
    const-string/jumbo v0, "nleftarrow"

    #@454c
    const/16 v1, 0x219a

    #@454e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4551
    .line 1950
    const-string/jumbo v0, "nLeftrightarrow"

    #@4554
    const/16 v1, 0x21ce

    #@4556
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4559
    .line 1951
    const-string/jumbo v0, "nleftrightarrow"

    #@455c
    const/16 v1, 0x21ae

    #@455e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4561
    .line 1952
    const-string/jumbo v0, "nleq"

    #@4564
    const/16 v1, 0x2270

    #@4566
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4569
    .line 1953
    const-string/jumbo v0, "nless"

    #@456c
    const/16 v1, 0x226e

    #@456e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4571
    .line 1954
    const-string/jumbo v0, "nlsim"

    #@4574
    const/16 v1, 0x2274

    #@4576
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4579
    .line 1955
    const-string/jumbo v0, "nlt"

    #@457c
    const/16 v1, 0x226e

    #@457e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4581
    .line 1956
    const-string/jumbo v0, "nltri"

    #@4584
    const/16 v1, 0x22ea

    #@4586
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4589
    .line 1957
    const-string/jumbo v0, "nltrie"

    #@458c
    const/16 v1, 0x22ec

    #@458e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4591
    .line 1958
    const-string/jumbo v0, "nmid"

    #@4594
    const/16 v1, 0x2224

    #@4596
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4599
    .line 1959
    const-string/jumbo v0, "NoBreak"

    #@459c
    const/16 v1, 0x2060

    #@459e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45a1
    .line 1960
    const-string/jumbo v0, "NonBreakingSpace"

    #@45a4
    const/16 v1, 0xa0

    #@45a6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45a9
    .line 1961
    const-string/jumbo v0, "Nopf"

    #@45ac
    const/16 v1, 0x2115

    #@45ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45b1
    .line 1962
    const-string/jumbo v0, "nopf"

    #@45b4
    const v1, 0x1d55f

    #@45b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45ba
    .line 1963
    const-string/jumbo v0, "Not"

    #@45bd
    const/16 v1, 0x2aec

    #@45bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45c2
    .line 1964
    const-string/jumbo v0, "not"

    #@45c5
    const/16 v1, 0xac

    #@45c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45ca
    .line 1965
    const-string/jumbo v0, "NotCongruent"

    #@45cd
    const/16 v1, 0x2262

    #@45cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45d2
    .line 1966
    const-string/jumbo v0, "NotCupCap"

    #@45d5
    const/16 v1, 0x226d

    #@45d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45da
    .line 1967
    const-string/jumbo v0, "NotDoubleVerticalBar"

    #@45dd
    const/16 v1, 0x2226

    #@45df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45e2
    .line 1968
    const-string/jumbo v0, "NotElement"

    #@45e5
    const/16 v1, 0x2209

    #@45e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45ea
    .line 1969
    const-string/jumbo v0, "NotEqual"

    #@45ed
    const/16 v1, 0x2260

    #@45ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45f2
    .line 1970
    const-string/jumbo v0, "NotExists"

    #@45f5
    const/16 v1, 0x2204

    #@45f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@45fa
    .line 1971
    const-string/jumbo v0, "NotGreater"

    #@45fd
    const/16 v1, 0x226f

    #@45ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4602
    .line 1972
    const-string/jumbo v0, "NotGreaterEqual"

    #@4605
    const/16 v1, 0x2271

    #@4607
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@460a
    .line 1973
    const-string/jumbo v0, "NotGreaterLess"

    #@460d
    const/16 v1, 0x2279

    #@460f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4612
    .line 1974
    const-string/jumbo v0, "NotGreaterTilde"

    #@4615
    const/16 v1, 0x2275

    #@4617
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@461a
    .line 1975
    const-string/jumbo v0, "notin"

    #@461d
    const/16 v1, 0x2209

    #@461f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4622
    .line 1976
    const-string/jumbo v0, "notinva"

    #@4625
    const/16 v1, 0x2209

    #@4627
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@462a
    .line 1977
    const-string/jumbo v0, "notinvb"

    #@462d
    const/16 v1, 0x22f7

    #@462f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4632
    .line 1978
    const-string/jumbo v0, "notinvc"

    #@4635
    const/16 v1, 0x22f6

    #@4637
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@463a
    .line 1979
    const-string/jumbo v0, "NotLeftTriangle"

    #@463d
    const/16 v1, 0x22ea

    #@463f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4642
    .line 1980
    const-string/jumbo v0, "NotLeftTriangleEqual"

    #@4645
    const/16 v1, 0x22ec

    #@4647
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@464a
    .line 1981
    const-string/jumbo v0, "NotLess"

    #@464d
    const/16 v1, 0x226e

    #@464f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4652
    .line 1982
    const-string/jumbo v0, "NotLessEqual"

    #@4655
    const/16 v1, 0x2270

    #@4657
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@465a
    .line 1983
    const-string/jumbo v0, "NotLessGreater"

    #@465d
    const/16 v1, 0x2278

    #@465f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4662
    .line 1984
    const-string/jumbo v0, "NotLessTilde"

    #@4665
    const/16 v1, 0x2274

    #@4667
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@466a
    .line 1985
    const-string/jumbo v0, "notni"

    #@466d
    const/16 v1, 0x220c

    #@466f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4672
    .line 1986
    const-string/jumbo v0, "notniva"

    #@4675
    const/16 v1, 0x220c

    #@4677
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@467a
    .line 1987
    const-string/jumbo v0, "notnivb"

    #@467d
    const/16 v1, 0x22fe

    #@467f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4682
    .line 1988
    const-string/jumbo v0, "notnivc"

    #@4685
    const/16 v1, 0x22fd

    #@4687
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@468a
    .line 1989
    const-string/jumbo v0, "NotPrecedes"

    #@468d
    const/16 v1, 0x2280

    #@468f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4692
    .line 1990
    const-string/jumbo v0, "NotPrecedesSlantEqual"

    #@4695
    const/16 v1, 0x22e0

    #@4697
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@469a
    .line 1991
    const-string/jumbo v0, "NotReverseElement"

    #@469d
    const/16 v1, 0x220c

    #@469f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46a2
    .line 1992
    const-string/jumbo v0, "NotRightTriangle"

    #@46a5
    const/16 v1, 0x22eb

    #@46a7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46aa
    .line 1993
    const-string/jumbo v0, "NotRightTriangleEqual"

    #@46ad
    const/16 v1, 0x22ed

    #@46af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46b2
    .line 1994
    const-string/jumbo v0, "NotSquareSubsetEqual"

    #@46b5
    const/16 v1, 0x22e2

    #@46b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46ba
    .line 1995
    const-string/jumbo v0, "NotSquareSupersetEqual"

    #@46bd
    const/16 v1, 0x22e3

    #@46bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46c2
    .line 1996
    const-string/jumbo v0, "NotSubsetEqual"

    #@46c5
    const/16 v1, 0x2288

    #@46c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46ca
    .line 1997
    const-string/jumbo v0, "NotSucceeds"

    #@46cd
    const/16 v1, 0x2281

    #@46cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46d2
    .line 1998
    const-string/jumbo v0, "NotSucceedsSlantEqual"

    #@46d5
    const/16 v1, 0x22e1

    #@46d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46da
    .line 1999
    const-string/jumbo v0, "NotSupersetEqual"

    #@46dd
    const/16 v1, 0x2289

    #@46df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46e2
    .line 2000
    const-string/jumbo v0, "NotTilde"

    #@46e5
    const/16 v1, 0x2241

    #@46e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46ea
    .line 2001
    const-string/jumbo v0, "NotTildeEqual"

    #@46ed
    const/16 v1, 0x2244

    #@46ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46f2
    .line 2002
    const-string/jumbo v0, "NotTildeFullEqual"

    #@46f5
    const/16 v1, 0x2247

    #@46f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@46fa
    .line 2003
    const-string/jumbo v0, "NotTildeTilde"

    #@46fd
    const/16 v1, 0x2249

    #@46ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4702
    .line 2004
    const-string/jumbo v0, "NotVerticalBar"

    #@4705
    const/16 v1, 0x2224

    #@4707
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@470a
    .line 2005
    const-string/jumbo v0, "npar"

    #@470d
    const/16 v1, 0x2226

    #@470f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4712
    .line 2006
    const-string/jumbo v0, "nparallel"

    #@4715
    const/16 v1, 0x2226

    #@4717
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@471a
    .line 2007
    const-string/jumbo v0, "npolint"

    #@471d
    const/16 v1, 0x2a14

    #@471f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4722
    .line 2008
    const-string/jumbo v0, "npr"

    #@4725
    const/16 v1, 0x2280

    #@4727
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@472a
    .line 2009
    const-string/jumbo v0, "nprcue"

    #@472d
    const/16 v1, 0x22e0

    #@472f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4732
    .line 2010
    const-string/jumbo v0, "nprec"

    #@4735
    const/16 v1, 0x2280

    #@4737
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@473a
    .line 2011
    const-string/jumbo v0, "nrArr"

    #@473d
    const/16 v1, 0x21cf

    #@473f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4742
    .line 2012
    const-string/jumbo v0, "nrarr"

    #@4745
    const/16 v1, 0x219b

    #@4747
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@474a
    .line 2013
    const-string/jumbo v0, "nRightarrow"

    #@474d
    const/16 v1, 0x21cf

    #@474f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4752
    .line 2014
    const-string/jumbo v0, "nrightarrow"

    #@4755
    const/16 v1, 0x219b

    #@4757
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@475a
    .line 2015
    const-string/jumbo v0, "nrtri"

    #@475d
    const/16 v1, 0x22eb

    #@475f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4762
    .line 2016
    const-string/jumbo v0, "nrtrie"

    #@4765
    const/16 v1, 0x22ed

    #@4767
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@476a
    .line 2017
    const-string/jumbo v0, "nsc"

    #@476d
    const/16 v1, 0x2281

    #@476f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4772
    .line 2018
    const-string/jumbo v0, "nsccue"

    #@4775
    const/16 v1, 0x22e1

    #@4777
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@477a
    .line 2019
    const-string/jumbo v0, "Nscr"

    #@477d
    const v1, 0x1d4a9

    #@4780
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4783
    .line 2020
    const-string/jumbo v0, "nscr"

    #@4786
    const v1, 0x1d4c3

    #@4789
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@478c
    .line 2021
    const-string/jumbo v0, "nshortmid"

    #@478f
    const/16 v1, 0x2224

    #@4791
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4794
    .line 2022
    const-string/jumbo v0, "nshortparallel"

    #@4797
    const/16 v1, 0x2226

    #@4799
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@479c
    .line 2023
    const-string/jumbo v0, "nsim"

    #@479f
    const/16 v1, 0x2241

    #@47a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47a4
    .line 2024
    const-string/jumbo v0, "nsime"

    #@47a7
    const/16 v1, 0x2244

    #@47a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47ac
    .line 2025
    const-string/jumbo v0, "nsimeq"

    #@47af
    const/16 v1, 0x2244

    #@47b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47b4
    .line 2026
    const-string/jumbo v0, "nsmid"

    #@47b7
    const/16 v1, 0x2224

    #@47b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47bc
    .line 2027
    const-string/jumbo v0, "nspar"

    #@47bf
    const/16 v1, 0x2226

    #@47c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47c4
    .line 2028
    const-string/jumbo v0, "nsqsube"

    #@47c7
    const/16 v1, 0x22e2

    #@47c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47cc
    .line 2029
    const-string/jumbo v0, "nsqsupe"

    #@47cf
    const/16 v1, 0x22e3

    #@47d1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47d4
    .line 2030
    const-string/jumbo v0, "nsub"

    #@47d7
    const/16 v1, 0x2284

    #@47d9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47dc
    .line 2031
    const-string/jumbo v0, "nsube"

    #@47df
    const/16 v1, 0x2288

    #@47e1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47e4
    .line 2032
    const-string/jumbo v0, "nsubseteq"

    #@47e7
    const/16 v1, 0x2288

    #@47e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47ec
    .line 2033
    const-string/jumbo v0, "nsucc"

    #@47ef
    const/16 v1, 0x2281

    #@47f1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47f4
    .line 2034
    const-string/jumbo v0, "nsup"

    #@47f7
    const/16 v1, 0x2285

    #@47f9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@47fc
    .line 2035
    const-string/jumbo v0, "nsupe"

    #@47ff
    const/16 v1, 0x2289

    #@4801
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4804
    .line 2036
    const-string/jumbo v0, "nsupseteq"

    #@4807
    const/16 v1, 0x2289

    #@4809
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@480c
    .line 2037
    const-string/jumbo v0, "ntgl"

    #@480f
    const/16 v1, 0x2279

    #@4811
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4814
    .line 2038
    const-string/jumbo v0, "Ntilde"

    #@4817
    const/16 v1, 0xd1

    #@4819
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@481c
    .line 2039
    const-string/jumbo v0, "ntilde"

    #@481f
    const/16 v1, 0xf1

    #@4821
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4824
    .line 2040
    const-string/jumbo v0, "ntlg"

    #@4827
    const/16 v1, 0x2278

    #@4829
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@482c
    .line 2041
    const-string/jumbo v0, "ntriangleleft"

    #@482f
    const/16 v1, 0x22ea

    #@4831
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4834
    .line 2042
    const-string/jumbo v0, "ntrianglelefteq"

    #@4837
    const/16 v1, 0x22ec

    #@4839
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@483c
    .line 2043
    const-string/jumbo v0, "ntriangleright"

    #@483f
    const/16 v1, 0x22eb

    #@4841
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4844
    .line 2044
    const-string/jumbo v0, "ntrianglerighteq"

    #@4847
    const/16 v1, 0x22ed

    #@4849
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@484c
    .line 2045
    const-string/jumbo v0, "Nu"

    #@484f
    const/16 v1, 0x39d

    #@4851
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4854
    .line 2046
    const-string/jumbo v0, "nu"

    #@4857
    const/16 v1, 0x3bd

    #@4859
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@485c
    .line 2047
    const-string/jumbo v0, "num"

    #@485f
    const/16 v1, 0x23

    #@4861
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4864
    .line 2048
    const-string/jumbo v0, "numero"

    #@4867
    const/16 v1, 0x2116

    #@4869
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@486c
    .line 2049
    const-string/jumbo v0, "numsp"

    #@486f
    const/16 v1, 0x2007

    #@4871
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4874
    .line 2050
    const-string/jumbo v0, "nVDash"

    #@4877
    const/16 v1, 0x22af

    #@4879
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@487c
    .line 2051
    const-string/jumbo v0, "nVdash"

    #@487f
    const/16 v1, 0x22ae

    #@4881
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4884
    .line 2052
    const-string/jumbo v0, "nvDash"

    #@4887
    const/16 v1, 0x22ad

    #@4889
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@488c
    .line 2053
    const-string/jumbo v0, "nvdash"

    #@488f
    const/16 v1, 0x22ac

    #@4891
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4894
    .line 2054
    const-string/jumbo v0, "nvHarr"

    #@4897
    const/16 v1, 0x2904

    #@4899
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@489c
    .line 2055
    const-string/jumbo v0, "nvinfin"

    #@489f
    const/16 v1, 0x29de

    #@48a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48a4
    .line 2056
    const-string/jumbo v0, "nvlArr"

    #@48a7
    const/16 v1, 0x2902

    #@48a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48ac
    .line 2057
    const-string/jumbo v0, "nvrArr"

    #@48af
    const/16 v1, 0x2903

    #@48b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48b4
    .line 2058
    const-string/jumbo v0, "nwarhk"

    #@48b7
    const/16 v1, 0x2923

    #@48b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48bc
    .line 2059
    const-string/jumbo v0, "nwArr"

    #@48bf
    const/16 v1, 0x21d6

    #@48c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48c4
    .line 2060
    const-string/jumbo v0, "nwarr"

    #@48c7
    const/16 v1, 0x2196

    #@48c9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48cc
    .line 2061
    const-string/jumbo v0, "nwarrow"

    #@48cf
    const/16 v1, 0x2196

    #@48d1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48d4
    .line 2062
    const-string/jumbo v0, "nwnear"

    #@48d7
    const/16 v1, 0x2927

    #@48d9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48dc
    .line 2063
    const-string/jumbo v0, "Oacgr"

    #@48df
    const/16 v1, 0x38c

    #@48e1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48e4
    .line 2064
    const-string/jumbo v0, "oacgr"

    #@48e7
    const/16 v1, 0x3cc

    #@48e9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48ec
    .line 2065
    const-string/jumbo v0, "Oacute"

    #@48ef
    const/16 v1, 0xd3

    #@48f1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48f4
    .line 2066
    const-string/jumbo v0, "oacute"

    #@48f7
    const/16 v1, 0xf3

    #@48f9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@48fc
    .line 2067
    const-string/jumbo v0, "oast"

    #@48ff
    const/16 v1, 0x229b

    #@4901
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4904
    .line 2068
    const-string/jumbo v0, "ocir"

    #@4907
    const/16 v1, 0x229a

    #@4909
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@490c
    .line 2069
    const-string/jumbo v0, "Ocirc"

    #@490f
    const/16 v1, 0xd4

    #@4911
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4914
    .line 2070
    const-string/jumbo v0, "ocirc"

    #@4917
    const/16 v1, 0xf4

    #@4919
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@491c
    .line 2071
    const-string/jumbo v0, "Ocy"

    #@491f
    const/16 v1, 0x41e

    #@4921
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4924
    .line 2072
    const-string/jumbo v0, "ocy"

    #@4927
    const/16 v1, 0x43e

    #@4929
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@492c
    .line 2073
    const-string/jumbo v0, "odash"

    #@492f
    const/16 v1, 0x229d

    #@4931
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4934
    .line 2074
    const-string/jumbo v0, "Odblac"

    #@4937
    const/16 v1, 0x150

    #@4939
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@493c
    .line 2075
    const-string/jumbo v0, "odblac"

    #@493f
    const/16 v1, 0x151

    #@4941
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4944
    .line 2076
    const-string/jumbo v0, "odiv"

    #@4947
    const/16 v1, 0x2a38

    #@4949
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@494c
    .line 2077
    const-string/jumbo v0, "odot"

    #@494f
    const/16 v1, 0x2299

    #@4951
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4954
    .line 2078
    const-string/jumbo v0, "odsold"

    #@4957
    const/16 v1, 0x29bc

    #@4959
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@495c
    .line 2079
    const-string/jumbo v0, "OElig"

    #@495f
    const/16 v1, 0x152

    #@4961
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4964
    .line 2080
    const-string/jumbo v0, "oelig"

    #@4967
    const/16 v1, 0x153

    #@4969
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@496c
    .line 2081
    const-string/jumbo v0, "ofcir"

    #@496f
    const/16 v1, 0x29bf

    #@4971
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4974
    .line 2082
    const-string/jumbo v0, "Ofr"

    #@4977
    const v1, 0x1d512

    #@497a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@497d
    .line 2083
    const-string/jumbo v0, "ofr"

    #@4980
    const v1, 0x1d52c

    #@4983
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4986
    .line 2084
    const-string/jumbo v0, "ogon"

    #@4989
    const/16 v1, 0x2db

    #@498b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@498e
    .line 2085
    const-string/jumbo v0, "Ogr"

    #@4991
    const/16 v1, 0x39f

    #@4993
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4996
    .line 2086
    const-string/jumbo v0, "ogr"

    #@4999
    const/16 v1, 0x3bf

    #@499b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@499e
    .line 2087
    const-string/jumbo v0, "Ograve"

    #@49a1
    const/16 v1, 0xd2

    #@49a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49a6
    .line 2088
    const-string/jumbo v0, "ograve"

    #@49a9
    const/16 v1, 0xf2

    #@49ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49ae
    .line 2089
    const-string/jumbo v0, "ogt"

    #@49b1
    const/16 v1, 0x29c1

    #@49b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49b6
    .line 2090
    const-string/jumbo v0, "OHacgr"

    #@49b9
    const/16 v1, 0x38f

    #@49bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49be
    .line 2091
    const-string/jumbo v0, "ohacgr"

    #@49c1
    const/16 v1, 0x3ce

    #@49c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49c6
    .line 2092
    const-string/jumbo v0, "ohbar"

    #@49c9
    const/16 v1, 0x29b5

    #@49cb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49ce
    .line 2093
    const-string/jumbo v0, "OHgr"

    #@49d1
    const/16 v1, 0x3a9

    #@49d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49d6
    .line 2094
    const-string/jumbo v0, "ohgr"

    #@49d9
    const/16 v1, 0x3c9

    #@49db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49de
    .line 2095
    const-string/jumbo v0, "ohm"

    #@49e1
    const/16 v1, 0x2126

    #@49e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49e6
    .line 2096
    const-string/jumbo v0, "oint"

    #@49e9
    const/16 v1, 0x222e

    #@49eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49ee
    .line 2097
    const-string/jumbo v0, "olarr"

    #@49f1
    const/16 v1, 0x21ba

    #@49f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49f6
    .line 2098
    const-string/jumbo v0, "olcir"

    #@49f9
    const/16 v1, 0x29be

    #@49fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@49fe
    .line 2099
    const-string/jumbo v0, "olcross"

    #@4a01
    const/16 v1, 0x29bb

    #@4a03
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a06
    .line 2100
    const-string/jumbo v0, "oline"

    #@4a09
    const/16 v1, 0x203e

    #@4a0b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a0e
    .line 2101
    const-string/jumbo v0, "olt"

    #@4a11
    const/16 v1, 0x29c0

    #@4a13
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a16
    .line 2102
    const-string/jumbo v0, "Omacr"

    #@4a19
    const/16 v1, 0x14c

    #@4a1b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a1e
    .line 2103
    const-string/jumbo v0, "omacr"

    #@4a21
    const/16 v1, 0x14d

    #@4a23
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a26
    .line 2104
    const-string/jumbo v0, "Omega"

    #@4a29
    const/16 v1, 0x3a9

    #@4a2b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a2e
    .line 2105
    const-string/jumbo v0, "omega"

    #@4a31
    const/16 v1, 0x3c9

    #@4a33
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a36
    .line 2106
    const-string/jumbo v0, "Omicron"

    #@4a39
    const/16 v1, 0x39f

    #@4a3b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a3e
    .line 2107
    const-string/jumbo v0, "omicron"

    #@4a41
    const/16 v1, 0x3bf

    #@4a43
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a46
    .line 2108
    const-string/jumbo v0, "omid"

    #@4a49
    const/16 v1, 0x29b6

    #@4a4b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a4e
    .line 2109
    const-string/jumbo v0, "ominus"

    #@4a51
    const/16 v1, 0x2296

    #@4a53
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a56
    .line 2110
    const-string/jumbo v0, "Oopf"

    #@4a59
    const v1, 0x1d546

    #@4a5c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a5f
    .line 2111
    const-string/jumbo v0, "oopf"

    #@4a62
    const v1, 0x1d560

    #@4a65
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a68
    .line 2112
    const-string/jumbo v0, "opar"

    #@4a6b
    const/16 v1, 0x29b7

    #@4a6d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a70
    .line 2113
    const-string/jumbo v0, "OpenCurlyDoubleQuote"

    #@4a73
    const/16 v1, 0x201c

    #@4a75
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a78
    .line 2114
    const-string/jumbo v0, "OpenCurlyQuote"

    #@4a7b
    const/16 v1, 0x2018

    #@4a7d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a80
    .line 2115
    const-string/jumbo v0, "operp"

    #@4a83
    const/16 v1, 0x29b9

    #@4a85
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a88
    .line 2116
    const-string/jumbo v0, "oplus"

    #@4a8b
    const/16 v1, 0x2295

    #@4a8d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a90
    .line 2117
    const-string/jumbo v0, "Or"

    #@4a93
    const/16 v1, 0x2a54

    #@4a95
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4a98
    .line 2118
    const-string/jumbo v0, "or"

    #@4a9b
    const/16 v1, 0x2228

    #@4a9d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4aa0
    .line 2119
    const-string/jumbo v0, "orarr"

    #@4aa3
    const/16 v1, 0x21bb

    #@4aa5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4aa8
    .line 2120
    const-string/jumbo v0, "ord"

    #@4aab
    const/16 v1, 0x2a5d

    #@4aad
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ab0
    .line 2121
    const-string/jumbo v0, "order"

    #@4ab3
    const/16 v1, 0x2134

    #@4ab5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ab8
    .line 2122
    const-string/jumbo v0, "orderof"

    #@4abb
    const/16 v1, 0x2134

    #@4abd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ac0
    .line 2123
    const-string/jumbo v0, "ordf"

    #@4ac3
    const/16 v1, 0xaa

    #@4ac5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ac8
    .line 2124
    const-string/jumbo v0, "ordm"

    #@4acb
    const/16 v1, 0xba

    #@4acd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ad0
    .line 2125
    const-string/jumbo v0, "origof"

    #@4ad3
    const/16 v1, 0x22b6

    #@4ad5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ad8
    .line 2126
    const-string/jumbo v0, "oror"

    #@4adb
    const/16 v1, 0x2a56

    #@4add
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ae0
    .line 2127
    const-string/jumbo v0, "orslope"

    #@4ae3
    const/16 v1, 0x2a57

    #@4ae5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ae8
    .line 2128
    const-string/jumbo v0, "orv"

    #@4aeb
    const/16 v1, 0x2a5b

    #@4aed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4af0
    .line 2129
    const-string/jumbo v0, "oS"

    #@4af3
    const/16 v1, 0x24c8

    #@4af5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4af8
    .line 2130
    const-string/jumbo v0, "Oscr"

    #@4afb
    const v1, 0x1d4aa

    #@4afe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b01
    .line 2131
    const-string/jumbo v0, "oscr"

    #@4b04
    const/16 v1, 0x2134

    #@4b06
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b09
    .line 2132
    const-string/jumbo v0, "Oslash"

    #@4b0c
    const/16 v1, 0xd8

    #@4b0e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b11
    .line 2133
    const-string/jumbo v0, "oslash"

    #@4b14
    const/16 v1, 0xf8

    #@4b16
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b19
    .line 2134
    const-string/jumbo v0, "osol"

    #@4b1c
    const/16 v1, 0x2298

    #@4b1e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b21
    .line 2135
    const-string/jumbo v0, "Otilde"

    #@4b24
    const/16 v1, 0xd5

    #@4b26
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b29
    .line 2136
    const-string/jumbo v0, "otilde"

    #@4b2c
    const/16 v1, 0xf5

    #@4b2e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b31
    .line 2137
    const-string/jumbo v0, "Otimes"

    #@4b34
    const/16 v1, 0x2a37

    #@4b36
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b39
    .line 2138
    const-string/jumbo v0, "otimes"

    #@4b3c
    const/16 v1, 0x2297

    #@4b3e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b41
    .line 2139
    const-string/jumbo v0, "otimesas"

    #@4b44
    const/16 v1, 0x2a36

    #@4b46
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b49
    .line 2140
    const-string/jumbo v0, "Ouml"

    #@4b4c
    const/16 v1, 0xd6

    #@4b4e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b51
    .line 2141
    const-string/jumbo v0, "ouml"

    #@4b54
    const/16 v1, 0xf6

    #@4b56
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b59
    .line 2142
    const-string/jumbo v0, "ovbar"

    #@4b5c
    const/16 v1, 0x233d

    #@4b5e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b61
    .line 2143
    const-string/jumbo v0, "OverBar"

    #@4b64
    const/16 v1, 0xaf

    #@4b66
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b69
    .line 2144
    const-string/jumbo v0, "OverBrace"

    #@4b6c
    const v1, 0xfe37

    #@4b6f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b72
    .line 2145
    const-string/jumbo v0, "OverBracket"

    #@4b75
    const/16 v1, 0x23b4

    #@4b77
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b7a
    .line 2146
    const-string/jumbo v0, "OverParenthesis"

    #@4b7d
    const v1, 0xfe35

    #@4b80
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b83
    .line 2147
    const-string/jumbo v0, "par"

    #@4b86
    const/16 v1, 0x2225

    #@4b88
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b8b
    .line 2148
    const-string/jumbo v0, "para"

    #@4b8e
    const/16 v1, 0xb6

    #@4b90
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b93
    .line 2149
    const-string/jumbo v0, "parallel"

    #@4b96
    const/16 v1, 0x2225

    #@4b98
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4b9b
    .line 2150
    const-string/jumbo v0, "parsim"

    #@4b9e
    const/16 v1, 0x2af3

    #@4ba0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ba3
    .line 2151
    const-string/jumbo v0, "parsl"

    #@4ba6
    const/16 v1, 0x2afd

    #@4ba8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bab
    .line 2152
    const-string/jumbo v0, "part"

    #@4bae
    const/16 v1, 0x2202

    #@4bb0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bb3
    .line 2153
    const-string/jumbo v0, "PartialD"

    #@4bb6
    const/16 v1, 0x2202

    #@4bb8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bbb
    .line 2154
    const-string/jumbo v0, "Pcy"

    #@4bbe
    const/16 v1, 0x41f

    #@4bc0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bc3
    .line 2155
    const-string/jumbo v0, "pcy"

    #@4bc6
    const/16 v1, 0x43f

    #@4bc8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bcb
    .line 2156
    const-string/jumbo v0, "percnt"

    #@4bce
    const/16 v1, 0x25

    #@4bd0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bd3
    .line 2157
    const-string/jumbo v0, "period"

    #@4bd6
    const/16 v1, 0x2e

    #@4bd8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bdb
    .line 2158
    const-string/jumbo v0, "permil"

    #@4bde
    const/16 v1, 0x2030

    #@4be0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4be3
    .line 2159
    const-string/jumbo v0, "perp"

    #@4be6
    const/16 v1, 0x22a5

    #@4be8
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4beb
    .line 2160
    const-string/jumbo v0, "pertenk"

    #@4bee
    const/16 v1, 0x2031

    #@4bf0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bf3
    .line 2161
    const-string/jumbo v0, "Pfr"

    #@4bf6
    const v1, 0x1d513

    #@4bf9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4bfc
    .line 2162
    const-string/jumbo v0, "pfr"

    #@4bff
    const v1, 0x1d52d

    #@4c02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c05
    .line 2163
    const-string/jumbo v0, "Pgr"

    #@4c08
    const/16 v1, 0x3a0

    #@4c0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c0d
    .line 2164
    const-string/jumbo v0, "pgr"

    #@4c10
    const/16 v1, 0x3c0

    #@4c12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c15
    .line 2165
    const-string/jumbo v0, "PHgr"

    #@4c18
    const/16 v1, 0x3a6

    #@4c1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c1d
    .line 2166
    const-string/jumbo v0, "phgr"

    #@4c20
    const/16 v1, 0x3c6

    #@4c22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c25
    .line 2167
    const-string/jumbo v0, "Phi"

    #@4c28
    const/16 v1, 0x3a6

    #@4c2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c2d
    .line 2168
    const-string/jumbo v0, "phi"

    #@4c30
    const/16 v1, 0x3d5

    #@4c32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c35
    .line 2169
    const-string/jumbo v0, "phiv"

    #@4c38
    const/16 v1, 0x3c6

    #@4c3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c3d
    .line 2170
    const-string/jumbo v0, "phmmat"

    #@4c40
    const/16 v1, 0x2133

    #@4c42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c45
    .line 2171
    const-string/jumbo v0, "phone"

    #@4c48
    const/16 v1, 0x260e

    #@4c4a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c4d
    .line 2172
    const-string/jumbo v0, "Pi"

    #@4c50
    const/16 v1, 0x3a0

    #@4c52
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c55
    .line 2173
    const-string/jumbo v0, "pi"

    #@4c58
    const/16 v1, 0x3c0

    #@4c5a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c5d
    .line 2174
    const-string/jumbo v0, "pitchfork"

    #@4c60
    const/16 v1, 0x22d4

    #@4c62
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c65
    .line 2175
    const-string/jumbo v0, "piv"

    #@4c68
    const/16 v1, 0x3d6

    #@4c6a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c6d
    .line 2176
    const-string/jumbo v0, "planck"

    #@4c70
    const/16 v1, 0x210f

    #@4c72
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c75
    .line 2177
    const-string/jumbo v0, "planckh"

    #@4c78
    const/16 v1, 0x210e

    #@4c7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c7d
    .line 2178
    const-string/jumbo v0, "plankv"

    #@4c80
    const/16 v1, 0x210f

    #@4c82
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c85
    .line 2179
    const-string/jumbo v0, "plus"

    #@4c88
    const/16 v1, 0x2b

    #@4c8a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c8d
    .line 2180
    const-string/jumbo v0, "plusacir"

    #@4c90
    const/16 v1, 0x2a23

    #@4c92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c95
    .line 2181
    const-string/jumbo v0, "plusb"

    #@4c98
    const/16 v1, 0x229e

    #@4c9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4c9d
    .line 2182
    const-string/jumbo v0, "pluscir"

    #@4ca0
    const/16 v1, 0x2a22

    #@4ca2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ca5
    .line 2183
    const-string/jumbo v0, "plusdo"

    #@4ca8
    const/16 v1, 0x2214

    #@4caa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cad
    .line 2184
    const-string/jumbo v0, "plusdu"

    #@4cb0
    const/16 v1, 0x2a25

    #@4cb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cb5
    .line 2185
    const-string/jumbo v0, "pluse"

    #@4cb8
    const/16 v1, 0x2a72

    #@4cba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cbd
    .line 2186
    const-string/jumbo v0, "PlusMinus"

    #@4cc0
    const/16 v1, 0xb1

    #@4cc2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cc5
    .line 2187
    const-string/jumbo v0, "plusmn"

    #@4cc8
    const/16 v1, 0xb1

    #@4cca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ccd
    .line 2188
    const-string/jumbo v0, "plussim"

    #@4cd0
    const/16 v1, 0x2a26

    #@4cd2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cd5
    .line 2189
    const-string/jumbo v0, "plustwo"

    #@4cd8
    const/16 v1, 0x2a27

    #@4cda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cdd
    .line 2190
    const-string/jumbo v0, "pm"

    #@4ce0
    const/16 v1, 0xb1

    #@4ce2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ce5
    .line 2191
    const-string/jumbo v0, "Poincareplane"

    #@4ce8
    const/16 v1, 0x210c

    #@4cea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ced
    .line 2192
    const-string/jumbo v0, "pointint"

    #@4cf0
    const/16 v1, 0x2a15

    #@4cf2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cf5
    .line 2193
    const-string/jumbo v0, "Popf"

    #@4cf8
    const/16 v1, 0x2119

    #@4cfa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4cfd
    .line 2194
    const-string/jumbo v0, "popf"

    #@4d00
    const v1, 0x1d561

    #@4d03
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d06
    .line 2195
    const-string/jumbo v0, "pound"

    #@4d09
    const/16 v1, 0xa3

    #@4d0b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d0e
    .line 2196
    const-string/jumbo v0, "Pr"

    #@4d11
    const/16 v1, 0x2abb

    #@4d13
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d16
    .line 2197
    const-string/jumbo v0, "pr"

    #@4d19
    const/16 v1, 0x227a

    #@4d1b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d1e
    .line 2198
    const-string/jumbo v0, "prap"

    #@4d21
    const/16 v1, 0x2ab7

    #@4d23
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d26
    .line 2199
    const-string/jumbo v0, "prcue"

    #@4d29
    const/16 v1, 0x227c

    #@4d2b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d2e
    .line 2200
    const-string/jumbo v0, "prE"

    #@4d31
    const/16 v1, 0x2ab3

    #@4d33
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d36
    .line 2201
    const-string/jumbo v0, "pre"

    #@4d39
    const/16 v1, 0x2aaf

    #@4d3b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d3e
    .line 2202
    const-string/jumbo v0, "prec"

    #@4d41
    const/16 v1, 0x227a

    #@4d43
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d46
    .line 2203
    const-string/jumbo v0, "precapprox"

    #@4d49
    const/16 v1, 0x2ab7

    #@4d4b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d4e
    .line 2204
    const-string/jumbo v0, "preccurlyeq"

    #@4d51
    const/16 v1, 0x227c

    #@4d53
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d56
    .line 2205
    const-string/jumbo v0, "Precedes"

    #@4d59
    const/16 v1, 0x227a

    #@4d5b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d5e
    .line 2206
    const-string/jumbo v0, "PrecedesEqual"

    #@4d61
    const/16 v1, 0x2aaf

    #@4d63
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d66
    .line 2207
    const-string/jumbo v0, "PrecedesSlantEqual"

    #@4d69
    const/16 v1, 0x227c

    #@4d6b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d6e
    .line 2208
    const-string/jumbo v0, "PrecedesTilde"

    #@4d71
    const/16 v1, 0x227e

    #@4d73
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d76
    .line 2209
    const-string/jumbo v0, "preceq"

    #@4d79
    const/16 v1, 0x2aaf

    #@4d7b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d7e
    .line 2210
    const-string/jumbo v0, "precnapprox"

    #@4d81
    const/16 v1, 0x2ab9

    #@4d83
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d86
    .line 2211
    const-string/jumbo v0, "precneqq"

    #@4d89
    const/16 v1, 0x2ab5

    #@4d8b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d8e
    .line 2212
    const-string/jumbo v0, "precnsim"

    #@4d91
    const/16 v1, 0x22e8

    #@4d93
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d96
    .line 2213
    const-string/jumbo v0, "precsim"

    #@4d99
    const/16 v1, 0x227e

    #@4d9b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4d9e
    .line 2214
    const-string/jumbo v0, "Prime"

    #@4da1
    const/16 v1, 0x2033

    #@4da3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4da6
    .line 2215
    const-string/jumbo v0, "prime"

    #@4da9
    const/16 v1, 0x2032

    #@4dab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dae
    .line 2216
    const-string/jumbo v0, "primes"

    #@4db1
    const/16 v1, 0x2119

    #@4db3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4db6
    .line 2217
    const-string/jumbo v0, "prnap"

    #@4db9
    const/16 v1, 0x2ab9

    #@4dbb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dbe
    .line 2218
    const-string/jumbo v0, "prnE"

    #@4dc1
    const/16 v1, 0x2ab5

    #@4dc3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dc6
    .line 2219
    const-string/jumbo v0, "prnsim"

    #@4dc9
    const/16 v1, 0x22e8

    #@4dcb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dce
    .line 2220
    const-string/jumbo v0, "prod"

    #@4dd1
    const/16 v1, 0x220f

    #@4dd3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dd6
    .line 2221
    const-string/jumbo v0, "Product"

    #@4dd9
    const/16 v1, 0x220f

    #@4ddb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dde
    .line 2222
    const-string/jumbo v0, "profalar"

    #@4de1
    const/16 v1, 0x232e

    #@4de3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4de6
    .line 2223
    const-string/jumbo v0, "profline"

    #@4de9
    const/16 v1, 0x2312

    #@4deb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dee
    .line 2224
    const-string/jumbo v0, "profsurf"

    #@4df1
    const/16 v1, 0x2313

    #@4df3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4df6
    .line 2225
    const-string/jumbo v0, "prop"

    #@4df9
    const/16 v1, 0x221d

    #@4dfb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4dfe
    .line 2226
    const-string/jumbo v0, "Proportion"

    #@4e01
    const/16 v1, 0x2237

    #@4e03
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e06
    .line 2227
    const-string/jumbo v0, "Proportional"

    #@4e09
    const/16 v1, 0x221d

    #@4e0b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e0e
    .line 2228
    const-string/jumbo v0, "propto"

    #@4e11
    const/16 v1, 0x221d

    #@4e13
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e16
    .line 2229
    const-string/jumbo v0, "prsim"

    #@4e19
    const/16 v1, 0x227e

    #@4e1b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e1e
    .line 2230
    const-string/jumbo v0, "prurel"

    #@4e21
    const/16 v1, 0x22b0

    #@4e23
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e26
    .line 2231
    const-string/jumbo v0, "Pscr"

    #@4e29
    const v1, 0x1d4ab

    #@4e2c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e2f
    .line 2232
    const-string/jumbo v0, "pscr"

    #@4e32
    const v1, 0x1d4c5

    #@4e35
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e38
    .line 2233
    const-string/jumbo v0, "PSgr"

    #@4e3b
    const/16 v1, 0x3a8

    #@4e3d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e40
    .line 2234
    const-string/jumbo v0, "psgr"

    #@4e43
    const/16 v1, 0x3c8

    #@4e45
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e48
    .line 2235
    const-string/jumbo v0, "Psi"

    #@4e4b
    const/16 v1, 0x3a8

    #@4e4d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e50
    .line 2236
    const-string/jumbo v0, "psi"

    #@4e53
    const/16 v1, 0x3c8

    #@4e55
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e58
    .line 2237
    const-string/jumbo v0, "puncsp"

    #@4e5b
    const/16 v1, 0x2008

    #@4e5d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e60
    .line 2238
    const-string/jumbo v0, "Qfr"

    #@4e63
    const v1, 0x1d514

    #@4e66
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e69
    .line 2239
    const-string/jumbo v0, "qfr"

    #@4e6c
    const v1, 0x1d52e

    #@4e6f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e72
    .line 2240
    const-string/jumbo v0, "qint"

    #@4e75
    const/16 v1, 0x2a0c

    #@4e77
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e7a
    .line 2241
    const-string/jumbo v0, "Qopf"

    #@4e7d
    const/16 v1, 0x211a

    #@4e7f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e82
    .line 2242
    const-string/jumbo v0, "qopf"

    #@4e85
    const v1, 0x1d562

    #@4e88
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e8b
    .line 2243
    const-string/jumbo v0, "qprime"

    #@4e8e
    const/16 v1, 0x2057

    #@4e90
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e93
    .line 2244
    const-string/jumbo v0, "Qscr"

    #@4e96
    const v1, 0x1d4ac

    #@4e99
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4e9c
    .line 2245
    const-string/jumbo v0, "qscr"

    #@4e9f
    const v1, 0x1d4c6

    #@4ea2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ea5
    .line 2246
    const-string/jumbo v0, "quaternions"

    #@4ea8
    const/16 v1, 0x210d

    #@4eaa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ead
    .line 2247
    const-string/jumbo v0, "quatint"

    #@4eb0
    const/16 v1, 0x2a16

    #@4eb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4eb5
    .line 2248
    const-string/jumbo v0, "quest"

    #@4eb8
    const/16 v1, 0x3f

    #@4eba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ebd
    .line 2249
    const-string/jumbo v0, "questeq"

    #@4ec0
    const/16 v1, 0x225f

    #@4ec2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ec5
    .line 2250
    const-string/jumbo v0, "quot"

    #@4ec8
    const/16 v1, 0x22

    #@4eca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ecd
    .line 2251
    const-string/jumbo v0, "rAarr"

    #@4ed0
    const/16 v1, 0x21db

    #@4ed2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ed5
    .line 2252
    const-string/jumbo v0, "race"

    #@4ed8
    const/16 v1, 0x29da

    #@4eda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4edd
    .line 2253
    const-string/jumbo v0, "Racute"

    #@4ee0
    const/16 v1, 0x154

    #@4ee2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ee5
    .line 2254
    const-string/jumbo v0, "racute"

    #@4ee8
    const/16 v1, 0x155

    #@4eea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4eed
    .line 2255
    const-string/jumbo v0, "radic"

    #@4ef0
    const/16 v1, 0x221a

    #@4ef2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ef5
    .line 2256
    const-string/jumbo v0, "raemptyv"

    #@4ef8
    const/16 v1, 0x29b3

    #@4efa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4efd
    .line 2257
    const-string/jumbo v0, "Rang"

    #@4f00
    const/16 v1, 0x27eb

    #@4f02
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f05
    .line 2258
    const-string/jumbo v0, "rang"

    #@4f08
    const/16 v1, 0x232a

    #@4f0a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f0d
    .line 2259
    const-string/jumbo v0, "rangd"

    #@4f10
    const/16 v1, 0x2992

    #@4f12
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f15
    .line 2260
    const-string/jumbo v0, "range"

    #@4f18
    const/16 v1, 0x29a5

    #@4f1a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f1d
    .line 2261
    const-string/jumbo v0, "rangle"

    #@4f20
    const/16 v1, 0x232a

    #@4f22
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f25
    .line 2262
    const-string/jumbo v0, "raquo"

    #@4f28
    const/16 v1, 0xbb

    #@4f2a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f2d
    .line 2263
    const-string/jumbo v0, "Rarr"

    #@4f30
    const/16 v1, 0x21a0

    #@4f32
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f35
    .line 2264
    const-string/jumbo v0, "rArr"

    #@4f38
    const/16 v1, 0x21d2

    #@4f3a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f3d
    .line 2265
    const-string/jumbo v0, "rarr"

    #@4f40
    const/16 v1, 0x2192

    #@4f42
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f45
    .line 2266
    const-string/jumbo v0, "rarrap"

    #@4f48
    const/16 v1, 0x2975

    #@4f4a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f4d
    .line 2267
    const-string/jumbo v0, "rarrb"

    #@4f50
    const/16 v1, 0x21e5

    #@4f52
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f55
    .line 2268
    const-string/jumbo v0, "rarrbfs"

    #@4f58
    const/16 v1, 0x2920

    #@4f5a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f5d
    .line 2269
    const-string/jumbo v0, "rarrc"

    #@4f60
    const/16 v1, 0x2933

    #@4f62
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f65
    .line 2270
    const-string/jumbo v0, "rarrfs"

    #@4f68
    const/16 v1, 0x291e

    #@4f6a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f6d
    .line 2271
    const-string/jumbo v0, "rarrhk"

    #@4f70
    const/16 v1, 0x21aa

    #@4f72
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f75
    .line 2272
    const-string/jumbo v0, "rarrlp"

    #@4f78
    const/16 v1, 0x21ac

    #@4f7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f7d
    .line 2273
    const-string/jumbo v0, "rarrpl"

    #@4f80
    const/16 v1, 0x2945

    #@4f82
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f85
    .line 2274
    const-string/jumbo v0, "rarrsim"

    #@4f88
    const/16 v1, 0x2974

    #@4f8a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f8d
    .line 2275
    const-string/jumbo v0, "Rarrtl"

    #@4f90
    const/16 v1, 0x2916

    #@4f92
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f95
    .line 2276
    const-string/jumbo v0, "rarrtl"

    #@4f98
    const/16 v1, 0x21a3

    #@4f9a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4f9d
    .line 2277
    const-string/jumbo v0, "rarrw"

    #@4fa0
    const/16 v1, 0x219d

    #@4fa2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fa5
    .line 2278
    const-string/jumbo v0, "rAtail"

    #@4fa8
    const/16 v1, 0x291c

    #@4faa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fad
    .line 2279
    const-string/jumbo v0, "ratail"

    #@4fb0
    const/16 v1, 0x291a

    #@4fb2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fb5
    .line 2280
    const-string/jumbo v0, "ratio"

    #@4fb8
    const/16 v1, 0x2236

    #@4fba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fbd
    .line 2281
    const-string/jumbo v0, "rationals"

    #@4fc0
    const/16 v1, 0x211a

    #@4fc2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fc5
    .line 2282
    const-string/jumbo v0, "RBarr"

    #@4fc8
    const/16 v1, 0x2910

    #@4fca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fcd
    .line 2283
    const-string/jumbo v0, "rBarr"

    #@4fd0
    const/16 v1, 0x290f

    #@4fd2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fd5
    .line 2284
    const-string/jumbo v0, "rbarr"

    #@4fd8
    const/16 v1, 0x290d

    #@4fda
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fdd
    .line 2285
    const-string/jumbo v0, "rbbrk"

    #@4fe0
    const/16 v1, 0x2998

    #@4fe2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fe5
    .line 2286
    const-string/jumbo v0, "rbrace"

    #@4fe8
    const/16 v1, 0x7d

    #@4fea
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4fed
    .line 2287
    const-string/jumbo v0, "rbrack"

    #@4ff0
    const/16 v1, 0x5d

    #@4ff2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ff5
    .line 2288
    const-string/jumbo v0, "rbrke"

    #@4ff8
    const/16 v1, 0x298c

    #@4ffa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@4ffd
    .line 2289
    const-string/jumbo v0, "rbrksld"

    #@5000
    const/16 v1, 0x298e

    #@5002
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5005
    .line 2290
    const-string/jumbo v0, "rbrkslu"

    #@5008
    const/16 v1, 0x2990

    #@500a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@500d
    .line 2291
    const-string/jumbo v0, "Rcaron"

    #@5010
    const/16 v1, 0x158

    #@5012
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5015
    .line 2292
    const-string/jumbo v0, "rcaron"

    #@5018
    const/16 v1, 0x159

    #@501a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@501d
    .line 2293
    const-string/jumbo v0, "Rcedil"

    #@5020
    const/16 v1, 0x156

    #@5022
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5025
    .line 2294
    const-string/jumbo v0, "rcedil"

    #@5028
    const/16 v1, 0x157

    #@502a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@502d
    .line 2295
    const-string/jumbo v0, "rceil"

    #@5030
    const/16 v1, 0x2309

    #@5032
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5035
    .line 2296
    const-string/jumbo v0, "rcub"

    #@5038
    const/16 v1, 0x7d

    #@503a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@503d
    .line 2297
    const-string/jumbo v0, "Rcy"

    #@5040
    const/16 v1, 0x420

    #@5042
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5045
    .line 2298
    const-string/jumbo v0, "rcy"

    #@5048
    const/16 v1, 0x440

    #@504a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@504d
    .line 2299
    const-string/jumbo v0, "rdca"

    #@5050
    const/16 v1, 0x2937

    #@5052
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5055
    .line 2300
    const-string/jumbo v0, "rdldhar"

    #@5058
    const/16 v1, 0x2969

    #@505a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@505d
    .line 2301
    const-string/jumbo v0, "rdquo"

    #@5060
    const/16 v1, 0x201d

    #@5062
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5065
    .line 2302
    const-string/jumbo v0, "rdquor"

    #@5068
    const/16 v1, 0x201d

    #@506a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@506d
    .line 2303
    const-string/jumbo v0, "rdsh"

    #@5070
    const/16 v1, 0x21b3

    #@5072
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5075
    .line 2304
    const-string/jumbo v0, "Re"

    #@5078
    const/16 v1, 0x211c

    #@507a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@507d
    .line 2305
    const-string/jumbo v0, "real"

    #@5080
    const/16 v1, 0x211c

    #@5082
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5085
    .line 2306
    const-string/jumbo v0, "realine"

    #@5088
    const/16 v1, 0x211b

    #@508a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@508d
    .line 2307
    const-string/jumbo v0, "realpart"

    #@5090
    const/16 v1, 0x211c

    #@5092
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5095
    .line 2308
    const-string/jumbo v0, "reals"

    #@5098
    const/16 v1, 0x211d

    #@509a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@509d
    .line 2309
    const-string/jumbo v0, "rect"

    #@50a0
    const/16 v1, 0x25ad

    #@50a2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50a5
    .line 2310
    const-string/jumbo v0, "reg"

    #@50a8
    const/16 v1, 0xae

    #@50aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50ad
    .line 2311
    const-string/jumbo v0, "ReverseElement"

    #@50b0
    const/16 v1, 0x220b

    #@50b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50b5
    .line 2312
    const-string/jumbo v0, "ReverseEquilibrium"

    #@50b8
    const/16 v1, 0x21cb

    #@50ba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50bd
    .line 2313
    const-string/jumbo v0, "ReverseUpEquilibrium"

    #@50c0
    const/16 v1, 0x296f

    #@50c2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50c5
    .line 2314
    const-string/jumbo v0, "rfisht"

    #@50c8
    const/16 v1, 0x297d

    #@50ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50cd
    .line 2315
    const-string/jumbo v0, "rfloor"

    #@50d0
    const/16 v1, 0x230b

    #@50d2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50d5
    .line 2316
    const-string/jumbo v0, "Rfr"

    #@50d8
    const/16 v1, 0x211c

    #@50da
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50dd
    .line 2317
    const-string/jumbo v0, "rfr"

    #@50e0
    const v1, 0x1d52f

    #@50e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50e6
    .line 2318
    const-string/jumbo v0, "Rgr"

    #@50e9
    const/16 v1, 0x3a1

    #@50eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50ee
    .line 2319
    const-string/jumbo v0, "rgr"

    #@50f1
    const/16 v1, 0x3c1

    #@50f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50f6
    .line 2320
    const-string/jumbo v0, "rHar"

    #@50f9
    const/16 v1, 0x2964

    #@50fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@50fe
    .line 2321
    const-string/jumbo v0, "rhard"

    #@5101
    const/16 v1, 0x21c1

    #@5103
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5106
    .line 2322
    const-string/jumbo v0, "rharu"

    #@5109
    const/16 v1, 0x21c0

    #@510b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@510e
    .line 2323
    const-string/jumbo v0, "rharul"

    #@5111
    const/16 v1, 0x296c

    #@5113
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5116
    .line 2324
    const-string/jumbo v0, "Rho"

    #@5119
    const/16 v1, 0x3a1

    #@511b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@511e
    .line 2325
    const-string/jumbo v0, "rho"

    #@5121
    const/16 v1, 0x3c1

    #@5123
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5126
    .line 2326
    const-string/jumbo v0, "rhov"

    #@5129
    const/16 v1, 0x3f1

    #@512b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@512e
    .line 2327
    const-string/jumbo v0, "RightAngleBracket"

    #@5131
    const/16 v1, 0x232a

    #@5133
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5136
    .line 2328
    const-string/jumbo v0, "Rightarrow"

    #@5139
    const/16 v1, 0x21d2

    #@513b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@513e
    .line 2329
    const-string/jumbo v0, "rightarrow"

    #@5141
    const/16 v1, 0x2192

    #@5143
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5146
    .line 2330
    const-string/jumbo v0, "RightArrowBar"

    #@5149
    const/16 v1, 0x21e5

    #@514b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@514e
    .line 2331
    const-string/jumbo v0, "RightArrowLeftArrow"

    #@5151
    const/16 v1, 0x21c4

    #@5153
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5156
    .line 2332
    const-string/jumbo v0, "rightarrowtail"

    #@5159
    const/16 v1, 0x21a3

    #@515b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@515e
    .line 2333
    const-string/jumbo v0, "RightCeiling"

    #@5161
    const/16 v1, 0x2309

    #@5163
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5166
    .line 2334
    const-string/jumbo v0, "RightDoubleBracket"

    #@5169
    const/16 v1, 0x27e7

    #@516b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@516e
    .line 2335
    const-string/jumbo v0, "RightDownTeeVector"

    #@5171
    const/16 v1, 0x295d

    #@5173
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5176
    .line 2336
    const-string/jumbo v0, "RightDownVector"

    #@5179
    const/16 v1, 0x21c2

    #@517b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@517e
    .line 2337
    const-string/jumbo v0, "RightDownVectorBar"

    #@5181
    const/16 v1, 0x2955

    #@5183
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5186
    .line 2338
    const-string/jumbo v0, "RightFloor"

    #@5189
    const/16 v1, 0x230b

    #@518b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@518e
    .line 2339
    const-string/jumbo v0, "rightharpoondown"

    #@5191
    const/16 v1, 0x21c1

    #@5193
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5196
    .line 2340
    const-string/jumbo v0, "rightharpoonup"

    #@5199
    const/16 v1, 0x21c0

    #@519b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@519e
    .line 2341
    const-string/jumbo v0, "rightleftarrows"

    #@51a1
    const/16 v1, 0x21c4

    #@51a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51a6
    .line 2342
    const-string/jumbo v0, "rightleftharpoons"

    #@51a9
    const/16 v1, 0x21cc

    #@51ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51ae
    .line 2343
    const-string/jumbo v0, "rightrightarrows"

    #@51b1
    const/16 v1, 0x21c9

    #@51b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51b6
    .line 2344
    const-string/jumbo v0, "rightsquigarrow"

    #@51b9
    const/16 v1, 0x219d

    #@51bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51be
    .line 2345
    const-string/jumbo v0, "RightTee"

    #@51c1
    const/16 v1, 0x22a2

    #@51c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51c6
    .line 2346
    const-string/jumbo v0, "RightTeeArrow"

    #@51c9
    const/16 v1, 0x21a6

    #@51cb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51ce
    .line 2347
    const-string/jumbo v0, "RightTeeVector"

    #@51d1
    const/16 v1, 0x295b

    #@51d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51d6
    .line 2348
    const-string/jumbo v0, "rightthreetimes"

    #@51d9
    const/16 v1, 0x22cc

    #@51db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51de
    .line 2349
    const-string/jumbo v0, "RightTriangle"

    #@51e1
    const/16 v1, 0x22b3

    #@51e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51e6
    .line 2350
    const-string/jumbo v0, "RightTriangleBar"

    #@51e9
    const/16 v1, 0x29d0    # 1.5E-41f

    #@51eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51ee
    .line 2351
    const-string/jumbo v0, "RightTriangleEqual"

    #@51f1
    const/16 v1, 0x22b5

    #@51f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51f6
    .line 2352
    const-string/jumbo v0, "RightUpDownVector"

    #@51f9
    const/16 v1, 0x294f

    #@51fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@51fe
    .line 2353
    const-string/jumbo v0, "RightUpTeeVector"

    #@5201
    const/16 v1, 0x295c

    #@5203
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5206
    .line 2354
    const-string/jumbo v0, "RightUpVector"

    #@5209
    const/16 v1, 0x21be

    #@520b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@520e
    .line 2355
    const-string/jumbo v0, "RightUpVectorBar"

    #@5211
    const/16 v1, 0x2954

    #@5213
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5216
    .line 2356
    const-string/jumbo v0, "RightVector"

    #@5219
    const/16 v1, 0x21c0

    #@521b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@521e
    .line 2357
    const-string/jumbo v0, "RightVectorBar"

    #@5221
    const/16 v1, 0x2953

    #@5223
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5226
    .line 2358
    const-string/jumbo v0, "ring"

    #@5229
    const/16 v1, 0x2da

    #@522b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@522e
    .line 2359
    const-string/jumbo v0, "risingdotseq"

    #@5231
    const/16 v1, 0x2253

    #@5233
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5236
    .line 2360
    const-string/jumbo v0, "rlarr"

    #@5239
    const/16 v1, 0x21c4

    #@523b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@523e
    .line 2361
    const-string/jumbo v0, "rlhar"

    #@5241
    const/16 v1, 0x21cc

    #@5243
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5246
    .line 2362
    const-string/jumbo v0, "rlm"

    #@5249
    const/16 v1, 0x200f

    #@524b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@524e
    .line 2363
    const-string/jumbo v0, "rmoust"

    #@5251
    const/16 v1, 0x23b1

    #@5253
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5256
    .line 2364
    const-string/jumbo v0, "rmoustache"

    #@5259
    const/16 v1, 0x23b1

    #@525b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@525e
    .line 2365
    const-string/jumbo v0, "rnmid"

    #@5261
    const/16 v1, 0x2aee

    #@5263
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5266
    .line 2366
    const-string/jumbo v0, "roang"

    #@5269
    const/16 v1, 0x27ed

    #@526b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@526e
    .line 2367
    const-string/jumbo v0, "roarr"

    #@5271
    const/16 v1, 0x21fe

    #@5273
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5276
    .line 2368
    const-string/jumbo v0, "robrk"

    #@5279
    const/16 v1, 0x27e7

    #@527b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@527e
    .line 2369
    const-string/jumbo v0, "ropar"

    #@5281
    const/16 v1, 0x2986

    #@5283
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5286
    .line 2370
    const-string/jumbo v0, "Ropf"

    #@5289
    const/16 v1, 0x211d

    #@528b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@528e
    .line 2371
    const-string/jumbo v0, "ropf"

    #@5291
    const v1, 0x1d563

    #@5294
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5297
    .line 2372
    const-string/jumbo v0, "roplus"

    #@529a
    const/16 v1, 0x2a2e

    #@529c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@529f
    .line 2373
    const-string/jumbo v0, "rotimes"

    #@52a2
    const/16 v1, 0x2a35

    #@52a4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52a7
    .line 2374
    const-string/jumbo v0, "RoundImplies"

    #@52aa
    const/16 v1, 0x2970

    #@52ac
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52af
    .line 2375
    const-string/jumbo v0, "rpar"

    #@52b2
    const/16 v1, 0x29

    #@52b4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52b7
    .line 2376
    const-string/jumbo v0, "rpargt"

    #@52ba
    const/16 v1, 0x2994

    #@52bc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52bf
    .line 2377
    const-string/jumbo v0, "rppolint"

    #@52c2
    const/16 v1, 0x2a12

    #@52c4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52c7
    .line 2378
    const-string/jumbo v0, "rrarr"

    #@52ca
    const/16 v1, 0x21c9

    #@52cc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52cf
    .line 2379
    const-string/jumbo v0, "Rrightarrow"

    #@52d2
    const/16 v1, 0x21db

    #@52d4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52d7
    .line 2380
    const-string/jumbo v0, "rsaquo"

    #@52da
    const/16 v1, 0x203a

    #@52dc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52df
    .line 2381
    const-string/jumbo v0, "Rscr"

    #@52e2
    const/16 v1, 0x211b

    #@52e4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52e7
    .line 2382
    const-string/jumbo v0, "rscr"

    #@52ea
    const v1, 0x1d4c7

    #@52ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52f0
    .line 2383
    const-string/jumbo v0, "rsh"

    #@52f3
    const/16 v1, 0x21b1

    #@52f5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@52f8
    .line 2384
    const-string/jumbo v0, "rsqb"

    #@52fb
    const/16 v1, 0x5d

    #@52fd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5300
    .line 2385
    const-string/jumbo v0, "rsquo"

    #@5303
    const/16 v1, 0x2019

    #@5305
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5308
    .line 2386
    const-string/jumbo v0, "rsquor"

    #@530b
    const/16 v1, 0x2019

    #@530d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5310
    .line 2387
    const-string/jumbo v0, "rthree"

    #@5313
    const/16 v1, 0x22cc

    #@5315
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5318
    .line 2388
    const-string/jumbo v0, "rtimes"

    #@531b
    const/16 v1, 0x22ca

    #@531d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5320
    .line 2389
    const-string/jumbo v0, "rtri"

    #@5323
    const/16 v1, 0x25b9

    #@5325
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5328
    .line 2390
    const-string/jumbo v0, "rtrie"

    #@532b
    const/16 v1, 0x22b5

    #@532d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5330
    .line 2391
    const-string/jumbo v0, "rtrif"

    #@5333
    const/16 v1, 0x25b8

    #@5335
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5338
    .line 2392
    const-string/jumbo v0, "rtriltri"

    #@533b
    const/16 v1, 0x29ce

    #@533d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5340
    .line 2393
    const-string/jumbo v0, "RuleDelayed"

    #@5343
    const/16 v1, 0x29f4

    #@5345
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5348
    .line 2394
    const-string/jumbo v0, "ruluhar"

    #@534b
    const/16 v1, 0x2968

    #@534d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5350
    .line 2395
    const-string/jumbo v0, "rx"

    #@5353
    const/16 v1, 0x211e

    #@5355
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5358
    .line 2396
    const-string/jumbo v0, "Sacute"

    #@535b
    const/16 v1, 0x15a

    #@535d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5360
    .line 2397
    const-string/jumbo v0, "sacute"

    #@5363
    const/16 v1, 0x15b

    #@5365
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5368
    .line 2398
    const-string/jumbo v0, "sbquo"

    #@536b
    const/16 v1, 0x201a

    #@536d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5370
    .line 2399
    const-string/jumbo v0, "Sc"

    #@5373
    const/16 v1, 0x2abc

    #@5375
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5378
    .line 2400
    const-string/jumbo v0, "sc"

    #@537b
    const/16 v1, 0x227b

    #@537d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5380
    .line 2401
    const-string/jumbo v0, "scap"

    #@5383
    const/16 v1, 0x2ab8

    #@5385
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5388
    .line 2402
    const-string/jumbo v0, "Scaron"

    #@538b
    const/16 v1, 0x160

    #@538d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5390
    .line 2403
    const-string/jumbo v0, "scaron"

    #@5393
    const/16 v1, 0x161

    #@5395
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5398
    .line 2404
    const-string/jumbo v0, "sccue"

    #@539b
    const/16 v1, 0x227d

    #@539d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53a0
    .line 2405
    const-string/jumbo v0, "scE"

    #@53a3
    const/16 v1, 0x2ab4

    #@53a5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53a8
    .line 2406
    const-string/jumbo v0, "sce"

    #@53ab
    const/16 v1, 0x2ab0

    #@53ad
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53b0
    .line 2407
    const-string/jumbo v0, "Scedil"

    #@53b3
    const/16 v1, 0x15e

    #@53b5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53b8
    .line 2408
    const-string/jumbo v0, "scedil"

    #@53bb
    const/16 v1, 0x15f

    #@53bd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53c0
    .line 2409
    const-string/jumbo v0, "Scirc"

    #@53c3
    const/16 v1, 0x15c

    #@53c5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53c8
    .line 2410
    const-string/jumbo v0, "scirc"

    #@53cb
    const/16 v1, 0x15d

    #@53cd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53d0
    .line 2411
    const-string/jumbo v0, "scnap"

    #@53d3
    const/16 v1, 0x2aba

    #@53d5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53d8
    .line 2412
    const-string/jumbo v0, "scnE"

    #@53db
    const/16 v1, 0x2ab6

    #@53dd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53e0
    .line 2413
    const-string/jumbo v0, "scnsim"

    #@53e3
    const/16 v1, 0x22e9

    #@53e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53e8
    .line 2414
    const-string/jumbo v0, "scpolint"

    #@53eb
    const/16 v1, 0x2a13

    #@53ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53f0
    .line 2415
    const-string/jumbo v0, "scsim"

    #@53f3
    const/16 v1, 0x227f

    #@53f5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@53f8
    .line 2416
    const-string/jumbo v0, "Scy"

    #@53fb
    const/16 v1, 0x421

    #@53fd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5400
    .line 2417
    const-string/jumbo v0, "scy"

    #@5403
    const/16 v1, 0x441

    #@5405
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5408
    .line 2418
    const-string/jumbo v0, "sdot"

    #@540b
    const/16 v1, 0x22c5

    #@540d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5410
    .line 2419
    const-string/jumbo v0, "sdotb"

    #@5413
    const/16 v1, 0x22a1

    #@5415
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5418
    .line 2420
    const-string/jumbo v0, "sdote"

    #@541b
    const/16 v1, 0x2a66

    #@541d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5420
    .line 2421
    const-string/jumbo v0, "searhk"

    #@5423
    const/16 v1, 0x2925

    #@5425
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5428
    .line 2422
    const-string/jumbo v0, "seArr"

    #@542b
    const/16 v1, 0x21d8

    #@542d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5430
    .line 2423
    const-string/jumbo v0, "searr"

    #@5433
    const/16 v1, 0x2198

    #@5435
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5438
    .line 2424
    const-string/jumbo v0, "searrow"

    #@543b
    const/16 v1, 0x2198

    #@543d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5440
    .line 2425
    const-string/jumbo v0, "sect"

    #@5443
    const/16 v1, 0xa7

    #@5445
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5448
    .line 2426
    const-string/jumbo v0, "semi"

    #@544b
    const/16 v1, 0x3b

    #@544d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5450
    .line 2427
    const-string/jumbo v0, "seswar"

    #@5453
    const/16 v1, 0x2929

    #@5455
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5458
    .line 2428
    const-string/jumbo v0, "setminus"

    #@545b
    const/16 v1, 0x2216

    #@545d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5460
    .line 2429
    const-string/jumbo v0, "setmn"

    #@5463
    const/16 v1, 0x2216

    #@5465
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5468
    .line 2430
    const-string/jumbo v0, "sext"

    #@546b
    const/16 v1, 0x2736

    #@546d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5470
    .line 2431
    const-string/jumbo v0, "sfgr"

    #@5473
    const/16 v1, 0x3c2

    #@5475
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5478
    .line 2432
    const-string/jumbo v0, "Sfr"

    #@547b
    const v1, 0x1d516

    #@547e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5481
    .line 2433
    const-string/jumbo v0, "sfr"

    #@5484
    const v1, 0x1d530

    #@5487
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@548a
    .line 2434
    const-string/jumbo v0, "sfrown"

    #@548d
    const/16 v1, 0x2322

    #@548f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5492
    .line 2435
    const-string/jumbo v0, "Sgr"

    #@5495
    const/16 v1, 0x3a3

    #@5497
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@549a
    .line 2436
    const-string/jumbo v0, "sgr"

    #@549d
    const/16 v1, 0x3c3

    #@549f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54a2
    .line 2437
    const-string/jumbo v0, "sharp"

    #@54a5
    const/16 v1, 0x266f

    #@54a7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54aa
    .line 2438
    const-string/jumbo v0, "SHCHcy"

    #@54ad
    const/16 v1, 0x429

    #@54af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54b2
    .line 2439
    const-string/jumbo v0, "shchcy"

    #@54b5
    const/16 v1, 0x449

    #@54b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54ba
    .line 2440
    const-string/jumbo v0, "SHcy"

    #@54bd
    const/16 v1, 0x428

    #@54bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54c2
    .line 2441
    const-string/jumbo v0, "shcy"

    #@54c5
    const/16 v1, 0x448

    #@54c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54ca
    .line 2442
    const-string/jumbo v0, "ShortDownArrow"

    #@54cd
    const/16 v1, 0x2193

    #@54cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54d2
    .line 2443
    const-string/jumbo v0, "ShortLeftArrow"

    #@54d5
    const/16 v1, 0x2190

    #@54d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54da
    .line 2444
    const-string/jumbo v0, "shortmid"

    #@54dd
    const/16 v1, 0x2223

    #@54df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54e2
    .line 2445
    const-string/jumbo v0, "shortparallel"

    #@54e5
    const/16 v1, 0x2225

    #@54e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54ea
    .line 2446
    const-string/jumbo v0, "ShortRightArrow"

    #@54ed
    const/16 v1, 0x2192

    #@54ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54f2
    .line 2447
    const-string/jumbo v0, "ShortUpArrow"

    #@54f5
    const/16 v1, 0x2191

    #@54f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@54fa
    .line 2448
    const-string/jumbo v0, "shy"

    #@54fd
    const/16 v1, 0xad

    #@54ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5502
    .line 2449
    const-string/jumbo v0, "Sigma"

    #@5505
    const/16 v1, 0x3a3

    #@5507
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@550a
    .line 2450
    const-string/jumbo v0, "sigma"

    #@550d
    const/16 v1, 0x3c3

    #@550f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5512
    .line 2451
    const-string/jumbo v0, "sigmaf"

    #@5515
    const/16 v1, 0x3c2

    #@5517
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@551a
    .line 2452
    const-string/jumbo v0, "sigmav"

    #@551d
    const/16 v1, 0x3c2

    #@551f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5522
    .line 2453
    const-string/jumbo v0, "sim"

    #@5525
    const/16 v1, 0x223c

    #@5527
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@552a
    .line 2454
    const-string/jumbo v0, "simdot"

    #@552d
    const/16 v1, 0x2a6a

    #@552f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5532
    .line 2455
    const-string/jumbo v0, "sime"

    #@5535
    const/16 v1, 0x2243

    #@5537
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@553a
    .line 2456
    const-string/jumbo v0, "simeq"

    #@553d
    const/16 v1, 0x2243

    #@553f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5542
    .line 2457
    const-string/jumbo v0, "simg"

    #@5545
    const/16 v1, 0x2a9e

    #@5547
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@554a
    .line 2458
    const-string/jumbo v0, "simgE"

    #@554d
    const/16 v1, 0x2aa0

    #@554f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5552
    .line 2459
    const-string/jumbo v0, "siml"

    #@5555
    const/16 v1, 0x2a9d

    #@5557
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@555a
    .line 2460
    const-string/jumbo v0, "simlE"

    #@555d
    const/16 v1, 0x2a9f

    #@555f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5562
    .line 2461
    const-string/jumbo v0, "simne"

    #@5565
    const/16 v1, 0x2246

    #@5567
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@556a
    .line 2462
    const-string/jumbo v0, "simplus"

    #@556d
    const/16 v1, 0x2a24

    #@556f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5572
    .line 2463
    const-string/jumbo v0, "simrarr"

    #@5575
    const/16 v1, 0x2972

    #@5577
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@557a
    .line 2464
    const-string/jumbo v0, "slarr"

    #@557d
    const/16 v1, 0x2190

    #@557f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5582
    .line 2465
    const-string/jumbo v0, "SmallCircle"

    #@5585
    const/16 v1, 0x2218

    #@5587
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@558a
    .line 2466
    const-string/jumbo v0, "smallsetminus"

    #@558d
    const/16 v1, 0x2216

    #@558f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5592
    .line 2467
    const-string/jumbo v0, "smashp"

    #@5595
    const/16 v1, 0x2a33

    #@5597
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@559a
    .line 2468
    const-string/jumbo v0, "smeparsl"

    #@559d
    const/16 v1, 0x29e4

    #@559f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55a2
    .line 2469
    const-string/jumbo v0, "smid"

    #@55a5
    const/16 v1, 0x2223

    #@55a7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55aa
    .line 2470
    const-string/jumbo v0, "smile"

    #@55ad
    const/16 v1, 0x2323

    #@55af
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55b2
    .line 2471
    const-string/jumbo v0, "smt"

    #@55b5
    const/16 v1, 0x2aaa

    #@55b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55ba
    .line 2472
    const-string/jumbo v0, "smte"

    #@55bd
    const/16 v1, 0x2aac

    #@55bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55c2
    .line 2473
    const-string/jumbo v0, "SOFTcy"

    #@55c5
    const/16 v1, 0x42c

    #@55c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55ca
    .line 2474
    const-string/jumbo v0, "softcy"

    #@55cd
    const/16 v1, 0x44c

    #@55cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55d2
    .line 2475
    const-string/jumbo v0, "sol"

    #@55d5
    const/16 v1, 0x2f

    #@55d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55da
    .line 2476
    const-string/jumbo v0, "solb"

    #@55dd
    const/16 v1, 0x29c4

    #@55df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55e2
    .line 2477
    const-string/jumbo v0, "solbar"

    #@55e5
    const/16 v1, 0x233f

    #@55e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55ea
    .line 2478
    const-string/jumbo v0, "Sopf"

    #@55ed
    const v1, 0x1d54a

    #@55f0
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55f3
    .line 2479
    const-string/jumbo v0, "sopf"

    #@55f6
    const v1, 0x1d564

    #@55f9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@55fc
    .line 2480
    const-string/jumbo v0, "spades"

    #@55ff
    const/16 v1, 0x2660

    #@5601
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5604
    .line 2481
    const-string/jumbo v0, "spadesuit"

    #@5607
    const/16 v1, 0x2660

    #@5609
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@560c
    .line 2482
    const-string/jumbo v0, "spar"

    #@560f
    const/16 v1, 0x2225

    #@5611
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5614
    .line 2483
    const-string/jumbo v0, "sqcap"

    #@5617
    const/16 v1, 0x2293

    #@5619
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@561c
    .line 2484
    const-string/jumbo v0, "sqcup"

    #@561f
    const/16 v1, 0x2294

    #@5621
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5624
    .line 2485
    const-string/jumbo v0, "Sqrt"

    #@5627
    const/16 v1, 0x221a

    #@5629
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@562c
    .line 2486
    const-string/jumbo v0, "sqsub"

    #@562f
    const/16 v1, 0x228f

    #@5631
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5634
    .line 2487
    const-string/jumbo v0, "sqsube"

    #@5637
    const/16 v1, 0x2291

    #@5639
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@563c
    .line 2488
    const-string/jumbo v0, "sqsubset"

    #@563f
    const/16 v1, 0x228f

    #@5641
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5644
    .line 2489
    const-string/jumbo v0, "sqsubseteq"

    #@5647
    const/16 v1, 0x2291

    #@5649
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@564c
    .line 2490
    const-string/jumbo v0, "sqsup"

    #@564f
    const/16 v1, 0x2290

    #@5651
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5654
    .line 2491
    const-string/jumbo v0, "sqsupe"

    #@5657
    const/16 v1, 0x2292

    #@5659
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@565c
    .line 2492
    const-string/jumbo v0, "sqsupset"

    #@565f
    const/16 v1, 0x2290

    #@5661
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5664
    .line 2493
    const-string/jumbo v0, "sqsupseteq"

    #@5667
    const/16 v1, 0x2292

    #@5669
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@566c
    .line 2494
    const-string/jumbo v0, "squ"

    #@566f
    const/16 v1, 0x25a1

    #@5671
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5674
    .line 2495
    const-string/jumbo v0, "square"

    #@5677
    const/16 v1, 0x25a1

    #@5679
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@567c
    .line 2496
    const-string/jumbo v0, "SquareIntersection"

    #@567f
    const/16 v1, 0x2293

    #@5681
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5684
    .line 2497
    const-string/jumbo v0, "SquareSubset"

    #@5687
    const/16 v1, 0x228f

    #@5689
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@568c
    .line 2498
    const-string/jumbo v0, "SquareSubsetEqual"

    #@568f
    const/16 v1, 0x2291

    #@5691
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5694
    .line 2499
    const-string/jumbo v0, "SquareSuperset"

    #@5697
    const/16 v1, 0x2290

    #@5699
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@569c
    .line 2500
    const-string/jumbo v0, "SquareSupersetEqual"

    #@569f
    const/16 v1, 0x2292

    #@56a1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56a4
    .line 2501
    const-string/jumbo v0, "SquareUnion"

    #@56a7
    const/16 v1, 0x2294

    #@56a9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56ac
    .line 2502
    const-string/jumbo v0, "squarf"

    #@56af
    const/16 v1, 0x25aa

    #@56b1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56b4
    .line 2503
    const-string/jumbo v0, "squf"

    #@56b7
    const/16 v1, 0x25aa

    #@56b9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56bc
    .line 2504
    const-string/jumbo v0, "srarr"

    #@56bf
    const/16 v1, 0x2192

    #@56c1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56c4
    .line 2505
    const-string/jumbo v0, "Sscr"

    #@56c7
    const v1, 0x1d4ae

    #@56ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56cd
    .line 2506
    const-string/jumbo v0, "sscr"

    #@56d0
    const v1, 0x1d4c8

    #@56d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56d6
    .line 2507
    const-string/jumbo v0, "ssetmn"

    #@56d9
    const/16 v1, 0x2216

    #@56db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56de
    .line 2508
    const-string/jumbo v0, "ssmile"

    #@56e1
    const/16 v1, 0x2323

    #@56e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56e6
    .line 2509
    const-string/jumbo v0, "sstarf"

    #@56e9
    const/16 v1, 0x22c6

    #@56eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56ee
    .line 2510
    const-string/jumbo v0, "Star"

    #@56f1
    const/16 v1, 0x22c6

    #@56f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56f6
    .line 2511
    const-string/jumbo v0, "star"

    #@56f9
    const/16 v1, 0x2606

    #@56fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@56fe
    .line 2512
    const-string/jumbo v0, "starf"

    #@5701
    const/16 v1, 0x2605

    #@5703
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5706
    .line 2513
    const-string/jumbo v0, "straightepsilon"

    #@5709
    const/16 v1, 0x3f5

    #@570b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@570e
    .line 2514
    const-string/jumbo v0, "straightphi"

    #@5711
    const/16 v1, 0x3d5

    #@5713
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5716
    .line 2515
    const-string/jumbo v0, "strns"

    #@5719
    const/16 v1, 0xaf

    #@571b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@571e
    .line 2516
    const-string/jumbo v0, "Sub"

    #@5721
    const/16 v1, 0x22d0

    #@5723
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5726
    .line 2517
    const-string/jumbo v0, "sub"

    #@5729
    const/16 v1, 0x2282

    #@572b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@572e
    .line 2518
    const-string/jumbo v0, "subdot"

    #@5731
    const/16 v1, 0x2abd

    #@5733
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5736
    .line 2519
    const-string/jumbo v0, "subE"

    #@5739
    const/16 v1, 0x2ac5

    #@573b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@573e
    .line 2520
    const-string/jumbo v0, "sube"

    #@5741
    const/16 v1, 0x2286

    #@5743
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5746
    .line 2521
    const-string/jumbo v0, "subedot"

    #@5749
    const/16 v1, 0x2ac3

    #@574b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@574e
    .line 2522
    const-string/jumbo v0, "submult"

    #@5751
    const/16 v1, 0x2ac1

    #@5753
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5756
    .line 2523
    const-string/jumbo v0, "subnE"

    #@5759
    const/16 v1, 0x2acb

    #@575b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@575e
    .line 2524
    const-string/jumbo v0, "subne"

    #@5761
    const/16 v1, 0x228a

    #@5763
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5766
    .line 2525
    const-string/jumbo v0, "subplus"

    #@5769
    const/16 v1, 0x2abf

    #@576b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@576e
    .line 2526
    const-string/jumbo v0, "subrarr"

    #@5771
    const/16 v1, 0x2979

    #@5773
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5776
    .line 2527
    const-string/jumbo v0, "Subset"

    #@5779
    const/16 v1, 0x22d0

    #@577b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@577e
    .line 2528
    const-string/jumbo v0, "subset"

    #@5781
    const/16 v1, 0x2282

    #@5783
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5786
    .line 2529
    const-string/jumbo v0, "subseteq"

    #@5789
    const/16 v1, 0x2286

    #@578b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@578e
    .line 2530
    const-string/jumbo v0, "subseteqq"

    #@5791
    const/16 v1, 0x2ac5

    #@5793
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5796
    .line 2531
    const-string/jumbo v0, "SubsetEqual"

    #@5799
    const/16 v1, 0x2286

    #@579b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@579e
    .line 2532
    const-string/jumbo v0, "subsetneq"

    #@57a1
    const/16 v1, 0x228a

    #@57a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57a6
    .line 2533
    const-string/jumbo v0, "subsetneqq"

    #@57a9
    const/16 v1, 0x2acb

    #@57ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57ae
    .line 2534
    const-string/jumbo v0, "subsim"

    #@57b1
    const/16 v1, 0x2ac7

    #@57b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57b6
    .line 2535
    const-string/jumbo v0, "subsub"

    #@57b9
    const/16 v1, 0x2ad5

    #@57bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57be
    .line 2536
    const-string/jumbo v0, "subsup"

    #@57c1
    const/16 v1, 0x2ad3

    #@57c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57c6
    .line 2537
    const-string/jumbo v0, "succ"

    #@57c9
    const/16 v1, 0x227b

    #@57cb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57ce
    .line 2538
    const-string/jumbo v0, "succapprox"

    #@57d1
    const/16 v1, 0x2ab8

    #@57d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57d6
    .line 2539
    const-string/jumbo v0, "succcurlyeq"

    #@57d9
    const/16 v1, 0x227d

    #@57db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57de
    .line 2540
    const-string/jumbo v0, "Succeeds"

    #@57e1
    const/16 v1, 0x227b

    #@57e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57e6
    .line 2541
    const-string/jumbo v0, "SucceedsEqual"

    #@57e9
    const/16 v1, 0x2ab0

    #@57eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57ee
    .line 2542
    const-string/jumbo v0, "SucceedsSlantEqual"

    #@57f1
    const/16 v1, 0x227d

    #@57f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57f6
    .line 2543
    const-string/jumbo v0, "SucceedsTilde"

    #@57f9
    const/16 v1, 0x227f

    #@57fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@57fe
    .line 2544
    const-string/jumbo v0, "succeq"

    #@5801
    const/16 v1, 0x2ab0

    #@5803
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5806
    .line 2545
    const-string/jumbo v0, "succnapprox"

    #@5809
    const/16 v1, 0x2aba

    #@580b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@580e
    .line 2546
    const-string/jumbo v0, "succneqq"

    #@5811
    const/16 v1, 0x2ab6

    #@5813
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5816
    .line 2547
    const-string/jumbo v0, "succnsim"

    #@5819
    const/16 v1, 0x22e9

    #@581b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@581e
    .line 2548
    const-string/jumbo v0, "succsim"

    #@5821
    const/16 v1, 0x227f

    #@5823
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5826
    .line 2549
    const-string/jumbo v0, "SuchThat"

    #@5829
    const/16 v1, 0x220b

    #@582b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@582e
    .line 2550
    const-string/jumbo v0, "sum"

    #@5831
    const/16 v1, 0x2211

    #@5833
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5836
    .line 2551
    const-string/jumbo v0, "sung"

    #@5839
    const/16 v1, 0x266a

    #@583b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@583e
    .line 2552
    const-string/jumbo v0, "Sup"

    #@5841
    const/16 v1, 0x22d1

    #@5843
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5846
    .line 2553
    const-string/jumbo v0, "sup"

    #@5849
    const/16 v1, 0x2283

    #@584b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@584e
    .line 2554
    const-string/jumbo v0, "sup1"

    #@5851
    const/16 v1, 0xb9

    #@5853
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5856
    .line 2555
    const-string/jumbo v0, "sup2"

    #@5859
    const/16 v1, 0xb2

    #@585b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@585e
    .line 2556
    const-string/jumbo v0, "sup3"

    #@5861
    const/16 v1, 0xb3

    #@5863
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5866
    .line 2557
    const-string/jumbo v0, "supdot"

    #@5869
    const/16 v1, 0x2abe

    #@586b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@586e
    .line 2558
    const-string/jumbo v0, "supdsub"

    #@5871
    const/16 v1, 0x2ad8

    #@5873
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5876
    .line 2559
    const-string/jumbo v0, "supE"

    #@5879
    const/16 v1, 0x2ac6

    #@587b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@587e
    .line 2560
    const-string/jumbo v0, "supe"

    #@5881
    const/16 v1, 0x2287

    #@5883
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5886
    .line 2561
    const-string/jumbo v0, "supedot"

    #@5889
    const/16 v1, 0x2ac4

    #@588b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@588e
    .line 2562
    const-string/jumbo v0, "Superset"

    #@5891
    const/16 v1, 0x2283

    #@5893
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5896
    .line 2563
    const-string/jumbo v0, "SupersetEqual"

    #@5899
    const/16 v1, 0x2287

    #@589b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@589e
    .line 2564
    const-string/jumbo v0, "suphsub"

    #@58a1
    const/16 v1, 0x2ad7

    #@58a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58a6
    .line 2565
    const-string/jumbo v0, "suplarr"

    #@58a9
    const/16 v1, 0x297b

    #@58ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58ae
    .line 2566
    const-string/jumbo v0, "supmult"

    #@58b1
    const/16 v1, 0x2ac2

    #@58b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58b6
    .line 2567
    const-string/jumbo v0, "supnE"

    #@58b9
    const/16 v1, 0x2acc

    #@58bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58be
    .line 2568
    const-string/jumbo v0, "supne"

    #@58c1
    const/16 v1, 0x228b

    #@58c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58c6
    .line 2569
    const-string/jumbo v0, "supplus"

    #@58c9
    const/16 v1, 0x2ac0

    #@58cb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58ce
    .line 2570
    const-string/jumbo v0, "Supset"

    #@58d1
    const/16 v1, 0x22d1

    #@58d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58d6
    .line 2571
    const-string/jumbo v0, "supset"

    #@58d9
    const/16 v1, 0x2283

    #@58db
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58de
    .line 2572
    const-string/jumbo v0, "supseteq"

    #@58e1
    const/16 v1, 0x2287

    #@58e3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58e6
    .line 2573
    const-string/jumbo v0, "supseteqq"

    #@58e9
    const/16 v1, 0x2ac6

    #@58eb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58ee
    .line 2574
    const-string/jumbo v0, "supsetneq"

    #@58f1
    const/16 v1, 0x228b

    #@58f3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58f6
    .line 2575
    const-string/jumbo v0, "supsetneqq"

    #@58f9
    const/16 v1, 0x2acc

    #@58fb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@58fe
    .line 2576
    const-string/jumbo v0, "supsim"

    #@5901
    const/16 v1, 0x2ac8

    #@5903
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5906
    .line 2577
    const-string/jumbo v0, "supsub"

    #@5909
    const/16 v1, 0x2ad4

    #@590b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@590e
    .line 2578
    const-string/jumbo v0, "supsup"

    #@5911
    const/16 v1, 0x2ad6

    #@5913
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5916
    .line 2579
    const-string/jumbo v0, "swarhk"

    #@5919
    const/16 v1, 0x2926

    #@591b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@591e
    .line 2580
    const-string/jumbo v0, "swArr"

    #@5921
    const/16 v1, 0x21d9

    #@5923
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5926
    .line 2581
    const-string/jumbo v0, "swarr"

    #@5929
    const/16 v1, 0x2199

    #@592b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@592e
    .line 2582
    const-string/jumbo v0, "swarrow"

    #@5931
    const/16 v1, 0x2199

    #@5933
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5936
    .line 2583
    const-string/jumbo v0, "swnwar"

    #@5939
    const/16 v1, 0x292a

    #@593b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@593e
    .line 2584
    const-string/jumbo v0, "szlig"

    #@5941
    const/16 v1, 0xdf

    #@5943
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5946
    .line 2585
    const-string/jumbo v0, "Tab"

    #@5949
    const/16 v1, 0x9

    #@594b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@594e
    .line 2586
    const-string/jumbo v0, "target"

    #@5951
    const/16 v1, 0x2316

    #@5953
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5956
    .line 2587
    const-string/jumbo v0, "Tau"

    #@5959
    const/16 v1, 0x3a4

    #@595b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@595e
    .line 2588
    const-string/jumbo v0, "tau"

    #@5961
    const/16 v1, 0x3c4

    #@5963
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5966
    .line 2589
    const-string/jumbo v0, "tbrk"

    #@5969
    const/16 v1, 0x23b4

    #@596b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@596e
    .line 2590
    const-string/jumbo v0, "Tcaron"

    #@5971
    const/16 v1, 0x164

    #@5973
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5976
    .line 2591
    const-string/jumbo v0, "tcaron"

    #@5979
    const/16 v1, 0x165

    #@597b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@597e
    .line 2592
    const-string/jumbo v0, "Tcedil"

    #@5981
    const/16 v1, 0x162

    #@5983
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5986
    .line 2593
    const-string/jumbo v0, "tcedil"

    #@5989
    const/16 v1, 0x163

    #@598b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@598e
    .line 2594
    const-string/jumbo v0, "Tcy"

    #@5991
    const/16 v1, 0x422

    #@5993
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5996
    .line 2595
    const-string/jumbo v0, "tcy"

    #@5999
    const/16 v1, 0x442

    #@599b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@599e
    .line 2596
    const-string/jumbo v0, "telrec"

    #@59a1
    const/16 v1, 0x2315

    #@59a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59a6
    .line 2597
    const-string/jumbo v0, "Tfr"

    #@59a9
    const v1, 0x1d517

    #@59ac
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59af
    .line 2598
    const-string/jumbo v0, "tfr"

    #@59b2
    const v1, 0x1d531

    #@59b5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59b8
    .line 2599
    const-string/jumbo v0, "Tgr"

    #@59bb
    const/16 v1, 0x3a4

    #@59bd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59c0
    .line 2600
    const-string/jumbo v0, "tgr"

    #@59c3
    const/16 v1, 0x3c4

    #@59c5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59c8
    .line 2601
    const-string/jumbo v0, "there4"

    #@59cb
    const/16 v1, 0x2234

    #@59cd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59d0
    .line 2602
    const-string/jumbo v0, "therefore"

    #@59d3
    const/16 v1, 0x2234

    #@59d5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59d8
    .line 2603
    const-string/jumbo v0, "Theta"

    #@59db
    const/16 v1, 0x398

    #@59dd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59e0
    .line 2604
    const-string/jumbo v0, "theta"

    #@59e3
    const/16 v1, 0x3b8

    #@59e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59e8
    .line 2605
    const-string/jumbo v0, "thetasym"

    #@59eb
    const/16 v1, 0x3d1

    #@59ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59f0
    .line 2606
    const-string/jumbo v0, "thetav"

    #@59f3
    const/16 v1, 0x3d1

    #@59f5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@59f8
    .line 2607
    const-string/jumbo v0, "THgr"

    #@59fb
    const/16 v1, 0x398

    #@59fd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a00
    .line 2608
    const-string/jumbo v0, "thgr"

    #@5a03
    const/16 v1, 0x3b8

    #@5a05
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a08
    .line 2609
    const-string/jumbo v0, "thickapprox"

    #@5a0b
    const/16 v1, 0x2248

    #@5a0d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a10
    .line 2610
    const-string/jumbo v0, "thicksim"

    #@5a13
    const/16 v1, 0x223c

    #@5a15
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a18
    .line 2611
    const-string/jumbo v0, "thinsp"

    #@5a1b
    const/16 v1, 0x2009

    #@5a1d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a20
    .line 2612
    const-string/jumbo v0, "ThinSpace"

    #@5a23
    const/16 v1, 0x2009

    #@5a25
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a28
    .line 2613
    const-string/jumbo v0, "thkap"

    #@5a2b
    const/16 v1, 0x2248

    #@5a2d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a30
    .line 2614
    const-string/jumbo v0, "thksim"

    #@5a33
    const/16 v1, 0x223c

    #@5a35
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a38
    .line 2615
    const-string/jumbo v0, "THORN"

    #@5a3b
    const/16 v1, 0xde

    #@5a3d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a40
    .line 2616
    const-string/jumbo v0, "thorn"

    #@5a43
    const/16 v1, 0xfe

    #@5a45
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a48
    .line 2617
    const-string/jumbo v0, "Tilde"

    #@5a4b
    const/16 v1, 0x223c

    #@5a4d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a50
    .line 2618
    const-string/jumbo v0, "tilde"

    #@5a53
    const/16 v1, 0x2dc

    #@5a55
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a58
    .line 2619
    const-string/jumbo v0, "TildeEqual"

    #@5a5b
    const/16 v1, 0x2243

    #@5a5d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a60
    .line 2620
    const-string/jumbo v0, "TildeFullEqual"

    #@5a63
    const/16 v1, 0x2245

    #@5a65
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a68
    .line 2621
    const-string/jumbo v0, "TildeTilde"

    #@5a6b
    const/16 v1, 0x2248

    #@5a6d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a70
    .line 2622
    const-string/jumbo v0, "times"

    #@5a73
    const/16 v1, 0xd7

    #@5a75
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a78
    .line 2623
    const-string/jumbo v0, "timesb"

    #@5a7b
    const/16 v1, 0x22a0

    #@5a7d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a80
    .line 2624
    const-string/jumbo v0, "timesbar"

    #@5a83
    const/16 v1, 0x2a31

    #@5a85
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a88
    .line 2625
    const-string/jumbo v0, "timesd"

    #@5a8b
    const/16 v1, 0x2a30

    #@5a8d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a90
    .line 2626
    const-string/jumbo v0, "tint"

    #@5a93
    const/16 v1, 0x222d

    #@5a95
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5a98
    .line 2627
    const-string/jumbo v0, "toea"

    #@5a9b
    const/16 v1, 0x2928

    #@5a9d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5aa0
    .line 2628
    const-string/jumbo v0, "top"

    #@5aa3
    const/16 v1, 0x22a4

    #@5aa5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5aa8
    .line 2629
    const-string/jumbo v0, "topbot"

    #@5aab
    const/16 v1, 0x2336

    #@5aad
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ab0
    .line 2630
    const-string/jumbo v0, "topcir"

    #@5ab3
    const/16 v1, 0x2af1

    #@5ab5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ab8
    .line 2631
    const-string/jumbo v0, "Topf"

    #@5abb
    const v1, 0x1d54b

    #@5abe
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ac1
    .line 2632
    const-string/jumbo v0, "topf"

    #@5ac4
    const v1, 0x1d565

    #@5ac7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5aca
    .line 2633
    const-string/jumbo v0, "topfork"

    #@5acd
    const/16 v1, 0x2ada

    #@5acf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ad2
    .line 2634
    const-string/jumbo v0, "tosa"

    #@5ad5
    const/16 v1, 0x2929

    #@5ad7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ada
    .line 2635
    const-string/jumbo v0, "tprime"

    #@5add
    const/16 v1, 0x2034

    #@5adf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ae2
    .line 2636
    const-string/jumbo v0, "trade"

    #@5ae5
    const/16 v1, 0x2122

    #@5ae7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5aea
    .line 2637
    const-string/jumbo v0, "triangle"

    #@5aed
    const/16 v1, 0x25b5

    #@5aef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5af2
    .line 2638
    const-string/jumbo v0, "triangledown"

    #@5af5
    const/16 v1, 0x25bf

    #@5af7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5afa
    .line 2639
    const-string/jumbo v0, "triangleleft"

    #@5afd
    const/16 v1, 0x25c3

    #@5aff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b02
    .line 2640
    const-string/jumbo v0, "trianglelefteq"

    #@5b05
    const/16 v1, 0x22b4

    #@5b07
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b0a
    .line 2641
    const-string/jumbo v0, "triangleq"

    #@5b0d
    const/16 v1, 0x225c

    #@5b0f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b12
    .line 2642
    const-string/jumbo v0, "triangleright"

    #@5b15
    const/16 v1, 0x25b9

    #@5b17
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b1a
    .line 2643
    const-string/jumbo v0, "trianglerighteq"

    #@5b1d
    const/16 v1, 0x22b5

    #@5b1f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b22
    .line 2644
    const-string/jumbo v0, "tridot"

    #@5b25
    const/16 v1, 0x25ec

    #@5b27
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b2a
    .line 2645
    const-string/jumbo v0, "trie"

    #@5b2d
    const/16 v1, 0x225c

    #@5b2f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b32
    .line 2646
    const-string/jumbo v0, "triminus"

    #@5b35
    const/16 v1, 0x2a3a

    #@5b37
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b3a
    .line 2647
    const-string/jumbo v0, "triplus"

    #@5b3d
    const/16 v1, 0x2a39

    #@5b3f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b42
    .line 2648
    const-string/jumbo v0, "trisb"

    #@5b45
    const/16 v1, 0x29cd

    #@5b47
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b4a
    .line 2649
    const-string/jumbo v0, "tritime"

    #@5b4d
    const/16 v1, 0x2a3b

    #@5b4f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b52
    .line 2650
    const-string/jumbo v0, "trpezium"

    #@5b55
    const/16 v1, 0x23e2

    #@5b57
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b5a
    .line 2651
    const-string/jumbo v0, "Tscr"

    #@5b5d
    const v1, 0x1d4af

    #@5b60
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b63
    .line 2652
    const-string/jumbo v0, "tscr"

    #@5b66
    const v1, 0x1d4c9

    #@5b69
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b6c
    .line 2653
    const-string/jumbo v0, "TScy"

    #@5b6f
    const/16 v1, 0x426

    #@5b71
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b74
    .line 2654
    const-string/jumbo v0, "tscy"

    #@5b77
    const/16 v1, 0x446

    #@5b79
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b7c
    .line 2655
    const-string/jumbo v0, "TSHcy"

    #@5b7f
    const/16 v1, 0x40b

    #@5b81
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b84
    .line 2656
    const-string/jumbo v0, "tshcy"

    #@5b87
    const/16 v1, 0x45b

    #@5b89
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b8c
    .line 2657
    const-string/jumbo v0, "Tstrok"

    #@5b8f
    const/16 v1, 0x166

    #@5b91
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b94
    .line 2658
    const-string/jumbo v0, "tstrok"

    #@5b97
    const/16 v1, 0x167

    #@5b99
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5b9c
    .line 2659
    const-string/jumbo v0, "twixt"

    #@5b9f
    const/16 v1, 0x226c

    #@5ba1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ba4
    .line 2660
    const-string/jumbo v0, "twoheadleftarrow"

    #@5ba7
    const/16 v1, 0x219e

    #@5ba9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bac
    .line 2661
    const-string/jumbo v0, "twoheadrightarrow"

    #@5baf
    const/16 v1, 0x21a0

    #@5bb1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bb4
    .line 2662
    const-string/jumbo v0, "Uacgr"

    #@5bb7
    const/16 v1, 0x38e

    #@5bb9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bbc
    .line 2663
    const-string/jumbo v0, "uacgr"

    #@5bbf
    const/16 v1, 0x3cd

    #@5bc1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bc4
    .line 2664
    const-string/jumbo v0, "Uacute"

    #@5bc7
    const/16 v1, 0xda

    #@5bc9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bcc
    .line 2665
    const-string/jumbo v0, "uacute"

    #@5bcf
    const/16 v1, 0xfa

    #@5bd1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bd4
    .line 2666
    const-string/jumbo v0, "Uarr"

    #@5bd7
    const/16 v1, 0x219f

    #@5bd9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bdc
    .line 2667
    const-string/jumbo v0, "uArr"

    #@5bdf
    const/16 v1, 0x21d1

    #@5be1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5be4
    .line 2668
    const-string/jumbo v0, "uarr"

    #@5be7
    const/16 v1, 0x2191

    #@5be9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bec
    .line 2669
    const-string/jumbo v0, "Uarrocir"

    #@5bef
    const/16 v1, 0x2949

    #@5bf1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bf4
    .line 2670
    const-string/jumbo v0, "Ubrcy"

    #@5bf7
    const/16 v1, 0x40e

    #@5bf9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5bfc
    .line 2671
    const-string/jumbo v0, "ubrcy"

    #@5bff
    const/16 v1, 0x45e

    #@5c01
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c04
    .line 2672
    const-string/jumbo v0, "Ubreve"

    #@5c07
    const/16 v1, 0x16c

    #@5c09
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c0c
    .line 2673
    const-string/jumbo v0, "ubreve"

    #@5c0f
    const/16 v1, 0x16d

    #@5c11
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c14
    .line 2674
    const-string/jumbo v0, "Ucirc"

    #@5c17
    const/16 v1, 0xdb

    #@5c19
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c1c
    .line 2675
    const-string/jumbo v0, "ucirc"

    #@5c1f
    const/16 v1, 0xfb

    #@5c21
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c24
    .line 2676
    const-string/jumbo v0, "Ucy"

    #@5c27
    const/16 v1, 0x423

    #@5c29
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c2c
    .line 2677
    const-string/jumbo v0, "ucy"

    #@5c2f
    const/16 v1, 0x443

    #@5c31
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c34
    .line 2678
    const-string/jumbo v0, "udarr"

    #@5c37
    const/16 v1, 0x21c5

    #@5c39
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c3c
    .line 2679
    const-string/jumbo v0, "Udblac"

    #@5c3f
    const/16 v1, 0x170

    #@5c41
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c44
    .line 2680
    const-string/jumbo v0, "udblac"

    #@5c47
    const/16 v1, 0x171

    #@5c49
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c4c
    .line 2681
    const-string/jumbo v0, "udhar"

    #@5c4f
    const/16 v1, 0x296e

    #@5c51
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c54
    .line 2682
    const-string/jumbo v0, "udiagr"

    #@5c57
    const/16 v1, 0x3b0

    #@5c59
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c5c
    .line 2683
    const-string/jumbo v0, "Udigr"

    #@5c5f
    const/16 v1, 0x3ab

    #@5c61
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c64
    .line 2684
    const-string/jumbo v0, "udigr"

    #@5c67
    const/16 v1, 0x3cb

    #@5c69
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c6c
    .line 2685
    const-string/jumbo v0, "ufisht"

    #@5c6f
    const/16 v1, 0x297e

    #@5c71
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c74
    .line 2686
    const-string/jumbo v0, "Ufr"

    #@5c77
    const v1, 0x1d518

    #@5c7a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c7d
    .line 2687
    const-string/jumbo v0, "ufr"

    #@5c80
    const v1, 0x1d532

    #@5c83
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c86
    .line 2688
    const-string/jumbo v0, "Ugr"

    #@5c89
    const/16 v1, 0x3a5

    #@5c8b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c8e
    .line 2689
    const-string/jumbo v0, "ugr"

    #@5c91
    const/16 v1, 0x3c5

    #@5c93
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c96
    .line 2690
    const-string/jumbo v0, "Ugrave"

    #@5c99
    const/16 v1, 0xd9

    #@5c9b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5c9e
    .line 2691
    const-string/jumbo v0, "ugrave"

    #@5ca1
    const/16 v1, 0xf9

    #@5ca3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ca6
    .line 2692
    const-string/jumbo v0, "uHar"

    #@5ca9
    const/16 v1, 0x2963

    #@5cab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cae
    .line 2693
    const-string/jumbo v0, "uharl"

    #@5cb1
    const/16 v1, 0x21bf

    #@5cb3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cb6
    .line 2694
    const-string/jumbo v0, "uharr"

    #@5cb9
    const/16 v1, 0x21be

    #@5cbb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cbe
    .line 2695
    const-string/jumbo v0, "uhblk"

    #@5cc1
    const/16 v1, 0x2580

    #@5cc3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cc6
    .line 2696
    const-string/jumbo v0, "ulcorn"

    #@5cc9
    const/16 v1, 0x231c

    #@5ccb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cce
    .line 2697
    const-string/jumbo v0, "ulcorner"

    #@5cd1
    const/16 v1, 0x231c

    #@5cd3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cd6
    .line 2698
    const-string/jumbo v0, "ulcrop"

    #@5cd9
    const/16 v1, 0x230f

    #@5cdb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cde
    .line 2699
    const-string/jumbo v0, "ultri"

    #@5ce1
    const/16 v1, 0x25f8

    #@5ce3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ce6
    .line 2700
    const-string/jumbo v0, "Umacr"

    #@5ce9
    const/16 v1, 0x16a

    #@5ceb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cee
    .line 2701
    const-string/jumbo v0, "umacr"

    #@5cf1
    const/16 v1, 0x16b

    #@5cf3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cf6
    .line 2702
    const-string/jumbo v0, "uml"

    #@5cf9
    const/16 v1, 0xa8

    #@5cfb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5cfe
    .line 2703
    const-string/jumbo v0, "UnderBrace"

    #@5d01
    const v1, 0xfe38

    #@5d04
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d07
    .line 2704
    const-string/jumbo v0, "UnderBracket"

    #@5d0a
    const/16 v1, 0x23b5

    #@5d0c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d0f
    .line 2705
    const-string/jumbo v0, "UnderParenthesis"

    #@5d12
    const v1, 0xfe36

    #@5d15
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d18
    .line 2706
    const-string/jumbo v0, "Union"

    #@5d1b
    const/16 v1, 0x22c3

    #@5d1d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d20
    .line 2707
    const-string/jumbo v0, "UnionPlus"

    #@5d23
    const/16 v1, 0x228e

    #@5d25
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d28
    .line 2708
    const-string/jumbo v0, "Uogon"

    #@5d2b
    const/16 v1, 0x172

    #@5d2d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d30
    .line 2709
    const-string/jumbo v0, "uogon"

    #@5d33
    const/16 v1, 0x173

    #@5d35
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d38
    .line 2710
    const-string/jumbo v0, "Uopf"

    #@5d3b
    const v1, 0x1d54c

    #@5d3e
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d41
    .line 2711
    const-string/jumbo v0, "uopf"

    #@5d44
    const v1, 0x1d566

    #@5d47
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d4a
    .line 2712
    const-string/jumbo v0, "Uparrow"

    #@5d4d
    const/16 v1, 0x21d1

    #@5d4f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d52
    .line 2713
    const-string/jumbo v0, "uparrow"

    #@5d55
    const/16 v1, 0x2191

    #@5d57
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d5a
    .line 2714
    const-string/jumbo v0, "UpArrowBar"

    #@5d5d
    const/16 v1, 0x2912

    #@5d5f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d62
    .line 2715
    const-string/jumbo v0, "UpArrowDownArrow"

    #@5d65
    const/16 v1, 0x21c5

    #@5d67
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d6a
    .line 2716
    const-string/jumbo v0, "Updownarrow"

    #@5d6d
    const/16 v1, 0x21d5

    #@5d6f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d72
    .line 2717
    const-string/jumbo v0, "updownarrow"

    #@5d75
    const/16 v1, 0x2195

    #@5d77
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d7a
    .line 2718
    const-string/jumbo v0, "UpEquilibrium"

    #@5d7d
    const/16 v1, 0x296e

    #@5d7f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d82
    .line 2719
    const-string/jumbo v0, "upharpoonleft"

    #@5d85
    const/16 v1, 0x21bf

    #@5d87
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d8a
    .line 2720
    const-string/jumbo v0, "upharpoonright"

    #@5d8d
    const/16 v1, 0x21be

    #@5d8f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d92
    .line 2721
    const-string/jumbo v0, "uplus"

    #@5d95
    const/16 v1, 0x228e

    #@5d97
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5d9a
    .line 2722
    const-string/jumbo v0, "UpperLeftArrow"

    #@5d9d
    const/16 v1, 0x2196

    #@5d9f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5da2
    .line 2723
    const-string/jumbo v0, "UpperRightArrow"

    #@5da5
    const/16 v1, 0x2197

    #@5da7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5daa
    .line 2724
    const-string/jumbo v0, "Upsi"

    #@5dad
    const/16 v1, 0x3d2

    #@5daf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5db2
    .line 2725
    const-string/jumbo v0, "upsi"

    #@5db5
    const/16 v1, 0x3c5

    #@5db7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dba
    .line 2726
    const-string/jumbo v0, "upsih"

    #@5dbd
    const/16 v1, 0x3d2

    #@5dbf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dc2
    .line 2727
    const-string/jumbo v0, "Upsilon"

    #@5dc5
    const/16 v1, 0x3a5

    #@5dc7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dca
    .line 2728
    const-string/jumbo v0, "upsilon"

    #@5dcd
    const/16 v1, 0x3c5

    #@5dcf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dd2
    .line 2729
    const-string/jumbo v0, "UpTee"

    #@5dd5
    const/16 v1, 0x22a5

    #@5dd7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dda
    .line 2730
    const-string/jumbo v0, "UpTeeArrow"

    #@5ddd
    const/16 v1, 0x21a5

    #@5ddf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5de2
    .line 2731
    const-string/jumbo v0, "upuparrows"

    #@5de5
    const/16 v1, 0x21c8

    #@5de7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dea
    .line 2732
    const-string/jumbo v0, "urcorn"

    #@5ded
    const/16 v1, 0x231d

    #@5def
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5df2
    .line 2733
    const-string/jumbo v0, "urcorner"

    #@5df5
    const/16 v1, 0x231d

    #@5df7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5dfa
    .line 2734
    const-string/jumbo v0, "urcrop"

    #@5dfd
    const/16 v1, 0x230e

    #@5dff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e02
    .line 2735
    const-string/jumbo v0, "Uring"

    #@5e05
    const/16 v1, 0x16e

    #@5e07
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e0a
    .line 2736
    const-string/jumbo v0, "uring"

    #@5e0d
    const/16 v1, 0x16f

    #@5e0f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e12
    .line 2737
    const-string/jumbo v0, "urtri"

    #@5e15
    const/16 v1, 0x25f9

    #@5e17
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e1a
    .line 2738
    const-string/jumbo v0, "Uscr"

    #@5e1d
    const v1, 0x1d4b0

    #@5e20
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e23
    .line 2739
    const-string/jumbo v0, "uscr"

    #@5e26
    const v1, 0x1d4ca

    #@5e29
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e2c
    .line 2740
    const-string/jumbo v0, "utdot"

    #@5e2f
    const/16 v1, 0x22f0

    #@5e31
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e34
    .line 2741
    const-string/jumbo v0, "Utilde"

    #@5e37
    const/16 v1, 0x168

    #@5e39
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e3c
    .line 2742
    const-string/jumbo v0, "utilde"

    #@5e3f
    const/16 v1, 0x169

    #@5e41
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e44
    .line 2743
    const-string/jumbo v0, "utri"

    #@5e47
    const/16 v1, 0x25b5

    #@5e49
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e4c
    .line 2744
    const-string/jumbo v0, "utrif"

    #@5e4f
    const/16 v1, 0x25b4

    #@5e51
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e54
    .line 2745
    const-string/jumbo v0, "uuarr"

    #@5e57
    const/16 v1, 0x21c8

    #@5e59
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e5c
    .line 2746
    const-string/jumbo v0, "Uuml"

    #@5e5f
    const/16 v1, 0xdc

    #@5e61
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e64
    .line 2747
    const-string/jumbo v0, "uuml"

    #@5e67
    const/16 v1, 0xfc

    #@5e69
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e6c
    .line 2748
    const-string/jumbo v0, "uwangle"

    #@5e6f
    const/16 v1, 0x29a7

    #@5e71
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e74
    .line 2749
    const-string/jumbo v0, "vangrt"

    #@5e77
    const/16 v1, 0x299c

    #@5e79
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e7c
    .line 2750
    const-string/jumbo v0, "varepsilon"

    #@5e7f
    const/16 v1, 0x3b5

    #@5e81
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e84
    .line 2751
    const-string/jumbo v0, "varkappa"

    #@5e87
    const/16 v1, 0x3f0

    #@5e89
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e8c
    .line 2752
    const-string/jumbo v0, "varnothing"

    #@5e8f
    const/16 v1, 0x2205

    #@5e91
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e94
    .line 2753
    const-string/jumbo v0, "varphi"

    #@5e97
    const/16 v1, 0x3c6

    #@5e99
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5e9c
    .line 2754
    const-string/jumbo v0, "varpi"

    #@5e9f
    const/16 v1, 0x3d6

    #@5ea1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ea4
    .line 2755
    const-string/jumbo v0, "varpropto"

    #@5ea7
    const/16 v1, 0x221d

    #@5ea9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5eac
    .line 2756
    const-string/jumbo v0, "vArr"

    #@5eaf
    const/16 v1, 0x21d5

    #@5eb1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5eb4
    .line 2757
    const-string/jumbo v0, "varr"

    #@5eb7
    const/16 v1, 0x2195

    #@5eb9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ebc
    .line 2758
    const-string/jumbo v0, "varrho"

    #@5ebf
    const/16 v1, 0x3f1

    #@5ec1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ec4
    .line 2759
    const-string/jumbo v0, "varsigma"

    #@5ec7
    const/16 v1, 0x3c2

    #@5ec9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ecc
    .line 2760
    const-string/jumbo v0, "vartheta"

    #@5ecf
    const/16 v1, 0x3d1

    #@5ed1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ed4
    .line 2761
    const-string/jumbo v0, "vartriangleleft"

    #@5ed7
    const/16 v1, 0x22b2

    #@5ed9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5edc
    .line 2762
    const-string/jumbo v0, "vartriangleright"

    #@5edf
    const/16 v1, 0x22b3

    #@5ee1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ee4
    .line 2763
    const-string/jumbo v0, "Vbar"

    #@5ee7
    const/16 v1, 0x2aeb

    #@5ee9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5eec
    .line 2764
    const-string/jumbo v0, "vBar"

    #@5eef
    const/16 v1, 0x2ae8

    #@5ef1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ef4
    .line 2765
    const-string/jumbo v0, "vBarv"

    #@5ef7
    const/16 v1, 0x2ae9

    #@5ef9
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5efc
    .line 2766
    const-string/jumbo v0, "Vcy"

    #@5eff
    const/16 v1, 0x412

    #@5f01
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f04
    .line 2767
    const-string/jumbo v0, "vcy"

    #@5f07
    const/16 v1, 0x432

    #@5f09
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f0c
    .line 2768
    const-string/jumbo v0, "VDash"

    #@5f0f
    const/16 v1, 0x22ab

    #@5f11
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f14
    .line 2769
    const-string/jumbo v0, "Vdash"

    #@5f17
    const/16 v1, 0x22a9

    #@5f19
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f1c
    .line 2770
    const-string/jumbo v0, "vDash"

    #@5f1f
    const/16 v1, 0x22a8

    #@5f21
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f24
    .line 2771
    const-string/jumbo v0, "vdash"

    #@5f27
    const/16 v1, 0x22a2

    #@5f29
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f2c
    .line 2772
    const-string/jumbo v0, "Vdashl"

    #@5f2f
    const/16 v1, 0x2ae6

    #@5f31
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f34
    .line 2773
    const-string/jumbo v0, "Vee"

    #@5f37
    const/16 v1, 0x22c1

    #@5f39
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f3c
    .line 2774
    const-string/jumbo v0, "vee"

    #@5f3f
    const/16 v1, 0x2228

    #@5f41
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f44
    .line 2775
    const-string/jumbo v0, "veebar"

    #@5f47
    const/16 v1, 0x22bb

    #@5f49
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f4c
    .line 2776
    const-string/jumbo v0, "veeeq"

    #@5f4f
    const/16 v1, 0x225a

    #@5f51
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f54
    .line 2777
    const-string/jumbo v0, "vellip"

    #@5f57
    const/16 v1, 0x22ee

    #@5f59
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f5c
    .line 2778
    const-string/jumbo v0, "Verbar"

    #@5f5f
    const/16 v1, 0x2016

    #@5f61
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f64
    .line 2779
    const-string/jumbo v0, "verbar"

    #@5f67
    const/16 v1, 0x7c

    #@5f69
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f6c
    .line 2780
    const-string/jumbo v0, "Vert"

    #@5f6f
    const/16 v1, 0x2016

    #@5f71
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f74
    .line 2781
    const-string/jumbo v0, "vert"

    #@5f77
    const/16 v1, 0x7c

    #@5f79
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f7c
    .line 2782
    const-string/jumbo v0, "VerticalBar"

    #@5f7f
    const/16 v1, 0x2223

    #@5f81
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f84
    .line 2783
    const-string/jumbo v0, "VerticalLine"

    #@5f87
    const/16 v1, 0x7c

    #@5f89
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f8c
    .line 2784
    const-string/jumbo v0, "VerticalSeparator"

    #@5f8f
    const/16 v1, 0x2758

    #@5f91
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f94
    .line 2785
    const-string/jumbo v0, "VerticalTilde"

    #@5f97
    const/16 v1, 0x2240

    #@5f99
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5f9c
    .line 2786
    const-string/jumbo v0, "VeryThinSpace"

    #@5f9f
    const/16 v1, 0x200a

    #@5fa1
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fa4
    .line 2787
    const-string/jumbo v0, "Vfr"

    #@5fa7
    const v1, 0x1d519

    #@5faa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fad
    .line 2788
    const-string/jumbo v0, "vfr"

    #@5fb0
    const v1, 0x1d533

    #@5fb3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fb6
    .line 2789
    const-string/jumbo v0, "vltri"

    #@5fb9
    const/16 v1, 0x22b2

    #@5fbb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fbe
    .line 2790
    const-string/jumbo v0, "Vopf"

    #@5fc1
    const v1, 0x1d54d

    #@5fc4
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fc7
    .line 2791
    const-string/jumbo v0, "vopf"

    #@5fca
    const v1, 0x1d567

    #@5fcd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fd0
    .line 2792
    const-string/jumbo v0, "vprop"

    #@5fd3
    const/16 v1, 0x221d

    #@5fd5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fd8
    .line 2793
    const-string/jumbo v0, "vrtri"

    #@5fdb
    const/16 v1, 0x22b3

    #@5fdd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fe0
    .line 2794
    const-string/jumbo v0, "Vscr"

    #@5fe3
    const v1, 0x1d4b1

    #@5fe6
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5fe9
    .line 2795
    const-string/jumbo v0, "vscr"

    #@5fec
    const v1, 0x1d4cb

    #@5fef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ff2
    .line 2796
    const-string/jumbo v0, "Vvdash"

    #@5ff5
    const/16 v1, 0x22aa

    #@5ff7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@5ffa
    .line 2797
    const-string/jumbo v0, "vzigzag"

    #@5ffd
    const/16 v1, 0x299a

    #@5fff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6002
    .line 2798
    const-string/jumbo v0, "Wcirc"

    #@6005
    const/16 v1, 0x174

    #@6007
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@600a
    .line 2799
    const-string/jumbo v0, "wcirc"

    #@600d
    const/16 v1, 0x175

    #@600f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6012
    .line 2800
    const-string/jumbo v0, "wedbar"

    #@6015
    const/16 v1, 0x2a5f

    #@6017
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@601a
    .line 2801
    const-string/jumbo v0, "Wedge"

    #@601d
    const/16 v1, 0x22c0

    #@601f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6022
    .line 2802
    const-string/jumbo v0, "wedge"

    #@6025
    const/16 v1, 0x2227

    #@6027
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@602a
    .line 2803
    const-string/jumbo v0, "wedgeq"

    #@602d
    const/16 v1, 0x2259

    #@602f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6032
    .line 2804
    const-string/jumbo v0, "weierp"

    #@6035
    const/16 v1, 0x2118

    #@6037
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@603a
    .line 2805
    const-string/jumbo v0, "Wfr"

    #@603d
    const v1, 0x1d51a

    #@6040
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6043
    .line 2806
    const-string/jumbo v0, "wfr"

    #@6046
    const v1, 0x1d534

    #@6049
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@604c
    .line 2807
    const-string/jumbo v0, "Wopf"

    #@604f
    const v1, 0x1d54e

    #@6052
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6055
    .line 2808
    const-string/jumbo v0, "wopf"

    #@6058
    const v1, 0x1d568

    #@605b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@605e
    .line 2809
    const-string/jumbo v0, "wp"

    #@6061
    const/16 v1, 0x2118

    #@6063
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6066
    .line 2810
    const-string/jumbo v0, "wr"

    #@6069
    const/16 v1, 0x2240

    #@606b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@606e
    .line 2811
    const-string/jumbo v0, "wreath"

    #@6071
    const/16 v1, 0x2240

    #@6073
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6076
    .line 2812
    const-string/jumbo v0, "Wscr"

    #@6079
    const v1, 0x1d4b2

    #@607c
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@607f
    .line 2813
    const-string/jumbo v0, "wscr"

    #@6082
    const v1, 0x1d4cc

    #@6085
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6088
    .line 2814
    const-string/jumbo v0, "xcap"

    #@608b
    const/16 v1, 0x22c2

    #@608d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6090
    .line 2815
    const-string/jumbo v0, "xcirc"

    #@6093
    const/16 v1, 0x25ef

    #@6095
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6098
    .line 2816
    const-string/jumbo v0, "xcup"

    #@609b
    const/16 v1, 0x22c3

    #@609d
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60a0
    .line 2817
    const-string/jumbo v0, "xdtri"

    #@60a3
    const/16 v1, 0x25bd

    #@60a5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60a8
    .line 2818
    const-string/jumbo v0, "Xfr"

    #@60ab
    const v1, 0x1d51b

    #@60ae
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60b1
    .line 2819
    const-string/jumbo v0, "xfr"

    #@60b4
    const v1, 0x1d535

    #@60b7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60ba
    .line 2820
    const-string/jumbo v0, "Xgr"

    #@60bd
    const/16 v1, 0x39e

    #@60bf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60c2
    .line 2821
    const-string/jumbo v0, "xgr"

    #@60c5
    const/16 v1, 0x3be

    #@60c7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60ca
    .line 2822
    const-string/jumbo v0, "xhArr"

    #@60cd
    const/16 v1, 0x27fa

    #@60cf
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60d2
    .line 2823
    const-string/jumbo v0, "xharr"

    #@60d5
    const/16 v1, 0x27f7

    #@60d7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60da
    .line 2824
    const-string/jumbo v0, "Xi"

    #@60dd
    const/16 v1, 0x39e

    #@60df
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60e2
    .line 2825
    const-string/jumbo v0, "xi"

    #@60e5
    const/16 v1, 0x3be

    #@60e7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60ea
    .line 2826
    const-string/jumbo v0, "xlArr"

    #@60ed
    const/16 v1, 0x27f8

    #@60ef
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60f2
    .line 2827
    const-string/jumbo v0, "xlarr"

    #@60f5
    const/16 v1, 0x27f5

    #@60f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@60fa
    .line 2828
    const-string/jumbo v0, "xmap"

    #@60fd
    const/16 v1, 0x27fc

    #@60ff
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6102
    .line 2829
    const-string/jumbo v0, "xnis"

    #@6105
    const/16 v1, 0x22fb

    #@6107
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@610a
    .line 2830
    const-string/jumbo v0, "xodot"

    #@610d
    const/16 v1, 0x2a00

    #@610f
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6112
    .line 2831
    const-string/jumbo v0, "Xopf"

    #@6115
    const v1, 0x1d54f

    #@6118
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@611b
    .line 2832
    const-string/jumbo v0, "xopf"

    #@611e
    const v1, 0x1d569

    #@6121
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6124
    .line 2833
    const-string/jumbo v0, "xoplus"

    #@6127
    const/16 v1, 0x2a01

    #@6129
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@612c
    .line 2834
    const-string/jumbo v0, "xotime"

    #@612f
    const/16 v1, 0x2a02

    #@6131
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6134
    .line 2835
    const-string/jumbo v0, "xrArr"

    #@6137
    const/16 v1, 0x27f9

    #@6139
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@613c
    .line 2836
    const-string/jumbo v0, "xrarr"

    #@613f
    const/16 v1, 0x27f6

    #@6141
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6144
    .line 2837
    const-string/jumbo v0, "Xscr"

    #@6147
    const v1, 0x1d4b3

    #@614a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@614d
    .line 2838
    const-string/jumbo v0, "xscr"

    #@6150
    const v1, 0x1d4cd

    #@6153
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6156
    .line 2839
    const-string/jumbo v0, "xsqcup"

    #@6159
    const/16 v1, 0x2a06

    #@615b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@615e
    .line 2840
    const-string/jumbo v0, "xuplus"

    #@6161
    const/16 v1, 0x2a04

    #@6163
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6166
    .line 2841
    const-string/jumbo v0, "xutri"

    #@6169
    const/16 v1, 0x25b3

    #@616b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@616e
    .line 2842
    const-string/jumbo v0, "xvee"

    #@6171
    const/16 v1, 0x22c1

    #@6173
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6176
    .line 2843
    const-string/jumbo v0, "xwedge"

    #@6179
    const/16 v1, 0x22c0

    #@617b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@617e
    .line 2844
    const-string/jumbo v0, "Yacute"

    #@6181
    const/16 v1, 0xdd

    #@6183
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6186
    .line 2845
    const-string/jumbo v0, "yacute"

    #@6189
    const/16 v1, 0xfd

    #@618b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@618e
    .line 2846
    const-string/jumbo v0, "YAcy"

    #@6191
    const/16 v1, 0x42f

    #@6193
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6196
    .line 2847
    const-string/jumbo v0, "yacy"

    #@6199
    const/16 v1, 0x44f

    #@619b
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@619e
    .line 2848
    const-string/jumbo v0, "Ycirc"

    #@61a1
    const/16 v1, 0x176

    #@61a3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61a6
    .line 2849
    const-string/jumbo v0, "ycirc"

    #@61a9
    const/16 v1, 0x177

    #@61ab
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61ae
    .line 2850
    const-string/jumbo v0, "Ycy"

    #@61b1
    const/16 v1, 0x42b

    #@61b3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61b6
    .line 2851
    const-string/jumbo v0, "ycy"

    #@61b9
    const/16 v1, 0x44b

    #@61bb
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61be
    .line 2852
    const-string/jumbo v0, "yen"

    #@61c1
    const/16 v1, 0xa5

    #@61c3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61c6
    .line 2853
    const-string/jumbo v0, "Yfr"

    #@61c9
    const v1, 0x1d51c

    #@61cc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61cf
    .line 2854
    const-string/jumbo v0, "yfr"

    #@61d2
    const v1, 0x1d536

    #@61d5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61d8
    .line 2855
    const-string/jumbo v0, "YIcy"

    #@61db
    const/16 v1, 0x407

    #@61dd
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61e0
    .line 2856
    const-string/jumbo v0, "yicy"

    #@61e3
    const/16 v1, 0x457

    #@61e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61e8
    .line 2857
    const-string/jumbo v0, "Yopf"

    #@61eb
    const v1, 0x1d550

    #@61ee
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61f1
    .line 2858
    const-string/jumbo v0, "yopf"

    #@61f4
    const v1, 0x1d56a

    #@61f7
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@61fa
    .line 2859
    const-string/jumbo v0, "Yscr"

    #@61fd
    const v1, 0x1d4b4

    #@6200
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6203
    .line 2860
    const-string/jumbo v0, "yscr"

    #@6206
    const v1, 0x1d4ce

    #@6209
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@620c
    .line 2861
    const-string/jumbo v0, "YUcy"

    #@620f
    const/16 v1, 0x42e

    #@6211
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6214
    .line 2862
    const-string/jumbo v0, "yucy"

    #@6217
    const/16 v1, 0x44e

    #@6219
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@621c
    .line 2863
    const-string/jumbo v0, "Yuml"

    #@621f
    const/16 v1, 0x178

    #@6221
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6224
    .line 2864
    const-string/jumbo v0, "yuml"

    #@6227
    const/16 v1, 0xff

    #@6229
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@622c
    .line 2865
    const-string/jumbo v0, "Zacute"

    #@622f
    const/16 v1, 0x179

    #@6231
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6234
    .line 2866
    const-string/jumbo v0, "zacute"

    #@6237
    const/16 v1, 0x17a

    #@6239
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@623c
    .line 2867
    const-string/jumbo v0, "Zcaron"

    #@623f
    const/16 v1, 0x17d

    #@6241
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6244
    .line 2868
    const-string/jumbo v0, "zcaron"

    #@6247
    const/16 v1, 0x17e

    #@6249
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@624c
    .line 2869
    const-string/jumbo v0, "Zcy"

    #@624f
    const/16 v1, 0x417

    #@6251
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6254
    .line 2870
    const-string/jumbo v0, "zcy"

    #@6257
    const/16 v1, 0x437

    #@6259
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@625c
    .line 2871
    const-string/jumbo v0, "Zdot"

    #@625f
    const/16 v1, 0x17b

    #@6261
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6264
    .line 2872
    const-string/jumbo v0, "zdot"

    #@6267
    const/16 v1, 0x17c

    #@6269
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@626c
    .line 2873
    const-string/jumbo v0, "zeetrf"

    #@626f
    const/16 v1, 0x2128

    #@6271
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6274
    .line 2874
    const-string/jumbo v0, "ZeroWidthSpace"

    #@6277
    const/16 v1, 0x200b

    #@6279
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@627c
    .line 2875
    const-string/jumbo v0, "Zeta"

    #@627f
    const/16 v1, 0x396

    #@6281
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6284
    .line 2876
    const-string/jumbo v0, "zeta"

    #@6287
    const/16 v1, 0x3b6

    #@6289
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@628c
    .line 2877
    const-string/jumbo v0, "Zfr"

    #@628f
    const/16 v1, 0x2128

    #@6291
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@6294
    .line 2878
    const-string/jumbo v0, "zfr"

    #@6297
    const v1, 0x1d537

    #@629a
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@629d
    .line 2879
    const-string/jumbo v0, "Zgr"

    #@62a0
    const/16 v1, 0x396

    #@62a2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62a5
    .line 2880
    const-string/jumbo v0, "zgr"

    #@62a8
    const/16 v1, 0x3b6

    #@62aa
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62ad
    .line 2881
    const-string/jumbo v0, "ZHcy"

    #@62b0
    const/16 v1, 0x416

    #@62b2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62b5
    .line 2882
    const-string/jumbo v0, "zhcy"

    #@62b8
    const/16 v1, 0x436

    #@62ba
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62bd
    .line 2883
    const-string/jumbo v0, "zigrarr"

    #@62c0
    const/16 v1, 0x21dd

    #@62c2
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62c5
    .line 2884
    const-string/jumbo v0, "Zopf"

    #@62c8
    const/16 v1, 0x2124

    #@62ca
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62cd
    .line 2885
    const-string/jumbo v0, "zopf"

    #@62d0
    const v1, 0x1d56b

    #@62d3
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62d6
    .line 2886
    const-string/jumbo v0, "Zscr"

    #@62d9
    const v1, 0x1d4b5

    #@62dc
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62df
    .line 2887
    const-string/jumbo v0, "zscr"

    #@62e2
    const v1, 0x1d4cf

    #@62e5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62e8
    .line 2888
    const-string/jumbo v0, "zwj"

    #@62eb
    const/16 v1, 0x200d

    #@62ed
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62f0
    .line 2889
    const-string/jumbo v0, "zwnj"

    #@62f3
    const/16 v1, 0x200c

    #@62f5
    invoke-virtual {p0, v0, v1}, Lorg/ccil/cowan/tagsoup/Schema;->entity(Ljava/lang/String;I)V

    #@62f8
    .line 31
    return-void
.end method
