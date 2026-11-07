.class final Landroid/icu/impl/CaseMapImpl$GreekUpper;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GreekUpper"
.end annotation


# static fields
.field private static final blacklist AFTER_CASED:I = 0x1

.field private static final blacklist AFTER_VOWEL_WITH_COMBINING_ACCENT:I = 0x2

.field private static final blacklist AFTER_VOWEL_WITH_PRECOMPOSED_ACCENT:I = 0x4

.field private static final blacklist HAS_ACCENT:I = 0x4000

.field private static final blacklist HAS_COMBINING_DIALYTIKA:I = 0x10000

.field private static final blacklist HAS_DIALYTIKA:I = 0x8000

.field private static final blacklist HAS_EITHER_DIALYTIKA:I = 0x18000

.field private static final blacklist HAS_OTHER_GREEK_DIACRITIC:I = 0x20000

.field private static final blacklist HAS_VOWEL:I = 0x1000

.field private static final blacklist HAS_VOWEL_AND_ACCENT:I = 0x5000

.field private static final blacklist HAS_VOWEL_AND_ACCENT_AND_DIALYTIKA:I = 0xd000

.field private static final blacklist HAS_YPOGEGRAMMENI:I = 0x2000

.field private static final blacklist UPPER_MASK:I = 0x3ff

