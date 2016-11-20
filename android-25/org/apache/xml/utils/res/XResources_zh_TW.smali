.class public Lorg/apache/xml/utils/res/XResources_zh_TW;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_zh_TW.java"


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
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x9

    #@2
    const/4 v8, 0x5

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    .line 42
    const/16 v0, 0xe

    #@8
    new-array v0, v0, [[Ljava/lang/Object;

    #@a
    .line 43
    new-array v1, v7, [Ljava/lang/Object;

    #@c
    const-string/jumbo v2, "ui_language"

    #@f
    aput-object v2, v1, v6

    #@11
    const-string/jumbo v2, "zh"

    #@14
    aput-object v2, v1, v5

    #@16
    aput-object v1, v0, v6

    #@18
    new-array v1, v7, [Ljava/lang/Object;

    #@1a
    const-string/jumbo v2, "help_language"

    #@1d
    aput-object v2, v1, v6

    #@1f
    const-string/jumbo v2, "zh"

    #@22
    aput-object v2, v1, v5

    #@24
    aput-object v1, v0, v5

    #@26
    new-array v1, v7, [Ljava/lang/Object;

    #@28
    const-string/jumbo v2, "language"

    #@2b
    aput-object v2, v1, v6

    #@2d
    const-string/jumbo v2, "zh"

    #@30
    aput-object v2, v1, v5

    #@32
    aput-object v1, v0, v7

    #@34
    .line 44
    new-array v1, v7, [Ljava/lang/Object;

    #@36
    const-string/jumbo v2, "alphabet"

    #@39
    aput-object v2, v1, v6

    #@3b
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3d
    .line 45
    const/16 v3, 0x1a

    #@3f
    new-array v3, v3, [C

    #@41
    fill-array-data v3, :array_0

    #@44
    .line 44
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@47
    aput-object v2, v1, v5

    #@49
    const/4 v2, 0x3

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 49
    new-array v1, v7, [Ljava/lang/Object;

    #@4e
    const-string/jumbo v2, "tradAlphabet"

    #@51
    aput-object v2, v1, v6

    #@53
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@55
    .line 50
    const/16 v3, 0x1a

    #@57
    new-array v3, v3, [C

    #@59
    fill-array-data v3, :array_1

    #@5c
    .line 49
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@5f
    aput-object v2, v1, v5

    #@61
    const/4 v2, 0x4

    #@62
    aput-object v1, v0, v2

    #@64
    .line 55
    new-array v1, v7, [Ljava/lang/Object;

    #@66
    const-string/jumbo v2, "orientation"

    #@69
    aput-object v2, v1, v6

    #@6b
    const-string/jumbo v2, "LeftToRight"

    #@6e
    aput-object v2, v1, v5

    #@70
    aput-object v1, v0, v8

    #@72
    .line 58
    new-array v1, v7, [Ljava/lang/Object;

    #@74
    const-string/jumbo v2, "numbering"

    #@77
    aput-object v2, v1, v6

    #@79
    const-string/jumbo v2, "multiplicative-additive"

    #@7c
    aput-object v2, v1, v5

    #@7e
    const/4 v2, 0x6

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 59
    new-array v1, v7, [Ljava/lang/Object;

    #@83
    const-string/jumbo v2, "multiplierOrder"

    #@86
    aput-object v2, v1, v6

    #@88
    const-string/jumbo v2, "follows"

    #@8b
    aput-object v2, v1, v5

    #@8d
    const/4 v2, 0x7

    #@8e
    aput-object v1, v0, v2

    #@90
    .line 64
    new-array v1, v7, [Ljava/lang/Object;

    #@92
    const-string/jumbo v2, "numberGroups"

    #@95
    aput-object v2, v1, v6

    #@97
    new-instance v2, Lorg/apache/xml/utils/res/IntArrayWrapper;

    #@99
    new-array v3, v5, [I

    #@9b
    aput v5, v3, v6

    #@9d
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    #@a0
    aput-object v2, v1, v5

    #@a2
    const/16 v2, 0x8

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 67
    new-array v1, v7, [Ljava/lang/Object;

    #@a8
    const-string/jumbo v2, "zero"

    #@ab
    aput-object v2, v1, v6

    #@ad
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@af
    new-array v3, v5, [C

    #@b1
    const v4, 0x96f6

    #@b4
    aput-char v4, v3, v6

    #@b6
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@b9
    aput-object v2, v1, v5

    #@bb
    aput-object v1, v0, v9

    #@bd
    .line 70
    new-array v1, v7, [Ljava/lang/Object;

    #@bf
    const-string/jumbo v2, "multiplier"

    #@c2
    aput-object v2, v1, v6

    #@c4
    new-instance v2, Lorg/apache/xml/utils/res/LongArrayWrapper;

    #@c6
    new-array v3, v8, [J

    #@c8
    fill-array-data v3, :array_2

    #@cb
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    #@ce
    aput-object v2, v1, v5

    #@d0
    const/16 v2, 0xa

    #@d2
    aput-object v1, v0, v2

    #@d4
    .line 72
    new-array v1, v7, [Ljava/lang/Object;

    #@d6
    const-string/jumbo v2, "multiplierChar"

    #@d9
    aput-object v2, v1, v6

    #@db
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@dd
    .line 73
    new-array v3, v8, [C

    #@df
    fill-array-data v3, :array_3

    #@e2
    .line 72
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@e5
    aput-object v2, v1, v5

    #@e7
    const/16 v2, 0xb

    #@e9
    aput-object v1, v0, v2

    #@eb
    .line 74
    new-array v1, v7, [Ljava/lang/Object;

    #@ed
    const-string/jumbo v2, "digits"

    #@f0
    aput-object v2, v1, v6

    #@f2
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@f4
    .line 75
    new-array v3, v9, [C

    #@f6
    fill-array-data v3, :array_4

    #@f9
    .line 74
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@fc
    aput-object v2, v1, v5

    #@fe
    const/16 v2, 0xc

    #@100
    aput-object v1, v0, v2

    #@102
    .line 76
    new-array v1, v7, [Ljava/lang/Object;

    #@104
    const-string/jumbo v2, "tables"

    #@107
    aput-object v2, v1, v6

    #@109
    new-instance v2, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@10b
    .line 77
    new-array v3, v5, [Ljava/lang/String;

    #@10d
    const-string/jumbo v4, "digits"

    #@110
    aput-object v4, v3, v6

    #@112
    .line 76
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    #@115
    aput-object v2, v1, v5

    #@117
    const/16 v2, 0xd

    #@119
    aput-object v1, v0, v2

    #@11b
    .line 41
    return-object v0

    #@11c
    .line 45
    :array_0
    .array-data 2
        -0xdfs
        -0xdes
        -0xdds
        -0xdcs
        -0xdbs
        -0xdas
        -0xd9s
        -0xd8s
        -0xd7s
        -0xd6s
        -0xd5s
        -0xd4s
        -0xd3s
        -0xd2s
        -0xd1s
        -0xd0s
        -0xcfs
        -0xces
        -0xcds
        -0xccs
        -0xcbs
        -0xcas
        -0xc9s
        -0xc8s
        -0xc7s
        -0xc6s
    .end array-data

    #@13a
    .line 50
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

    #@158
    .line 70
    :array_2
    .array-data 8
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    #@170
    .line 73
    :array_3
    .array-data 2
        0x5104s
        -0x7bd4s
        0x4edfs
        0x4f70s
        0x62fes
    .end array-data

    #@179
    .line 75
    nop

    #@17a
    :array_4
    .array-data 2
        0x58f9s
        -0x734ds
        0x53c3s
        -0x7f7as
        0x4f0ds
        -0x6988s
        0x67d2s
        0x634cs
        0x7396s
    .end array-data
.end method
