.class public Lorg/apache/xml/utils/res/XResources_ja_JP_HI;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ja_JP_HI.java"


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
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x9

    #@2
    const/4 v7, 0x7

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 43
    const/16 v0, 0xe

    #@8
    new-array v0, v0, [[Ljava/lang/Object;

    #@a
    .line 44
    new-array v1, v4, [Ljava/lang/Object;

    #@c
    const-string/jumbo v2, "ui_language"

    #@f
    aput-object v2, v1, v5

    #@11
    const-string/jumbo v2, "ja"

    #@14
    aput-object v2, v1, v6

    #@16
    aput-object v1, v0, v5

    #@18
    new-array v1, v4, [Ljava/lang/Object;

    #@1a
    const-string/jumbo v2, "help_language"

    #@1d
    aput-object v2, v1, v5

    #@1f
    const-string/jumbo v2, "ja"

    #@22
    aput-object v2, v1, v6

    #@24
    aput-object v1, v0, v6

    #@26
    new-array v1, v4, [Ljava/lang/Object;

    #@28
    const-string/jumbo v2, "language"

    #@2b
    aput-object v2, v1, v5

    #@2d
    const-string/jumbo v2, "ja"

    #@30
    aput-object v2, v1, v6

    #@32
    aput-object v1, v0, v4

    #@34
    .line 45
    new-array v1, v4, [Ljava/lang/Object;

    #@36
    const-string/jumbo v2, "alphabet"

    #@39
    aput-object v2, v1, v5

    #@3b
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3d
    .line 46
    const/16 v3, 0x2f

    #@3f
    new-array v3, v3, [C

    #@41
    fill-array-data v3, :array_0

    #@44
    .line 45
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@47
    aput-object v2, v1, v6

    #@49
    const/4 v2, 0x3

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 53
    new-array v1, v4, [Ljava/lang/Object;

    #@4e
    const-string/jumbo v2, "tradAlphabet"

    #@51
    aput-object v2, v1, v5

    #@53
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@55
    .line 54
    const/16 v3, 0x1a

    #@57
    new-array v3, v3, [C

    #@59
    fill-array-data v3, :array_1

    #@5c
    .line 53
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@5f
    aput-object v2, v1, v6

    #@61
    const/4 v2, 0x4

    #@62
    aput-object v1, v0, v2

    #@64
    .line 59
    new-array v1, v4, [Ljava/lang/Object;

    #@66
    const-string/jumbo v2, "orientation"

    #@69
    aput-object v2, v1, v5

    #@6b
    const-string/jumbo v2, "LeftToRight"

    #@6e
    aput-object v2, v1, v6

    #@70
    const/4 v2, 0x5

    #@71
    aput-object v1, v0, v2

    #@73
    .line 62
    new-array v1, v4, [Ljava/lang/Object;

    #@75
    const-string/jumbo v2, "numbering"

    #@78
    aput-object v2, v1, v5

    #@7a
    const-string/jumbo v2, "multiplicative-additive"

    #@7d
    aput-object v2, v1, v6

    #@7f
    const/4 v2, 0x6

    #@80
    aput-object v1, v0, v2

    #@82
    .line 63
    new-array v1, v4, [Ljava/lang/Object;

    #@84
    const-string/jumbo v2, "multiplierOrder"

    #@87
    aput-object v2, v1, v5

    #@89
    const-string/jumbo v2, "follows"

    #@8c
    aput-object v2, v1, v6

    #@8e
    aput-object v1, v0, v7

    #@90
    .line 68
    new-array v1, v4, [Ljava/lang/Object;

    #@92
    const-string/jumbo v2, "numberGroups"

    #@95
    aput-object v2, v1, v5

    #@97
    new-instance v2, Lorg/apache/xml/utils/res/IntArrayWrapper;

    #@99
    new-array v3, v6, [I

    #@9b
    aput v6, v3, v5

    #@9d
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    #@a0
    aput-object v2, v1, v6

    #@a2
    const/16 v2, 0x8

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 73
    new-array v1, v4, [Ljava/lang/Object;

    #@a8
    const-string/jumbo v2, "multiplier"

    #@ab
    aput-object v2, v1, v5

    #@ad
    new-instance v2, Lorg/apache/xml/utils/res/LongArrayWrapper;

    #@af
    .line 74
    new-array v3, v7, [J

    #@b1
    fill-array-data v3, :array_2

    #@b4
    .line 73
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    #@b7
    aput-object v2, v1, v6

    #@b9
    aput-object v1, v0, v8

    #@bb
    .line 76
    new-array v1, v4, [Ljava/lang/Object;

    #@bd
    const-string/jumbo v2, "multiplierChar"

    #@c0
    aput-object v2, v1, v5

    #@c2
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@c4
    .line 77
    new-array v3, v7, [C

    #@c6
    fill-array-data v3, :array_3

    #@c9
    .line 76
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@cc
    aput-object v2, v1, v6

    #@ce
    const/16 v2, 0xa

    #@d0
    aput-object v1, v0, v2

    #@d2
    .line 80
    new-array v1, v4, [Ljava/lang/Object;

    #@d4
    const-string/jumbo v2, "zero"

    #@d7
    aput-object v2, v1, v5

    #@d9
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@db
    new-array v3, v5, [C

    #@dd
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@e0
    aput-object v2, v1, v6

    #@e2
    const/16 v2, 0xb

    #@e4
    aput-object v1, v0, v2

    #@e6
    .line 81
    new-array v1, v4, [Ljava/lang/Object;

    #@e8
    const-string/jumbo v2, "digits"

    #@eb
    aput-object v2, v1, v5

    #@ed
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@ef
    .line 82
    new-array v3, v8, [C

    #@f1
    fill-array-data v3, :array_4

    #@f4
    .line 81
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@f7
    aput-object v2, v1, v6

    #@f9
    const/16 v2, 0xc

    #@fb
    aput-object v1, v0, v2

    #@fd
    .line 83
    new-array v1, v4, [Ljava/lang/Object;

    #@ff
    const-string/jumbo v2, "tables"

    #@102
    aput-object v2, v1, v5

    #@104
    new-instance v2, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@106
    .line 84
    new-array v3, v6, [Ljava/lang/String;

    #@108
    const-string/jumbo v4, "digits"

    #@10b
    aput-object v4, v3, v5

    #@10d
    .line 83
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    #@110
    aput-object v2, v1, v6

    #@112
    const/16 v2, 0xd

    #@114
    aput-object v1, v0, v2

    #@116
    .line 42
    return-object v0

    #@117
    .line 46
    nop

    #@118
    :array_0
    .array-data 2
        0x3044s
        0x308ds
        0x306fs
        0x306bs
        0x307bs
        0x3078s
        0x3068s
        0x3061s
        0x308as
        0x306cs
        0x308bs
        0x3092s
        0x308fs
        0x304bs
        0x3088s
        0x305fs
        0x308cs
        0x305ds
        0x3064s
        0x306ds
        0x306as
        0x3089s
        0x3080s
        0x3046s
        0x3090s
        0x306es
        0x304as
        0x304fs
        0x3084s
        0x307es
        0x3051s
        0x3075s
        0x3053s
        0x3048s
        0x3066s
        0x3042s
        0x3055s
        0x304ds
        0x3086s
        0x3081s
        0x307fs
        0x3057s
        0x3091s
        0x3072s
        0x3082s
        0x305bs
        0x3059s
    .end array-data

    #@14b
    .line 54
    nop

    #@14c
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

    #@16a
    .line 74
    :array_2
    .array-data 8
        0x7fffffffffffffffL
        0x7fffffffffffffffL
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    #@18a
    .line 77
    :array_3
    .array-data 2
        0x4eacs
        0x5146s
        0x5104s
        0x4e07s
        0x5343s
        0x767es
        0x5341s
    .end array-data

    #@195
    .line 82
    nop

    #@196
    :array_4
    .array-data 2
        0x4e00s
        0x4e8cs
        0x4e09s
        0x56dbs
        0x4e94s
        0x516ds
        0x4e03s
        0x516bs
        0x4e5ds
    .end array-data
.end method
