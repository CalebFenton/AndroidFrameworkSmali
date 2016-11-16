.class public Lorg/apache/xml/utils/res/XResources_cy;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_cy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/16 v9, 0x9

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v7, 0x1

    #@5
    const/4 v6, 0x0

    #@6
    .line 39
    const/16 v0, 0x10

    #@8
    new-array v0, v0, [[Ljava/lang/Object;

    #@a
    .line 40
    new-array v1, v8, [Ljava/lang/Object;

    #@c
    const-string/jumbo v2, "ui_language"

    #@f
    aput-object v2, v1, v6

    #@11
    const-string/jumbo v2, "cy"

    #@14
    aput-object v2, v1, v7

    #@16
    aput-object v1, v0, v6

    #@18
    new-array v1, v8, [Ljava/lang/Object;

    #@1a
    const-string/jumbo v2, "help_language"

    #@1d
    aput-object v2, v1, v6

    #@1f
    const-string/jumbo v2, "cy"

    #@22
    aput-object v2, v1, v7

    #@24
    aput-object v1, v0, v7

    #@26
    new-array v1, v8, [Ljava/lang/Object;

    #@28
    const-string/jumbo v2, "language"

    #@2b
    aput-object v2, v1, v6

    #@2d
    const-string/jumbo v2, "cy"

    #@30
    aput-object v2, v1, v7

    #@32
    aput-object v1, v0, v8

    #@34
    .line 41
    new-array v1, v8, [Ljava/lang/Object;

    #@36
    const-string/jumbo v2, "alphabet"

    #@39
    aput-object v2, v1, v6

    #@3b
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3d
    .line 42
    const/16 v3, 0x1b

    #@3f
    new-array v3, v3, [C

    #@41
    fill-array-data v3, :array_0

    #@44
    .line 41
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@47
    aput-object v2, v1, v7

    #@49
    aput-object v1, v0, v10

    #@4b
    .line 46
    new-array v1, v8, [Ljava/lang/Object;

    #@4d
    const-string/jumbo v2, "tradAlphabet"

    #@50
    aput-object v2, v1, v6

    #@52
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@54
    .line 47
    const/16 v3, 0x1a

    #@56
    new-array v3, v3, [C

    #@58
    fill-array-data v3, :array_1

    #@5b
    .line 46
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@5e
    aput-object v2, v1, v7

    #@60
    const/4 v2, 0x4

    #@61
    aput-object v1, v0, v2

    #@63
    .line 52
    new-array v1, v8, [Ljava/lang/Object;

    #@65
    const-string/jumbo v2, "orientation"

    #@68
    aput-object v2, v1, v6

    #@6a
    const-string/jumbo v2, "LeftToRight"

    #@6d
    aput-object v2, v1, v7

    #@6f
    const/4 v2, 0x5

    #@70
    aput-object v1, v0, v2

    #@72
    .line 56
    new-array v1, v8, [Ljava/lang/Object;

    #@74
    const-string/jumbo v2, "numbering"

    #@77
    aput-object v2, v1, v6

    #@79
    const-string/jumbo v2, "multiplicative-additive"

    #@7c
    aput-object v2, v1, v7

    #@7e
    const/4 v2, 0x6

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 57
    new-array v1, v8, [Ljava/lang/Object;

    #@83
    const-string/jumbo v2, "multiplierOrder"

    #@86
    aput-object v2, v1, v6

    #@88
    const-string/jumbo v2, "precedes"

    #@8b
    aput-object v2, v1, v7

    #@8d
    const/4 v2, 0x7

    #@8e
    aput-object v1, v0, v2

    #@90
    .line 62
    new-array v1, v8, [Ljava/lang/Object;

    #@92
    const-string/jumbo v2, "numberGroups"

    #@95
    aput-object v2, v1, v6

    #@97
    new-instance v2, Lorg/apache/xml/utils/res/IntArrayWrapper;

    #@99
    const/16 v3, 0x64

    #@9b
    const/16 v4, 0xa

    #@9d
    filled-new-array {v3, v4, v7}, [I

    #@a0
    move-result-object v3

    #@a1
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    #@a4
    aput-object v2, v1, v7

    #@a6
    const/16 v2, 0x8

    #@a8
    aput-object v1, v0, v2

    #@aa
    .line 65
    new-array v1, v8, [Ljava/lang/Object;

    #@ac
    const-string/jumbo v2, "multiplier"

    #@af
    aput-object v2, v1, v6

    #@b1
    new-instance v2, Lorg/apache/xml/utils/res/LongArrayWrapper;

    #@b3
    new-array v3, v7, [J

    #@b5
    const-wide/16 v4, 0x3e8

    #@b7
    aput-wide v4, v3, v6

    #@b9
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    #@bc
    aput-object v2, v1, v7

    #@be
    aput-object v1, v0, v9

    #@c0
    .line 66
    new-array v1, v8, [Ljava/lang/Object;

    #@c2
    const-string/jumbo v2, "multiplierChar"

    #@c5
    aput-object v2, v1, v6

    #@c7
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@c9
    new-array v3, v7, [C

    #@cb
    const/16 v4, 0x3d9

    #@cd
    aput-char v4, v3, v6

    #@cf
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@d2
    aput-object v2, v1, v7

    #@d4
    const/16 v2, 0xa

    #@d6
    aput-object v1, v0, v2

    #@d8
    .line 69
    new-array v1, v8, [Ljava/lang/Object;

    #@da
    const-string/jumbo v2, "zero"

    #@dd
    aput-object v2, v1, v6

    #@df
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@e1
    new-array v3, v6, [C

    #@e3
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@e6
    aput-object v2, v1, v7

    #@e8
    const/16 v2, 0xb

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 72
    new-array v1, v8, [Ljava/lang/Object;

    #@ee
    const-string/jumbo v2, "digits"

    #@f1
    aput-object v2, v1, v6

    #@f3
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@f5
    .line 73
    new-array v3, v9, [C

    #@f7
    fill-array-data v3, :array_2

    #@fa
    .line 72
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@fd
    aput-object v2, v1, v7

    #@ff
    const/16 v2, 0xc

    #@101
    aput-object v1, v0, v2

    #@103
    .line 75
    new-array v1, v8, [Ljava/lang/Object;

    #@105
    const-string/jumbo v2, "tens"

    #@108
    aput-object v2, v1, v6

    #@10a
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@10c
    .line 76
    new-array v3, v9, [C

    #@10e
    fill-array-data v3, :array_3

    #@111
    .line 75
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@114
    aput-object v2, v1, v7

    #@116
    const/16 v2, 0xd

    #@118
    aput-object v1, v0, v2

    #@11a
    .line 78
    new-array v1, v8, [Ljava/lang/Object;

    #@11c
    const-string/jumbo v2, "hundreds"

    #@11f
    aput-object v2, v1, v6

    #@121
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@123
    .line 79
    new-array v3, v9, [C

    #@125
    fill-array-data v3, :array_4

    #@128
    .line 78
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@12b
    aput-object v2, v1, v7

    #@12d
    const/16 v2, 0xe

    #@12f
    aput-object v1, v0, v2

    #@131
    .line 81
    new-array v1, v8, [Ljava/lang/Object;

    #@133
    const-string/jumbo v2, "tables"

    #@136
    aput-object v2, v1, v6

    #@138
    new-instance v2, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@13a
    new-array v3, v10, [Ljava/lang/String;

    #@13c
    const-string/jumbo v4, "hundreds"

    #@13f
    aput-object v4, v3, v6

    #@141
    const-string/jumbo v4, "tens"

    #@144
    aput-object v4, v3, v7

    #@146
    const-string/jumbo v4, "digits"

    #@149
    aput-object v4, v3, v8

    #@14b
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    #@14e
    aput-object v2, v1, v7

    #@150
    const/16 v2, 0xf

    #@152
    aput-object v1, v0, v2

    #@154
    .line 38
    return-object v0

    #@155
    .line 42
    nop

    #@156
    :array_0
    .array-data 2
        0x430s
        0x432s
        0x433s
        0x434s
        0x435s
        0x437s
        0x438s
        0x439s
        0x4a9s
        0x457s
        0x43as
        0x43bs
        0x43cs
        0x43ds
        0x46fs
        0x43es
        0x43fs
        0x447s
        0x440s
        0x441s
        0x442s
        0x443s
        0x444s
        0x445s
        0x470s
        0x460s
        0x446s
    .end array-data

    #@175
    .line 47
    nop

    #@176
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    #@194
    .line 73
    :array_2
    .array-data 2
        0x430s
        0x432s
        0x433s
        0x434s
        0x435s
        0x437s
        0x438s
        0x439s
        0x4a9s
    .end array-data

    #@1a1
    .line 76
    nop

    #@1a2
    :array_3
    .array-data 2
        0x457s
        0x43as
        0x43bs
        0x43cs
        0x43ds
        0x46fs
        0x43es
        0x43fs
        0x447s
    .end array-data

    #@1af
    .line 79
    nop

    #@1b0
    :array_4
    .array-data 2
        0x440s
        0x441s
        0x442s
        0x443s
        0x444s
        0x445s
        0x470s
        0x460s
        0x446s
    .end array-data
.end method