.field private static final blacklist data0370:[C

.field private static final blacklist data1F00:[C

.field private static final blacklist data2126:C = '\u13a9'


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoUpper(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/CaseMapImpl$GreekUpper;->toUpper(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 920
    const/16 v0, 0x90

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Landroid/icu/impl/CaseMapImpl$GreekUpper;->data0370:[C

    .line 1068
    const/16 v0, 0x100

    new-array v0, v0, [C

    fill-array-data v0, :array_a8

    sput-object v0, Landroid/icu/impl/CaseMapImpl$GreekUpper;->data1F00:[C

    return-void

    nop

    :array_14
    .array-data 2
        0x370s
        0x370s
        0x372s
        0x372s
        0x0s
        0x0s
        0x376s
        0x376s
        0x0s
        0x0s
        0x37as
        0x3fds
        0x3fes
        0x3ffs
        0x0s
        0x37fs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x5391s
        0x0s
        0x5395s
        0x5397s
        0x5399s
        0x0s
        0x539fs
        0x0s
        0x53a5s
        0x53a9s
        -0x2c67s
        0x1391s
        0x392s
        0x393s
        0x394s
        0x1395s
        0x396s
        0x1397s
        0x398s
        0x1399s
        0x39as
        0x39bs
        0x39cs
        0x39ds
        0x39es
        0x139fs
        0x3a0s
        0x3a1s
        0x0s
        0x3a3s
        0x3a4s
        0x13a5s
        0x3a6s
        0x3a7s
        0x3a8s
        0x13a9s
        -0x6c67s
        -0x6c5bs
        0x5391s
        0x5395s
        0x5397s
        0x5399s
        -0x2c5bs
        0x1391s
        0x392s
        0x393s
        0x394s
        0x1395s
        0x396s
        0x1397s
        0x398s
        0x1399s
        0x39as
        0x39bs
        0x39cs
        0x39ds
        0x39es
        0x139fs
        0x3a0s
        0x3a1s
        0x3a3s
        0x3a3s
        0x3a4s
        0x13a5s
        0x3a6s
        0x3a7s
        0x3a8s
        0x13a9s
        -0x6c67s
        -0x6c5bs
        0x539fs
        0x53a5s
        0x53a9s
        0x3cfs
        0x392s
        0x398s
        0x3d2s
        0x43d2s
        -0x7c2es
        0x3a6s
        0x3a0s
        0x3cfs
        0x3d8s
        0x3d8s
        0x3das
        0x3das
        0x3dcs
        0x3dcs
        0x3des
        0x3des
        0x3e0s
        0x3e0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x39as
        0x3a1s
        0x3f9s
        0x37fs
        0x3f4s
        0x1395s
        0x0s
        0x3f7s
        0x3f7s
        0x3f9s
        0x3fas
        0x3fas
        0x3fcs
        0x3fds
        0x3fes
        0x3ffs
    .end array-data

    :array_a8
    .array-data 2
        0x1391s
        0x1391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x1391s
        0x1391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x1395s
        0x1395s
        0x5395s
        0x5395s
        0x5395s
        0x5395s
        0x0s
        0x0s
        0x1395s
        0x1395s
        0x5395s
        0x5395s
        0x5395s
        0x5395s
        0x0s
        0x0s
        0x1397s
        0x1397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x1397s
        0x1397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x1399s
        0x1399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x1399s
        0x1399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x139fs
        0x139fs
        0x539fs
        0x539fs
        0x539fs
        0x539fs
        0x0s
        0x0s
        0x139fs
        0x139fs
        0x539fs
        0x539fs
        0x539fs
        0x539fs
        0x0s
        0x0s
        0x13a5s
        0x13a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x0s
        0x13a5s
        0x0s
        0x53a5s
        0x0s
        0x53a5s
        0x0s
        0x53a5s
        0x13a9s
        0x13a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x13a9s
        0x13a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x5391s
        0x5391s
        0x5395s
        0x5395s
        0x5397s
        0x5397s
        0x5399s
        0x5399s
        0x539fs
        0x539fs
        0x53a5s
        0x53a5s
        0x53a9s
        0x53a9s
        0x0s
        0x0s
        0x3391s
        0x3391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x3391s
        0x3391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x3397s
        0x3397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x3397s
        0x3397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x33a9s
        0x33a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x33a9s
        0x33a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x1391s
        0x1391s
        0x7391s
        0x3391s
        0x7391s
        0x0s
        0x5391s
        0x7391s
        0x1391s
        0x1391s
        0x5391s
        0x5391s
        0x3391s
        0x0s
        0x1399s
        0x0s
        0x0s
        0x0s
        0x7397s
        0x3397s
        0x7397s
        0x0s
        0x5397s
        0x7397s
        0x5395s
        0x5395s
        0x5397s
        0x5397s
        0x3397s
        0x0s
        0x0s
        0x0s
        0x1399s
        0x1399s
        -0x2c67s
        -0x2c67s
        0x0s
        0x0s
        0x5399s
        -0x2c67s
        0x1399s
        0x1399s
        0x5399s
        0x5399s
        0x0s
        0x0s
        0x0s
        0x0s
        0x13a5s
        0x13a5s
        -0x2c5bs
        -0x2c5bs
        0x3a1s
        0x3a1s
        0x53a5s
        -0x2c5bs
        0x13a5s
        0x13a5s
        0x53a5s
        0x53a5s
        0x3a1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x73a9s
        0x33a9s
        0x73a9s
        0x0s
        0x53a9s
        0x73a9s
        0x539fs
        0x539fs
        0x53a9s
        0x53a9s
        0x33a9s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final blacklist getDiacriticData(I)I
    .registers 2
    .param p0, "c"    # I

    .line 1351
    sparse-switch p0, :sswitch_data_16

    .line 1372
    const/4 v0, 0x0

    return v0

    .line 1364
    :sswitch_5
    const/16 v0, 0x2000

    return v0

    .line 1362
    :sswitch_8
    const v0, 0x14000

    return v0

    .line 1360
    :sswitch_c
    const/high16 v0, 0x10000

    return v0

    .line 1370
    :sswitch_f
    const/high16 v0, 0x20000

    return v0

    .line 1358
    :sswitch_12
    const/16 v0, 0x4000

    return v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x300 -> :sswitch_12
        0x301 -> :sswitch_12
        0x302 -> :sswitch_12
        0x303 -> :sswitch_12
        0x304 -> :sswitch_f
        0x306 -> :sswitch_f
        0x308 -> :sswitch_c
        0x311 -> :sswitch_12
        0x313 -> :sswitch_f
        0x314 -> :sswitch_f
        0x342 -> :sswitch_12
        0x343 -> :sswitch_f
        0x344 -> :sswitch_8
        0x345 -> :sswitch_5
    .end sparse-switch
.end method

.method private static final blacklist getLetterData(I)I
    .registers 5
    .param p0, "c"    # I

    .line 1332
    const/16 v0, 0x370

    const/4 v1, 0x0

    if-lt p0, v0, :cond_2c

    const/16 v0, 0x2126

    if-lt v0, p0, :cond_2c

    const/16 v2, 0x3ff

    if-ge v2, p0, :cond_12

    const/16 v3, 0x1f00

    if-ge p0, v3, :cond_12

    goto :goto_2c

    .line 1334
    :cond_12
    if-gt p0, v2, :cond_1b

    .line 1335
    sget-object v0, Landroid/icu/impl/CaseMapImpl$GreekUpper;->data0370:[C

    add-int/lit16 v1, p0, -0x370

    aget-char v0, v0, v1

    return v0

    .line 1336
    :cond_1b
    const/16 v2, 0x1fff

    if-gt p0, v2, :cond_26

    .line 1337
    sget-object v0, Landroid/icu/impl/CaseMapImpl$GreekUpper;->data1F00:[C

    add-int/lit16 v1, p0, -0x1f00

    aget-char v0, v0, v1

    return v0

    .line 1338
    :cond_26
    if-ne p0, v0, :cond_2b

    .line 1339
    const/16 v0, 0x13a9

    return v0

    .line 1341
    :cond_2b
    return v1

    .line 1333
    :cond_2c
    :goto_2c
    return v1
.end method

.method private static blacklist isFollowedByCasedLetter(Ljava/lang/CharSequence;I)Z
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I

    .line 1377
    nop

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_21

    .line 1378
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1379
    .local v0, "c":I
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, v0}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v2

    .line 1380
    .local v2, "type":I
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1c

    .line 1382
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 1388
    .end local v0    # "c":I
    .end local v2    # "type":I
    goto :goto_1

    .line 1383
    .restart local v0    # "c":I
    .restart local v2    # "type":I
    :cond_1c
    if-eqz v2, :cond_20

    .line 1384
    const/4 v1, 0x1

    return v1

    .line 1386
    :cond_20
    return v1

    .line 1389
    .end local v0    # "c":I
    .end local v2    # "type":I
    :cond_21
    return v1
.end method

.method private static blacklist toUpper(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 27
    .param p0, "options"    # I
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p3, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1403
    .local p2, "dest":Ljava/lang/Appendable;, "TA;"
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 1404
    .local v4, "state":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_17d

    .line 1405
    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 1406
    .local v6, "c":I
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v7, v5

    .line 1407
    .local v7, "nextIndex":I
    const/4 v8, 0x0

    .line 1408
    .local v8, "nextState":I
    sget-object v9, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v9, v6}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v9

    .line 1409
    .local v9, "type":I
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_28

    .line 1411
    and-int/lit8 v10, v4, 0x1

    or-int/2addr v8, v10

    goto :goto_2c

    .line 1412
    :cond_28
    if-eqz v9, :cond_2c

    .line 1414
    or-int/lit8 v8, v8, 0x1

    .line 1416
    :cond_2c
    :goto_2c
    invoke-static {v6}, Landroid/icu/impl/CaseMapImpl$GreekUpper;->getLetterData(I)I

    move-result v10

    .line 1417
    .local v10, "data":I
    if-lez v10, :cond_166

    .line 1418
    and-int/lit16 v12, v10, 0x3ff

    .line 1425
    .local v12, "upper":I
    and-int/lit16 v13, v10, 0x1000

    const/16 v15, 0x3a5

    const v16, 0x8000

    const/16 v14, 0x399

    if-eqz v13, :cond_51

    and-int/lit8 v13, v4, 0x6

    if-eqz v13, :cond_51

    if-eq v12, v14, :cond_47

    if-ne v12, v15, :cond_51

    .line 1428
    :cond_47
    and-int/lit8 v13, v4, 0x4

    if-eqz v13, :cond_4e

    move/from16 v13, v16

    goto :goto_50

    .line 1429
    :cond_4e
    const/high16 v13, 0x10000

    :goto_50
    or-int/2addr v10, v13

    .line 1431
    :cond_51
    const/4 v13, 0x0

    .line 1432
    .local v13, "numYpogegrammeni":I
    and-int/lit16 v11, v10, 0x2000

    if-eqz v11, :cond_57

    .line 1433
    const/4 v13, 0x1

    .line 1435
    :cond_57
    and-int/lit16 v11, v10, 0x4000

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eqz v11, :cond_62

    move/from16 v11, v19

    goto :goto_64

    :cond_62
    move/from16 v11, v18

    .line 1437
    .local v11, "hasPrecomposedAccent":Z
    :goto_64
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v7, v15, :cond_83

    .line 1438
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Landroid/icu/impl/CaseMapImpl$GreekUpper;->getDiacriticData(I)I

    move-result v15

    .line 1439
    .local v15, "diacriticData":I
    if-eqz v15, :cond_83

    .line 1440
    or-int/2addr v10, v15

    .line 1441
    and-int/lit16 v14, v15, 0x2000

    if-eqz v14, :cond_7b

    .line 1442
    add-int/lit8 v13, v13, 0x1

    .line 1444
    :cond_7b
    nop

    .end local v15    # "diacriticData":I
    add-int/lit8 v7, v7, 0x1

    .line 1448
    const/16 v14, 0x399

    const/16 v15, 0x3a5

    goto :goto_64

    .line 1449
    :cond_83
    const v14, 0xd000

    and-int/2addr v14, v10

    const/16 v15, 0x5000

    if-ne v14, v15, :cond_91

    .line 1450
    if-eqz v11, :cond_8f

    const/4 v14, 0x4

    goto :goto_90

    .line 1451
    :cond_8f
    const/4 v14, 0x2

    :goto_90
    or-int/2addr v8, v14

    .line 1454
    :cond_91
    const/4 v14, 0x0

    .line 1455
    .local v14, "addTonos":Z
    const/16 v15, 0x397

    if-ne v12, v15, :cond_ad

    and-int/lit16 v15, v10, 0x4000

    if-eqz v15, :cond_ad

    if-nez v13, :cond_ad

    and-int/lit8 v15, v4, 0x1

    if-nez v15, :cond_ad

    .line 1459
    invoke-static {v1, v7}, Landroid/icu/impl/CaseMapImpl$GreekUpper;->isFollowedByCasedLetter(Ljava/lang/CharSequence;I)Z

    move-result v15

    if-nez v15, :cond_ad

    .line 1462
    if-eqz v11, :cond_ab

    .line 1463
    const/16 v12, 0x389

    goto :goto_c5

    .line 1465
    :cond_ab
    const/4 v14, 0x1

    goto :goto_c5

    .line 1467
    :cond_ad
    and-int v15, v10, v16

    if-eqz v15, :cond_c5

    .line 1469
    const/16 v15, 0x399

    const v16, -0x18001

    if-ne v12, v15, :cond_bd

    .line 1470
    const/16 v12, 0x3aa

    .line 1471
    and-int v10, v10, v16

    goto :goto_c5

    .line 1472
    :cond_bd
    const/16 v15, 0x3a5

    if-ne v12, v15, :cond_c5

    .line 1473
    const/16 v12, 0x3ab

    .line 1474
    and-int v10, v10, v16

    .line 1479
    :cond_c5
    :goto_c5
    const v17, 0x18000

    if-nez v3, :cond_d5

    and-int/lit16 v15, v0, 0x4000

    if-nez v15, :cond_d5

    .line 1480
    const/4 v15, 0x1

    move/from16 v20, v4

    move/from16 v21, v5

    .local v15, "change":Z
    goto/16 :goto_145

    .line 1483
    .end local v15    # "change":Z
    :cond_d5
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ne v15, v12, :cond_e1

    if-lez v13, :cond_de

    goto :goto_e1

    :cond_de
    move/from16 v15, v18

    goto :goto_e3

    :cond_e1
    :goto_e1
    move/from16 v15, v19

    .line 1484
    .restart local v15    # "change":Z
    :goto_e3
    move/from16 v20, v4

    .end local v4    # "state":I
    .local v20, "state":I
    add-int/lit8 v4, v5, 0x1

    .line 1485
    .local v4, "i2":I
    and-int v21, v10, v17

    if-eqz v21, :cond_107

    .line 1486
    if-ge v4, v7, :cond_fd

    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move/from16 v22, v4

    const/16 v4, 0x308

    .end local v4    # "i2":I
    .local v22, "i2":I
    if-eq v5, v4, :cond_fa

    goto :goto_101

    :cond_fa
    move/from16 v4, v18

    goto :goto_103

    .end local v21    # "i":I
    .end local v22    # "i2":I
    .restart local v4    # "i2":I
    .restart local v5    # "i":I
    :cond_fd
    move/from16 v22, v4

    move/from16 v21, v5

    .end local v4    # "i2":I
    .end local v5    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "i2":I
    :goto_101
    move/from16 v4, v19

    :goto_103
    or-int/2addr v15, v4

    .line 1487
    add-int/lit8 v4, v22, 0x1

    .end local v22    # "i2":I
    .restart local v4    # "i2":I
    goto :goto_10b

    .line 1485
    .end local v21    # "i":I
    .restart local v5    # "i":I
    :cond_107
    move/from16 v22, v4

    move/from16 v21, v5

    .line 1489
    .end local v5    # "i":I
    .restart local v21    # "i":I
    :goto_10b
    if-eqz v14, :cond_120

    .line 1490
    if-ge v4, v7, :cond_11b

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v1, 0x301

    if-eq v5, v1, :cond_118

    goto :goto_11b

    :cond_118
    move/from16 v1, v18

    goto :goto_11d

    :cond_11b
    :goto_11b
    move/from16 v1, v19

    :goto_11d
    or-int/2addr v15, v1

    .line 1491
    add-int/lit8 v4, v4, 0x1

    .line 1493
    :cond_120
    sub-int v1, v7, v21

    .line 1494
    .local v1, "oldLength":I
    sub-int v5, v4, v21

    add-int/2addr v5, v13

    .line 1495
    .local v5, "newLength":I
    if-eq v1, v5, :cond_12a

    move/from16 v22, v19

    goto :goto_12c

    :cond_12a
    move/from16 v22, v18

    :goto_12c
    or-int v15, v15, v22

    .line 1496
    if-eqz v15, :cond_136

    .line 1497
    if-eqz v3, :cond_145

    .line 1498
    invoke-virtual {v3, v1, v5}, Landroid/icu/text/Edits;->addReplace(II)V

    goto :goto_145

    .line 1501
    :cond_136
    if-eqz v3, :cond_13b

    .line 1502
    invoke-virtual {v3, v1}, Landroid/icu/text/Edits;->addUnchanged(I)V

    .line 1505
    :cond_13b
    move/from16 v22, v1

    .end local v1    # "oldLength":I
    .local v22, "oldLength":I
    and-int/lit16 v1, v0, 0x4000

    if-nez v1, :cond_143

    move/from16 v18, v19

    :cond_143
    move/from16 v15, v18

    .line 1509
    .end local v4    # "i2":I
    .end local v5    # "newLength":I
    .end local v22    # "oldLength":I
    :cond_145
    :goto_145
    if-eqz v15, :cond_165

    .line 1510
    int-to-char v1, v12

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1511
    and-int v1, v10, v17

    if-eqz v1, :cond_154

    .line 1512
    const/16 v4, 0x308

    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1514
    :cond_154
    if-eqz v14, :cond_15b

    .line 1515
    const/16 v1, 0x301

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1517
    :cond_15b
    :goto_15b
    if-lez v13, :cond_165

    .line 1518
    const/16 v1, 0x399

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1519
    add-int/lit8 v13, v13, -0x1

    goto :goto_15b

    .line 1522
    .end local v11    # "hasPrecomposedAccent":Z
    .end local v12    # "upper":I
    .end local v13    # "numYpogegrammeni":I
    .end local v14    # "addTonos":Z
    .end local v15    # "change":Z
    :cond_165
    goto :goto_177

    .line 1523
    .end local v20    # "state":I
    .end local v21    # "i":I
    .local v4, "state":I
    .local v5, "i":I
    :cond_166
    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "state":I
    .end local v5    # "i":I
    .restart local v20    # "state":I
    .restart local v21    # "i":I
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v6, v4, v2, v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v6

    .line 1524
    sub-int v1, v7, v21

    invoke-static {v6, v2, v1, v0, v3}, Landroid/icu/impl/CaseMapImpl;->-$$Nest$smappendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    .line 1526
    :goto_177
    move v5, v7

    .line 1527
    .end local v21    # "i":I
    .restart local v5    # "i":I
    move v4, v8

    .line 1528
    .end local v6    # "c":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextState":I
    .end local v9    # "type":I
    .end local v10    # "data":I
    .end local v20    # "state":I
    .restart local v4    # "state":I
    move-object/from16 v1, p1

    goto/16 :goto_a

    .line 1529
    .end local v5    # "i":I
    :cond_17d
    return-object v2
.end method
