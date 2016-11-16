.class public Lorg/apache/xml/utils/res/XResources_ko;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ko.java"


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
    const/4 v7, 0x5

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 42
    const/16 v0, 0xe

    #@8
    new-array v0, v0, [[Ljava/lang/Object;

    #@a
    .line 43
    new-array v1, v4, [Ljava/lang/Object;

    #@c
    const-string/jumbo v2, "ui_language"

    #@f
    aput-object v2, v1, v5

    #@11
    const-string/jumbo v2, "ko"

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
    const-string/jumbo v2, "ko"

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
    const-string/jumbo v2, "ko"

    #@30
    aput-object v2, v1, v6

    #@32
    aput-object v1, v0, v4

    #@34
    .line 44
    new-array v1, v4, [Ljava/lang/Object;

    #@36
    const-string/jumbo v2, "alphabet"

    #@39
    aput-object v2, v1, v5

    #@3b
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3d
    .line 45
    const/16 v3, 0x18

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
    const/4 v2, 0x3

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 49
    new-array v1, v4, [Ljava/lang/Object;

    #@4e
    const-string/jumbo v2, "tradAlphabet"

    #@51
    aput-object v2, v1, v5

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
    aput-object v2, v1, v6

    #@61
    const/4 v2, 0x4

    #@62
    aput-object v1, v0, v2

    #@64
    .line 55
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
    aput-object v1, v0, v7

    #@72
    .line 58
    new-array v1, v4, [Ljava/lang/Object;

    #@74
    const-string/jumbo v2, "numbering"

    #@77
    aput-object v2, v1, v5

    #@79
    const-string/jumbo v2, "multiplicative-additive"

    #@7c
    aput-object v2, v1, v6

    #@7e
    const/4 v2, 0x6

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 59
    new-array v1, v4, [Ljava/lang/Object;

    #@83
    const-string/jumbo v2, "multiplierOrder"

    #@86
    aput-object v2, v1, v5

    #@88
    const-string/jumbo v2, "follows"

    #@8b
    aput-object v2, v1, v6

    #@8d
    const/4 v2, 0x7

    #@8e
    aput-object v1, v0, v2

    #@90
    .line 64
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
    .line 67
    new-array v1, v4, [Ljava/lang/Object;

    #@a8
    const-string/jumbo v2, "zero"

    #@ab
    aput-object v2, v1, v5

    #@ad
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@af
    new-array v3, v5, [C

    #@b1
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@b4
    aput-object v2, v1, v6

    #@b6
    aput-object v1, v0, v8

    #@b8
    .line 70
    new-array v1, v4, [Ljava/lang/Object;

    #@ba
    const-string/jumbo v2, "multiplier"

    #@bd
    aput-object v2, v1, v5

    #@bf
    new-instance v2, Lorg/apache/xml/utils/res/LongArrayWrapper;

    #@c1
    new-array v3, v7, [J

    #@c3
    fill-array-data v3, :array_2

    #@c6
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    #@c9
    aput-object v2, v1, v6

    #@cb
    const/16 v2, 0xa

    #@cd
    aput-object v1, v0, v2

    #@cf
    .line 72
    new-array v1, v4, [Ljava/lang/Object;

    #@d1
    const-string/jumbo v2, "multiplierChar"

    #@d4
    aput-object v2, v1, v5

    #@d6
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@d8
    .line 73
    new-array v3, v7, [C

    #@da
    fill-array-data v3, :array_3

    #@dd
    .line 72
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@e0
    aput-object v2, v1, v6

    #@e2
    const/16 v2, 0xb

    #@e4
    aput-object v1, v0, v2

    #@e6
    .line 74
    new-array v1, v4, [Ljava/lang/Object;

    #@e8
    const-string/jumbo v2, "digits"

    #@eb
    aput-object v2, v1, v5

    #@ed
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@ef
    .line 75
    new-array v3, v8, [C

    #@f1
    fill-array-data v3, :array_4

    #@f4
    .line 74
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@f7
    aput-object v2, v1, v6

    #@f9
    const/16 v2, 0xc

    #@fb
    aput-object v1, v0, v2

    #@fd
    .line 76
    new-array v1, v4, [Ljava/lang/Object;

    #@ff
    const-string/jumbo v2, "tables"

    #@102
    aput-object v2, v1, v5

    #@104
    new-instance v2, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@106
    .line 77
    new-array v3, v6, [Ljava/lang/String;

    #@108
    const-string/jumbo v4, "digits"

    #@10b
    aput-object v4, v3, v5

    #@10d
    .line 76
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    #@110
    aput-object v2, v1, v6

    #@112
    const/16 v2, 0xd

    #@114
    aput-object v1, v0, v2

    #@116
    .line 41
    return-object v0

    #@117
    .line 45
    nop

    #@118
    :array_0
    .array-data 2
        0x3131s
        0x3134s
        0x3137s
        0x3139s
        0x3141s
        0x3142s
        0x3145s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
        0x314fs
        0x3151s
        0x3153s
        0x3155s
        0x3157s
        0x315bs
        0x315cs
        0x3160s
        0x3161s
        0x3163s
    .end array-data

    #@134
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

    #@152
    .line 70
    :array_2
    .array-data 8
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    #@16a
    .line 73
    :array_3
    .array-data 2
        -0x3a4bs
        -0x4634s
        -0x3364s
        -0x43cfs
        -0x3d13s
    .end array-data

    #@173
    .line 75
    nop

    #@174
    :array_4
    .array-data 2
        -0x3884s
        -0x388cs
        -0x3f44s
        -0x3f54s
        -0x39dcs
        -0x38dfs
        -0x31a0s
        -0x2cecs
        -0x5294s
    .end array-data
.end method
