.class public Lorg/apache/xml/utils/res/XResources_zh_TW;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_zh_TW.java"


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

    const-string v0, "zh"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string p0, "help_language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string p0, "language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v4, v0, [C

    fill-array-data v4, :array_b8

    invoke-direct {p0, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v4, "alphabet"

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v4

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v0, v0, [C

    fill-array-data v0, :array_d6

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

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v9, "numberGroups"

    filled-new-array {v9, p0}, [Ljava/lang/Object;

    move-result-object v9

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v0, v0, [C

    const v10, 0x96f6

    const/4 v11, 0x0

    aput-char v10, v0, v11

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "zero"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v10

    new-instance p0, Lorg/apache/xml/utils/res/LongArrayWrapper;

    const/4 v0, 0x5

    new-array v11, v0, [J

    fill-array-data v11, :array_f4

    invoke-direct {p0, v11}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    const-string v11, "multiplier"

    filled-new-array {v11, p0}, [Ljava/lang/Object;

    move-result-object v11

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v0, v0, [C

    fill-array-data v0, :array_10c

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "multiplierChar"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v12

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_116

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

    :array_b8
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

    :array_d6
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

    :array_f4
    .array-data 8
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    :array_10c
    .array-data 2
        0x5104s
        -0x7bd4s
        0x4edfs
        0x4f70s
        0x62fes
    .end array-data

    nop

    :array_116
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
