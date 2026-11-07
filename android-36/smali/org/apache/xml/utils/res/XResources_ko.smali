.class public Lorg/apache/xml/utils/res/XResources_ko;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ko.java"


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

    .line 41
    const-string p0, "ui_language"

    const-string v0, "ko"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string p0, "help_language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string p0, "language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_b6

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "alphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v4

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_d2

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

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "zero"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v10

    new-instance p0, Lorg/apache/xml/utils/res/LongArrayWrapper;

    const/4 v0, 0x5

    new-array v11, v0, [J

    fill-array-data v11, :array_f0

    invoke-direct {p0, v11}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    const-string v11, "multiplier"

    filled-new-array {v11, p0}, [Ljava/lang/Object;

    move-result-object v11

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v0, v0, [C

    fill-array-data v0, :array_108

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "multiplierChar"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v12

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_112

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

    :array_d2
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

    :array_f0
    .array-data 8
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    :array_108
    .array-data 2
        -0x3a4bs
        -0x4634s
        -0x3364s
        -0x43cfs
        -0x3d13s
    .end array-data

    nop

    :array_112
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
