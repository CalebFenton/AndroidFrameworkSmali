.class public Lorg/apache/xml/utils/res/XResources_cy;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_cy.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 19

    .line 38
    const-string v0, "ui_language"

    const-string v1, "cy"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "help_language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    new-instance v0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_e8

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "alphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v5

    new-instance v0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v1, 0x1a

    new-array v1, v1, [C

    fill-array-data v1, :array_108

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "tradAlphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "orientation"

    const-string v1, "LeftToRight"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "numbering"

    const-string v1, "multiplicative-additive"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "multiplierOrder"

    const-string v1, "precedes"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    new-instance v0, Lorg/apache/xml/utils/res/IntArrayWrapper;

    const/16 v1, 0xa

    const/4 v10, 0x1

    const/16 v11, 0x64

    filled-new-array {v11, v1, v10}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v1, "numberGroups"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/apache/xml/utils/res/LongArrayWrapper;

    new-array v11, v10, [J

    const-wide/16 v12, 0x3e8

    const/4 v14, 0x0

    aput-wide v12, v11, v14

    invoke-direct {v1, v11}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    const-string v11, "multiplier"

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v11

    new-instance v1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v10, v10, [C

    const/16 v12, 0x3d9

    aput-char v12, v10, v14

    invoke-direct {v1, v10}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v10, "multiplierChar"

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v12

    new-instance v1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v10, v14, [C

    invoke-direct {v1, v10}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v10, "zero"

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v13

    new-instance v1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v10, 0x9

    new-array v14, v10, [C

    fill-array-data v14, :array_126

    invoke-direct {v1, v14}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v14, "digits"

    filled-new-array {v14, v1}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v15, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 p0, v0

    new-array v0, v10, [C

    fill-array-data v0, :array_134

    invoke-direct {v15, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "tens"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    new-instance v1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v10, v10, [C

    fill-array-data v10, :array_142

    invoke-direct {v1, v10}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v10, "hundreds"

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    new-instance v1, Lorg/apache/xml/utils/res/StringArrayWrapper;

    filled-new-array {v10, v0, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    const-string v0, "tables"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v10, p0

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    filled-new-array/range {v2 .. v17}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :array_e8
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

    nop

    :array_108
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

    :array_126
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

    nop

    :array_134
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

    nop

    :array_142
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
