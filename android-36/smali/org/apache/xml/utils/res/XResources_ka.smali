.class public Lorg/apache/xml/utils/res/XResources_ka;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ka.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 17

    .line 41
    const-string v0, "ui_language"

    const-string v1, "ka"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "help_language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    new-instance v0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v1, 0x24

    new-array v1, v1, [C

    fill-array-data v1, :array_ba

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "alphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v5

    new-instance v0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v1, 0x1a

    new-array v1, v1, [C

    fill-array-data v1, :array_e2

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "tradAlphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "orientation"

    const-string v1, "LeftToRight"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "numbering"

    const-string v1, "additive"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    new-instance v0, Lorg/apache/xml/utils/res/IntArrayWrapper;

    const/16 v1, 0xa

    const/4 v9, 0x1

    const/16 v10, 0x3e8

    const/16 v11, 0x64

    filled-new-array {v10, v11, v1, v9}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v1, "numberGroups"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v9

    new-instance v0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v1, 0x9

    new-array v10, v1, [C

    fill-array-data v10, :array_100

    invoke-direct {v0, v10}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v10, "digits"

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v11, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v12, v1, [C

    fill-array-data v12, :array_10e

    invoke-direct {v11, v12}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v12, "tens"

    filled-new-array {v12, v11}, [Ljava/lang/Object;

    move-result-object v11

    new-instance v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v14, v1, [C

    fill-array-data v14, :array_11c

    invoke-direct {v13, v14}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v14, "hundreds"

    filled-new-array {v14, v13}, [Ljava/lang/Object;

    move-result-object v13

    new-instance v15, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v1, v1, [C

    fill-array-data v1, :array_12a

    invoke-direct {v15, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "thousands"

    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p0, v0

    new-instance v0, Lorg/apache/xml/utils/res/StringArrayWrapper;

    filled-new-array {v1, v14, v12, v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    const-string v1, "tables"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v10, p0

    move-object v12, v13

    move-object v13, v15

    filled-new-array/range {v2 .. v14}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :array_ba
    .array-data 2
        0x10d0s
        0x10d1s
        0x10d2s
        0x10d3s
        0x10d4s
        0x10d5s
        0x10d6s
        0x10f1s
        0x10d7s
        0x10d8s
        0x10d9s
        0x10das
        0x10dbs
        0x10dcs
        0x10f2s
        0x10dds
        0x10des
        0x10dfs
        0x10e0s
        0x10e1s
        0x10e2s
        0x10e3s
        0x10e4s
        0x10e5s
        0x10e6s
        0x10e7s
        0x10e8s
        0x10e9s
        0x10eas
        0x10ebs
        0x10ecs
        0x10eds
        0x10ees
        0x10f4s
        0x10efs
        0x10f0s
    .end array-data

    :array_e2
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

    :array_100
    .array-data 2
        0x10d0s
        0x10d1s
        0x10d2s
        0x10d3s
        0x10d4s
        0x10d5s
        0x10d6s
        0x10f1s
        0x10d7s
    .end array-data

    nop

    :array_10e
    .array-data 2
        0x10d8s
        0x10d9s
        0x10das
        0x10dbs
        0x10dcs
        0x10f2s
        0x10dds
        0x10des
        0x10dfs
    .end array-data

    nop

    :array_11c
    .array-data 2
        0x10e0s
        0x10e1s
        0x10e2s
        0x10e3s
        0x10e4s
        0x10e5s
        0x10e6s
        0x10e7s
        0x10e8s
    .end array-data

    nop

    :array_12a
    .array-data 2
        0x10e9s
        0x10eas
        0x10ebs
        0x10ecs
        0x10eds
        0x10ees
        0x10f4s
        0x10efs
        0x10f0s
    .end array-data
.end method
