.class public Lorg/apache/xml/utils/res/XResources_ja_JP_HI;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ja_JP_HI.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 16

    .line 42
    const-string p0, "ui_language"

    const-string v0, "ja"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string p0, "help_language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string p0, "language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x2f

    new-array v0, v0, [C

    fill-array-data v0, :array_b6

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "alphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v4

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_ea

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "tradAlphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-string p0, "orientation"

    const-string v0, "LeftToRight"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string p0, "numbering"

    const-string v0, "multiplicative-additive"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v7

    const-string p0, "multiplierOrder"

    const-string v0, "follows"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v8

    new-instance p0, Lorg/apache/xml/utils/res/IntArrayWrapper;

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v0, "numberGroups"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v9

    new-instance p0, Lorg/apache/xml/utils/res/LongArrayWrapper;

    const/4 v0, 0x7

    new-array v10, v0, [J

    fill-array-data v10, :array_108

    invoke-direct {p0, v10}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    const-string v10, "multiplier"

    filled-new-array {v10, p0}, [Ljava/lang/Object;

    move-result-object v10

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v0, v0, [C

    fill-array-data v0, :array_128

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "multiplierChar"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v11

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "zero"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v12

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_134

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "digits"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v13

    new-instance p0, Lorg/apache/xml/utils/res/StringArrayWrapper;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    const-string v0, "tables"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :array_b6
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

    nop

    :array_ea
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

    :array_108
    .array-data 8
        0x7fffffffffffffffL
        0x7fffffffffffffffL
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    :array_128
    .array-data 2
        0x4eacs
        0x5146s
        0x5104s
        0x4e07s
        0x5343s
        0x767es
        0x5341s
    .end array-data

    nop

    :array_134
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
