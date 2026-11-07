.class public Lorg/ccil/cowan/tagsoup/HTMLSchema;
.super Lorg/ccil/cowan/tagsoup/Schema;
.source "HTMLSchema.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/HTMLModels;


# direct methods
.method public constructor greylist <init>()V
    .registers 17

    .line 31
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Schema;-><init>()V

    .line 33
    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->setURI(Ljava/lang/String;)V

    .line 34
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->setPrefix(Ljava/lang/String;)V

    .line 35
    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "<pcdata>"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 36
    const-string v1, "<root>"

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 37
    const v1, 0x40008000    # 2.0078125f

    const/16 v2, 0x1000

    const-string v4, "a"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 38
    const-string v1, "abbr"

    const v2, 0x40001000    # 2.0009766f

    const v4, 0x9000

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 39
    const-string v1, "acronym"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 40
    const-string v1, "address"

    const v6, 0x40041000

    const/4 v7, 0x4

    invoke-virtual {v0, v1, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 41
    const-string v1, "applet"

    const v6, 0x40081004

    invoke-virtual {v0, v1, v6, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 42
    const-string v1, "area"

    const/4 v6, 0x2

    invoke-virtual {v0, v1, v3, v6, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 43
    const-string v1, "b"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 44
    const-string v1, "base"

    const/16 v6, 0x400

    invoke-virtual {v0, v1, v3, v6, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 45
    const-string v1, "basefont"

    invoke-virtual {v0, v1, v3, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 46
    const-string v1, "bdo"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 47
    const-string v1, "bgsound"

    invoke-virtual {v0, v1, v3, v6, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 48
    const-string v1, "big"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 49
    const-string v1, "blink"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 50
    const-string v1, "blockquote"

    const v6, 0x40001004    # 2.0009775f

    invoke-virtual {v0, v1, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 51
    const/16 v1, 0x810

    const-string v8, "body"

    invoke-virtual {v0, v8, v6, v1, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 52
    const-string v1, "br"

    invoke-virtual {v0, v1, v3, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 53
    const-string v1, "button"

    invoke-virtual {v0, v1, v6, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 54
    const-string v1, "canvas"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 55
    const-string v1, "caption"

    const/high16 v9, 0x200000

    invoke-virtual {v0, v1, v2, v9, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 56
    const-string v1, "center"

    invoke-virtual {v0, v1, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 57
    const-string v1, "cite"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 58
    const-string v1, "code"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 59
    const-string v1, "col"

    const v9, 0x200040

    invoke-virtual {v0, v1, v3, v9, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 60
    const/16 v1, 0x40

    const/high16 v9, 0x200000

    const-string v10, "colgroup"

    invoke-virtual {v0, v10, v1, v9, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 61
    const-string v1, "comment"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 62
    const-string v1, "dd"

    const/16 v9, 0x80

    invoke-virtual {v0, v1, v6, v9, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 63
    const-string v1, "del"

    const/16 v9, 0x100c

    invoke-virtual {v0, v1, v6, v9, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 64
    const-string v1, "dfn"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 65
    const/16 v1, 0x4000

    const-string v9, "dir"

    invoke-virtual {v0, v9, v1, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 66
    const-string v1, "div"

    invoke-virtual {v0, v1, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 67
    const-string v1, "dl"

    const/16 v10, 0x80

    invoke-virtual {v0, v1, v10, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 68
    const-string v1, "dt"

    invoke-virtual {v0, v1, v2, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 69
    const-string v1, "em"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 70
    const-string v1, "fieldset"

    const v10, 0x40003004

    invoke-virtual {v0, v1, v10, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 71
    const-string v1, "font"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 72
    const v1, 0x40409024

    const/16 v10, 0x104

    const-string v11, "form"

    invoke-virtual {v0, v11, v1, v10, v7}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 73
    const-string v1, "frame"

    const/16 v10, 0x200

    invoke-virtual {v0, v1, v3, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 74
    const/16 v1, 0x200

    const/16 v10, 0xa00

    const-string v12, "frameset"

    invoke-virtual {v0, v12, v1, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 75
    const-string v1, "h1"

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 76
    const-string v1, "h2"

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 77
    const-string v1, "h3"

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 78
    const-string v1, "h4"

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 79
    const-string v1, "h5"

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 80
    const-string v1, "h6"

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 81
    const/16 v1, 0x400

    const/16 v10, 0x800

    const-string v12, "head"

    invoke-virtual {v0, v12, v1, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 82
    const-string v1, "hr"

    invoke-virtual {v0, v1, v3, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 83
    const/16 v1, 0x800

    const/high16 v10, -0x80000000

    const-string v13, "html"

    invoke-virtual {v0, v13, v1, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 84
    const-string v1, "i"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 85
    const-string v1, "iframe"

    invoke-virtual {v0, v1, v6, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 86
    const-string v1, "img"

    invoke-virtual {v0, v1, v3, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 87
    const-string v1, "input"

    invoke-virtual {v0, v1, v3, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 88
    const-string v10, "ins"

    const/16 v13, 0x1004

    invoke-virtual {v0, v10, v6, v13, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 89
    const-string v10, "isindex"

    const/16 v13, 0x400

    invoke-virtual {v0, v10, v3, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 90
    const-string v10, "kbd"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 91
    const-string v10, "label"

    invoke-virtual {v0, v10, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 92
    const-string v10, "legend"

    const/16 v13, 0x2000

    invoke-virtual {v0, v10, v2, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 93
    const-string v10, "li"

    const/16 v13, 0x4000

    invoke-virtual {v0, v10, v6, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 94
    const-string v10, "link"

    const/16 v13, 0x1400

    invoke-virtual {v0, v10, v3, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 95
    const-string v10, "listing"

    invoke-virtual {v0, v10, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 96
    const/4 v10, 0x6

    const/16 v13, 0x1000

    const-string v14, "map"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 97
    const-string v10, "marquee"

    invoke-virtual {v0, v10, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 98
    const-string v10, "menu"

    const/16 v13, 0x4000

    invoke-virtual {v0, v10, v13, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 99
    const-string v10, "meta"

    const/16 v13, 0x400

    invoke-virtual {v0, v10, v3, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 100
    const-string v10, "nobr"

    invoke-virtual {v0, v10, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 101
    const/16 v10, 0x1014

    const/16 v13, 0xa04

    const-string v14, "noframes"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 102
    const-string v10, "noscript"

    invoke-virtual {v0, v10, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 103
    const v10, 0x40081004

    const v13, 0x9400

    const-string v14, "object"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 104
    const-string v10, "ol"

    const/16 v13, 0x4000

    invoke-virtual {v0, v10, v13, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 105
    const/high16 v10, 0x20000

    const/high16 v13, 0x20000

    const-string v14, "optgroup"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 106
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v13, 0x30000

    const-string v14, "option"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 107
    const v10, 0x40101000

    const v13, 0x40004

    const-string v14, "p"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 108
    const-string v10, "param"

    const/high16 v13, 0x80000

    invoke-virtual {v0, v10, v3, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 109
    const-string v10, "pre"

    invoke-virtual {v0, v10, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 110
    const-string v10, "q"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 111
    const-string v10, "rb"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 112
    const-string v10, "rbc"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 113
    const-string v10, "rp"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 114
    const-string v10, "rt"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 115
    const-string v10, "rtc"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 116
    const-string v10, "ruby"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 117
    const-string v10, "s"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 118
    const-string v10, "samp"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 119
    const v10, 0x7fffffff

    const/4 v13, 0x2

    const-string v14, "script"

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v0, v14, v15, v10, v13}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 120
    const/high16 v10, 0x20000

    const/16 v13, 0x1000

    const-string v14, "select"

    invoke-virtual {v0, v14, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 121
    const-string v10, "small"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 122
    const-string v10, "span"

    invoke-virtual {v0, v10, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 123
    const-string v10, "strike"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 124
    const-string v10, "strong"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 125
    const/16 v10, 0x1400

    const/4 v13, 0x2

    const-string v14, "style"

    invoke-virtual {v0, v14, v15, v10, v13}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 126
    const-string v10, "sub"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 127
    const-string v10, "sup"

    invoke-virtual {v0, v10, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 128
    const v10, 0x200100

    const v13, 0x100004

    const-string v14, "table"

    invoke-virtual {v0, v14, v10, v13, v7}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 129
    const/high16 v10, 0x400000

    const/high16 v13, 0x200000

    const-string v15, "tbody"

    invoke-virtual {v0, v15, v10, v13, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 130
    const/16 v10, 0x20

    const-string v13, "td"

    invoke-virtual {v0, v13, v6, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 131
    const/high16 v10, 0x40000000    # 2.0f

    const/16 v15, 0x1000

    const-string v7, "textarea"

    invoke-virtual {v0, v7, v10, v15, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 132
    const v7, 0x400120

    const/high16 v10, 0x200000

    const-string v15, "tfoot"

    invoke-virtual {v0, v15, v7, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 133
    const-string v7, "th"

    const/16 v10, 0x20

    invoke-virtual {v0, v7, v6, v10, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 134
    const v6, 0x400120

    const/high16 v7, 0x200000

    const-string v10, "thead"

    invoke-virtual {v0, v10, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 135
    const/high16 v6, 0x40000000    # 2.0f

    const/16 v7, 0x400

    const-string v10, "title"

    invoke-virtual {v0, v10, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 136
    const/16 v6, 0x120

    const/high16 v7, 0x600000

    const-string v10, "tr"

    invoke-virtual {v0, v10, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 137
    const-string v6, "tt"

    invoke-virtual {v0, v6, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 138
    const-string v6, "u"

    invoke-virtual {v0, v6, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 139
    const-string v5, "ul"

    const/16 v6, 0x4000

    const/4 v7, 0x4

    invoke-virtual {v0, v5, v6, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 140
    const-string v5, "var"

    invoke-virtual {v0, v5, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 141
    const-string v5, "wbr"

    invoke-virtual {v0, v5, v3, v4, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 142
    const-string v4, "xmp"

    invoke-virtual {v0, v4, v2, v7, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->elementType(Ljava/lang/String;III)V

    .line 143
    const-string v2, "<pcdata>"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "html"

    const-string v3, "<root>"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "a"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "abbr"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "acronym"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "address"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "applet"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "area"

    const-string v3, "map"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "b"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "base"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "basefont"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "bdo"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "bgsound"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "big"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "blink"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "blockquote"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "html"

    invoke-virtual {v0, v8, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "br"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "button"

    invoke-virtual {v0, v2, v11}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "canvas"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "caption"

    invoke-virtual {v0, v2, v14}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "center"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "cite"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "code"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "col"

    invoke-virtual {v0, v2, v14}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "colgroup"

    invoke-virtual {v0, v2, v14}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "comment"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "dd"

    const-string v3, "dl"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "del"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "dfn"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v9, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "div"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "dl"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "dt"

    const-string v3, "dl"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "em"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "fieldset"

    invoke-virtual {v0, v2, v11}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "font"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v11, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "frame"

    const-string v3, "frameset"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "frameset"

    const-string v3, "html"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "h1"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "h2"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "h3"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "h4"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "h5"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "h6"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "html"

    invoke-virtual {v0, v12, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "hr"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "i"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "iframe"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "img"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1, v11}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "ins"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "isindex"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "kbd"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "label"

    invoke-virtual {v0, v2, v11}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "legend"

    const-string v3, "fieldset"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "li"

    const-string v3, "ul"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "link"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "listing"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "map"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "marquee"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "menu"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "meta"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "nobr"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "noframes"

    const-string v3, "html"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "noscript"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "object"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, "ol"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "optgroup"

    const-string v3, "select"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "option"

    const-string v3, "select"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "p"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "param"

    const-string v3, "object"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "pre"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "q"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "rb"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "rbc"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "rp"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "rt"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "rtc"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "ruby"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "s"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "samp"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "script"

    const-string v3, "html"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "select"

    invoke-virtual {v0, v2, v11}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "small"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v2, "span"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "strike"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "strong"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "style"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v2, "sub"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "sup"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v14, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "tbody"

    invoke-virtual {v0, v2, v14}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "tr"

    invoke-virtual {v0, v13, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v2, "textarea"

    invoke-virtual {v0, v2, v11}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "tfoot"

    invoke-virtual {v0, v2, v14}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "th"

    const-string v3, "tr"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "thead"

    invoke-virtual {v0, v2, v14}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "title"

    invoke-virtual {v0, v2, v12}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "tr"

    const-string v3, "tbody"

    invoke-virtual {v0, v2, v3}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "tt"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "u"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "ul"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "var"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "wbr"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "xmp"

    invoke-virtual {v0, v2, v8}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "a"

    const-string v3, "hreflang"

    const-string v4, "NMTOKEN"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "rect"

    const-string v3, "a"

    const-string v6, "shape"

    const-string v7, "CDATA"

    invoke-virtual {v0, v3, v6, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "a"

    const-string v3, "tabindex"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "applet"

    const-string v3, "align"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "area"

    const-string v6, "nohref"

    const-string v10, "BOOLEAN"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "shape"

    const-string v6, "rect"

    const-string v15, "area"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "area"

    const-string v6, "tabindex"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "clear"

    const-string v6, "none"

    const-string v15, "br"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "button"

    const-string v6, "disabled"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "button"

    const-string v6, "tabindex"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "type"

    const-string v6, "submit"

    const-string v15, "button"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "caption"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "col"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "span"

    const-string v6, "1"

    const-string v15, "col"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "col"

    const-string v6, "valign"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "colgroup"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v2, "span"

    const-string v6, "1"

    const-string v15, "colgroup"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "colgroup"

    const-string v6, "valign"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "compact"

    invoke-virtual {v0, v9, v2, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "div"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "dl"

    const-string v6, "compact"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "enctype"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v11, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v2, "method"

    const-string v6, "get"

    invoke-virtual {v0, v11, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "frameborder"

    const-string v6, "1"

    const-string v15, "frame"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "frame"

    const-string v6, "noresize"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "scrolling"

    const-string v6, "auto"

    const-string v15, "frame"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "h1"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "h2"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "h3"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "h4"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "h5"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "h6"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "hr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "hr"

    const-string v6, "noshade"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "iframe"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "frameborder"

    const-string v6, "1"

    const-string v15, "iframe"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "scrolling"

    const-string v6, "auto"

    const-string v15, "iframe"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "img"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "img"

    const-string v6, "ismap"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v2, "checked"

    invoke-virtual {v0, v1, v2, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "disabled"

    invoke-virtual {v0, v1, v2, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "ismap"

    invoke-virtual {v0, v1, v2, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "maxlength"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "readonly"

    invoke-virtual {v0, v1, v2, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "tabindex"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "type"

    const-string v6, "text"

    invoke-virtual {v0, v1, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "for"

    const-string v6, "IDREF"

    const-string v15, "label"

    invoke-virtual {v0, v15, v2, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "legend"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "li"

    const-string v6, "value"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "link"

    const-string v6, "hreflang"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "marquee"

    const-string v6, "width"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "menu"

    const-string v6, "compact"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "meta"

    const-string v6, "http-equiv"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v2, "meta"

    const-string v6, "name"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v2, "object"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "object"

    const-string v6, "declare"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "object"

    const-string v6, "tabindex"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "ol"

    const-string v6, "compact"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "ol"

    const-string v6, "start"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "optgroup"

    const-string v6, "disabled"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "option"

    const-string v6, "disabled"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v2, "option"

    const-string v6, "selected"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, "p"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v2, "valuetype"

    const-string v6, "data"

    const-string v15, "param"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v2, "pre"

    const-string v6, "width"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "rbspan"

    const-string v6, "1"

    const-string v15, "rt"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "script"

    const-string v6, "defer"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "select"

    const-string v6, "disabled"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "select"

    const-string v6, "multiple"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "select"

    const-string v6, "size"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "select"

    const-string v6, "tabindex"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v14, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "frame"

    invoke-virtual {v0, v14, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "rules"

    invoke-virtual {v0, v14, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v2, "tbody"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "tbody"

    const-string v6, "valign"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v13, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "colspan"

    const-string v6, "1"

    invoke-virtual {v0, v13, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "headers"

    const-string v6, "IDREFS"

    invoke-virtual {v0, v13, v2, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "nowrap"

    invoke-virtual {v0, v13, v2, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "rowspan"

    const-string v6, "1"

    invoke-virtual {v0, v13, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v2, "scope"

    invoke-virtual {v0, v13, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v2, "valign"

    invoke-virtual {v0, v13, v2, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v2, "textarea"

    const-string v6, "cols"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "textarea"

    const-string v6, "disabled"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v2, "textarea"

    const-string v6, "readonly"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "textarea"

    const-string v6, "rows"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "textarea"

    const-string v6, "tabindex"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "tfoot"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "tfoot"

    const-string v6, "valign"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "th"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "colspan"

    const-string v6, "1"

    const-string v15, "th"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v2, "headers"

    const-string v6, "IDREFS"

    const-string v15, "th"

    invoke-virtual {v0, v15, v2, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v2, "th"

    const-string v6, "nowrap"

    invoke-virtual {v0, v2, v6, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v2, "rowspan"

    const-string v6, "1"

    const-string v15, "th"

    invoke-virtual {v0, v15, v2, v7, v6}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "th"

    const-string v6, "scope"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "th"

    const-string v6, "valign"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "thead"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "thead"

    const-string v6, "valign"

    invoke-virtual {v0, v2, v6, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "tr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v2, "tr"

    const-string v3, "valign"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v2, "ul"

    const-string v3, "compact"

    invoke-virtual {v0, v2, v3, v10, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v2, "ul"

    const-string v3, "type"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v2, "xmp"

    const-string v3, "width"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "a"

    const-string v3, "class"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "abbr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v2, "acronym"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "address"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "applet"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "area"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v2, "b"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "base"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "basefont"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "bdo"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "bgsound"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "big"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "blink"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "blockquote"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, v8, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v2, "br"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "button"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "canvas"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v2, "caption"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "center"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v2, "cite"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "code"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "col"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v2, "colgroup"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "comment"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "dd"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "del"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "dfn"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v9, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "div"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "dl"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "dt"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v2, "em"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v2, "fieldset"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v2, "font"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, v11, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "frame"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "frameset"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v2, "h1"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "h2"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "h3"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "h4"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v2, "h5"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v2, "h6"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, v12, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "hr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "html"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v2, "i"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "iframe"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, "img"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "ins"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "isindex"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "kbd"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "label"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "legend"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v2, "li"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "link"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "listing"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "map"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "marquee"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v2, "menu"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "meta"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "nobr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v2, "noframes"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "noscript"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v2, "object"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v2, "ol"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v2, "optgroup"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v2, "option"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v2, "p"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v2, "param"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v2, "pre"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v2, "q"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "rb"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "rbc"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v2, "rp"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v2, "rt"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v2, "rtc"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v2, "ruby"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "s"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v2, "samp"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v2, "script"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "select"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "small"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v2, "span"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v2, "strike"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v2, "strong"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v2, "style"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v2, "sub"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v2, "sup"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, v14, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "tbody"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, v13, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "textarea"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v2, "tfoot"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v2, "th"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v2, "thead"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v2, "title"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v2, "tr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v2, "tt"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v2, "u"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "ul"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v2, "var"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v2, "wbr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v2, "xmp"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v2, "a"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v2, "abbr"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v2, "acronym"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v2, "address"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v2, "applet"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v2, "area"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v2, "b"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v2, "base"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v2, "basefont"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v2, "bdo"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "bgsound"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "big"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v2, "blink"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v2, "blockquote"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, v8, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v2, "br"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "button"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "canvas"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "caption"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "center"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "cite"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "code"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v2, "col"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "colgroup"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "comment"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v2, "dd"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v2, "del"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v2, "dfn"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, v9, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v2, "div"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v2, "dl"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v2, "dt"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v2, "em"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v2, "fieldset"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v2, "font"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, v11, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v2, "frame"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "frameset"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v2, "h1"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "h2"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v2, "h3"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "h4"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v2, "h5"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v2, "h6"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, v12, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v2, "hr"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v2, "html"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v2, "i"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v2, "iframe"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v2, "img"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v1, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v2, "ins"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v2, "isindex"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v2, "kbd"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v2, "label"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "legend"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v2, "li"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v2, "link"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v2, "listing"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v2, "map"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v2, "marquee"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v2, "menu"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v2, "meta"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "nobr"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v2, "noframes"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v2, "noscript"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v2, "object"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "ol"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "optgroup"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "option"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v2, "p"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v2, "param"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v2, "pre"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v2, "q"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v2, "rb"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v2, "rbc"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v2, "rp"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "rt"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v2, "rtc"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "ruby"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v2, "s"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v2, "samp"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v2, "script"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v2, "select"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v2, "small"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "span"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v2, "strike"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v2, "strong"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v2, "style"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v2, "sub"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v2, "sup"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, v14, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "tbody"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, v13, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v2, "textarea"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v2, "tfoot"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v2, "th"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "thead"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v2, "title"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v2, "tr"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v2, "tt"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v2, "u"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v2, "ul"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v2, "var"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v2, "wbr"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v2, "xmp"

    invoke-virtual {v0, v2, v9, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v2, "a"

    const-string v3, "id"

    const-string v6, "ID"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "abbr"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v2, "acronym"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v2, "address"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v2, "applet"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v2, "area"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v2, "b"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v2, "base"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v2, "basefont"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "bdo"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v2, "bgsound"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v2, "big"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v2, "blink"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v2, "blockquote"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, v8, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v2, "br"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "button"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v2, "canvas"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v2, "caption"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v2, "center"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v2, "cite"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "code"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "col"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v2, "colgroup"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v2, "comment"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v2, "dd"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v2, "del"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "dfn"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, v9, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v2, "div"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v2, "dl"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "dt"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v2, "em"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v2, "fieldset"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v2, "font"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, v11, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "frame"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v2, "frameset"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v2, "h1"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v2, "h2"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v2, "h3"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "h4"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v2, "h5"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v2, "h6"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0, v12, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "hr"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v2, "html"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v2, "i"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v2, "iframe"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v2, "img"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, v1, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v2, "ins"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v2, "isindex"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v2, "kbd"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v2, "label"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v2, "legend"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v2, "li"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v2, "link"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "listing"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "map"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "marquee"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v2, "menu"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "meta"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v2, "nobr"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v2, "noframes"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "noscript"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v2, "object"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "ol"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "optgroup"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "option"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "p"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "param"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "pre"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "q"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "rb"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "rbc"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v2, "rp"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "rt"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v2, "rtc"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v2, "ruby"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v2, "s"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v2, "samp"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v2, "script"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "select"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v2, "small"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v2, "span"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v2, "strike"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v2, "strong"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v2, "style"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v2, "sub"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v2, "sup"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0, v14, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v2, "tbody"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, v13, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v2, "textarea"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v2, "tfoot"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v2, "th"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v2, "thead"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v2, "title"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v2, "tr"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v2, "tt"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v2, "u"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v2, "ul"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v2, "var"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v2, "wbr"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v2, "xmp"

    invoke-virtual {v0, v2, v3, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v2, "a"

    const-string v3, "lang"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v2, "abbr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v2, "acronym"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v2, "address"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v2, "applet"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v2, "area"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v2, "b"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v2, "base"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v2, "basefont"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v2, "bdo"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v2, "bgsound"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v2, "big"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v2, "blink"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v2, "blockquote"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, v8, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v2, "br"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v2, "button"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v2, "canvas"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v2, "caption"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v2, "center"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v2, "cite"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v2, "code"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v2, "col"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v2, "colgroup"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v2, "comment"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v2, "dd"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v2, "del"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v2, "dfn"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, v9, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v2, "div"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v2, "dl"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "dt"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v2, "em"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v2, "fieldset"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v2, "font"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, v11, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v2, "frame"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v2, "frameset"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v2, "h1"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v2, "h2"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v2, "h3"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v2, "h4"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v2, "h5"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v2, "h6"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, v12, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v2, "hr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v2, "html"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v2, "i"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v2, "iframe"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v2, "img"

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v1, "ins"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v1, "isindex"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "kbd"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "label"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v1, "legend"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "li"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v1, "link"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v1, "listing"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "map"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "marquee"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "menu"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v1, "meta"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "nobr"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "noframes"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "noscript"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "object"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v1, "ol"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v1, "optgroup"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v1, "option"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "p"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "param"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v1, "pre"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "q"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "rb"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v1, "rbc"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v1, "rp"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v1, "rt"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v1, "rtc"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v1, "ruby"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v1, "s"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v1, "samp"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v1, "script"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v1, "select"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v1, "small"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v1, "span"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v1, "strike"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v1, "strong"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v1, "style"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v1, "sub"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v1, "sup"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, v14, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "tbody"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, v13, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v1, "textarea"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v1, "tfoot"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v1, "th"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v1, "thead"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v1, "title"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "tr"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "tt"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "u"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "ul"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v1, "var"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "wbr"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v1, "xmp"

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v1, "Aacgr"

    const/16 v2, 0x386

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 780
    const-string v1, "aacgr"

    const/16 v2, 0x3ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 781
    const-string v1, "Aacute"

    const/16 v2, 0xc1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 782
    const-string v1, "aacute"

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 783
    const-string v1, "Abreve"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 784
    const-string v1, "abreve"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 785
    const-string v1, "ac"

    const/16 v2, 0x223e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 786
    const-string v1, "acd"

    const/16 v2, 0x223f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 787
    const-string v1, "Acirc"

    const/16 v2, 0xc2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 788
    const-string v1, "acirc"

    const/16 v2, 0xe2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 789
    const-string v1, "acute"

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 790
    const-string v1, "Acy"

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 791
    const-string v1, "acy"

    const/16 v2, 0x430

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 792
    const-string v1, "AElig"

    const/16 v2, 0xc6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 793
    const-string v1, "aelig"

    const/16 v2, 0xe6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 794
    const-string v1, "af"

    const/16 v2, 0x2061

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 795
    const-string v1, "Afr"

    const v2, 0x1d504

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 796
    const-string v1, "afr"

    const v2, 0x1d51e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 797
    const-string v1, "Agr"

    const/16 v2, 0x391

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 798
    const-string v1, "agr"

    const/16 v2, 0x3b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 799
    const-string v1, "Agrave"

    const/16 v2, 0xc0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 800
    const-string v1, "agrave"

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 801
    const-string v1, "alefsym"

    const/16 v2, 0x2135

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 802
    const-string v1, "aleph"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 803
    const-string v1, "Alpha"

    const/16 v2, 0x391

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 804
    const-string v1, "alpha"

    const/16 v2, 0x3b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 805
    const-string v1, "Amacr"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 806
    const-string v1, "amacr"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 807
    const-string v1, "amalg"

    const/16 v2, 0x2a3f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 808
    const-string v1, "amp"

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 809
    const-string v1, "And"

    const/16 v2, 0x2a53

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 810
    const-string v1, "and"

    const/16 v2, 0x2227

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 811
    const-string v1, "andand"

    const/16 v2, 0x2a55

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 812
    const-string v1, "andd"

    const/16 v2, 0x2a5c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 813
    const-string v1, "andslope"

    const/16 v2, 0x2a58

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 814
    const-string v1, "andv"

    const/16 v2, 0x2a5a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 815
    const-string v1, "ang"

    const/16 v2, 0x2220

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 816
    const-string v1, "ange"

    const/16 v2, 0x29a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 817
    const-string v1, "angle"

    const/16 v2, 0x2220

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 818
    const-string v1, "angmsd"

    const/16 v2, 0x2221

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 819
    const-string v1, "angmsdaa"

    const/16 v2, 0x29a8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 820
    const-string v1, "angmsdab"

    const/16 v2, 0x29a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 821
    const-string v1, "angmsdac"

    const/16 v2, 0x29aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 822
    const-string v1, "angmsdad"

    const/16 v2, 0x29ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 823
    const-string v1, "angmsdae"

    const/16 v2, 0x29ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 824
    const-string v1, "angmsdaf"

    const/16 v2, 0x29ad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 825
    const-string v1, "angmsdag"

    const/16 v2, 0x29ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 826
    const-string v1, "angmsdah"

    const/16 v2, 0x29af

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 827
    const-string v1, "angrt"

    const/16 v2, 0x221f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 828
    const-string v1, "angrtvb"

    const/16 v2, 0x22be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 829
    const-string v1, "angrtvbd"

    const/16 v2, 0x299d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 830
    const-string v1, "angsph"

    const/16 v2, 0x2222

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 831
    const-string v1, "angst"

    const/16 v2, 0x212b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 832
    const-string v1, "angzarr"

    const/16 v2, 0x237c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 833
    const-string v1, "Aogon"

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 834
    const-string v1, "aogon"

    const/16 v2, 0x105

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 835
    const-string v1, "Aopf"

    const v2, 0x1d538

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 836
    const-string v1, "aopf"

    const v2, 0x1d552

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 837
    const-string v1, "ap"

    const/16 v2, 0x2248

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 838
    const-string v1, "apacir"

    const/16 v2, 0x2a6f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 839
    const-string v1, "apE"

    const/16 v2, 0x2a70

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 840
    const-string v1, "ape"

    const/16 v2, 0x224a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 841
    const-string v1, "apid"

    const/16 v2, 0x224b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 842
    const-string v1, "apos"

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 843
    const-string v1, "ApplyFunction"

    const/16 v2, 0x2061

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 844
    const-string v1, "approx"

    const/16 v2, 0x2248

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 845
    const-string v1, "approxeq"

    const/16 v2, 0x224a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 846
    const-string v1, "Aring"

    const/16 v2, 0xc5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 847
    const-string v1, "aring"

    const/16 v2, 0xe5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 848
    const-string v1, "Ascr"

    const v2, 0x1d49c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 849
    const-string v1, "ascr"

    const v2, 0x1d4b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 850
    const-string v1, "Assign"

    const/16 v2, 0x2254

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 851
    const-string v1, "ast"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 852
    const-string v1, "asymp"

    const/16 v2, 0x2248

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 853
    const-string v1, "asympeq"

    const/16 v2, 0x224d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 854
    const-string v1, "Atilde"

    const/16 v2, 0xc3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 855
    const-string v1, "atilde"

    const/16 v2, 0xe3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 856
    const-string v1, "Auml"

    const/16 v2, 0xc4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 857
    const-string v1, "auml"

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 858
    const-string v1, "awconint"

    const/16 v2, 0x2233

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 859
    const-string v1, "awint"

    const/16 v2, 0x2a11

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 860
    const-string v1, "b.alpha"

    const v2, 0x1d6c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 861
    const-string v1, "b.beta"

    const v2, 0x1d6c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 862
    const-string v1, "b.chi"

    const v2, 0x1d6d8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 863
    const-string v1, "b.Delta"

    const v2, 0x1d6ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 864
    const-string v1, "b.delta"

    const v2, 0x1d6c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 865
    const-string v1, "b.epsi"

    const v2, 0x1d6c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 866
    const-string v1, "b.epsiv"

    const v2, 0x1d6dc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 867
    const-string v1, "b.eta"

    const v2, 0x1d6c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 868
    const-string v1, "b.Gamma"

    const v2, 0x1d6aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 869
    const-string v1, "b.gamma"

    const v2, 0x1d6c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 870
    const-string v1, "b.Gammad"

    const v2, 0x1d7ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 871
    const-string v1, "b.gammad"

    const v2, 0x1d7cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 872
    const-string v1, "b.iota"

    const v2, 0x1d6ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 873
    const-string v1, "b.kappa"

    const v2, 0x1d6cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 874
    const-string v1, "b.kappav"

    const v2, 0x1d6de

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 875
    const-string v1, "b.Lambda"

    const v2, 0x1d6b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 876
    const-string v1, "b.lambda"

    const v2, 0x1d6cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 877
    const-string v1, "b.mu"

    const v2, 0x1d6cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 878
    const-string v1, "b.nu"

    const v2, 0x1d6ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 879
    const-string v1, "b.Omega"

    const v2, 0x1d6c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 880
    const-string v1, "b.omega"

    const v2, 0x1d6da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 881
    const-string v1, "b.Phi"

    const v2, 0x1d6bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 882
    const-string v1, "b.phi"

    const v2, 0x1d6d7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 883
    const-string v1, "b.phiv"

    const v2, 0x1d6df

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 884
    const-string v1, "b.Pi"

    const v2, 0x1d6b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 885
    const-string v1, "b.pi"

    const v2, 0x1d6d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 886
    const-string v1, "b.piv"

    const v2, 0x1d6e1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 887
    const-string v1, "b.Psi"

    const v2, 0x1d6bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 888
    const-string v1, "b.psi"

    const v2, 0x1d6d9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 889
    const-string v1, "b.rho"

    const v2, 0x1d6d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 890
    const-string v1, "b.rhov"

    const v2, 0x1d6e0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 891
    const-string v1, "b.Sigma"

    const v2, 0x1d6ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 892
    const-string v1, "b.sigma"

    const v2, 0x1d6d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 893
    const-string v1, "b.sigmav"

    const v2, 0x1d6d3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 894
    const-string v1, "b.tau"

    const v2, 0x1d6d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 895
    const-string v1, "b.Theta"

    const v2, 0x1d6af

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 896
    const-string v1, "b.thetas"

    const v2, 0x1d6c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 897
    const-string v1, "b.thetav"

    const v2, 0x1d6dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 898
    const-string v1, "b.Upsi"

    const v2, 0x1d6bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 899
    const-string v1, "b.upsi"

    const v2, 0x1d6d6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 900
    const-string v1, "b.Xi"

    const v2, 0x1d6b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 901
    const-string v1, "b.xi"

    const v2, 0x1d6cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 902
    const-string v1, "b.zeta"

    const v2, 0x1d6c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 903
    const-string v1, "backcong"

    const/16 v2, 0x224c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 904
    const-string v1, "backepsilon"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 905
    const-string v1, "backprime"

    const/16 v2, 0x2035

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 906
    const-string v1, "backsim"

    const/16 v2, 0x223d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 907
    const-string v1, "backsimeq"

    const/16 v2, 0x22cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 908
    const-string v1, "Backslash"

    const/16 v2, 0x2216

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 909
    const-string v1, "Barv"

    const/16 v2, 0x2ae7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 910
    const-string v1, "barvee"

    const/16 v2, 0x22bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 911
    const-string v1, "Barwed"

    const/16 v2, 0x2306

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 912
    const-string v1, "barwed"

    const/16 v2, 0x2305

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 913
    const-string v1, "barwedge"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 914
    const-string v1, "bbrk"

    const/16 v2, 0x23b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 915
    const-string v1, "bbrktbrk"

    const/16 v2, 0x23b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 916
    const-string v1, "bcong"

    const/16 v2, 0x224c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 917
    const-string v1, "Bcy"

    const/16 v2, 0x411

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 918
    const-string v1, "bcy"

    const/16 v2, 0x431

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 919
    const-string v1, "bdquo"

    const/16 v2, 0x201e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 920
    const-string v1, "becaus"

    const/16 v2, 0x2235

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 921
    const-string v1, "because"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 922
    const-string v1, "bemptyv"

    const/16 v2, 0x29b0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 923
    const-string v1, "bepsi"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 924
    const-string v1, "bernou"

    const/16 v2, 0x212c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 925
    const-string v1, "Bernoullis"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 926
    const-string v1, "Beta"

    const/16 v2, 0x392

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 927
    const-string v1, "beta"

    const/16 v2, 0x3b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 928
    const-string v1, "beth"

    const/16 v2, 0x2136

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 929
    const-string v1, "between"

    const/16 v2, 0x226c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 930
    const-string v1, "Bfr"

    const v2, 0x1d505

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 931
    const-string v1, "bfr"

    const v2, 0x1d51f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 932
    const-string v1, "Bgr"

    const/16 v2, 0x392

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 933
    const-string v1, "bgr"

    const/16 v2, 0x3b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 934
    const-string v1, "bigcap"

    const/16 v2, 0x22c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 935
    const-string v1, "bigcirc"

    const/16 v2, 0x25ef

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 936
    const-string v1, "bigcup"

    const/16 v2, 0x22c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 937
    const-string v1, "bigodot"

    const/16 v2, 0x2a00

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 938
    const-string v1, "bigoplus"

    const/16 v2, 0x2a01

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 939
    const-string v1, "bigotimes"

    const/16 v2, 0x2a02

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 940
    const-string v1, "bigsqcup"

    const/16 v2, 0x2a06

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 941
    const-string v1, "bigstar"

    const/16 v2, 0x2605

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 942
    const-string v1, "bigtriangledown"

    const/16 v2, 0x25bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 943
    const-string v1, "bigtriangleup"

    const/16 v2, 0x25b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 944
    const-string v1, "biguplus"

    const/16 v2, 0x2a04

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 945
    const-string v1, "bigvee"

    const/16 v2, 0x22c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 946
    const-string v1, "bigwedge"

    const/16 v2, 0x22c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 947
    const-string v1, "bkarow"

    const/16 v2, 0x290d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 948
    const-string v1, "blacklozenge"

    const/16 v2, 0x29eb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 949
    const-string v1, "blacksquare"

    const/16 v2, 0x25aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 950
    const-string v1, "blacktriangle"

    const/16 v2, 0x25b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 951
    const-string v1, "blacktriangledown"

    const/16 v2, 0x25be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 952
    const-string v1, "blacktriangleleft"

    const/16 v2, 0x25c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 953
    const-string v1, "blacktriangleright"

    const/16 v2, 0x25b8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 954
    const-string v1, "blank"

    const/16 v2, 0x2423

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 955
    const-string v1, "blk12"

    const/16 v2, 0x2592

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 956
    const-string v1, "blk14"

    const/16 v2, 0x2591

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 957
    const-string v1, "blk34"

    const/16 v2, 0x2593

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 958
    const-string v1, "block"

    const/16 v2, 0x2588

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 959
    const-string v1, "bNot"

    const/16 v2, 0x2aed

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 960
    const-string v1, "bnot"

    const/16 v2, 0x2310

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 961
    const-string v1, "Bopf"

    const v2, 0x1d539

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 962
    const-string v1, "bopf"

    const v2, 0x1d553

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 963
    const-string v1, "bot"

    const/16 v2, 0x22a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 964
    const-string v1, "bottom"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 965
    const-string v1, "bowtie"

    const/16 v2, 0x22c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 966
    const-string v1, "boxbox"

    const/16 v2, 0x29c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 967
    const-string v1, "boxDL"

    const/16 v2, 0x2557

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 968
    const-string v1, "boxDl"

    const/16 v2, 0x2556

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 969
    const-string v1, "boxdL"

    const/16 v2, 0x2555

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 970
    const-string v1, "boxdl"

    const/16 v2, 0x2510

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 971
    const-string v1, "boxDR"

    const/16 v2, 0x2554

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 972
    const-string v1, "boxDr"

    const/16 v2, 0x2553

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 973
    const-string v1, "boxdR"

    const/16 v2, 0x2552

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 974
    const-string v1, "boxdr"

    const/16 v2, 0x250c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 975
    const-string v1, "boxH"

    const/16 v2, 0x2550

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 976
    const-string v1, "boxh"

    const/16 v2, 0x2500

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 977
    const-string v1, "boxHD"

    const/16 v2, 0x2566

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 978
    const-string v1, "boxHd"

    const/16 v2, 0x2564

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 979
    const-string v1, "boxhD"

    const/16 v2, 0x2565

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 980
    const-string v1, "boxhd"

    const/16 v2, 0x252c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 981
    const-string v1, "boxHU"

    const/16 v2, 0x2569

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 982
    const-string v1, "boxHu"

    const/16 v2, 0x2567

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 983
    const-string v1, "boxhU"

    const/16 v2, 0x2568

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 984
    const-string v1, "boxhu"

    const/16 v2, 0x2534

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 985
    const-string v1, "boxminus"

    const/16 v2, 0x229f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 986
    const-string v1, "boxplus"

    const/16 v2, 0x229e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 987
    const-string v1, "boxtimes"

    const/16 v2, 0x22a0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 988
    const-string v1, "boxUL"

    const/16 v2, 0x255d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 989
    const-string v1, "boxUl"

    const/16 v2, 0x255c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 990
    const-string v1, "boxuL"

    const/16 v2, 0x255b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 991
    const-string v1, "boxul"

    const/16 v2, 0x2518

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 992
    const-string v1, "boxUR"

    const/16 v2, 0x255a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 993
    const-string v1, "boxUr"

    const/16 v2, 0x2559

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 994
    const-string v1, "boxuR"

    const/16 v2, 0x2558

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 995
    const-string v1, "boxur"

    const/16 v2, 0x2514

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 996
    const-string v1, "boxV"

    const/16 v2, 0x2551

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 997
    const-string v1, "boxv"

    const/16 v2, 0x2502

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 998
    const-string v1, "boxVH"

    const/16 v2, 0x256c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 999
    const-string v1, "boxVh"

    const/16 v2, 0x256b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1000
    const-string v1, "boxvH"

    const/16 v2, 0x256a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1001
    const-string v1, "boxvh"

    const/16 v2, 0x253c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1002
    const-string v1, "boxVL"

    const/16 v2, 0x2563

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1003
    const-string v1, "boxVl"

    const/16 v2, 0x2562

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1004
    const-string v1, "boxvL"

    const/16 v2, 0x2561

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1005
    const-string v1, "boxvl"

    const/16 v2, 0x2524

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1006
    const-string v1, "boxVR"

    const/16 v2, 0x2560

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1007
    const-string v1, "boxVr"

    const/16 v2, 0x255f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1008
    const-string v1, "boxvR"

    const/16 v2, 0x255e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1009
    const-string v1, "boxvr"

    const/16 v2, 0x251c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1010
    const-string v1, "bprime"

    const/16 v2, 0x2035

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1011
    const-string v1, "breve"

    const/16 v2, 0x2d8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1012
    const-string v1, "brvbar"

    const/16 v2, 0xa6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1013
    const-string v1, "Bscr"

    const/16 v2, 0x212c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1014
    const-string v1, "bscr"

    const v2, 0x1d4b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1015
    const-string v1, "bsemi"

    const/16 v2, 0x204f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1016
    const-string v1, "bsim"

    const/16 v2, 0x223d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1017
    const-string v1, "bsime"

    const/16 v2, 0x22cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1018
    const-string v1, "bsol"

    const/16 v2, 0x5c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1019
    const-string v1, "bsolb"

    const/16 v2, 0x29c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1020
    const-string v1, "bull"

    const/16 v2, 0x2022

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1021
    const-string v1, "bullet"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1022
    const-string v1, "bump"

    const/16 v2, 0x224e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1023
    const-string v1, "bumpE"

    const/16 v2, 0x2aae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1024
    const-string v1, "bumpe"

    const/16 v2, 0x224f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1025
    const-string v1, "Bumpeq"

    const/16 v2, 0x224e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1026
    const-string v1, "bumpeq"

    const/16 v2, 0x224f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1027
    const-string v1, "Cacute"

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1028
    const-string v1, "cacute"

    const/16 v2, 0x107

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1029
    const-string v1, "Cap"

    const/16 v2, 0x22d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1030
    const-string v1, "cap"

    const/16 v2, 0x2229

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1031
    const-string v1, "capand"

    const/16 v2, 0x2a44

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1032
    const-string v1, "capbrcup"

    const/16 v2, 0x2a49

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1033
    const-string v1, "capcap"

    const/16 v2, 0x2a4b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1034
    const-string v1, "capcup"

    const/16 v2, 0x2a47

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1035
    const-string v1, "capdot"

    const/16 v2, 0x2a40

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1036
    const-string v1, "CapitalDifferentialD"

    const/16 v2, 0x2145

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1037
    const-string v1, "caret"

    const/16 v2, 0x2041

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1038
    const-string v1, "caron"

    const/16 v2, 0x2c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1039
    const-string v1, "Cayleys"

    const/16 v2, 0x212d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1040
    const-string v1, "ccaps"

    const/16 v2, 0x2a4d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1041
    const-string v1, "Ccaron"

    const/16 v2, 0x10c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1042
    const-string v1, "ccaron"

    const/16 v2, 0x10d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1043
    const-string v1, "Ccedil"

    const/16 v2, 0xc7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1044
    const-string v1, "ccedil"

    const/16 v2, 0xe7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1045
    const-string v1, "Ccirc"

    const/16 v2, 0x108

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1046
    const-string v1, "ccirc"

    const/16 v2, 0x109

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1047
    const-string v1, "Cconint"

    const/16 v2, 0x2230

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1048
    const-string v1, "ccups"

    const/16 v2, 0x2a4c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1049
    const-string v1, "ccupssm"

    const/16 v2, 0x2a50

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1050
    const-string v1, "Cdot"

    const/16 v2, 0x10a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1051
    const-string v1, "cdot"

    const/16 v2, 0x10b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1052
    const-string v1, "cedil"

    const/16 v2, 0xb8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1053
    const-string v1, "Cedilla"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1054
    const-string v1, "cemptyv"

    const/16 v2, 0x29b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1055
    const-string v1, "cent"

    const/16 v2, 0xa2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1056
    const-string v1, "centerdot"

    const/16 v2, 0xb7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1057
    const-string v1, "Cfr"

    const/16 v2, 0x212d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1058
    const-string v1, "cfr"

    const v2, 0x1d520

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1059
    const-string v1, "CHcy"

    const/16 v2, 0x427

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1060
    const-string v1, "chcy"

    const/16 v2, 0x447

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1061
    const-string v1, "check"

    const/16 v2, 0x2713

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1062
    const-string v1, "checkmark"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1063
    const-string v1, "Chi"

    const/16 v2, 0x3a7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1064
    const-string v1, "chi"

    const/16 v2, 0x3c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1065
    const-string v1, "cir"

    const/16 v2, 0x25cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1066
    const-string v1, "circ"

    const/16 v2, 0x2c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1067
    const-string v1, "circeq"

    const/16 v2, 0x2257

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1068
    const-string v1, "circlearrowleft"

    const/16 v2, 0x21ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1069
    const-string v1, "circlearrowright"

    const/16 v2, 0x21bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1070
    const-string v1, "circledast"

    const/16 v2, 0x229b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1071
    const-string v1, "circledcirc"

    const/16 v2, 0x229a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1072
    const-string v1, "circleddash"

    const/16 v2, 0x229d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1073
    const-string v1, "CircleDot"

    const/16 v2, 0x2299

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1074
    const-string v1, "circledR"

    const/16 v2, 0xae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1075
    const-string v1, "circledS"

    const/16 v2, 0x24c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1076
    const-string v1, "CircleMinus"

    const/16 v2, 0x2296

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1077
    const-string v1, "CirclePlus"

    const/16 v2, 0x2295

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1078
    const-string v1, "CircleTimes"

    const/16 v2, 0x2297

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1079
    const-string v1, "cirE"

    const/16 v2, 0x29c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1080
    const-string v1, "cire"

    const/16 v2, 0x2257

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1081
    const-string v1, "cirfnint"

    const/16 v2, 0x2a10

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1082
    const-string v1, "cirmid"

    const/16 v2, 0x2aef

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1083
    const-string v1, "cirscir"

    const/16 v2, 0x29c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1084
    const-string v1, "ClockwiseContourIntegral"

    const/16 v2, 0x2232

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1085
    const-string v1, "CloseCurlyDoubleQuote"

    const/16 v2, 0x201d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1086
    const-string v1, "CloseCurlyQuote"

    const/16 v2, 0x2019

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1087
    const-string v1, "clubs"

    const/16 v2, 0x2663

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1088
    const-string v1, "clubsuit"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1089
    const-string v1, "Colon"

    const/16 v2, 0x2237

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1090
    const-string v1, "colon"

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1091
    const-string v1, "Colone"

    const/16 v2, 0x2a74

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1092
    const-string v1, "colone"

    const/16 v2, 0x2254

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1093
    const-string v1, "coloneq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1094
    const-string v1, "comma"

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1095
    const-string v1, "commat"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1096
    const-string v1, "comp"

    const/16 v2, 0x2201

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1097
    const-string v1, "compfn"

    const/16 v2, 0x2218

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1098
    const-string v1, "complement"

    const/16 v2, 0x2201

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1099
    const-string v1, "complexes"

    const/16 v2, 0x2102

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1100
    const-string v1, "cong"

    const/16 v2, 0x2245

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1101
    const-string v1, "congdot"

    const/16 v2, 0x2a6d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1102
    const-string v1, "Congruent"

    const/16 v2, 0x2261

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1103
    const-string v1, "Conint"

    const/16 v2, 0x222f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1104
    const-string v1, "conint"

    const/16 v2, 0x222e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1105
    const-string v1, "ContourIntegral"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1106
    const-string v1, "Copf"

    const/16 v2, 0x2102

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1107
    const-string v1, "copf"

    const v2, 0x1d554

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1108
    const-string v1, "coprod"

    const/16 v2, 0x2210

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1109
    const-string v1, "Coproduct"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1110
    const-string v1, "copy"

    const/16 v2, 0xa9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1111
    const-string v1, "copysr"

    const/16 v2, 0x2117

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1112
    const-string v1, "CounterClockwiseContourIntegral"

    const/16 v2, 0x2233

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1113
    const-string v1, "crarr"

    const/16 v2, 0x21b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1114
    const-string v1, "Cross"

    const/16 v2, 0x2a2f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1115
    const-string v1, "cross"

    const/16 v2, 0x2717

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1116
    const-string v1, "Cscr"

    const v2, 0x1d49e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1117
    const-string v1, "cscr"

    const v2, 0x1d4b8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1118
    const-string v1, "csub"

    const/16 v2, 0x2acf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1119
    const-string v1, "csube"

    const/16 v2, 0x2ad1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1120
    const-string v1, "csup"

    const/16 v2, 0x2ad0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1121
    const-string v1, "csupe"

    const/16 v2, 0x2ad2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1122
    const-string v1, "ctdot"

    const/16 v2, 0x22ef

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1123
    const-string v1, "cudarrl"

    const/16 v2, 0x2938

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1124
    const-string v1, "cudarrr"

    const/16 v2, 0x2935

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1125
    const-string v1, "cuepr"

    const/16 v2, 0x22de

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1126
    const-string v1, "cuesc"

    const/16 v2, 0x22df

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1127
    const-string v1, "cularr"

    const/16 v2, 0x21b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1128
    const-string v1, "cularrp"

    const/16 v2, 0x293d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1129
    const-string v1, "Cup"

    const/16 v2, 0x22d3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1130
    const-string v1, "cup"

    const/16 v2, 0x222a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1131
    const-string v1, "cupbrcap"

    const/16 v2, 0x2a48

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1132
    const-string v1, "CupCap"

    const/16 v2, 0x224d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1133
    const-string v1, "cupcap"

    const/16 v2, 0x2a46

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1134
    const-string v1, "cupcup"

    const/16 v2, 0x2a4a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1135
    const-string v1, "cupdot"

    const/16 v2, 0x228d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1136
    const-string v1, "cupor"

    const/16 v2, 0x2a45

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1137
    const-string v1, "curarr"

    const/16 v2, 0x21b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1138
    const-string v1, "curarrm"

    const/16 v2, 0x293c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1139
    const-string v1, "curlyeqprec"

    const/16 v2, 0x22de

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1140
    const-string v1, "curlyeqsucc"

    const/16 v2, 0x22df

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1141
    const-string v1, "curlyvee"

    const/16 v2, 0x22ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1142
    const-string v1, "curlywedge"

    const/16 v2, 0x22cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1143
    const-string v1, "curren"

    const/16 v2, 0xa4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1144
    const-string v1, "curvearrowleft"

    const/16 v2, 0x21b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1145
    const-string v1, "curvearrowright"

    const/16 v2, 0x21b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1146
    const-string v1, "cuvee"

    const/16 v2, 0x22ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1147
    const-string v1, "cuwed"

    const/16 v2, 0x22cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1148
    const-string v1, "cwconint"

    const/16 v2, 0x2232

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1149
    const-string v1, "cwint"

    const/16 v2, 0x2231

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1150
    const-string v1, "cylcty"

    const/16 v2, 0x232d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1151
    const-string v1, "Dagger"

    const/16 v2, 0x2021

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1152
    const-string v1, "dagger"

    const/16 v2, 0x2020

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1153
    const-string v1, "daleth"

    const/16 v2, 0x2138

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1154
    const-string v1, "Darr"

    const/16 v2, 0x21a1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1155
    const-string v1, "dArr"

    const/16 v2, 0x21d3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1156
    const-string v1, "darr"

    const/16 v2, 0x2193

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1157
    const-string v1, "dash"

    const/16 v2, 0x2010

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1158
    const-string v1, "Dashv"

    const/16 v2, 0x2ae4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1159
    const-string v1, "dashv"

    const/16 v2, 0x22a3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1160
    const-string v1, "dbkarow"

    const/16 v2, 0x290f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1161
    const-string v1, "dblac"

    const/16 v2, 0x2dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1162
    const-string v1, "Dcaron"

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1163
    const-string v1, "dcaron"

    const/16 v2, 0x10f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1164
    const-string v1, "Dcy"

    const/16 v2, 0x414

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1165
    const-string v1, "dcy"

    const/16 v2, 0x434

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1166
    const-string v1, "DD"

    const/16 v2, 0x2145

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1167
    const-string v1, "dd"

    const/16 v2, 0x2146

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1168
    const-string v1, "ddagger"

    const/16 v2, 0x2021

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1169
    const-string v1, "ddarr"

    const/16 v2, 0x21ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1170
    const-string v1, "DDotrahd"

    const/16 v2, 0x2911

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1171
    const-string v1, "ddotseq"

    const/16 v2, 0x2a77

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1172
    const-string v1, "deg"

    const/16 v2, 0xb0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1173
    const-string v1, "Del"

    const/16 v2, 0x2207

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1174
    const-string v1, "Delta"

    const/16 v2, 0x394

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1175
    const-string v1, "delta"

    const/16 v2, 0x3b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1176
    const-string v1, "demptyv"

    const/16 v2, 0x29b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1177
    const-string v1, "dfisht"

    const/16 v2, 0x297f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1178
    const-string v1, "Dfr"

    const v2, 0x1d507

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1179
    const-string v1, "dfr"

    const v2, 0x1d521

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1180
    const-string v1, "Dgr"

    const/16 v2, 0x394

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1181
    const-string v1, "dgr"

    const/16 v2, 0x3b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1182
    const-string v1, "dHar"

    const/16 v2, 0x2965

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1183
    const-string v1, "dharl"

    const/16 v2, 0x21c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1184
    const-string v1, "dharr"

    const/16 v2, 0x21c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1185
    const-string v1, "DiacriticalAcute"

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1186
    const-string v1, "DiacriticalDot"

    const/16 v2, 0x2d9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1187
    const-string v1, "DiacriticalDoubleAcute"

    const/16 v2, 0x2dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1188
    const-string v1, "DiacriticalGrave"

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1189
    const-string v1, "DiacriticalTilde"

    const/16 v2, 0x2dc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1190
    const-string v1, "diam"

    const/16 v2, 0x22c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1191
    const-string v1, "diamond"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1192
    const-string v1, "diamondsuit"

    const/16 v2, 0x2666

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1193
    const-string v1, "diams"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1194
    const-string v1, "die"

    const/16 v2, 0xa8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1195
    const-string v1, "DifferentialD"

    const/16 v2, 0x2146

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1196
    const-string v1, "digamma"

    const/16 v2, 0x3dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1197
    const-string v1, "disin"

    const/16 v2, 0x22f2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1198
    const-string v1, "div"

    const/16 v2, 0xf7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1199
    const-string v1, "divide"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1200
    const-string v1, "divideontimes"

    const/16 v2, 0x22c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1201
    const-string v1, "divonx"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1202
    const-string v1, "DJcy"

    const/16 v2, 0x402

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1203
    const-string v1, "djcy"

    const/16 v2, 0x452

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1204
    const-string v1, "dlcorn"

    const/16 v2, 0x231e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1205
    const-string v1, "dlcrop"

    const/16 v2, 0x230d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1206
    const-string v1, "dollar"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1207
    const-string v1, "Dopf"

    const v2, 0x1d53b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1208
    const-string v1, "dopf"

    const v2, 0x1d555

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1209
    const-string v1, "Dot"

    const/16 v2, 0xa8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1210
    const-string v1, "dot"

    const/16 v2, 0x2d9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1211
    const-string v1, "doteq"

    const/16 v2, 0x2250

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1212
    const-string v1, "doteqdot"

    const/16 v2, 0x2251

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1213
    const-string v1, "DotEqual"

    const/16 v2, 0x2250

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1214
    const-string v1, "dotminus"

    const/16 v2, 0x2238

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1215
    const-string v1, "dotplus"

    const/16 v2, 0x2214

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1216
    const-string v1, "dotsquare"

    const/16 v2, 0x22a1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1217
    const-string v1, "doublebarwedge"

    const/16 v2, 0x2306

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1218
    const-string v1, "DoubleContourIntegral"

    const/16 v2, 0x222f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1219
    const-string v1, "DoubleDot"

    const/16 v2, 0xa8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1220
    const-string v1, "DoubleDownArrow"

    const/16 v2, 0x21d3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1221
    const-string v1, "DoubleLeftArrow"

    const/16 v2, 0x21d0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1222
    const-string v1, "DoubleLeftRightArrow"

    const/16 v2, 0x21d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1223
    const-string v1, "DoubleLeftTee"

    const/16 v2, 0x2ae4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1224
    const-string v1, "DoubleLongLeftArrow"

    const/16 v2, 0x27f8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1225
    const-string v1, "DoubleLongLeftRightArrow"

    const/16 v2, 0x27fa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1226
    const-string v1, "DoubleLongRightArrow"

    const/16 v2, 0x27f9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1227
    const-string v1, "DoubleRightArrow"

    const/16 v2, 0x21d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1228
    const-string v1, "DoubleRightTee"

    const/16 v2, 0x22a8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1229
    const-string v1, "DoubleUpArrow"

    const/16 v2, 0x21d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1230
    const-string v1, "DoubleUpDownArrow"

    const/16 v2, 0x21d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1231
    const-string v1, "DoubleVerticalBar"

    const/16 v2, 0x2225

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1232
    const-string v1, "Downarrow"

    const/16 v2, 0x21d3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1233
    const-string v1, "downarrow"

    const/16 v2, 0x2193

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1234
    const-string v1, "DownArrowBar"

    const/16 v2, 0x2913

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1235
    const-string v1, "DownArrowUpArrow"

    const/16 v2, 0x21f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1236
    const-string v1, "downdownarrows"

    const/16 v2, 0x21ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1237
    const-string v1, "downharpoonleft"

    const/16 v2, 0x21c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1238
    const-string v1, "downharpoonright"

    const/16 v2, 0x21c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1239
    const-string v1, "DownLeftRightVector"

    const/16 v2, 0x2950

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1240
    const-string v1, "DownLeftTeeVector"

    const/16 v2, 0x295e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1241
    const-string v1, "DownLeftVector"

    const/16 v2, 0x21bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1242
    const-string v1, "DownLeftVectorBar"

    const/16 v2, 0x2956

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1243
    const-string v1, "DownRightTeeVector"

    const/16 v2, 0x295f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1244
    const-string v1, "DownRightVector"

    const/16 v2, 0x21c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1245
    const-string v1, "DownRightVectorBar"

    const/16 v2, 0x2957

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1246
    const-string v1, "DownTee"

    const/16 v2, 0x22a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1247
    const-string v1, "DownTeeArrow"

    const/16 v2, 0x21a7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1248
    const-string v1, "drbkarow"

    const/16 v2, 0x2910

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1249
    const-string v1, "drcorn"

    const/16 v2, 0x231f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1250
    const-string v1, "drcrop"

    const/16 v2, 0x230c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1251
    const-string v1, "Dscr"

    const v2, 0x1d49f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1252
    const-string v1, "dscr"

    const v2, 0x1d4b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1253
    const-string v1, "DScy"

    const/16 v2, 0x405

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1254
    const-string v1, "dscy"

    const/16 v2, 0x455

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1255
    const-string v1, "dsol"

    const/16 v2, 0x29f6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1256
    const-string v1, "Dstrok"

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1257
    const-string v1, "dstrok"

    const/16 v2, 0x111

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1258
    const-string v1, "dtdot"

    const/16 v2, 0x22f1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1259
    const-string v1, "dtri"

    const/16 v2, 0x25bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1260
    const-string v1, "dtrif"

    const/16 v2, 0x25be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1261
    const-string v1, "duarr"

    const/16 v2, 0x21f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1262
    const-string v1, "duhar"

    const/16 v2, 0x296f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1263
    const-string v1, "dwangle"

    const/16 v2, 0x29a6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1264
    const-string v1, "DZcy"

    const/16 v2, 0x40f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1265
    const-string v1, "dzcy"

    const/16 v2, 0x45f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1266
    const-string v1, "dzigrarr"

    const/16 v2, 0x27ff

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1267
    const-string v1, "Eacgr"

    const/16 v2, 0x388

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1268
    const-string v1, "eacgr"

    const/16 v2, 0x3ad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1269
    const-string v1, "Eacute"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1270
    const-string v1, "eacute"

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1271
    const-string v1, "easter"

    const/16 v2, 0x2a6e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1272
    const-string v1, "Ecaron"

    const/16 v2, 0x11a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1273
    const-string v1, "ecaron"

    const/16 v2, 0x11b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1274
    const-string v1, "ecir"

    const/16 v2, 0x2256

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1275
    const-string v1, "Ecirc"

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1276
    const-string v1, "ecirc"

    const/16 v2, 0xea

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1277
    const-string v1, "ecolon"

    const/16 v2, 0x2255

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1278
    const-string v1, "Ecy"

    const/16 v2, 0x42d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1279
    const-string v1, "ecy"

    const/16 v2, 0x44d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1280
    const-string v1, "eDDot"

    const/16 v2, 0x2a77

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1281
    const-string v1, "Edot"

    const/16 v2, 0x116

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1282
    const-string v1, "eDot"

    const/16 v2, 0x2251

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1283
    const-string v1, "edot"

    const/16 v2, 0x117

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1284
    const-string v1, "ee"

    const/16 v2, 0x2147

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1285
    const-string v1, "EEacgr"

    const/16 v2, 0x389

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1286
    const-string v1, "eeacgr"

    const/16 v2, 0x3ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1287
    const-string v1, "EEgr"

    const/16 v2, 0x397

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1288
    const-string v1, "eegr"

    const/16 v2, 0x3b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1289
    const-string v1, "efDot"

    const/16 v2, 0x2252

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1290
    const-string v1, "Efr"

    const v2, 0x1d508

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1291
    const-string v1, "efr"

    const v2, 0x1d522

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1292
    const-string v1, "eg"

    const/16 v2, 0x2a9a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1293
    const-string v1, "Egr"

    const/16 v2, 0x395

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1294
    const-string v1, "egr"

    const/16 v2, 0x3b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1295
    const-string v1, "Egrave"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1296
    const-string v1, "egrave"

    const/16 v2, 0xe8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1297
    const-string v1, "egs"

    const/16 v2, 0x2a96

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1298
    const-string v1, "egsdot"

    const/16 v2, 0x2a98

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1299
    const-string v1, "el"

    const/16 v2, 0x2a99

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1300
    const-string v1, "Element"

    const/16 v2, 0x2208

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1301
    const-string v1, "elinters"

    const/16 v2, 0x23e7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1302
    const-string v1, "ell"

    const/16 v2, 0x2113

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1303
    const-string v1, "els"

    const/16 v2, 0x2a95

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1304
    const-string v1, "elsdot"

    const/16 v2, 0x2a97

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1305
    const-string v1, "Emacr"

    const/16 v2, 0x112

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1306
    const-string v1, "emacr"

    const/16 v2, 0x113

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1307
    const-string v1, "empty"

    const/16 v2, 0x2205

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1308
    const-string v1, "emptyset"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1309
    const-string v1, "EmptySmallSquare"

    const/16 v2, 0x25fb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1310
    const-string v1, "emptyv"

    const/16 v2, 0x2205

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1311
    const-string v1, "EmptyVerySmallSquare"

    const/16 v2, 0x25ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1312
    const-string v1, "emsp"

    const/16 v2, 0x2003

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1313
    const-string v1, "emsp13"

    const/16 v2, 0x2004

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1314
    const-string v1, "emsp14"

    const/16 v2, 0x2005

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1315
    const-string v1, "ENG"

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1316
    const-string v1, "eng"

    const/16 v2, 0x14b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1317
    const-string v1, "ensp"

    const/16 v2, 0x2002

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1318
    const-string v1, "Eogon"

    const/16 v2, 0x118

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1319
    const-string v1, "eogon"

    const/16 v2, 0x119

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1320
    const-string v1, "Eopf"

    const v2, 0x1d53c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1321
    const-string v1, "eopf"

    const v2, 0x1d556

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1322
    const-string v1, "epar"

    const/16 v2, 0x22d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1323
    const-string v1, "eparsl"

    const/16 v2, 0x29e3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1324
    const-string v1, "eplus"

    const/16 v2, 0x2a71

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1325
    const-string v1, "epsi"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1326
    const-string v1, "Epsilon"

    const/16 v2, 0x395

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1327
    const-string v1, "epsilon"

    const/16 v2, 0x3b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1328
    const-string v1, "epsiv"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1329
    const-string v1, "eqcirc"

    const/16 v2, 0x2256

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1330
    const-string v1, "eqcolon"

    const/16 v2, 0x2255

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1331
    const-string v1, "eqsim"

    const/16 v2, 0x2242

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1332
    const-string v1, "eqslantgtr"

    const/16 v2, 0x2a96

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1333
    const-string v1, "eqslantless"

    const/16 v2, 0x2a95

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1334
    const-string v1, "Equal"

    const/16 v2, 0x2a75

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1335
    const-string v1, "equals"

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1336
    const-string v1, "EqualTilde"

    const/16 v2, 0x2242

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1337
    const-string v1, "equest"

    const/16 v2, 0x225f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1338
    const-string v1, "Equilibrium"

    const/16 v2, 0x21cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1339
    const-string v1, "equiv"

    const/16 v2, 0x2261

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1340
    const-string v1, "equivDD"

    const/16 v2, 0x2a78

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1341
    const-string v1, "eqvparsl"

    const/16 v2, 0x29e5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1342
    const-string v1, "erarr"

    const/16 v2, 0x2971

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1343
    const-string v1, "erDot"

    const/16 v2, 0x2253

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1344
    const-string v1, "Escr"

    const/16 v2, 0x2130

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1345
    const-string v1, "escr"

    const/16 v2, 0x212f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1346
    const-string v1, "esdot"

    const/16 v2, 0x2250

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1347
    const-string v1, "Esim"

    const/16 v2, 0x2a73

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1348
    const-string v1, "esim"

    const/16 v2, 0x2242

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1349
    const-string v1, "Eta"

    const/16 v2, 0x397

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1350
    const-string v1, "eta"

    const/16 v2, 0x3b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1351
    const-string v1, "ETH"

    const/16 v2, 0xd0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1352
    const-string v1, "eth"

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1353
    const-string v1, "Euml"

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1354
    const-string v1, "euml"

    const/16 v2, 0xeb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1355
    const-string v1, "euro"

    const/16 v2, 0x20ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1356
    const-string v1, "excl"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1357
    const-string v1, "exist"

    const/16 v2, 0x2203

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1358
    const-string v1, "Exists"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1359
    const-string v1, "expectation"

    const/16 v2, 0x2130

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1360
    const-string v1, "exponentiale"

    const/16 v2, 0x2147

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1361
    const-string v1, "fallingdotseq"

    const/16 v2, 0x2252

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1362
    const-string v1, "Fcy"

    const/16 v2, 0x424

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1363
    const-string v1, "fcy"

    const/16 v2, 0x444

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1364
    const-string v1, "female"

    const/16 v2, 0x2640

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1365
    const-string v1, "ffilig"

    const v2, 0xfb03

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1366
    const-string v1, "fflig"

    const v2, 0xfb00

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1367
    const-string v1, "ffllig"

    const v2, 0xfb04

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1368
    const-string v1, "Ffr"

    const v2, 0x1d509

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1369
    const-string v1, "ffr"

    const v2, 0x1d523

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1370
    const-string v1, "filig"

    const v2, 0xfb01

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1371
    const-string v1, "FilledSmallSquare"

    const/16 v2, 0x25fc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1372
    const-string v1, "FilledVerySmallSquare"

    const/16 v2, 0x25aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1373
    const-string v1, "flat"

    const/16 v2, 0x266d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1374
    const-string v1, "fllig"

    const v2, 0xfb02

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1375
    const-string v1, "fltns"

    const/16 v2, 0x25b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1376
    const-string v1, "fnof"

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1377
    const-string v1, "Fopf"

    const v2, 0x1d53d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1378
    const-string v1, "fopf"

    const v2, 0x1d557

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1379
    const-string v1, "forall"

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1380
    const-string v1, "fork"

    const/16 v2, 0x22d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1381
    const-string v1, "forkv"

    const/16 v2, 0x2ad9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1382
    const-string v1, "Fouriertrf"

    const/16 v2, 0x2131

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1383
    const-string v1, "fpartint"

    const/16 v2, 0x2a0d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1384
    const-string v1, "frac12"

    const/16 v2, 0xbd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1385
    const-string v1, "frac13"

    const/16 v2, 0x2153

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1386
    const-string v1, "frac14"

    const/16 v2, 0xbc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1387
    const-string v1, "frac15"

    const/16 v2, 0x2155

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1388
    const-string v1, "frac16"

    const/16 v2, 0x2159

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1389
    const-string v1, "frac18"

    const/16 v2, 0x215b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1390
    const-string v1, "frac23"

    const/16 v2, 0x2154

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1391
    const-string v1, "frac25"

    const/16 v2, 0x2156

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1392
    const-string v1, "frac34"

    const/16 v2, 0xbe

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1393
    const-string v1, "frac35"

    const/16 v2, 0x2157

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1394
    const-string v1, "frac38"

    const/16 v2, 0x215c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1395
    const-string v1, "frac45"

    const/16 v2, 0x2158

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1396
    const-string v1, "frac56"

    const/16 v2, 0x215a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1397
    const-string v1, "frac58"

    const/16 v2, 0x215d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1398
    const-string v1, "frac78"

    const/16 v2, 0x215e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1399
    const-string v1, "frasl"

    const/16 v2, 0x2044

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1400
    const-string v1, "frown"

    const/16 v2, 0x2322

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1401
    const-string v1, "Fscr"

    const/16 v2, 0x2131

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1402
    const-string v1, "fscr"

    const v2, 0x1d4bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1403
    const-string v1, "gacute"

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1404
    const-string v1, "Gamma"

    const/16 v2, 0x393

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1405
    const-string v1, "gamma"

    const/16 v2, 0x3b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1406
    const-string v1, "Gammad"

    const/16 v2, 0x3dc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1407
    const-string v1, "gammad"

    const/16 v2, 0x3dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1408
    const-string v1, "gap"

    const/16 v2, 0x2a86

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1409
    const-string v1, "Gbreve"

    const/16 v2, 0x11e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1410
    const-string v1, "gbreve"

    const/16 v2, 0x11f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1411
    const-string v1, "Gcedil"

    const/16 v2, 0x122

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1412
    const-string v1, "Gcirc"

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1413
    const-string v1, "gcirc"

    const/16 v2, 0x11d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1414
    const-string v1, "Gcy"

    const/16 v2, 0x413

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1415
    const-string v1, "gcy"

    const/16 v2, 0x433

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1416
    const-string v1, "Gdot"

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1417
    const-string v1, "gdot"

    const/16 v2, 0x121

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1418
    const-string v1, "gE"

    const/16 v2, 0x2267

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1419
    const-string v1, "ge"

    const/16 v2, 0x2265

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1420
    const-string v1, "gEl"

    const/16 v2, 0x2a8c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1421
    const-string v1, "gel"

    const/16 v2, 0x22db

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1422
    const-string v1, "geq"

    const/16 v2, 0x2265

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1423
    const-string v1, "geqq"

    const/16 v2, 0x2267

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1424
    const-string v1, "geqslant"

    const/16 v2, 0x2a7e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1425
    const-string v1, "ges"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1426
    const-string v1, "gescc"

    const/16 v2, 0x2aa9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1427
    const-string v1, "gesdot"

    const/16 v2, 0x2a80

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1428
    const-string v1, "gesdoto"

    const/16 v2, 0x2a82

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1429
    const-string v1, "gesdotol"

    const/16 v2, 0x2a84

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1430
    const-string v1, "gesles"

    const/16 v2, 0x2a94

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1431
    const-string v1, "Gfr"

    const v2, 0x1d50a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1432
    const-string v1, "gfr"

    const v2, 0x1d524

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1433
    const-string v1, "Gg"

    const/16 v2, 0x22d9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1434
    const-string v1, "gg"

    const/16 v2, 0x226b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1435
    const-string v1, "ggg"

    const/16 v2, 0x22d9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1436
    const-string v1, "Ggr"

    const/16 v2, 0x393

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1437
    const-string v1, "ggr"

    const/16 v2, 0x3b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1438
    const-string v1, "gimel"

    const/16 v2, 0x2137

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1439
    const-string v1, "GJcy"

    const/16 v2, 0x403

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1440
    const-string v1, "gjcy"

    const/16 v2, 0x453

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1441
    const-string v1, "gl"

    const/16 v2, 0x2277

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1442
    const-string v1, "gla"

    const/16 v2, 0x2aa5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1443
    const-string v1, "glE"

    const/16 v2, 0x2a92

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1444
    const-string v1, "glj"

    const/16 v2, 0x2aa4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1445
    const-string v1, "gnap"

    const/16 v2, 0x2a8a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1446
    const-string v1, "gnapprox"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1447
    const-string v1, "gnE"

    const/16 v2, 0x2269

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1448
    const-string v1, "gne"

    const/16 v2, 0x2a88

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1449
    const-string v1, "gneq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1450
    const-string v1, "gneqq"

    const/16 v2, 0x2269

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1451
    const-string v1, "gnsim"

    const/16 v2, 0x22e7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1452
    const-string v1, "Gopf"

    const v2, 0x1d53e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1453
    const-string v1, "gopf"

    const v2, 0x1d558

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1454
    const-string v1, "grave"

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1455
    const-string v1, "GreaterEqual"

    const/16 v2, 0x2265

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1456
    const-string v1, "GreaterEqualLess"

    const/16 v2, 0x22db

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1457
    const-string v1, "GreaterFullEqual"

    const/16 v2, 0x2267

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1458
    const-string v1, "GreaterGreater"

    const/16 v2, 0x2aa2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1459
    const-string v1, "GreaterLess"

    const/16 v2, 0x2277

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1460
    const-string v1, "GreaterSlantEqual"

    const/16 v2, 0x2a7e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1461
    const-string v1, "GreaterTilde"

    const/16 v2, 0x2273

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1462
    const-string v1, "Gscr"

    const v2, 0x1d4a2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1463
    const-string v1, "gscr"

    const/16 v2, 0x210a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1464
    const-string v1, "gsim"

    const/16 v2, 0x2273

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1465
    const-string v1, "gsime"

    const/16 v2, 0x2a8e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1466
    const-string v1, "gsiml"

    const/16 v2, 0x2a90

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1467
    const-string v1, "Gt"

    const/16 v2, 0x226b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1468
    const-string v1, "gt"

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1469
    const-string v1, "gtcc"

    const/16 v2, 0x2aa7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1470
    const-string v1, "gtcir"

    const/16 v2, 0x2a7a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1471
    const-string v1, "gtdot"

    const/16 v2, 0x22d7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1472
    const-string v1, "gtlPar"

    const/16 v2, 0x2995

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1473
    const-string v1, "gtquest"

    const/16 v2, 0x2a7c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1474
    const-string v1, "gtrapprox"

    const/16 v2, 0x2a86

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1475
    const-string v1, "gtrarr"

    const/16 v2, 0x2978

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1476
    const-string v1, "gtrdot"

    const/16 v2, 0x22d7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1477
    const-string v1, "gtreqless"

    const/16 v2, 0x22db

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1478
    const-string v1, "gtreqqless"

    const/16 v2, 0x2a8c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1479
    const-string v1, "gtrless"

    const/16 v2, 0x2277

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1480
    const-string v1, "gtrsim"

    const/16 v2, 0x2273

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1481
    const-string v1, "Hacek"

    const/16 v2, 0x2c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1482
    const-string v1, "hairsp"

    const/16 v2, 0x200a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1483
    const-string v1, "half"

    const/16 v2, 0xbd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1484
    const-string v1, "hamilt"

    const/16 v2, 0x210b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1485
    const-string v1, "HARDcy"

    const/16 v2, 0x42a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1486
    const-string v1, "hardcy"

    const/16 v2, 0x44a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1487
    const-string v1, "hArr"

    const/16 v2, 0x21d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1488
    const-string v1, "harr"

    const/16 v2, 0x2194

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1489
    const-string v1, "harrcir"

    const/16 v2, 0x2948

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1490
    const-string v1, "harrw"

    const/16 v2, 0x21ad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1491
    const-string v1, "Hat"

    const/16 v2, 0x5e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1492
    const-string v1, "hbar"

    const/16 v2, 0x210f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1493
    const-string v1, "Hcirc"

    const/16 v2, 0x124

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1494
    const-string v1, "hcirc"

    const/16 v2, 0x125

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1495
    const-string v1, "hearts"

    const/16 v2, 0x2665

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1496
    const-string v1, "heartsuit"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1497
    const-string v1, "hellip"

    const/16 v2, 0x2026

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1498
    const-string v1, "hercon"

    const/16 v2, 0x22b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1499
    const-string v1, "Hfr"

    const/16 v2, 0x210c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1500
    const-string v1, "hfr"

    const v2, 0x1d525

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1501
    const-string v1, "HilbertSpace"

    const/16 v2, 0x210b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1502
    const-string v1, "hksearow"

    const/16 v2, 0x2925

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1503
    const-string v1, "hkswarow"

    const/16 v2, 0x2926

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1504
    const-string v1, "hoarr"

    const/16 v2, 0x21ff

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1505
    const-string v1, "homtht"

    const/16 v2, 0x223b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1506
    const-string v1, "hookleftarrow"

    const/16 v2, 0x21a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1507
    const-string v1, "hookrightarrow"

    const/16 v2, 0x21aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1508
    const-string v1, "Hopf"

    const/16 v2, 0x210d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1509
    const-string v1, "hopf"

    const v2, 0x1d559

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1510
    const-string v1, "horbar"

    const/16 v2, 0x2015

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1511
    const-string v1, "HorizontalLine"

    const/16 v2, 0x2500

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1512
    const-string v1, "Hscr"

    const/16 v2, 0x210b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1513
    const-string v1, "hscr"

    const v2, 0x1d4bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1514
    const-string v1, "hslash"

    const/16 v2, 0x210f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1515
    const-string v1, "Hstrok"

    const/16 v2, 0x126

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1516
    const-string v1, "hstrok"

    const/16 v2, 0x127

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1517
    const-string v1, "HumpDownHump"

    const/16 v2, 0x224e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1518
    const-string v1, "HumpEqual"

    const/16 v2, 0x224f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1519
    const-string v1, "hybull"

    const/16 v2, 0x2043

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1520
    const-string v1, "hyphen"

    const/16 v2, 0x2010

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1521
    const-string v1, "Iacgr"

    const/16 v2, 0x38a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1522
    const-string v1, "iacgr"

    const/16 v2, 0x3af

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1523
    const-string v1, "Iacute"

    const/16 v2, 0xcd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1524
    const-string v1, "iacute"

    const/16 v2, 0xed

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1525
    const-string v1, "ic"

    const/16 v2, 0x2063

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1526
    const-string v1, "Icirc"

    const/16 v2, 0xce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1527
    const-string v1, "icirc"

    const/16 v2, 0xee

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1528
    const-string v1, "Icy"

    const/16 v2, 0x418

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1529
    const-string v1, "icy"

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1530
    const-string v1, "idiagr"

    const/16 v2, 0x390

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1531
    const-string v1, "Idigr"

    const/16 v2, 0x3aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1532
    const-string v1, "idigr"

    const/16 v2, 0x3ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1533
    const-string v1, "Idot"

    const/16 v2, 0x130

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1534
    const-string v1, "IEcy"

    const/16 v2, 0x415

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1535
    const-string v1, "iecy"

    const/16 v2, 0x435

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1536
    const-string v1, "iexcl"

    const/16 v2, 0xa1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1537
    const-string v1, "iff"

    const/16 v2, 0x21d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1538
    const-string v1, "Ifr"

    const/16 v2, 0x2111

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1539
    const-string v1, "ifr"

    const v2, 0x1d526

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1540
    const-string v1, "Igr"

    const/16 v2, 0x399

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1541
    const-string v1, "igr"

    const/16 v2, 0x3b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1542
    const-string v1, "Igrave"

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1543
    const-string v1, "igrave"

    const/16 v2, 0xec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1544
    const-string v1, "ii"

    const/16 v2, 0x2148

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1545
    const-string v1, "iiiint"

    const/16 v2, 0x2a0c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1546
    const-string v1, "iiint"

    const/16 v2, 0x222d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1547
    const-string v1, "iinfin"

    const/16 v2, 0x29dc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1548
    const-string v1, "iiota"

    const/16 v2, 0x2129

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1549
    const-string v1, "IJlig"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1550
    const-string v1, "ijlig"

    const/16 v2, 0x133

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1551
    const-string v1, "Im"

    const/16 v2, 0x2111

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1552
    const-string v1, "Imacr"

    const/16 v2, 0x12a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1553
    const-string v1, "imacr"

    const/16 v2, 0x12b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1554
    const-string v1, "image"

    const/16 v2, 0x2111

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1555
    const-string v1, "ImaginaryI"

    const/16 v2, 0x2148

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1556
    const-string v1, "imagline"

    const/16 v2, 0x2110

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1557
    const-string v1, "imagpart"

    const/16 v2, 0x2111

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1558
    const-string v1, "imath"

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1559
    const-string v1, "imof"

    const/16 v2, 0x22b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1560
    const-string v1, "imped"

    const/16 v2, 0x1b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1561
    const-string v1, "Implies"

    const/16 v2, 0x21d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1562
    const-string v1, "in"

    const/16 v2, 0x2208

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1563
    const-string v1, "incare"

    const/16 v2, 0x2105

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1564
    const-string v1, "infin"

    const/16 v2, 0x221e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1565
    const-string v1, "infintie"

    const/16 v2, 0x29dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1566
    const-string v1, "inodot"

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1567
    const-string v1, "Int"

    const/16 v2, 0x222c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1568
    const-string v1, "int"

    const/16 v2, 0x222b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1569
    const-string v1, "intcal"

    const/16 v2, 0x22ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1570
    const-string v1, "integers"

    const/16 v2, 0x2124

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1571
    const-string v1, "Integral"

    const/16 v2, 0x222b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1572
    const-string v1, "intercal"

    const/16 v2, 0x22ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1573
    const-string v1, "Intersection"

    const/16 v2, 0x22c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1574
    const-string v1, "intlarhk"

    const/16 v2, 0x2a17

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1575
    const-string v1, "intprod"

    const/16 v2, 0x2a3c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1576
    const-string v1, "InvisibleComma"

    const/16 v2, 0x2063

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1577
    const-string v1, "InvisibleTimes"

    const/16 v2, 0x2062

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1578
    const-string v1, "IOcy"

    const/16 v2, 0x401

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1579
    const-string v1, "iocy"

    const/16 v2, 0x451

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1580
    const-string v1, "Iogon"

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1581
    const-string v1, "iogon"

    const/16 v2, 0x12f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1582
    const-string v1, "Iopf"

    const v2, 0x1d540

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1583
    const-string v1, "iopf"

    const v2, 0x1d55a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1584
    const-string v1, "Iota"

    const/16 v2, 0x399

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1585
    const-string v1, "iota"

    const/16 v2, 0x3b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1586
    const-string v1, "iprod"

    const/16 v2, 0x2a3c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1587
    const-string v1, "iquest"

    const/16 v2, 0xbf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1588
    const-string v1, "Iscr"

    const/16 v2, 0x2110

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1589
    const-string v1, "iscr"

    const v2, 0x1d4be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1590
    const-string v1, "isin"

    const/16 v2, 0x2208

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1591
    const-string v1, "isindot"

    const/16 v2, 0x22f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1592
    const-string v1, "isinE"

    const/16 v2, 0x22f9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1593
    const-string v1, "isins"

    const/16 v2, 0x22f4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1594
    const-string v1, "isinsv"

    const/16 v2, 0x22f3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1595
    const-string v1, "isinv"

    const/16 v2, 0x2208

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1596
    const-string v1, "it"

    const/16 v2, 0x2062

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1597
    const-string v1, "Itilde"

    const/16 v2, 0x128

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1598
    const-string v1, "itilde"

    const/16 v2, 0x129

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1599
    const-string v1, "Iukcy"

    const/16 v2, 0x406

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1600
    const-string v1, "iukcy"

    const/16 v2, 0x456

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1601
    const-string v1, "Iuml"

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1602
    const-string v1, "iuml"

    const/16 v2, 0xef

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1603
    const-string v1, "Jcirc"

    const/16 v2, 0x134

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1604
    const-string v1, "jcirc"

    const/16 v2, 0x135

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1605
    const-string v1, "Jcy"

    const/16 v2, 0x419

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1606
    const-string v1, "jcy"

    const/16 v2, 0x439

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1607
    const-string v1, "Jfr"

    const v2, 0x1d50d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1608
    const-string v1, "jfr"

    const v2, 0x1d527

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1609
    const-string v1, "jmath"

    const/16 v2, 0x237

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1610
    const-string v1, "Jopf"

    const v2, 0x1d541

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1611
    const-string v1, "jopf"

    const v2, 0x1d55b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1612
    const-string v1, "Jscr"

    const v2, 0x1d4a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1613
    const-string v1, "jscr"

    const v2, 0x1d4bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1614
    const-string v1, "Jsercy"

    const/16 v2, 0x408

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1615
    const-string v1, "jsercy"

    const/16 v2, 0x458

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1616
    const-string v1, "Jukcy"

    const/16 v2, 0x404

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1617
    const-string v1, "jukcy"

    const/16 v2, 0x454

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1618
    const-string v1, "Kappa"

    const/16 v2, 0x39a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1619
    const-string v1, "kappa"

    const/16 v2, 0x3ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1620
    const-string v1, "kappav"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1621
    const-string v1, "Kcedil"

    const/16 v2, 0x136

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1622
    const-string v1, "kcedil"

    const/16 v2, 0x137

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1623
    const-string v1, "Kcy"

    const/16 v2, 0x41a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1624
    const-string v1, "kcy"

    const/16 v2, 0x43a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1625
    const-string v1, "Kfr"

    const v2, 0x1d50e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1626
    const-string v1, "kfr"

    const v2, 0x1d528

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1627
    const-string v1, "Kgr"

    const/16 v2, 0x39a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1628
    const-string v1, "kgr"

    const/16 v2, 0x3ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1629
    const-string v1, "kgreen"

    const/16 v2, 0x138

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1630
    const-string v1, "KHcy"

    const/16 v2, 0x425

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1631
    const-string v1, "khcy"

    const/16 v2, 0x445

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1632
    const-string v1, "KHgr"

    const/16 v2, 0x3a7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1633
    const-string v1, "khgr"

    const/16 v2, 0x3c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1634
    const-string v1, "KJcy"

    const/16 v2, 0x40c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1635
    const-string v1, "kjcy"

    const/16 v2, 0x45c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1636
    const-string v1, "Kopf"

    const v2, 0x1d542

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1637
    const-string v1, "kopf"

    const v2, 0x1d55c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1638
    const-string v1, "Kscr"

    const v2, 0x1d4a6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1639
    const-string v1, "kscr"

    const v2, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1640
    const-string v1, "lAarr"

    const/16 v2, 0x21da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1641
    const-string v1, "Lacute"

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1642
    const-string v1, "lacute"

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1643
    const-string v1, "laemptyv"

    const/16 v2, 0x29b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1644
    const-string v1, "lagran"

    const/16 v2, 0x2112

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1645
    const-string v1, "Lambda"

    const/16 v2, 0x39b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1646
    const-string v1, "lambda"

    const/16 v2, 0x3bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1647
    const-string v1, "Lang"

    const/16 v2, 0x27ea

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1648
    const/16 v1, 0x2329

    invoke-virtual {v0, v3, v1}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1649
    const-string v1, "langd"

    const/16 v2, 0x2991

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1650
    const-string v1, "langle"

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1651
    const-string v1, "lap"

    const/16 v2, 0x2a85

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1652
    const-string v1, "Laplacetrf"

    const/16 v2, 0x2112

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1653
    const-string v1, "laquo"

    const/16 v2, 0xab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1654
    const-string v1, "Larr"

    const/16 v2, 0x219e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1655
    const-string v1, "lArr"

    const/16 v2, 0x21d0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1656
    const-string v1, "larr"

    const/16 v2, 0x2190

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1657
    const-string v1, "larrb"

    const/16 v2, 0x21e4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1658
    const-string v1, "larrbfs"

    const/16 v2, 0x291f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1659
    const-string v1, "larrfs"

    const/16 v2, 0x291d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1660
    const-string v1, "larrhk"

    const/16 v2, 0x21a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1661
    const-string v1, "larrlp"

    const/16 v2, 0x21ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1662
    const-string v1, "larrpl"

    const/16 v2, 0x2939

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1663
    const-string v1, "larrsim"

    const/16 v2, 0x2973

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1664
    const-string v1, "larrtl"

    const/16 v2, 0x21a2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1665
    const-string v1, "lat"

    const/16 v2, 0x2aab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1666
    const-string v1, "lAtail"

    const/16 v2, 0x291b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1667
    const-string v1, "latail"

    const/16 v2, 0x2919

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1668
    const-string v1, "late"

    const/16 v2, 0x2aad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1669
    const-string v1, "lBarr"

    const/16 v2, 0x290e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1670
    const-string v1, "lbarr"

    const/16 v2, 0x290c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1671
    const-string v1, "lbbrk"

    const/16 v2, 0x2997

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1672
    const-string v1, "lbrace"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1673
    const-string v1, "lbrack"

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1674
    const-string v1, "lbrke"

    const/16 v2, 0x298b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1675
    const-string v1, "lbrksld"

    const/16 v2, 0x298f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1676
    const-string v1, "lbrkslu"

    const/16 v2, 0x298d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1677
    const-string v1, "Lcaron"

    const/16 v2, 0x13d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1678
    const-string v1, "lcaron"

    const/16 v2, 0x13e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1679
    const-string v1, "Lcedil"

    const/16 v2, 0x13b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1680
    const-string v1, "lcedil"

    const/16 v2, 0x13c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1681
    const-string v1, "lceil"

    const/16 v2, 0x2308

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1682
    const-string v1, "lcub"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1683
    const-string v1, "Lcy"

    const/16 v2, 0x41b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1684
    const-string v1, "lcy"

    const/16 v2, 0x43b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1685
    const-string v1, "ldca"

    const/16 v2, 0x2936

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1686
    const-string v1, "ldquo"

    const/16 v2, 0x201c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1687
    const-string v1, "ldquor"

    const/16 v2, 0x201e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1688
    const-string v1, "ldrdhar"

    const/16 v2, 0x2967

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1689
    const-string v1, "ldrushar"

    const/16 v2, 0x294b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1690
    const-string v1, "ldsh"

    const/16 v2, 0x21b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1691
    const-string v1, "lE"

    const/16 v2, 0x2266

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1692
    const-string v1, "le"

    const/16 v2, 0x2264

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1693
    const-string v1, "LeftAngleBracket"

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1694
    const-string v1, "Leftarrow"

    const/16 v2, 0x21d0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1695
    const-string v1, "leftarrow"

    const/16 v2, 0x2190

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1696
    const-string v1, "LeftArrowBar"

    const/16 v2, 0x21e4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1697
    const-string v1, "LeftArrowRightArrow"

    const/16 v2, 0x21c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1698
    const-string v1, "leftarrowtail"

    const/16 v2, 0x21a2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1699
    const-string v1, "LeftCeiling"

    const/16 v2, 0x2308

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1700
    const-string v1, "LeftDoubleBracket"

    const/16 v2, 0x27e6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1701
    const-string v1, "LeftDownTeeVector"

    const/16 v2, 0x2961

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1702
    const-string v1, "LeftDownVector"

    const/16 v2, 0x21c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1703
    const-string v1, "LeftDownVectorBar"

    const/16 v2, 0x2959

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1704
    const-string v1, "LeftFloor"

    const/16 v2, 0x230a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1705
    const-string v1, "leftharpoondown"

    const/16 v2, 0x21bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1706
    const-string v1, "leftharpoonup"

    const/16 v2, 0x21bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1707
    const-string v1, "leftleftarrows"

    const/16 v2, 0x21c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1708
    const-string v1, "Leftrightarrow"

    const/16 v2, 0x21d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1709
    const-string v1, "leftrightarrow"

    const/16 v2, 0x2194

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1710
    const-string v1, "leftrightarrows"

    const/16 v2, 0x21c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1711
    const-string v1, "leftrightharpoons"

    const/16 v2, 0x21cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1712
    const-string v1, "leftrightsquigarrow"

    const/16 v2, 0x21ad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1713
    const-string v1, "LeftRightVector"

    const/16 v2, 0x294e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1714
    const-string v1, "LeftTee"

    const/16 v2, 0x22a3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1715
    const-string v1, "LeftTeeArrow"

    const/16 v2, 0x21a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1716
    const-string v1, "LeftTeeVector"

    const/16 v2, 0x295a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1717
    const-string v1, "leftthreetimes"

    const/16 v2, 0x22cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1718
    const-string v1, "LeftTriangle"

    const/16 v2, 0x22b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1719
    const-string v1, "LeftTriangleBar"

    const/16 v2, 0x29cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1720
    const-string v1, "LeftTriangleEqual"

    const/16 v2, 0x22b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1721
    const-string v1, "LeftUpDownVector"

    const/16 v2, 0x2951

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1722
    const-string v1, "LeftUpTeeVector"

    const/16 v2, 0x2960

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1723
    const-string v1, "LeftUpVector"

    const/16 v2, 0x21bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1724
    const-string v1, "LeftUpVectorBar"

    const/16 v2, 0x2958

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1725
    const-string v1, "LeftVector"

    const/16 v2, 0x21bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1726
    const-string v1, "LeftVectorBar"

    const/16 v2, 0x2952

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1727
    const-string v1, "lEg"

    const/16 v2, 0x2a8b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1728
    const-string v1, "leg"

    const/16 v2, 0x22da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1729
    const-string v1, "leq"

    const/16 v2, 0x2264

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1730
    const-string v1, "leqq"

    const/16 v2, 0x2266

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1731
    const-string v1, "leqslant"

    const/16 v2, 0x2a7d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1732
    const-string v1, "les"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1733
    const-string v1, "lescc"

    const/16 v2, 0x2aa8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1734
    const-string v1, "lesdot"

    const/16 v2, 0x2a7f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1735
    const-string v1, "lesdoto"

    const/16 v2, 0x2a81

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1736
    const-string v1, "lesdotor"

    const/16 v2, 0x2a83

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1737
    const-string v1, "lesges"

    const/16 v2, 0x2a93

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1738
    const-string v1, "lessapprox"

    const/16 v2, 0x2a85

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1739
    const-string v1, "lessdot"

    const/16 v2, 0x22d6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1740
    const-string v1, "lesseqgtr"

    const/16 v2, 0x22da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1741
    const-string v1, "lesseqqgtr"

    const/16 v2, 0x2a8b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1742
    const-string v1, "LessEqualGreater"

    const/16 v2, 0x22da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1743
    const-string v1, "LessFullEqual"

    const/16 v2, 0x2266

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1744
    const-string v1, "LessGreater"

    const/16 v2, 0x2276

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1745
    const-string v1, "lessgtr"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1746
    const-string v1, "LessLess"

    const/16 v2, 0x2aa1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1747
    const-string v1, "lesssim"

    const/16 v2, 0x2272

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1748
    const-string v1, "LessSlantEqual"

    const/16 v2, 0x2a7d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1749
    const-string v1, "LessTilde"

    const/16 v2, 0x2272

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1750
    const-string v1, "lfisht"

    const/16 v2, 0x297c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1751
    const-string v1, "lfloor"

    const/16 v2, 0x230a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1752
    const-string v1, "Lfr"

    const v2, 0x1d50f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1753
    const-string v1, "lfr"

    const v2, 0x1d529

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1754
    const-string v1, "lg"

    const/16 v2, 0x2276

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1755
    const-string v1, "lgE"

    const/16 v2, 0x2a91

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1756
    const-string v1, "Lgr"

    const/16 v2, 0x39b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1757
    const-string v1, "lgr"

    const/16 v2, 0x3bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1758
    const-string v1, "lHar"

    const/16 v2, 0x2962

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1759
    const-string v1, "lhard"

    const/16 v2, 0x21bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1760
    const-string v1, "lharu"

    const/16 v2, 0x21bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1761
    const-string v1, "lharul"

    const/16 v2, 0x296a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1762
    const-string v1, "lhblk"

    const/16 v2, 0x2584

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1763
    const-string v1, "LJcy"

    const/16 v2, 0x409

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1764
    const-string v1, "ljcy"

    const/16 v2, 0x459

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1765
    const-string v1, "Ll"

    const/16 v2, 0x22d8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1766
    const-string v1, "ll"

    const/16 v2, 0x226a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1767
    const-string v1, "llarr"

    const/16 v2, 0x21c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1768
    const-string v1, "llcorner"

    const/16 v2, 0x231e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1769
    const-string v1, "Lleftarrow"

    const/16 v2, 0x21da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1770
    const-string v1, "llhard"

    const/16 v2, 0x296b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1771
    const-string v1, "lltri"

    const/16 v2, 0x25fa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1772
    const-string v1, "Lmidot"

    const/16 v2, 0x13f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1773
    const-string v1, "lmidot"

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1774
    const-string v1, "lmoust"

    const/16 v2, 0x23b0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1775
    const-string v1, "lmoustache"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1776
    const-string v1, "lnap"

    const/16 v2, 0x2a89

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1777
    const-string v1, "lnapprox"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1778
    const-string v1, "lnE"

    const/16 v2, 0x2268

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1779
    const-string v1, "lne"

    const/16 v2, 0x2a87

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1780
    const-string v1, "lneq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1781
    const-string v1, "lneqq"

    const/16 v2, 0x2268

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1782
    const-string v1, "lnsim"

    const/16 v2, 0x22e6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1783
    const-string v1, "loang"

    const/16 v2, 0x27ec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1784
    const-string v1, "loarr"

    const/16 v2, 0x21fd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1785
    const-string v1, "lobrk"

    const/16 v2, 0x27e6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1786
    const-string v1, "Longleftarrow"

    const/16 v2, 0x27f8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1787
    const-string v1, "longleftarrow"

    const/16 v2, 0x27f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1788
    const-string v1, "Longleftrightarrow"

    const/16 v2, 0x27fa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1789
    const-string v1, "longleftrightarrow"

    const/16 v2, 0x27f7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1790
    const-string v1, "longmapsto"

    const/16 v2, 0x27fc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1791
    const-string v1, "Longrightarrow"

    const/16 v2, 0x27f9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1792
    const-string v1, "longrightarrow"

    const/16 v2, 0x27f6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1793
    const-string v1, "looparrowleft"

    const/16 v2, 0x21ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1794
    const-string v1, "looparrowright"

    const/16 v2, 0x21ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1795
    const-string v1, "lopar"

    const/16 v2, 0x2985

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1796
    const-string v1, "Lopf"

    const v2, 0x1d543

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1797
    const-string v1, "lopf"

    const v2, 0x1d55d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1798
    const-string v1, "loplus"

    const/16 v2, 0x2a2d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1799
    const-string v1, "lotimes"

    const/16 v2, 0x2a34

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1800
    const-string v1, "lowast"

    const/16 v2, 0x2217

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1801
    const-string v1, "lowbar"

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1802
    const-string v1, "LowerLeftArrow"

    const/16 v2, 0x2199

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1803
    const-string v1, "LowerRightArrow"

    const/16 v2, 0x2198

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1804
    const-string v1, "loz"

    const/16 v2, 0x25ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1805
    const-string v1, "lozenge"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1806
    const-string v1, "lozf"

    const/16 v2, 0x29eb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1807
    const-string v1, "lpar"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1808
    const-string v1, "lparlt"

    const/16 v2, 0x2993

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1809
    const-string v1, "lrarr"

    const/16 v2, 0x21c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1810
    const-string v1, "lrcorner"

    const/16 v2, 0x231f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1811
    const-string v1, "lrhar"

    const/16 v2, 0x21cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1812
    const-string v1, "lrhard"

    const/16 v2, 0x296d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1813
    const-string v1, "lrm"

    const/16 v2, 0x200e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1814
    const-string v1, "lrtri"

    const/16 v2, 0x22bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1815
    const-string v1, "lsaquo"

    const/16 v2, 0x2039

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1816
    const-string v1, "Lscr"

    const/16 v2, 0x2112

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1817
    const-string v1, "lscr"

    const v2, 0x1d4c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1818
    const-string v1, "lsh"

    const/16 v2, 0x21b0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1819
    const-string v1, "lsim"

    const/16 v2, 0x2272

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1820
    const-string v1, "lsime"

    const/16 v2, 0x2a8d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1821
    const-string v1, "lsimg"

    const/16 v2, 0x2a8f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1822
    const-string v1, "lsqb"

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1823
    const-string v1, "lsquo"

    const/16 v2, 0x2018

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1824
    const-string v1, "lsquor"

    const/16 v2, 0x201a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1825
    const-string v1, "Lstrok"

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1826
    const-string v1, "lstrok"

    const/16 v2, 0x142

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1827
    const-string v1, "Lt"

    const/16 v2, 0x226a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1828
    const-string v1, "lt"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1829
    const-string v1, "ltcc"

    const/16 v2, 0x2aa6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1830
    const-string v1, "ltcir"

    const/16 v2, 0x2a79

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1831
    const-string v1, "ltdot"

    const/16 v2, 0x22d6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1832
    const-string v1, "lthree"

    const/16 v2, 0x22cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1833
    const-string v1, "ltimes"

    const/16 v2, 0x22c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1834
    const-string v1, "ltlarr"

    const/16 v2, 0x2976

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1835
    const-string v1, "ltquest"

    const/16 v2, 0x2a7b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1836
    const-string v1, "ltri"

    const/16 v2, 0x25c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1837
    const-string v1, "ltrie"

    const/16 v2, 0x22b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1838
    const-string v1, "ltrif"

    const/16 v2, 0x25c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1839
    const-string v1, "ltrPar"

    const/16 v2, 0x2996

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1840
    const-string v1, "lurdshar"

    const/16 v2, 0x294a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1841
    const-string v1, "luruhar"

    const/16 v2, 0x2966

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1842
    const-string v1, "macr"

    const/16 v2, 0xaf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1843
    const-string v1, "male"

    const/16 v2, 0x2642

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1844
    const-string v1, "malt"

    const/16 v2, 0x2720

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1845
    const-string v1, "maltese"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1846
    const-string v1, "Map"

    const/16 v2, 0x2905

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1847
    const-string v1, "map"

    const/16 v2, 0x21a6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1848
    const-string v1, "mapsto"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1849
    const-string v1, "mapstodown"

    const/16 v2, 0x21a7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1850
    const-string v1, "mapstoleft"

    const/16 v2, 0x21a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1851
    const-string v1, "mapstoup"

    const/16 v2, 0x21a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1852
    const-string v1, "marker"

    const/16 v2, 0x25ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1853
    const-string v1, "mcomma"

    const/16 v2, 0x2a29

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1854
    const-string v1, "Mcy"

    const/16 v2, 0x41c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1855
    const-string v1, "mcy"

    const/16 v2, 0x43c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1856
    const-string v1, "mdash"

    const/16 v2, 0x2014

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1857
    const-string v1, "mDDot"

    const/16 v2, 0x223a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1858
    const-string v1, "measuredangle"

    const/16 v2, 0x2221

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1859
    const-string v1, "MediumSpace"

    const/16 v2, 0x205f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1860
    const-string v1, "Mellintrf"

    const/16 v2, 0x2133

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1861
    const-string v1, "Mfr"

    const v2, 0x1d510

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1862
    const-string v1, "mfr"

    const v2, 0x1d52a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1863
    const-string v1, "Mgr"

    const/16 v2, 0x39c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1864
    const-string v1, "mgr"

    const/16 v2, 0x3bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1865
    const-string v1, "mho"

    const/16 v2, 0x2127

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1866
    const-string v1, "micro"

    const/16 v2, 0xb5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1867
    const-string v1, "mid"

    const/16 v2, 0x2223

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1868
    const-string v1, "midast"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1869
    const-string v1, "midcir"

    const/16 v2, 0x2af0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1870
    const-string v1, "middot"

    const/16 v2, 0xb7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1871
    const-string v1, "minus"

    const/16 v2, 0x2212

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1872
    const-string v1, "minusb"

    const/16 v2, 0x229f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1873
    const-string v1, "minusd"

    const/16 v2, 0x2238

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1874
    const-string v1, "minusdu"

    const/16 v2, 0x2a2a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1875
    const-string v1, "MinusPlus"

    const/16 v2, 0x2213

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1876
    const-string v1, "mlcp"

    const/16 v2, 0x2adb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1877
    const-string v1, "mldr"

    const/16 v2, 0x2026

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1878
    const-string v1, "mnplus"

    const/16 v2, 0x2213

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1879
    const-string v1, "models"

    const/16 v2, 0x22a7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1880
    const-string v1, "Mopf"

    const v2, 0x1d544

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1881
    const-string v1, "mopf"

    const v2, 0x1d55e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1882
    const-string v1, "mp"

    const/16 v2, 0x2213

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1883
    const-string v1, "Mscr"

    const/16 v2, 0x2133

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1884
    const-string v1, "mscr"

    const v2, 0x1d4c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1885
    const-string v1, "mstpos"

    const/16 v2, 0x223e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1886
    const-string v1, "Mu"

    const/16 v2, 0x39c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1887
    const-string v1, "mu"

    const/16 v2, 0x3bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1888
    const-string v1, "multimap"

    const/16 v2, 0x22b8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1889
    const-string v1, "mumap"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1890
    const-string v1, "nabla"

    const/16 v2, 0x2207

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1891
    const-string v1, "Nacute"

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1892
    const-string v1, "nacute"

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1893
    const-string v1, "nap"

    const/16 v2, 0x2249

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1894
    const-string v1, "napos"

    const/16 v2, 0x149

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1895
    const-string v1, "napprox"

    const/16 v2, 0x2249

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1896
    const-string v1, "natur"

    const/16 v2, 0x266e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1897
    const-string v1, "natural"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1898
    const-string v1, "naturals"

    const/16 v2, 0x2115

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1899
    const-string v1, "nbsp"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1900
    const-string v1, "ncap"

    const/16 v2, 0x2a43

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1901
    const-string v1, "Ncaron"

    const/16 v2, 0x147

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1902
    const-string v1, "ncaron"

    const/16 v2, 0x148

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1903
    const-string v1, "Ncedil"

    const/16 v2, 0x145

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1904
    const-string v1, "ncedil"

    const/16 v2, 0x146

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1905
    const-string v1, "ncong"

    const/16 v2, 0x2247

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1906
    const-string v1, "ncup"

    const/16 v2, 0x2a42

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1907
    const-string v1, "Ncy"

    const/16 v2, 0x41d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1908
    const-string v1, "ncy"

    const/16 v2, 0x43d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1909
    const-string v1, "ndash"

    const/16 v2, 0x2013

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1910
    const-string v1, "ne"

    const/16 v2, 0x2260

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1911
    const-string v1, "nearhk"

    const/16 v2, 0x2924

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1912
    const-string v1, "neArr"

    const/16 v2, 0x21d7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1913
    const-string v1, "nearr"

    const/16 v2, 0x2197

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1914
    const-string v1, "nearrow"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1915
    const-string v1, "NegativeMediumSpace"

    const/16 v2, 0x200b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1916
    const-string v1, "NegativeThickSpace"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1917
    const-string v1, "NegativeThinSpace"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1918
    const-string v1, "NegativeVeryThinSpace"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1919
    const-string v1, "nequiv"

    const/16 v2, 0x2262

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1920
    const-string v1, "nesear"

    const/16 v2, 0x2928

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1921
    const-string v1, "NestedGreaterGreater"

    const/16 v2, 0x226b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1922
    const-string v1, "NestedLessLess"

    const/16 v2, 0x226a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1923
    const-string v1, "NewLine"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1924
    const-string v1, "nexist"

    const/16 v2, 0x2204

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1925
    const-string v1, "nexists"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1926
    const-string v1, "Nfr"

    const v2, 0x1d511

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1927
    const-string v1, "nfr"

    const v2, 0x1d52b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1928
    const-string v1, "nge"

    const/16 v2, 0x2271

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1929
    const-string v1, "ngeq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1930
    const-string v1, "Ngr"

    const/16 v2, 0x39d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1931
    const-string v1, "ngr"

    const/16 v2, 0x3bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1932
    const-string v1, "ngsim"

    const/16 v2, 0x2275

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1933
    const-string v1, "ngt"

    const/16 v2, 0x226f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1934
    const-string v1, "ngtr"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1935
    const-string v1, "nhArr"

    const/16 v2, 0x21ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1936
    const-string v1, "nharr"

    const/16 v2, 0x21ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1937
    const-string v1, "nhpar"

    const/16 v2, 0x2af2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1938
    const-string v1, "ni"

    const/16 v2, 0x220b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1939
    const-string v1, "nis"

    const/16 v2, 0x22fc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1940
    const-string v1, "nisd"

    const/16 v2, 0x22fa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1941
    const-string v1, "niv"

    const/16 v2, 0x220b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1942
    const-string v1, "NJcy"

    const/16 v2, 0x40a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1943
    const-string v1, "njcy"

    const/16 v2, 0x45a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1944
    const-string v1, "nlArr"

    const/16 v2, 0x21cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1945
    const-string v1, "nlarr"

    const/16 v2, 0x219a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1946
    const-string v1, "nldr"

    const/16 v2, 0x2025

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1947
    const-string v1, "nle"

    const/16 v2, 0x2270

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1948
    const-string v1, "nLeftarrow"

    const/16 v2, 0x21cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1949
    const-string v1, "nleftarrow"

    const/16 v2, 0x219a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1950
    const-string v1, "nLeftrightarrow"

    const/16 v2, 0x21ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1951
    const-string v1, "nleftrightarrow"

    const/16 v2, 0x21ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1952
    const-string v1, "nleq"

    const/16 v2, 0x2270

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1953
    const-string v1, "nless"

    const/16 v2, 0x226e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1954
    const-string v1, "nlsim"

    const/16 v2, 0x2274

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1955
    const-string v1, "nlt"

    const/16 v2, 0x226e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1956
    const-string v1, "nltri"

    const/16 v2, 0x22ea

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1957
    const-string v1, "nltrie"

    const/16 v2, 0x22ec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1958
    const-string v1, "nmid"

    const/16 v2, 0x2224

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1959
    const-string v1, "NoBreak"

    const/16 v2, 0x2060

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1960
    const-string v1, "NonBreakingSpace"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1961
    const-string v1, "Nopf"

    const/16 v2, 0x2115

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1962
    const-string v1, "nopf"

    const v2, 0x1d55f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1963
    const-string v1, "Not"

    const/16 v2, 0x2aec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1964
    const-string v1, "not"

    const/16 v2, 0xac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1965
    const-string v1, "NotCongruent"

    const/16 v2, 0x2262

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1966
    const-string v1, "NotCupCap"

    const/16 v2, 0x226d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1967
    const-string v1, "NotDoubleVerticalBar"

    const/16 v2, 0x2226

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1968
    const-string v1, "NotElement"

    const/16 v2, 0x2209

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1969
    const-string v1, "NotEqual"

    const/16 v2, 0x2260

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1970
    const-string v1, "NotExists"

    const/16 v2, 0x2204

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1971
    const-string v1, "NotGreater"

    const/16 v2, 0x226f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1972
    const-string v1, "NotGreaterEqual"

    const/16 v2, 0x2271

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1973
    const-string v1, "NotGreaterLess"

    const/16 v2, 0x2279

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1974
    const-string v1, "NotGreaterTilde"

    const/16 v2, 0x2275

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1975
    const-string v1, "notin"

    const/16 v2, 0x2209

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1976
    const-string v1, "notinva"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1977
    const-string v1, "notinvb"

    const/16 v2, 0x22f7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1978
    const-string v1, "notinvc"

    const/16 v2, 0x22f6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1979
    const-string v1, "NotLeftTriangle"

    const/16 v2, 0x22ea

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1980
    const-string v1, "NotLeftTriangleEqual"

    const/16 v2, 0x22ec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1981
    const-string v1, "NotLess"

    const/16 v2, 0x226e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1982
    const-string v1, "NotLessEqual"

    const/16 v2, 0x2270

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1983
    const-string v1, "NotLessGreater"

    const/16 v2, 0x2278

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1984
    const-string v1, "NotLessTilde"

    const/16 v2, 0x2274

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1985
    const-string v1, "notni"

    const/16 v2, 0x220c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1986
    const-string v1, "notniva"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1987
    const-string v1, "notnivb"

    const/16 v2, 0x22fe

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1988
    const-string v1, "notnivc"

    const/16 v2, 0x22fd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1989
    const-string v1, "NotPrecedes"

    const/16 v2, 0x2280

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1990
    const-string v1, "NotPrecedesSlantEqual"

    const/16 v2, 0x22e0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1991
    const-string v1, "NotReverseElement"

    const/16 v2, 0x220c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1992
    const-string v1, "NotRightTriangle"

    const/16 v2, 0x22eb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1993
    const-string v1, "NotRightTriangleEqual"

    const/16 v2, 0x22ed

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1994
    const-string v1, "NotSquareSubsetEqual"

    const/16 v2, 0x22e2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1995
    const-string v1, "NotSquareSupersetEqual"

    const/16 v2, 0x22e3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1996
    const-string v1, "NotSubsetEqual"

    const/16 v2, 0x2288

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1997
    const-string v1, "NotSucceeds"

    const/16 v2, 0x2281

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1998
    const-string v1, "NotSucceedsSlantEqual"

    const/16 v2, 0x22e1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 1999
    const-string v1, "NotSupersetEqual"

    const/16 v2, 0x2289

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2000
    const-string v1, "NotTilde"

    const/16 v2, 0x2241

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2001
    const-string v1, "NotTildeEqual"

    const/16 v2, 0x2244

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2002
    const-string v1, "NotTildeFullEqual"

    const/16 v2, 0x2247

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2003
    const-string v1, "NotTildeTilde"

    const/16 v2, 0x2249

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2004
    const-string v1, "NotVerticalBar"

    const/16 v2, 0x2224

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2005
    const-string v1, "npar"

    const/16 v2, 0x2226

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2006
    const-string v1, "nparallel"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2007
    const-string v1, "npolint"

    const/16 v2, 0x2a14

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2008
    const-string v1, "npr"

    const/16 v2, 0x2280

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2009
    const-string v1, "nprcue"

    const/16 v2, 0x22e0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2010
    const-string v1, "nprec"

    const/16 v2, 0x2280

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2011
    const-string v1, "nrArr"

    const/16 v2, 0x21cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2012
    const-string v1, "nrarr"

    const/16 v2, 0x219b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2013
    const-string v1, "nRightarrow"

    const/16 v2, 0x21cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2014
    const-string v1, "nrightarrow"

    const/16 v2, 0x219b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2015
    const-string v1, "nrtri"

    const/16 v2, 0x22eb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2016
    const-string v1, "nrtrie"

    const/16 v2, 0x22ed

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2017
    const-string v1, "nsc"

    const/16 v2, 0x2281

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2018
    const-string v1, "nsccue"

    const/16 v2, 0x22e1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2019
    const-string v1, "Nscr"

    const v2, 0x1d4a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2020
    const-string v1, "nscr"

    const v2, 0x1d4c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2021
    const-string v1, "nshortmid"

    const/16 v2, 0x2224

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2022
    const-string v1, "nshortparallel"

    const/16 v2, 0x2226

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2023
    const-string v1, "nsim"

    const/16 v2, 0x2241

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2024
    const-string v1, "nsime"

    const/16 v2, 0x2244

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2025
    const-string v1, "nsimeq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2026
    const-string v1, "nsmid"

    const/16 v2, 0x2224

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2027
    const-string v1, "nspar"

    const/16 v2, 0x2226

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2028
    const-string v1, "nsqsube"

    const/16 v2, 0x22e2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2029
    const-string v1, "nsqsupe"

    const/16 v2, 0x22e3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2030
    const-string v1, "nsub"

    const/16 v2, 0x2284

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2031
    const-string v1, "nsube"

    const/16 v2, 0x2288

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2032
    const-string v1, "nsubseteq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2033
    const-string v1, "nsucc"

    const/16 v2, 0x2281

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2034
    const-string v1, "nsup"

    const/16 v2, 0x2285

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2035
    const-string v1, "nsupe"

    const/16 v2, 0x2289

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2036
    const-string v1, "nsupseteq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2037
    const-string v1, "ntgl"

    const/16 v2, 0x2279

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2038
    const-string v1, "Ntilde"

    const/16 v2, 0xd1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2039
    const-string v1, "ntilde"

    const/16 v2, 0xf1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2040
    const-string v1, "ntlg"

    const/16 v2, 0x2278

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2041
    const-string v1, "ntriangleleft"

    const/16 v2, 0x22ea

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2042
    const-string v1, "ntrianglelefteq"

    const/16 v2, 0x22ec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2043
    const-string v1, "ntriangleright"

    const/16 v2, 0x22eb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2044
    const-string v1, "ntrianglerighteq"

    const/16 v2, 0x22ed

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2045
    const-string v1, "Nu"

    const/16 v2, 0x39d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2046
    const-string v1, "nu"

    const/16 v2, 0x3bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2047
    const-string v1, "num"

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2048
    const-string v1, "numero"

    const/16 v2, 0x2116

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2049
    const-string v1, "numsp"

    const/16 v2, 0x2007

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2050
    const-string v1, "nVDash"

    const/16 v2, 0x22af

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2051
    const-string v1, "nVdash"

    const/16 v2, 0x22ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2052
    const-string v1, "nvDash"

    const/16 v2, 0x22ad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2053
    const-string v1, "nvdash"

    const/16 v2, 0x22ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2054
    const-string v1, "nvHarr"

    const/16 v2, 0x2904

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2055
    const-string v1, "nvinfin"

    const/16 v2, 0x29de

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2056
    const-string v1, "nvlArr"

    const/16 v2, 0x2902

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2057
    const-string v1, "nvrArr"

    const/16 v2, 0x2903

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2058
    const-string v1, "nwarhk"

    const/16 v2, 0x2923

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2059
    const-string v1, "nwArr"

    const/16 v2, 0x21d6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2060
    const-string v1, "nwarr"

    const/16 v2, 0x2196

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2061
    const-string v1, "nwarrow"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2062
    const-string v1, "nwnear"

    const/16 v2, 0x2927

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2063
    const-string v1, "Oacgr"

    const/16 v2, 0x38c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2064
    const-string v1, "oacgr"

    const/16 v2, 0x3cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2065
    const-string v1, "Oacute"

    const/16 v2, 0xd3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2066
    const-string v1, "oacute"

    const/16 v2, 0xf3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2067
    const-string v1, "oast"

    const/16 v2, 0x229b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2068
    const-string v1, "ocir"

    const/16 v2, 0x229a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2069
    const-string v1, "Ocirc"

    const/16 v2, 0xd4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2070
    const-string v1, "ocirc"

    const/16 v2, 0xf4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2071
    const-string v1, "Ocy"

    const/16 v2, 0x41e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2072
    const-string v1, "ocy"

    const/16 v2, 0x43e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2073
    const-string v1, "odash"

    const/16 v2, 0x229d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2074
    const-string v1, "Odblac"

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2075
    const-string v1, "odblac"

    const/16 v2, 0x151

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2076
    const-string v1, "odiv"

    const/16 v2, 0x2a38

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2077
    const-string v1, "odot"

    const/16 v2, 0x2299

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2078
    const-string v1, "odsold"

    const/16 v2, 0x29bc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2079
    const-string v1, "OElig"

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2080
    const-string v1, "oelig"

    const/16 v2, 0x153

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2081
    const-string v1, "ofcir"

    const/16 v2, 0x29bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2082
    const-string v1, "Ofr"

    const v2, 0x1d512

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2083
    const-string v1, "ofr"

    const v2, 0x1d52c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2084
    const-string v1, "ogon"

    const/16 v2, 0x2db

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2085
    const-string v1, "Ogr"

    const/16 v2, 0x39f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2086
    const-string v1, "ogr"

    const/16 v2, 0x3bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2087
    const-string v1, "Ograve"

    const/16 v2, 0xd2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2088
    const-string v1, "ograve"

    const/16 v2, 0xf2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2089
    const-string v1, "ogt"

    const/16 v2, 0x29c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2090
    const-string v1, "OHacgr"

    const/16 v2, 0x38f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2091
    const-string v1, "ohacgr"

    const/16 v2, 0x3ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2092
    const-string v1, "ohbar"

    const/16 v2, 0x29b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2093
    const-string v1, "OHgr"

    const/16 v2, 0x3a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2094
    const-string v1, "ohgr"

    const/16 v2, 0x3c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2095
    const-string v1, "ohm"

    const/16 v2, 0x2126

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2096
    const-string v1, "oint"

    const/16 v2, 0x222e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2097
    const-string v1, "olarr"

    const/16 v2, 0x21ba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2098
    const-string v1, "olcir"

    const/16 v2, 0x29be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2099
    const-string v1, "olcross"

    const/16 v2, 0x29bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2100
    const-string v1, "oline"

    const/16 v2, 0x203e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2101
    const-string v1, "olt"

    const/16 v2, 0x29c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2102
    const-string v1, "Omacr"

    const/16 v2, 0x14c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2103
    const-string v1, "omacr"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2104
    const-string v1, "Omega"

    const/16 v2, 0x3a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2105
    const-string v1, "omega"

    const/16 v2, 0x3c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2106
    const-string v1, "Omicron"

    const/16 v2, 0x39f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2107
    const-string v1, "omicron"

    const/16 v2, 0x3bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2108
    const-string v1, "omid"

    const/16 v2, 0x29b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2109
    const-string v1, "ominus"

    const/16 v2, 0x2296

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2110
    const-string v1, "Oopf"

    const v2, 0x1d546

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2111
    const-string v1, "oopf"

    const v2, 0x1d560

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2112
    const-string v1, "opar"

    const/16 v2, 0x29b7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2113
    const-string v1, "OpenCurlyDoubleQuote"

    const/16 v2, 0x201c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2114
    const-string v1, "OpenCurlyQuote"

    const/16 v2, 0x2018

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2115
    const-string v1, "operp"

    const/16 v2, 0x29b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2116
    const-string v1, "oplus"

    const/16 v2, 0x2295

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2117
    const-string v1, "Or"

    const/16 v2, 0x2a54

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2118
    const-string v1, "or"

    const/16 v2, 0x2228

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2119
    const-string v1, "orarr"

    const/16 v2, 0x21bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2120
    const-string v1, "ord"

    const/16 v2, 0x2a5d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2121
    const-string v1, "order"

    const/16 v2, 0x2134

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2122
    const-string v1, "orderof"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2123
    const-string v1, "ordf"

    const/16 v2, 0xaa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2124
    const-string v1, "ordm"

    const/16 v2, 0xba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2125
    const-string v1, "origof"

    const/16 v2, 0x22b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2126
    const-string v1, "oror"

    const/16 v2, 0x2a56

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2127
    const-string v1, "orslope"

    const/16 v2, 0x2a57

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2128
    const-string v1, "orv"

    const/16 v2, 0x2a5b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2129
    const-string v1, "oS"

    const/16 v2, 0x24c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2130
    const-string v1, "Oscr"

    const v2, 0x1d4aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2131
    const-string v1, "oscr"

    const/16 v2, 0x2134

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2132
    const-string v1, "Oslash"

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2133
    const-string v1, "oslash"

    const/16 v2, 0xf8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2134
    const-string v1, "osol"

    const/16 v2, 0x2298

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2135
    const-string v1, "Otilde"

    const/16 v2, 0xd5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2136
    const-string v1, "otilde"

    const/16 v2, 0xf5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2137
    const-string v1, "Otimes"

    const/16 v2, 0x2a37

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2138
    const-string v1, "otimes"

    const/16 v2, 0x2297

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2139
    const-string v1, "otimesas"

    const/16 v2, 0x2a36

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2140
    const-string v1, "Ouml"

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2141
    const-string v1, "ouml"

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2142
    const-string v1, "ovbar"

    const/16 v2, 0x233d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2143
    const-string v1, "OverBar"

    const/16 v2, 0xaf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2144
    const-string v1, "OverBrace"

    const v2, 0xfe37

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2145
    const-string v1, "OverBracket"

    const/16 v2, 0x23b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2146
    const-string v1, "OverParenthesis"

    const v2, 0xfe35

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2147
    const-string v1, "par"

    const/16 v2, 0x2225

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2148
    const-string v1, "para"

    const/16 v2, 0xb6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2149
    const-string v1, "parallel"

    const/16 v2, 0x2225

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2150
    const-string v1, "parsim"

    const/16 v2, 0x2af3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2151
    const-string v1, "parsl"

    const/16 v2, 0x2afd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2152
    const-string v1, "part"

    const/16 v2, 0x2202

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2153
    const-string v1, "PartialD"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2154
    const-string v1, "Pcy"

    const/16 v2, 0x41f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2155
    const-string v1, "pcy"

    const/16 v2, 0x43f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2156
    const-string v1, "percnt"

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2157
    const-string v1, "period"

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2158
    const-string v1, "permil"

    const/16 v2, 0x2030

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2159
    const-string v1, "perp"

    const/16 v2, 0x22a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2160
    const-string v1, "pertenk"

    const/16 v2, 0x2031

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2161
    const-string v1, "Pfr"

    const v2, 0x1d513

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2162
    const-string v1, "pfr"

    const v2, 0x1d52d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2163
    const-string v1, "Pgr"

    const/16 v2, 0x3a0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2164
    const-string v1, "pgr"

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2165
    const-string v1, "PHgr"

    const/16 v2, 0x3a6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2166
    const-string v1, "phgr"

    const/16 v2, 0x3c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2167
    const-string v1, "Phi"

    const/16 v2, 0x3a6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2168
    const-string v1, "phi"

    const/16 v2, 0x3d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2169
    const-string v1, "phiv"

    const/16 v2, 0x3c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2170
    const-string v1, "phmmat"

    const/16 v2, 0x2133

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2171
    const-string v1, "phone"

    const/16 v2, 0x260e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2172
    const-string v1, "Pi"

    const/16 v2, 0x3a0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2173
    const-string v1, "pi"

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2174
    const-string v1, "pitchfork"

    const/16 v2, 0x22d4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2175
    const-string v1, "piv"

    const/16 v2, 0x3d6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2176
    const-string v1, "planck"

    const/16 v2, 0x210f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2177
    const-string v1, "planckh"

    const/16 v2, 0x210e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2178
    const-string v1, "plankv"

    const/16 v2, 0x210f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2179
    const-string v1, "plus"

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2180
    const-string v1, "plusacir"

    const/16 v2, 0x2a23

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2181
    const-string v1, "plusb"

    const/16 v2, 0x229e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2182
    const-string v1, "pluscir"

    const/16 v2, 0x2a22

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2183
    const-string v1, "plusdo"

    const/16 v2, 0x2214

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2184
    const-string v1, "plusdu"

    const/16 v2, 0x2a25

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2185
    const-string v1, "pluse"

    const/16 v2, 0x2a72

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2186
    const-string v1, "PlusMinus"

    const/16 v2, 0xb1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2187
    const-string v1, "plusmn"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2188
    const-string v1, "plussim"

    const/16 v2, 0x2a26

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2189
    const-string v1, "plustwo"

    const/16 v2, 0x2a27

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2190
    const-string v1, "pm"

    const/16 v2, 0xb1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2191
    const-string v1, "Poincareplane"

    const/16 v2, 0x210c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2192
    const-string v1, "pointint"

    const/16 v2, 0x2a15

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2193
    const-string v1, "Popf"

    const/16 v2, 0x2119

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2194
    const-string v1, "popf"

    const v2, 0x1d561

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2195
    const-string v1, "pound"

    const/16 v2, 0xa3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2196
    const-string v1, "Pr"

    const/16 v2, 0x2abb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2197
    const-string v1, "pr"

    const/16 v2, 0x227a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2198
    const-string v1, "prap"

    const/16 v2, 0x2ab7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2199
    const-string v1, "prcue"

    const/16 v2, 0x227c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2200
    const-string v1, "prE"

    const/16 v2, 0x2ab3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2201
    const-string v1, "pre"

    const/16 v2, 0x2aaf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2202
    const-string v1, "prec"

    const/16 v2, 0x227a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2203
    const-string v1, "precapprox"

    const/16 v2, 0x2ab7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2204
    const-string v1, "preccurlyeq"

    const/16 v2, 0x227c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2205
    const-string v1, "Precedes"

    const/16 v2, 0x227a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2206
    const-string v1, "PrecedesEqual"

    const/16 v2, 0x2aaf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2207
    const-string v1, "PrecedesSlantEqual"

    const/16 v2, 0x227c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2208
    const-string v1, "PrecedesTilde"

    const/16 v2, 0x227e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2209
    const-string v1, "preceq"

    const/16 v2, 0x2aaf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2210
    const-string v1, "precnapprox"

    const/16 v2, 0x2ab9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2211
    const-string v1, "precneqq"

    const/16 v2, 0x2ab5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2212
    const-string v1, "precnsim"

    const/16 v2, 0x22e8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2213
    const-string v1, "precsim"

    const/16 v2, 0x227e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2214
    const-string v1, "Prime"

    const/16 v2, 0x2033

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2215
    const-string v1, "prime"

    const/16 v2, 0x2032

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2216
    const-string v1, "primes"

    const/16 v2, 0x2119

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2217
    const-string v1, "prnap"

    const/16 v2, 0x2ab9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2218
    const-string v1, "prnE"

    const/16 v2, 0x2ab5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2219
    const-string v1, "prnsim"

    const/16 v2, 0x22e8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2220
    const-string v1, "prod"

    const/16 v2, 0x220f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2221
    const-string v1, "Product"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2222
    const-string v1, "profalar"

    const/16 v2, 0x232e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2223
    const-string v1, "profline"

    const/16 v2, 0x2312

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2224
    const-string v1, "profsurf"

    const/16 v2, 0x2313

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2225
    const-string v1, "prop"

    const/16 v2, 0x221d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2226
    const-string v1, "Proportion"

    const/16 v2, 0x2237

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2227
    const-string v1, "Proportional"

    const/16 v2, 0x221d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2228
    const-string v1, "propto"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2229
    const-string v1, "prsim"

    const/16 v2, 0x227e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2230
    const-string v1, "prurel"

    const/16 v2, 0x22b0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2231
    const-string v1, "Pscr"

    const v2, 0x1d4ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2232
    const-string v1, "pscr"

    const v2, 0x1d4c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2233
    const-string v1, "PSgr"

    const/16 v2, 0x3a8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2234
    const-string v1, "psgr"

    const/16 v2, 0x3c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2235
    const-string v1, "Psi"

    const/16 v2, 0x3a8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2236
    const-string v1, "psi"

    const/16 v2, 0x3c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2237
    const-string v1, "puncsp"

    const/16 v2, 0x2008

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2238
    const-string v1, "Qfr"

    const v2, 0x1d514

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2239
    const-string v1, "qfr"

    const v2, 0x1d52e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2240
    const-string v1, "qint"

    const/16 v2, 0x2a0c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2241
    const-string v1, "Qopf"

    const/16 v2, 0x211a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2242
    const-string v1, "qopf"

    const v2, 0x1d562

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2243
    const-string v1, "qprime"

    const/16 v2, 0x2057

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2244
    const-string v1, "Qscr"

    const v2, 0x1d4ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2245
    const-string v1, "qscr"

    const v2, 0x1d4c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2246
    const-string v1, "quaternions"

    const/16 v2, 0x210d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2247
    const-string v1, "quatint"

    const/16 v2, 0x2a16

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2248
    const-string v1, "quest"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2249
    const-string v1, "questeq"

    const/16 v2, 0x225f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2250
    const-string v1, "quot"

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2251
    const-string v1, "rAarr"

    const/16 v2, 0x21db

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2252
    const-string v1, "race"

    const/16 v2, 0x29da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2253
    const-string v1, "Racute"

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2254
    const-string v1, "racute"

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2255
    const-string v1, "radic"

    const/16 v2, 0x221a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2256
    const-string v1, "raemptyv"

    const/16 v2, 0x29b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2257
    const-string v1, "Rang"

    const/16 v2, 0x27eb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2258
    const-string v1, "rang"

    const/16 v2, 0x232a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2259
    const-string v1, "rangd"

    const/16 v2, 0x2992

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2260
    const-string v1, "range"

    const/16 v2, 0x29a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2261
    const-string v1, "rangle"

    const/16 v2, 0x232a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2262
    const-string v1, "raquo"

    const/16 v2, 0xbb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2263
    const-string v1, "Rarr"

    const/16 v2, 0x21a0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2264
    const-string v1, "rArr"

    const/16 v2, 0x21d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2265
    const-string v1, "rarr"

    const/16 v2, 0x2192

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2266
    const-string v1, "rarrap"

    const/16 v2, 0x2975

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2267
    const-string v1, "rarrb"

    const/16 v2, 0x21e5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2268
    const-string v1, "rarrbfs"

    const/16 v2, 0x2920

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2269
    const-string v1, "rarrc"

    const/16 v2, 0x2933

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2270
    const-string v1, "rarrfs"

    const/16 v2, 0x291e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2271
    const-string v1, "rarrhk"

    const/16 v2, 0x21aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2272
    const-string v1, "rarrlp"

    const/16 v2, 0x21ac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2273
    const-string v1, "rarrpl"

    const/16 v2, 0x2945

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2274
    const-string v1, "rarrsim"

    const/16 v2, 0x2974

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2275
    const-string v1, "Rarrtl"

    const/16 v2, 0x2916

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2276
    const-string v1, "rarrtl"

    const/16 v2, 0x21a3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2277
    const-string v1, "rarrw"

    const/16 v2, 0x219d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2278
    const-string v1, "rAtail"

    const/16 v2, 0x291c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2279
    const-string v1, "ratail"

    const/16 v2, 0x291a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2280
    const-string v1, "ratio"

    const/16 v2, 0x2236

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2281
    const-string v1, "rationals"

    const/16 v2, 0x211a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2282
    const-string v1, "RBarr"

    const/16 v2, 0x2910

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2283
    const-string v1, "rBarr"

    const/16 v2, 0x290f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2284
    const-string v1, "rbarr"

    const/16 v2, 0x290d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2285
    const-string v1, "rbbrk"

    const/16 v2, 0x2998

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2286
    const-string v1, "rbrace"

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2287
    const-string v1, "rbrack"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2288
    const-string v1, "rbrke"

    const/16 v2, 0x298c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2289
    const-string v1, "rbrksld"

    const/16 v2, 0x298e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2290
    const-string v1, "rbrkslu"

    const/16 v2, 0x2990

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2291
    const-string v1, "Rcaron"

    const/16 v2, 0x158

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2292
    const-string v1, "rcaron"

    const/16 v2, 0x159

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2293
    const-string v1, "Rcedil"

    const/16 v2, 0x156

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2294
    const-string v1, "rcedil"

    const/16 v2, 0x157

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2295
    const-string v1, "rceil"

    const/16 v2, 0x2309

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2296
    const-string v1, "rcub"

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2297
    const-string v1, "Rcy"

    const/16 v2, 0x420

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2298
    const-string v1, "rcy"

    const/16 v2, 0x440

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2299
    const-string v1, "rdca"

    const/16 v2, 0x2937

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2300
    const-string v1, "rdldhar"

    const/16 v2, 0x2969

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2301
    const-string v1, "rdquo"

    const/16 v2, 0x201d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2302
    const-string v1, "rdquor"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2303
    const-string v1, "rdsh"

    const/16 v2, 0x21b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2304
    const-string v1, "Re"

    const/16 v2, 0x211c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2305
    const-string v1, "real"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2306
    const-string v1, "realine"

    const/16 v2, 0x211b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2307
    const-string v1, "realpart"

    const/16 v2, 0x211c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2308
    const-string v1, "reals"

    const/16 v2, 0x211d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2309
    const-string v1, "rect"

    const/16 v2, 0x25ad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2310
    const-string v1, "reg"

    const/16 v2, 0xae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2311
    const-string v1, "ReverseElement"

    const/16 v2, 0x220b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2312
    const-string v1, "ReverseEquilibrium"

    const/16 v2, 0x21cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2313
    const-string v1, "ReverseUpEquilibrium"

    const/16 v2, 0x296f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2314
    const-string v1, "rfisht"

    const/16 v2, 0x297d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2315
    const-string v1, "rfloor"

    const/16 v2, 0x230b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2316
    const-string v1, "Rfr"

    const/16 v2, 0x211c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2317
    const-string v1, "rfr"

    const v2, 0x1d52f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2318
    const-string v1, "Rgr"

    const/16 v2, 0x3a1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2319
    const-string v1, "rgr"

    const/16 v2, 0x3c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2320
    const-string v1, "rHar"

    const/16 v2, 0x2964

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2321
    const-string v1, "rhard"

    const/16 v2, 0x21c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2322
    const-string v1, "rharu"

    const/16 v2, 0x21c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2323
    const-string v1, "rharul"

    const/16 v2, 0x296c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2324
    const-string v1, "Rho"

    const/16 v2, 0x3a1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2325
    const-string v1, "rho"

    const/16 v2, 0x3c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2326
    const-string v1, "rhov"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2327
    const-string v1, "RightAngleBracket"

    const/16 v2, 0x232a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2328
    const-string v1, "Rightarrow"

    const/16 v2, 0x21d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2329
    const-string v1, "rightarrow"

    const/16 v2, 0x2192

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2330
    const-string v1, "RightArrowBar"

    const/16 v2, 0x21e5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2331
    const-string v1, "RightArrowLeftArrow"

    const/16 v2, 0x21c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2332
    const-string v1, "rightarrowtail"

    const/16 v2, 0x21a3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2333
    const-string v1, "RightCeiling"

    const/16 v2, 0x2309

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2334
    const-string v1, "RightDoubleBracket"

    const/16 v2, 0x27e7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2335
    const-string v1, "RightDownTeeVector"

    const/16 v2, 0x295d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2336
    const-string v1, "RightDownVector"

    const/16 v2, 0x21c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2337
    const-string v1, "RightDownVectorBar"

    const/16 v2, 0x2955

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2338
    const-string v1, "RightFloor"

    const/16 v2, 0x230b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2339
    const-string v1, "rightharpoondown"

    const/16 v2, 0x21c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2340
    const-string v1, "rightharpoonup"

    const/16 v2, 0x21c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2341
    const-string v1, "rightleftarrows"

    const/16 v2, 0x21c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2342
    const-string v1, "rightleftharpoons"

    const/16 v2, 0x21cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2343
    const-string v1, "rightrightarrows"

    const/16 v2, 0x21c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2344
    const-string v1, "rightsquigarrow"

    const/16 v2, 0x219d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2345
    const-string v1, "RightTee"

    const/16 v2, 0x22a2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2346
    const-string v1, "RightTeeArrow"

    const/16 v2, 0x21a6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2347
    const-string v1, "RightTeeVector"

    const/16 v2, 0x295b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2348
    const-string v1, "rightthreetimes"

    const/16 v2, 0x22cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2349
    const-string v1, "RightTriangle"

    const/16 v2, 0x22b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2350
    const-string v1, "RightTriangleBar"

    const/16 v2, 0x29d0    # 1.5E-41f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2351
    const-string v1, "RightTriangleEqual"

    const/16 v2, 0x22b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2352
    const-string v1, "RightUpDownVector"

    const/16 v2, 0x294f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2353
    const-string v1, "RightUpTeeVector"

    const/16 v2, 0x295c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2354
    const-string v1, "RightUpVector"

    const/16 v2, 0x21be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2355
    const-string v1, "RightUpVectorBar"

    const/16 v2, 0x2954

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2356
    const-string v1, "RightVector"

    const/16 v2, 0x21c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2357
    const-string v1, "RightVectorBar"

    const/16 v2, 0x2953

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2358
    const-string v1, "ring"

    const/16 v2, 0x2da

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2359
    const-string v1, "risingdotseq"

    const/16 v2, 0x2253

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2360
    const-string v1, "rlarr"

    const/16 v2, 0x21c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2361
    const-string v1, "rlhar"

    const/16 v2, 0x21cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2362
    const-string v1, "rlm"

    const/16 v2, 0x200f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2363
    const-string v1, "rmoust"

    const/16 v2, 0x23b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2364
    const-string v1, "rmoustache"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2365
    const-string v1, "rnmid"

    const/16 v2, 0x2aee

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2366
    const-string v1, "roang"

    const/16 v2, 0x27ed

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2367
    const-string v1, "roarr"

    const/16 v2, 0x21fe

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2368
    const-string v1, "robrk"

    const/16 v2, 0x27e7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2369
    const-string v1, "ropar"

    const/16 v2, 0x2986

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2370
    const-string v1, "Ropf"

    const/16 v2, 0x211d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2371
    const-string v1, "ropf"

    const v2, 0x1d563

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2372
    const-string v1, "roplus"

    const/16 v2, 0x2a2e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2373
    const-string v1, "rotimes"

    const/16 v2, 0x2a35

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2374
    const-string v1, "RoundImplies"

    const/16 v2, 0x2970

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2375
    const-string v1, "rpar"

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2376
    const-string v1, "rpargt"

    const/16 v2, 0x2994

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2377
    const-string v1, "rppolint"

    const/16 v2, 0x2a12

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2378
    const-string v1, "rrarr"

    const/16 v2, 0x21c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2379
    const-string v1, "Rrightarrow"

    const/16 v2, 0x21db

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2380
    const-string v1, "rsaquo"

    const/16 v2, 0x203a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2381
    const-string v1, "Rscr"

    const/16 v2, 0x211b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2382
    const-string v1, "rscr"

    const v2, 0x1d4c7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2383
    const-string v1, "rsh"

    const/16 v2, 0x21b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2384
    const-string v1, "rsqb"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2385
    const-string v1, "rsquo"

    const/16 v2, 0x2019

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2386
    const-string v1, "rsquor"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2387
    const-string v1, "rthree"

    const/16 v2, 0x22cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2388
    const-string v1, "rtimes"

    const/16 v2, 0x22ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2389
    const-string v1, "rtri"

    const/16 v2, 0x25b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2390
    const-string v1, "rtrie"

    const/16 v2, 0x22b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2391
    const-string v1, "rtrif"

    const/16 v2, 0x25b8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2392
    const-string v1, "rtriltri"

    const/16 v2, 0x29ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2393
    const-string v1, "RuleDelayed"

    const/16 v2, 0x29f4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2394
    const-string v1, "ruluhar"

    const/16 v2, 0x2968

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2395
    const-string v1, "rx"

    const/16 v2, 0x211e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2396
    const-string v1, "Sacute"

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2397
    const-string v1, "sacute"

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2398
    const-string v1, "sbquo"

    const/16 v2, 0x201a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2399
    const-string v1, "Sc"

    const/16 v2, 0x2abc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2400
    const-string v1, "sc"

    const/16 v2, 0x227b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2401
    const-string v1, "scap"

    const/16 v2, 0x2ab8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2402
    const-string v1, "Scaron"

    const/16 v2, 0x160

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2403
    const-string v1, "scaron"

    const/16 v2, 0x161

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2404
    const-string v1, "sccue"

    const/16 v2, 0x227d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2405
    const-string v1, "scE"

    const/16 v2, 0x2ab4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2406
    const-string v1, "sce"

    const/16 v2, 0x2ab0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2407
    const-string v1, "Scedil"

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2408
    const-string v1, "scedil"

    const/16 v2, 0x15f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2409
    const-string v1, "Scirc"

    const/16 v2, 0x15c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2410
    const-string v1, "scirc"

    const/16 v2, 0x15d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2411
    const-string v1, "scnap"

    const/16 v2, 0x2aba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2412
    const-string v1, "scnE"

    const/16 v2, 0x2ab6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2413
    const-string v1, "scnsim"

    const/16 v2, 0x22e9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2414
    const-string v1, "scpolint"

    const/16 v2, 0x2a13

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2415
    const-string v1, "scsim"

    const/16 v2, 0x227f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2416
    const-string v1, "Scy"

    const/16 v2, 0x421

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2417
    const-string v1, "scy"

    const/16 v2, 0x441

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2418
    const-string v1, "sdot"

    const/16 v2, 0x22c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2419
    const-string v1, "sdotb"

    const/16 v2, 0x22a1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2420
    const-string v1, "sdote"

    const/16 v2, 0x2a66

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2421
    const-string v1, "searhk"

    const/16 v2, 0x2925

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2422
    const-string v1, "seArr"

    const/16 v2, 0x21d8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2423
    const-string v1, "searr"

    const/16 v2, 0x2198

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2424
    const-string v1, "searrow"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2425
    const-string v1, "sect"

    const/16 v2, 0xa7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2426
    const-string v1, "semi"

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2427
    const-string v1, "seswar"

    const/16 v2, 0x2929

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2428
    const-string v1, "setminus"

    const/16 v2, 0x2216

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2429
    const-string v1, "setmn"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2430
    const-string v1, "sext"

    const/16 v2, 0x2736

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2431
    const-string v1, "sfgr"

    const/16 v2, 0x3c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2432
    const-string v1, "Sfr"

    const v2, 0x1d516

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2433
    const-string v1, "sfr"

    const v2, 0x1d530

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2434
    const-string v1, "sfrown"

    const/16 v2, 0x2322

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2435
    const-string v1, "Sgr"

    const/16 v2, 0x3a3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2436
    const-string v1, "sgr"

    const/16 v2, 0x3c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2437
    const-string v1, "sharp"

    const/16 v2, 0x266f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2438
    const-string v1, "SHCHcy"

    const/16 v2, 0x429

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2439
    const-string v1, "shchcy"

    const/16 v2, 0x449

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2440
    const-string v1, "SHcy"

    const/16 v2, 0x428

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2441
    const-string v1, "shcy"

    const/16 v2, 0x448

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2442
    const-string v1, "ShortDownArrow"

    const/16 v2, 0x2193

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2443
    const-string v1, "ShortLeftArrow"

    const/16 v2, 0x2190

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2444
    const-string v1, "shortmid"

    const/16 v2, 0x2223

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2445
    const-string v1, "shortparallel"

    const/16 v2, 0x2225

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2446
    const-string v1, "ShortRightArrow"

    const/16 v2, 0x2192

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2447
    const-string v1, "ShortUpArrow"

    const/16 v2, 0x2191

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2448
    const-string v1, "shy"

    const/16 v2, 0xad

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2449
    const-string v1, "Sigma"

    const/16 v2, 0x3a3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2450
    const-string v1, "sigma"

    const/16 v2, 0x3c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2451
    const-string v1, "sigmaf"

    const/16 v2, 0x3c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2452
    const-string v1, "sigmav"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2453
    const-string v1, "sim"

    const/16 v2, 0x223c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2454
    const-string v1, "simdot"

    const/16 v2, 0x2a6a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2455
    const-string v1, "sime"

    const/16 v2, 0x2243

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2456
    const-string v1, "simeq"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2457
    const-string v1, "simg"

    const/16 v2, 0x2a9e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2458
    const-string v1, "simgE"

    const/16 v2, 0x2aa0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2459
    const-string v1, "siml"

    const/16 v2, 0x2a9d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2460
    const-string v1, "simlE"

    const/16 v2, 0x2a9f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2461
    const-string v1, "simne"

    const/16 v2, 0x2246

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2462
    const-string v1, "simplus"

    const/16 v2, 0x2a24

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2463
    const-string v1, "simrarr"

    const/16 v2, 0x2972

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2464
    const-string v1, "slarr"

    const/16 v2, 0x2190

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2465
    const-string v1, "SmallCircle"

    const/16 v2, 0x2218

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2466
    const-string v1, "smallsetminus"

    const/16 v2, 0x2216

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2467
    const-string v1, "smashp"

    const/16 v2, 0x2a33

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2468
    const-string v1, "smeparsl"

    const/16 v2, 0x29e4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2469
    const-string v1, "smid"

    const/16 v2, 0x2223

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2470
    const-string v1, "smile"

    const/16 v2, 0x2323

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2471
    const-string v1, "smt"

    const/16 v2, 0x2aaa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2472
    const-string v1, "smte"

    const/16 v2, 0x2aac

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2473
    const-string v1, "SOFTcy"

    const/16 v2, 0x42c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2474
    const-string v1, "softcy"

    const/16 v2, 0x44c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2475
    const-string v1, "sol"

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2476
    const-string v1, "solb"

    const/16 v2, 0x29c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2477
    const-string v1, "solbar"

    const/16 v2, 0x233f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2478
    const-string v1, "Sopf"

    const v2, 0x1d54a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2479
    const-string v1, "sopf"

    const v2, 0x1d564

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2480
    const-string v1, "spades"

    const/16 v2, 0x2660

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2481
    const-string v1, "spadesuit"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2482
    const-string v1, "spar"

    const/16 v2, 0x2225

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2483
    const-string v1, "sqcap"

    const/16 v2, 0x2293

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2484
    const-string v1, "sqcup"

    const/16 v2, 0x2294

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2485
    const-string v1, "Sqrt"

    const/16 v2, 0x221a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2486
    const-string v1, "sqsub"

    const/16 v2, 0x228f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2487
    const-string v1, "sqsube"

    const/16 v2, 0x2291

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2488
    const-string v1, "sqsubset"

    const/16 v2, 0x228f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2489
    const-string v1, "sqsubseteq"

    const/16 v2, 0x2291

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2490
    const-string v1, "sqsup"

    const/16 v2, 0x2290

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2491
    const-string v1, "sqsupe"

    const/16 v2, 0x2292

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2492
    const-string v1, "sqsupset"

    const/16 v2, 0x2290

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2493
    const-string v1, "sqsupseteq"

    const/16 v2, 0x2292

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2494
    const-string v1, "squ"

    const/16 v2, 0x25a1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2495
    const-string v1, "square"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2496
    const-string v1, "SquareIntersection"

    const/16 v2, 0x2293

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2497
    const-string v1, "SquareSubset"

    const/16 v2, 0x228f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2498
    const-string v1, "SquareSubsetEqual"

    const/16 v2, 0x2291

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2499
    const-string v1, "SquareSuperset"

    const/16 v2, 0x2290

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2500
    const-string v1, "SquareSupersetEqual"

    const/16 v2, 0x2292

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2501
    const-string v1, "SquareUnion"

    const/16 v2, 0x2294

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2502
    const-string v1, "squarf"

    const/16 v2, 0x25aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2503
    const-string v1, "squf"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2504
    const-string v1, "srarr"

    const/16 v2, 0x2192

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2505
    const-string v1, "Sscr"

    const v2, 0x1d4ae

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2506
    const-string v1, "sscr"

    const v2, 0x1d4c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2507
    const-string v1, "ssetmn"

    const/16 v2, 0x2216

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2508
    const-string v1, "ssmile"

    const/16 v2, 0x2323

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2509
    const-string v1, "sstarf"

    const/16 v2, 0x22c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2510
    const-string v1, "Star"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2511
    const-string v1, "star"

    const/16 v2, 0x2606

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2512
    const-string v1, "starf"

    const/16 v2, 0x2605

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2513
    const-string v1, "straightepsilon"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2514
    const-string v1, "straightphi"

    const/16 v2, 0x3d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2515
    const-string v1, "strns"

    const/16 v2, 0xaf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2516
    const-string v1, "Sub"

    const/16 v2, 0x22d0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2517
    const-string v1, "sub"

    const/16 v2, 0x2282

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2518
    const-string v1, "subdot"

    const/16 v2, 0x2abd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2519
    const-string v1, "subE"

    const/16 v2, 0x2ac5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2520
    const-string v1, "sube"

    const/16 v2, 0x2286

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2521
    const-string v1, "subedot"

    const/16 v2, 0x2ac3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2522
    const-string v1, "submult"

    const/16 v2, 0x2ac1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2523
    const-string v1, "subnE"

    const/16 v2, 0x2acb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2524
    const-string v1, "subne"

    const/16 v2, 0x228a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2525
    const-string v1, "subplus"

    const/16 v2, 0x2abf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2526
    const-string v1, "subrarr"

    const/16 v2, 0x2979

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2527
    const-string v1, "Subset"

    const/16 v2, 0x22d0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2528
    const-string v1, "subset"

    const/16 v2, 0x2282

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2529
    const-string v1, "subseteq"

    const/16 v2, 0x2286

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2530
    const-string v1, "subseteqq"

    const/16 v2, 0x2ac5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2531
    const-string v1, "SubsetEqual"

    const/16 v2, 0x2286

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2532
    const-string v1, "subsetneq"

    const/16 v2, 0x228a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2533
    const-string v1, "subsetneqq"

    const/16 v2, 0x2acb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2534
    const-string v1, "subsim"

    const/16 v2, 0x2ac7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2535
    const-string v1, "subsub"

    const/16 v2, 0x2ad5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2536
    const-string v1, "subsup"

    const/16 v2, 0x2ad3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2537
    const-string v1, "succ"

    const/16 v2, 0x227b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2538
    const-string v1, "succapprox"

    const/16 v2, 0x2ab8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2539
    const-string v1, "succcurlyeq"

    const/16 v2, 0x227d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2540
    const-string v1, "Succeeds"

    const/16 v2, 0x227b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2541
    const-string v1, "SucceedsEqual"

    const/16 v2, 0x2ab0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2542
    const-string v1, "SucceedsSlantEqual"

    const/16 v2, 0x227d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2543
    const-string v1, "SucceedsTilde"

    const/16 v2, 0x227f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2544
    const-string v1, "succeq"

    const/16 v2, 0x2ab0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2545
    const-string v1, "succnapprox"

    const/16 v2, 0x2aba

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2546
    const-string v1, "succneqq"

    const/16 v2, 0x2ab6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2547
    const-string v1, "succnsim"

    const/16 v2, 0x22e9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2548
    const-string v1, "succsim"

    const/16 v2, 0x227f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2549
    const-string v1, "SuchThat"

    const/16 v2, 0x220b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2550
    const-string v1, "sum"

    const/16 v2, 0x2211

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2551
    const-string v1, "sung"

    const/16 v2, 0x266a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2552
    const-string v1, "Sup"

    const/16 v2, 0x22d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2553
    const-string v1, "sup"

    const/16 v2, 0x2283

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2554
    const-string v1, "sup1"

    const/16 v2, 0xb9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2555
    const-string v1, "sup2"

    const/16 v2, 0xb2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2556
    const-string v1, "sup3"

    const/16 v2, 0xb3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2557
    const-string v1, "supdot"

    const/16 v2, 0x2abe

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2558
    const-string v1, "supdsub"

    const/16 v2, 0x2ad8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2559
    const-string v1, "supE"

    const/16 v2, 0x2ac6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2560
    const-string v1, "supe"

    const/16 v2, 0x2287

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2561
    const-string v1, "supedot"

    const/16 v2, 0x2ac4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2562
    const-string v1, "Superset"

    const/16 v2, 0x2283

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2563
    const-string v1, "SupersetEqual"

    const/16 v2, 0x2287

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2564
    const-string v1, "suphsub"

    const/16 v2, 0x2ad7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2565
    const-string v1, "suplarr"

    const/16 v2, 0x297b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2566
    const-string v1, "supmult"

    const/16 v2, 0x2ac2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2567
    const-string v1, "supnE"

    const/16 v2, 0x2acc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2568
    const-string v1, "supne"

    const/16 v2, 0x228b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2569
    const-string v1, "supplus"

    const/16 v2, 0x2ac0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2570
    const-string v1, "Supset"

    const/16 v2, 0x22d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2571
    const-string v1, "supset"

    const/16 v2, 0x2283

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2572
    const-string v1, "supseteq"

    const/16 v2, 0x2287

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2573
    const-string v1, "supseteqq"

    const/16 v2, 0x2ac6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2574
    const-string v1, "supsetneq"

    const/16 v2, 0x228b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2575
    const-string v1, "supsetneqq"

    const/16 v2, 0x2acc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2576
    const-string v1, "supsim"

    const/16 v2, 0x2ac8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2577
    const-string v1, "supsub"

    const/16 v2, 0x2ad4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2578
    const-string v1, "supsup"

    const/16 v2, 0x2ad6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2579
    const-string v1, "swarhk"

    const/16 v2, 0x2926

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2580
    const-string v1, "swArr"

    const/16 v2, 0x21d9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2581
    const-string v1, "swarr"

    const/16 v2, 0x2199

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2582
    const-string v1, "swarrow"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2583
    const-string v1, "swnwar"

    const/16 v2, 0x292a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2584
    const-string v1, "szlig"

    const/16 v2, 0xdf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2585
    const-string v1, "Tab"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2586
    const-string v1, "target"

    const/16 v2, 0x2316

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2587
    const-string v1, "Tau"

    const/16 v2, 0x3a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2588
    const-string v1, "tau"

    const/16 v2, 0x3c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2589
    const-string v1, "tbrk"

    const/16 v2, 0x23b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2590
    const-string v1, "Tcaron"

    const/16 v2, 0x164

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2591
    const-string v1, "tcaron"

    const/16 v2, 0x165

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2592
    const-string v1, "Tcedil"

    const/16 v2, 0x162

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2593
    const-string v1, "tcedil"

    const/16 v2, 0x163

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2594
    const-string v1, "Tcy"

    const/16 v2, 0x422

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2595
    const-string v1, "tcy"

    const/16 v2, 0x442

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2596
    const-string v1, "telrec"

    const/16 v2, 0x2315

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2597
    const-string v1, "Tfr"

    const v2, 0x1d517

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2598
    const-string v1, "tfr"

    const v2, 0x1d531

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2599
    const-string v1, "Tgr"

    const/16 v2, 0x3a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2600
    const-string v1, "tgr"

    const/16 v2, 0x3c4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2601
    const-string v1, "there4"

    const/16 v2, 0x2234

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2602
    const-string v1, "therefore"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2603
    const-string v1, "Theta"

    const/16 v2, 0x398

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2604
    const-string v1, "theta"

    const/16 v2, 0x3b8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2605
    const-string v1, "thetasym"

    const/16 v2, 0x3d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2606
    const-string v1, "thetav"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2607
    const-string v1, "THgr"

    const/16 v2, 0x398

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2608
    const-string v1, "thgr"

    const/16 v2, 0x3b8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2609
    const-string v1, "thickapprox"

    const/16 v2, 0x2248

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2610
    const-string v1, "thicksim"

    const/16 v2, 0x223c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2611
    const-string v1, "thinsp"

    const/16 v2, 0x2009

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2612
    const-string v1, "ThinSpace"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2613
    const-string v1, "thkap"

    const/16 v2, 0x2248

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2614
    const-string v1, "thksim"

    const/16 v2, 0x223c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2615
    const-string v1, "THORN"

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2616
    const-string v1, "thorn"

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2617
    const-string v1, "Tilde"

    const/16 v2, 0x223c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2618
    const-string v1, "tilde"

    const/16 v2, 0x2dc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2619
    const-string v1, "TildeEqual"

    const/16 v2, 0x2243

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2620
    const-string v1, "TildeFullEqual"

    const/16 v2, 0x2245

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2621
    const-string v1, "TildeTilde"

    const/16 v2, 0x2248

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2622
    const-string v1, "times"

    const/16 v2, 0xd7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2623
    const-string v1, "timesb"

    const/16 v2, 0x22a0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2624
    const-string v1, "timesbar"

    const/16 v2, 0x2a31

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2625
    const-string v1, "timesd"

    const/16 v2, 0x2a30

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2626
    const-string v1, "tint"

    const/16 v2, 0x222d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2627
    const-string v1, "toea"

    const/16 v2, 0x2928

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2628
    const-string v1, "top"

    const/16 v2, 0x22a4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2629
    const-string v1, "topbot"

    const/16 v2, 0x2336

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2630
    const-string v1, "topcir"

    const/16 v2, 0x2af1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2631
    const-string v1, "Topf"

    const v2, 0x1d54b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2632
    const-string v1, "topf"

    const v2, 0x1d565

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2633
    const-string v1, "topfork"

    const/16 v2, 0x2ada

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2634
    const-string v1, "tosa"

    const/16 v2, 0x2929

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2635
    const-string v1, "tprime"

    const/16 v2, 0x2034

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2636
    const-string v1, "trade"

    const/16 v2, 0x2122

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2637
    const-string v1, "triangle"

    const/16 v2, 0x25b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2638
    const-string v1, "triangledown"

    const/16 v2, 0x25bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2639
    const-string v1, "triangleleft"

    const/16 v2, 0x25c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2640
    const-string v1, "trianglelefteq"

    const/16 v2, 0x22b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2641
    const-string v1, "triangleq"

    const/16 v2, 0x225c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2642
    const-string v1, "triangleright"

    const/16 v2, 0x25b9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2643
    const-string v1, "trianglerighteq"

    const/16 v2, 0x22b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2644
    const-string v1, "tridot"

    const/16 v2, 0x25ec

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2645
    const-string v1, "trie"

    const/16 v2, 0x225c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2646
    const-string v1, "triminus"

    const/16 v2, 0x2a3a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2647
    const-string v1, "triplus"

    const/16 v2, 0x2a39

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2648
    const-string v1, "trisb"

    const/16 v2, 0x29cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2649
    const-string v1, "tritime"

    const/16 v2, 0x2a3b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2650
    const-string v1, "trpezium"

    const/16 v2, 0x23e2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2651
    const-string v1, "Tscr"

    const v2, 0x1d4af

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2652
    const-string v1, "tscr"

    const v2, 0x1d4c9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2653
    const-string v1, "TScy"

    const/16 v2, 0x426

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2654
    const-string v1, "tscy"

    const/16 v2, 0x446

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2655
    const-string v1, "TSHcy"

    const/16 v2, 0x40b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2656
    const-string v1, "tshcy"

    const/16 v2, 0x45b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2657
    const-string v1, "Tstrok"

    const/16 v2, 0x166

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2658
    const-string v1, "tstrok"

    const/16 v2, 0x167

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2659
    const-string v1, "twixt"

    const/16 v2, 0x226c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2660
    const-string v1, "twoheadleftarrow"

    const/16 v2, 0x219e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2661
    const-string v1, "twoheadrightarrow"

    const/16 v2, 0x21a0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2662
    const-string v1, "Uacgr"

    const/16 v2, 0x38e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2663
    const-string v1, "uacgr"

    const/16 v2, 0x3cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2664
    const-string v1, "Uacute"

    const/16 v2, 0xda

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2665
    const-string v1, "uacute"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2666
    const-string v1, "Uarr"

    const/16 v2, 0x219f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2667
    const-string v1, "uArr"

    const/16 v2, 0x21d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2668
    const-string v1, "uarr"

    const/16 v2, 0x2191

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2669
    const-string v1, "Uarrocir"

    const/16 v2, 0x2949

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2670
    const-string v1, "Ubrcy"

    const/16 v2, 0x40e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2671
    const-string v1, "ubrcy"

    const/16 v2, 0x45e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2672
    const-string v1, "Ubreve"

    const/16 v2, 0x16c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2673
    const-string v1, "ubreve"

    const/16 v2, 0x16d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2674
    const-string v1, "Ucirc"

    const/16 v2, 0xdb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2675
    const-string v1, "ucirc"

    const/16 v2, 0xfb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2676
    const-string v1, "Ucy"

    const/16 v2, 0x423

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2677
    const-string v1, "ucy"

    const/16 v2, 0x443

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2678
    const-string v1, "udarr"

    const/16 v2, 0x21c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2679
    const-string v1, "Udblac"

    const/16 v2, 0x170

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2680
    const-string v1, "udblac"

    const/16 v2, 0x171

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2681
    const-string v1, "udhar"

    const/16 v2, 0x296e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2682
    const-string v1, "udiagr"

    const/16 v2, 0x3b0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2683
    const-string v1, "Udigr"

    const/16 v2, 0x3ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2684
    const-string v1, "udigr"

    const/16 v2, 0x3cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2685
    const-string v1, "ufisht"

    const/16 v2, 0x297e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2686
    const-string v1, "Ufr"

    const v2, 0x1d518

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2687
    const-string v1, "ufr"

    const v2, 0x1d532

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2688
    const-string v1, "Ugr"

    const/16 v2, 0x3a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2689
    const-string v1, "ugr"

    const/16 v2, 0x3c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2690
    const-string v1, "Ugrave"

    const/16 v2, 0xd9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2691
    const-string v1, "ugrave"

    const/16 v2, 0xf9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2692
    const-string v1, "uHar"

    const/16 v2, 0x2963

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2693
    const-string v1, "uharl"

    const/16 v2, 0x21bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2694
    const-string v1, "uharr"

    const/16 v2, 0x21be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2695
    const-string v1, "uhblk"

    const/16 v2, 0x2580

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2696
    const-string v1, "ulcorn"

    const/16 v2, 0x231c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2697
    const-string v1, "ulcorner"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2698
    const-string v1, "ulcrop"

    const/16 v2, 0x230f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2699
    const-string v1, "ultri"

    const/16 v2, 0x25f8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2700
    const-string v1, "Umacr"

    const/16 v2, 0x16a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2701
    const-string v1, "umacr"

    const/16 v2, 0x16b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2702
    const-string v1, "uml"

    const/16 v2, 0xa8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2703
    const-string v1, "UnderBrace"

    const v2, 0xfe38

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2704
    const-string v1, "UnderBracket"

    const/16 v2, 0x23b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2705
    const-string v1, "UnderParenthesis"

    const v2, 0xfe36

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2706
    const-string v1, "Union"

    const/16 v2, 0x22c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2707
    const-string v1, "UnionPlus"

    const/16 v2, 0x228e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2708
    const-string v1, "Uogon"

    const/16 v2, 0x172

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2709
    const-string v1, "uogon"

    const/16 v2, 0x173

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2710
    const-string v1, "Uopf"

    const v2, 0x1d54c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2711
    const-string v1, "uopf"

    const v2, 0x1d566

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2712
    const-string v1, "Uparrow"

    const/16 v2, 0x21d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2713
    const-string v1, "uparrow"

    const/16 v2, 0x2191

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2714
    const-string v1, "UpArrowBar"

    const/16 v2, 0x2912

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2715
    const-string v1, "UpArrowDownArrow"

    const/16 v2, 0x21c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2716
    const-string v1, "Updownarrow"

    const/16 v2, 0x21d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2717
    const-string v1, "updownarrow"

    const/16 v2, 0x2195

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2718
    const-string v1, "UpEquilibrium"

    const/16 v2, 0x296e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2719
    const-string v1, "upharpoonleft"

    const/16 v2, 0x21bf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2720
    const-string v1, "upharpoonright"

    const/16 v2, 0x21be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2721
    const-string v1, "uplus"

    const/16 v2, 0x228e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2722
    const-string v1, "UpperLeftArrow"

    const/16 v2, 0x2196

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2723
    const-string v1, "UpperRightArrow"

    const/16 v2, 0x2197

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2724
    const-string v1, "Upsi"

    const/16 v2, 0x3d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2725
    const-string v1, "upsi"

    const/16 v2, 0x3c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2726
    const-string v1, "upsih"

    const/16 v2, 0x3d2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2727
    const-string v1, "Upsilon"

    const/16 v2, 0x3a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2728
    const-string v1, "upsilon"

    const/16 v2, 0x3c5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2729
    const-string v1, "UpTee"

    const/16 v2, 0x22a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2730
    const-string v1, "UpTeeArrow"

    const/16 v2, 0x21a5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2731
    const-string v1, "upuparrows"

    const/16 v2, 0x21c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2732
    const-string v1, "urcorn"

    const/16 v2, 0x231d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2733
    const-string v1, "urcorner"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2734
    const-string v1, "urcrop"

    const/16 v2, 0x230e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2735
    const-string v1, "Uring"

    const/16 v2, 0x16e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2736
    const-string v1, "uring"

    const/16 v2, 0x16f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2737
    const-string v1, "urtri"

    const/16 v2, 0x25f9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2738
    const-string v1, "Uscr"

    const v2, 0x1d4b0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2739
    const-string v1, "uscr"

    const v2, 0x1d4ca

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2740
    const-string v1, "utdot"

    const/16 v2, 0x22f0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2741
    const-string v1, "Utilde"

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2742
    const-string v1, "utilde"

    const/16 v2, 0x169

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2743
    const-string v1, "utri"

    const/16 v2, 0x25b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2744
    const-string v1, "utrif"

    const/16 v2, 0x25b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2745
    const-string v1, "uuarr"

    const/16 v2, 0x21c8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2746
    const-string v1, "Uuml"

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2747
    const-string v1, "uuml"

    const/16 v2, 0xfc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2748
    const-string v1, "uwangle"

    const/16 v2, 0x29a7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2749
    const-string v1, "vangrt"

    const/16 v2, 0x299c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2750
    const-string v1, "varepsilon"

    const/16 v2, 0x3b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2751
    const-string v1, "varkappa"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2752
    const-string v1, "varnothing"

    const/16 v2, 0x2205

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2753
    const-string v1, "varphi"

    const/16 v2, 0x3c6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2754
    const-string v1, "varpi"

    const/16 v2, 0x3d6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2755
    const-string v1, "varpropto"

    const/16 v2, 0x221d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2756
    const-string v1, "vArr"

    const/16 v2, 0x21d5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2757
    const-string v1, "varr"

    const/16 v2, 0x2195

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2758
    const-string v1, "varrho"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2759
    const-string v1, "varsigma"

    const/16 v2, 0x3c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2760
    const-string v1, "vartheta"

    const/16 v2, 0x3d1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2761
    const-string v1, "vartriangleleft"

    const/16 v2, 0x22b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2762
    const-string v1, "vartriangleright"

    const/16 v2, 0x22b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2763
    const-string v1, "Vbar"

    const/16 v2, 0x2aeb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2764
    const-string v1, "vBar"

    const/16 v2, 0x2ae8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2765
    const-string v1, "vBarv"

    const/16 v2, 0x2ae9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2766
    const-string v1, "Vcy"

    const/16 v2, 0x412

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2767
    const-string v1, "vcy"

    const/16 v2, 0x432

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2768
    const-string v1, "VDash"

    const/16 v2, 0x22ab

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2769
    const-string v1, "Vdash"

    const/16 v2, 0x22a9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2770
    const-string v1, "vDash"

    const/16 v2, 0x22a8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2771
    const-string v1, "vdash"

    const/16 v2, 0x22a2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2772
    const-string v1, "Vdashl"

    const/16 v2, 0x2ae6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2773
    const-string v1, "Vee"

    const/16 v2, 0x22c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2774
    const-string v1, "vee"

    const/16 v2, 0x2228

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2775
    const-string v1, "veebar"

    const/16 v2, 0x22bb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2776
    const-string v1, "veeeq"

    const/16 v2, 0x225a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2777
    const-string v1, "vellip"

    const/16 v2, 0x22ee

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2778
    const-string v1, "Verbar"

    const/16 v2, 0x2016

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2779
    const-string v1, "verbar"

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2780
    const-string v1, "Vert"

    const/16 v2, 0x2016

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2781
    const-string v1, "vert"

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2782
    const-string v1, "VerticalBar"

    const/16 v2, 0x2223

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2783
    const-string v1, "VerticalLine"

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2784
    const-string v1, "VerticalSeparator"

    const/16 v2, 0x2758

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2785
    const-string v1, "VerticalTilde"

    const/16 v2, 0x2240

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2786
    const-string v1, "VeryThinSpace"

    const/16 v2, 0x200a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2787
    const-string v1, "Vfr"

    const v2, 0x1d519

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2788
    const-string v1, "vfr"

    const v2, 0x1d533

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2789
    const-string v1, "vltri"

    const/16 v2, 0x22b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2790
    const-string v1, "Vopf"

    const v2, 0x1d54d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2791
    const-string v1, "vopf"

    const v2, 0x1d567

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2792
    const-string v1, "vprop"

    const/16 v2, 0x221d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2793
    const-string v1, "vrtri"

    const/16 v2, 0x22b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2794
    const-string v1, "Vscr"

    const v2, 0x1d4b1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2795
    const-string v1, "vscr"

    const v2, 0x1d4cb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2796
    const-string v1, "Vvdash"

    const/16 v2, 0x22aa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2797
    const-string v1, "vzigzag"

    const/16 v2, 0x299a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2798
    const-string v1, "Wcirc"

    const/16 v2, 0x174

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2799
    const-string v1, "wcirc"

    const/16 v2, 0x175

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2800
    const-string v1, "wedbar"

    const/16 v2, 0x2a5f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2801
    const-string v1, "Wedge"

    const/16 v2, 0x22c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2802
    const-string v1, "wedge"

    const/16 v2, 0x2227

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2803
    const-string v1, "wedgeq"

    const/16 v2, 0x2259

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2804
    const-string v1, "weierp"

    const/16 v2, 0x2118

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2805
    const-string v1, "Wfr"

    const v2, 0x1d51a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2806
    const-string v1, "wfr"

    const v2, 0x1d534

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2807
    const-string v1, "Wopf"

    const v2, 0x1d54e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2808
    const-string v1, "wopf"

    const v2, 0x1d568

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2809
    const-string v1, "wp"

    const/16 v2, 0x2118

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2810
    const-string v1, "wr"

    const/16 v2, 0x2240

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2811
    const-string v1, "wreath"

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2812
    const-string v1, "Wscr"

    const v2, 0x1d4b2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2813
    const-string v1, "wscr"

    const v2, 0x1d4cc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2814
    const-string v1, "xcap"

    const/16 v2, 0x22c2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2815
    const-string v1, "xcirc"

    const/16 v2, 0x25ef

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2816
    const-string v1, "xcup"

    const/16 v2, 0x22c3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2817
    const-string v1, "xdtri"

    const/16 v2, 0x25bd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2818
    const-string v1, "Xfr"

    const v2, 0x1d51b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2819
    const-string v1, "xfr"

    const v2, 0x1d535

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2820
    const-string v1, "Xgr"

    const/16 v2, 0x39e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2821
    const-string v1, "xgr"

    const/16 v2, 0x3be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2822
    const-string v1, "xhArr"

    const/16 v2, 0x27fa

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2823
    const-string v1, "xharr"

    const/16 v2, 0x27f7

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2824
    const-string v1, "Xi"

    const/16 v2, 0x39e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2825
    const-string v1, "xi"

    const/16 v2, 0x3be

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2826
    const-string v1, "xlArr"

    const/16 v2, 0x27f8

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2827
    const-string v1, "xlarr"

    const/16 v2, 0x27f5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2828
    const-string v1, "xmap"

    const/16 v2, 0x27fc

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2829
    const-string v1, "xnis"

    const/16 v2, 0x22fb

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2830
    const-string v1, "xodot"

    const/16 v2, 0x2a00

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2831
    const-string v1, "Xopf"

    const v2, 0x1d54f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2832
    const-string v1, "xopf"

    const v2, 0x1d569

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2833
    const-string v1, "xoplus"

    const/16 v2, 0x2a01

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2834
    const-string v1, "xotime"

    const/16 v2, 0x2a02

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2835
    const-string v1, "xrArr"

    const/16 v2, 0x27f9

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2836
    const-string v1, "xrarr"

    const/16 v2, 0x27f6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2837
    const-string v1, "Xscr"

    const v2, 0x1d4b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2838
    const-string v1, "xscr"

    const v2, 0x1d4cd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2839
    const-string v1, "xsqcup"

    const/16 v2, 0x2a06

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2840
    const-string v1, "xuplus"

    const/16 v2, 0x2a04

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2841
    const-string v1, "xutri"

    const/16 v2, 0x25b3

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2842
    const-string v1, "xvee"

    const/16 v2, 0x22c1

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2843
    const-string v1, "xwedge"

    const/16 v2, 0x22c0

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2844
    const-string v1, "Yacute"

    const/16 v2, 0xdd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2845
    const-string v1, "yacute"

    const/16 v2, 0xfd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2846
    const-string v1, "YAcy"

    const/16 v2, 0x42f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2847
    const-string v1, "yacy"

    const/16 v2, 0x44f

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2848
    const-string v1, "Ycirc"

    const/16 v2, 0x176

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2849
    const-string v1, "ycirc"

    const/16 v2, 0x177

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2850
    const-string v1, "Ycy"

    const/16 v2, 0x42b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2851
    const-string v1, "ycy"

    const/16 v2, 0x44b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2852
    const-string v1, "yen"

    const/16 v2, 0xa5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2853
    const-string v1, "Yfr"

    const v2, 0x1d51c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2854
    const-string v1, "yfr"

    const v2, 0x1d536

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2855
    const-string v1, "YIcy"

    const/16 v2, 0x407

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2856
    const-string v1, "yicy"

    const/16 v2, 0x457

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2857
    const-string v1, "Yopf"

    const v2, 0x1d550

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2858
    const-string v1, "yopf"

    const v2, 0x1d56a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2859
    const-string v1, "Yscr"

    const v2, 0x1d4b4

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2860
    const-string v1, "yscr"

    const v2, 0x1d4ce

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2861
    const-string v1, "YUcy"

    const/16 v2, 0x42e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2862
    const-string v1, "yucy"

    const/16 v2, 0x44e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2863
    const-string v1, "Yuml"

    const/16 v2, 0x178

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2864
    const-string v1, "yuml"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2865
    const-string v1, "Zacute"

    const/16 v2, 0x179

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2866
    const-string v1, "zacute"

    const/16 v2, 0x17a

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2867
    const-string v1, "Zcaron"

    const/16 v2, 0x17d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2868
    const-string v1, "zcaron"

    const/16 v2, 0x17e

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2869
    const-string v1, "Zcy"

    const/16 v2, 0x417

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2870
    const-string v1, "zcy"

    const/16 v2, 0x437

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2871
    const-string v1, "Zdot"

    const/16 v2, 0x17b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2872
    const-string v1, "zdot"

    const/16 v2, 0x17c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2873
    const-string v1, "zeetrf"

    const/16 v2, 0x2128

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2874
    const-string v1, "ZeroWidthSpace"

    const/16 v2, 0x200b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2875
    const-string v1, "Zeta"

    const/16 v2, 0x396

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2876
    const-string v1, "zeta"

    const/16 v2, 0x3b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2877
    const-string v1, "Zfr"

    const/16 v2, 0x2128

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2878
    const-string v1, "zfr"

    const v2, 0x1d537

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2879
    const-string v1, "Zgr"

    const/16 v2, 0x396

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2880
    const-string v1, "zgr"

    const/16 v2, 0x3b6

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2881
    const-string v1, "ZHcy"

    const/16 v2, 0x416

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2882
    const-string v1, "zhcy"

    const/16 v2, 0x436

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2883
    const-string v1, "zigrarr"

    const/16 v2, 0x21dd

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2884
    const-string v1, "Zopf"

    const/16 v2, 0x2124

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2885
    const-string v1, "zopf"

    const v2, 0x1d56b

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2886
    const-string v1, "Zscr"

    const v2, 0x1d4b5

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2887
    const-string v1, "zscr"

    const v2, 0x1d4cf

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2888
    const-string v1, "zwj"

    const/16 v2, 0x200d

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2889
    const-string v1, "zwnj"

    const/16 v2, 0x200c

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->entity(Ljava/lang/String;I)V

    .line 2892
    return-void
.end method
