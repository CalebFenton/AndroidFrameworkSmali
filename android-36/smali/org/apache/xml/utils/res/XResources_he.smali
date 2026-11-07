.class public Lorg/apache/xml/utils/res/XResources_he;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_he.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 13

    .line 41
    const-string p0, "ui_language"

    const-string v0, "he"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string p0, "help_language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string p0, "language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_92

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "alphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v4

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_a8

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "tradAlphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-string p0, "orientation"

    const-string v0, "RightToLeft"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string p0, "numbering"

    const-string v0, "additive"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v7

    new-instance p0, Lorg/apache/xml/utils/res/IntArrayWrapper;

    const/16 v0, 0xa

    const/4 v8, 0x1

    filled-new-array {v0, v8}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v0, "numberGroups"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v8

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x9

    new-array v9, v0, [C

    fill-array-data v9, :array_c6

    invoke-direct {p0, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v9, "digits"

    filled-new-array {v9, p0}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v10, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v0, v0, [C

    fill-array-data v0, :array_d4

    invoke-direct {v10, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "tens"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Lorg/apache/xml/utils/res/StringArrayWrapper;

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    const-string v0, "tables"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v11

    move-object v9, p0

    filled-new-array/range {v1 .. v11}, [[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :array_92
    .array-data 2
        0x5d0s
        0x5d1s
        0x5d2s
        0x5d3s
        0x5d4s
        0x5d5s
        0x5d6s
        0x5d7s
        0x5d8s
        0x5d9s
        0x5das
        0x5dbs
        0x5dcs
        0x5dds
        0x5des
        0x5dfs
        0x5e0s
        0x5e1s
    .end array-data

    :array_a8
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

    :array_c6
    .array-data 2
        0x5d0s
        0x5d1s
        0x5d2s
        0x5d3s
        0x5d4s
        0x5d5s
        0x5d6s
        0x5d7s
        0x5d8s
    .end array-data

    nop

    :array_d4
    .array-data 2
        0x5d9s
        0x5das
        0x5dbs
        0x5dcs
        0x5dds
        0x5des
        0x5dfs
        0x5e0s
        0x5e1s
    .end array-data
.end method
