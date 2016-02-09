.class public Lorg/apache/xml/utils/res/XResources_hy;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_hy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
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
    const/4 v7, 0x0

    #@5
    const/4 v6, 0x1

    #@6
    .line 42
    const/16 v0, 0xd

    #@8
    new-array v0, v0, [[Ljava/lang/Object;

    #@a
    .line 43
    new-array v1, v8, [Ljava/lang/Object;

    #@c
    const-string/jumbo v2, "ui_language"

    #@f
    aput-object v2, v1, v7

    #@11
    const-string/jumbo v2, "hy"

    #@14
    aput-object v2, v1, v6

    #@16
    aput-object v1, v0, v7

    #@18
    new-array v1, v8, [Ljava/lang/Object;

    #@1a
    const-string/jumbo v2, "help_language"

    #@1d
    aput-object v2, v1, v7

    #@1f
    const-string/jumbo v2, "hy"

    #@22
    aput-object v2, v1, v6

    #@24
    aput-object v1, v0, v6

    #@26
    new-array v1, v8, [Ljava/lang/Object;

    #@28
    const-string/jumbo v2, "language"

    #@2b
    aput-object v2, v1, v7

    #@2d
    const-string/jumbo v2, "hy"

    #@30
    aput-object v2, v1, v6

    #@32
    aput-object v1, v0, v8

    #@34
    .line 44
    new-array v1, v8, [Ljava/lang/Object;

    #@36
    const-string/jumbo v2, "alphabet"

    #@39
    aput-object v2, v1, v7

    #@3b
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3d
    .line 45
    const/16 v3, 0x24

    #@3f
    new-array v3, v3, [C

    #@41
    fill-array-data v3, :array_0

    #@44
    .line 44
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@47
    aput-object v2, v1, v6

    #@49
    aput-object v1, v0, v10

    #@4b
    .line 51
    new-array v1, v8, [Ljava/lang/Object;

    #@4d
    const-string/jumbo v2, "tradAlphabet"

    #@50
    aput-object v2, v1, v7

    #@52
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@54
    .line 52
    const/16 v3, 0x1a

    #@56
    new-array v3, v3, [C

    #@58
    fill-array-data v3, :array_1

    #@5b
    .line 51
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@5e
    aput-object v2, v1, v6

    #@60
    const/4 v2, 0x4

    #@61
    aput-object v1, v0, v2

    #@63
    .line 57
    new-array v1, v8, [Ljava/lang/Object;

    #@65
    const-string/jumbo v2, "orientation"

    #@68
    aput-object v2, v1, v7

    #@6a
    const-string/jumbo v2, "LeftToRight"

    #@6d
    aput-object v2, v1, v6

    #@6f
    const/4 v2, 0x5

    #@70
    aput-object v1, v0, v2

    #@72
    .line 60
    new-array v1, v8, [Ljava/lang/Object;

    #@74
    const-string/jumbo v2, "numbering"

    #@77
    aput-object v2, v1, v7

    #@79
    const-string/jumbo v2, "additive"

    #@7c
    aput-object v2, v1, v6

    #@7e
    const/4 v2, 0x6

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 65
    new-array v1, v8, [Ljava/lang/Object;

    #@83
    const-string/jumbo v2, "numberGroups"

    #@86
    aput-object v2, v1, v7

    #@88
    new-instance v2, Lorg/apache/xml/utils/res/IntArrayWrapper;

    #@8a
    const/16 v3, 0x3e8

    #@8c
    const/16 v4, 0x64

    #@8e
    const/16 v5, 0xa

    #@90
    filled-new-array {v3, v4, v5, v6}, [I

    #@93
    move-result-object v3

    #@94
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    #@97
    aput-object v2, v1, v6

    #@99
    const/4 v2, 0x7

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 71
    new-array v1, v8, [Ljava/lang/Object;

    #@9e
    const-string/jumbo v2, "digits"

    #@a1
    aput-object v2, v1, v7

    #@a3
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@a5
    .line 72
    new-array v3, v9, [C

    #@a7
    fill-array-data v3, :array_2

    #@aa
    .line 71
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@ad
    aput-object v2, v1, v6

    #@af
    const/16 v2, 0x8

    #@b1
    aput-object v1, v0, v2

    #@b3
    .line 74
    new-array v1, v8, [Ljava/lang/Object;

    #@b5
    const-string/jumbo v2, "tens"

    #@b8
    aput-object v2, v1, v7

    #@ba
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@bc
    .line 75
    new-array v3, v9, [C

    #@be
    fill-array-data v3, :array_3

    #@c1
    .line 74
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@c4
    aput-object v2, v1, v6

    #@c6
    aput-object v1, v0, v9

    #@c8
    .line 77
    new-array v1, v8, [Ljava/lang/Object;

    #@ca
    const-string/jumbo v2, "hundreds"

    #@cd
    aput-object v2, v1, v7

    #@cf
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@d1
    .line 78
    new-array v3, v9, [C

    #@d3
    fill-array-data v3, :array_4

    #@d6
    .line 77
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@d9
    aput-object v2, v1, v6

    #@db
    const/16 v2, 0xa

    #@dd
    aput-object v1, v0, v2

    #@df
    .line 80
    new-array v1, v8, [Ljava/lang/Object;

    #@e1
    const-string/jumbo v2, "thousands"

    #@e4
    aput-object v2, v1, v7

    #@e6
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@e8
    .line 81
    new-array v3, v9, [C

    #@ea
    fill-array-data v3, :array_5

    #@ed
    .line 80
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@f0
    aput-object v2, v1, v6

    #@f2
    const/16 v2, 0xb

    #@f4
    aput-object v1, v0, v2

    #@f6
    .line 83
    new-array v1, v8, [Ljava/lang/Object;

    #@f8
    const-string/jumbo v2, "tables"

    #@fb
    aput-object v2, v1, v7

    #@fd
    new-instance v2, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@ff
    const/4 v3, 0x4

    #@100
    new-array v3, v3, [Ljava/lang/String;

    #@102
    const-string/jumbo v4, "thousands"

    #@105
    aput-object v4, v3, v7

    #@107
    const-string/jumbo v4, "hundreds"

    #@10a
    aput-object v4, v3, v6

    #@10c
    const-string/jumbo v4, "tens"

    #@10f
    aput-object v4, v3, v8

    #@111
    const-string/jumbo v4, "digits"

    #@114
    aput-object v4, v3, v10

    #@116
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    #@119
    aput-object v2, v1, v6

    #@11b
    const/16 v2, 0xc

    #@11d
    aput-object v1, v0, v2

    #@11f
    .line 41
    return-object v0

    #@120
    .line 45
    :array_0
    .array-data 2
        0x561s
        0x562s
        0x563s
        0x564s
        0x565s
        0x566s
        0x567s
        0x568s
        0x569s
        0x56as
        0x56bs
        0x56cs
        0x56ds
        0x56es
        0x56fs
        0x567s
        0x568s
        0x572s
        0x573s
        0x574s
        0x575s
        0x576s
        0x577s
        0x578s
        0x579s
        0x57as
        0x57bs
        0x57cs
        0x57ds
        0x57es
        0x57fs
        0x580s
        0x581s
        0x582s
        0x583s
        0x584s
    .end array-data

    #@148
    .line 52
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

    #@166
    .line 72
    :array_2
    .array-data 2
        0x561s
        0x562s
        0x563s
        0x564s
        0x565s
        0x566s
        0x567s
        0x568s
        0x569s
    .end array-data

    #@173
    .line 75
    nop

    #@174
    :array_3
    .array-data 2
        0x56as
        0x56bs
        0x56cs
        0x56ds
        0x56es
        0x56fs
        0x567s
        0x568s
        0x572s
    .end array-data

    #@181
    .line 78
    nop

    #@182
    :array_4
    .array-data 2
        0x573s
        0x574s
        0x575s
        0x576s
        0x577s
        0x578s
        0x579s
        0x57as
        0x57bs
    .end array-data

    #@18f
    .line 81
    nop

    #@190
    :array_5
    .array-data 2
        0x57cs
        0x57ds
        0x57es
        0x57fs
        0x580s
        0x581s
        0x582s
        0x583s
        0x584s
    .end array-data
.end method
