.class public Landroid/icu/impl/locale/LocaleDistance;
.super Ljava/lang/Object;
.source "LocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/LocaleDistance$Data;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ABOVE_THRESHOLD:I = 0x64

.field private static final blacklist DEBUG_OUTPUT:Z = false

.field private static final blacklist DISTANCE_FRACTION_MASK:I = 0x7

.field private static final blacklist DISTANCE_INT_SHIFT:I = 0x7

.field private static final blacklist DISTANCE_IS_FINAL:I = 0x100

.field private static final blacklist DISTANCE_IS_FINAL_OR_SKIP_SCRIPT:I = 0x180

.field private static final blacklist DISTANCE_MASK:I = 0x3ff

.field private static final blacklist DISTANCE_SHIFT:I = 0x3

.field public static final blacklist DISTANCE_SKIP_SCRIPT:I = 0x80

.field public static final blacklist END_OF_SUBTAG:I = 0x80

.field private static final blacklist INDEX_NEG_1:I = -0x400

.field private static final blacklist INDEX_SHIFT:I = 0xa

.field public static final blacklist INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

.field public static final blacklist IX_DEF_LANG_DISTANCE:I = 0x0

.field public static final blacklist IX_DEF_REGION_DISTANCE:I = 0x2

.field public static final blacklist IX_DEF_SCRIPT_DISTANCE:I = 0x1

.field public static final blacklist IX_LIMIT:I = 0x4

.field public static final blacklist IX_MIN_REGION_DISTANCE:I = 0x3


# instance fields
.field private final blacklist defaultDemotionPerDesiredLocale:I

.field private final blacklist defaultLanguageDistance:I

.field private final blacklist defaultRegionDistance:I

.field private final blacklist defaultScriptDistance:I

.field private final blacklist minRegionDistance:I

.field private final blacklist paradigmLSRs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/LSR;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist partitionArrays:[Ljava/lang/String;

.field private final blacklist regionToPartitionsIndex:[B

.field private final blacklist trie:Landroid/icu/util/BytesTrie;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 28
    nop

    .line 197
    new-instance v0, Landroid/icu/impl/locale/LocaleDistance;

    invoke-static {}, Landroid/icu/impl/locale/LocaleDistance$Data;->load()Landroid/icu/impl/locale/LocaleDistance$Data;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LocaleDistance;-><init>(Landroid/icu/impl/locale/LocaleDistance$Data;)V

    sput-object v0, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/locale/LocaleDistance$Data;)V
    .registers 16
    .param p1, "data"    # Landroid/icu/impl/locale/LocaleDistance$Data;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->trie:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleDistance;->trie:Landroid/icu/util/BytesTrie;

    .line 201
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleDistance;->regionToPartitionsIndex:[B

    .line 202
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleDistance;->partitionArrays:[Ljava/lang/String;

    .line 203
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleDistance;->paradigmLSRs:Ljava/util/Set;

    .line 204
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/icu/impl/locale/LocaleDistance;->defaultLanguageDistance:I

    .line 205
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/impl/locale/LocaleDistance;->defaultScriptDistance:I

    .line 206
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    iput v0, p0, Landroid/icu/impl/locale/LocaleDistance;->defaultRegionDistance:I

    .line 207
    iget-object v0, p1, Landroid/icu/impl/locale/LocaleDistance$Data;->distances:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    iput v0, p0, Landroid/icu/impl/locale/LocaleDistance;->minRegionDistance:I

    .line 215
    new-instance v0, Landroid/icu/impl/locale/LSR;

    const-string v3, "en"

    const-string v4, "Latn"

    const-string v5, "US"

    const/4 v6, 0x7

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v8, v0

    .line 216
    .local v8, "en":Landroid/icu/impl/locale/LSR;
    new-instance v0, Landroid/icu/impl/locale/LSR;

    const-string v5, "GB"

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    .local v0, "enGB":Landroid/icu/impl/locale/LSR;
    new-array v9, v1, [Landroid/icu/impl/locale/LSR;

    aput-object v0, v9, v2

    .line 218
    const/16 v1, 0x32

    invoke-static {v1}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v11

    sget-object v12, Landroid/icu/util/LocaleMatcher$FavorSubtag;->LANGUAGE:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    sget-object v13, Landroid/icu/util/LocaleMatcher$Direction;->WITH_ONE_WAY:Landroid/icu/util/LocaleMatcher$Direction;

    .line 217
    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result v1

    .line 219
    .local v1, "indexAndDistance":I
    invoke-static {v1}, Landroid/icu/impl/locale/LocaleDistance;->getDistanceFloor(I)I

    move-result v2

    iput v2, v7, Landroid/icu/impl/locale/LocaleDistance;->defaultDemotionPerDesiredLocale:I

    .line 228
    return-void
.end method

.method private static final blacklist getDesSuppScriptDistance(Landroid/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "iter"    # Landroid/icu/util/BytesTrie;
    .param p1, "startState"    # J
    .param p3, "desired"    # Ljava/lang/String;
    .param p4, "supported"    # Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    invoke-static {p0, p3, v0}, Landroid/icu/impl/locale/LocaleDistance;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v0

    .line 405
    .local v0, "distance":I
    if-ltz v0, :cond_c

    .line 406
    const/4 v1, 0x1

    invoke-static {p0, p4, v1}, Landroid/icu/impl/locale/LocaleDistance;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v0

    .line 408
    :cond_c
    if-gez v0, :cond_2c

    .line 409
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v1

    .line 410
    .local v1, "result":Landroid/icu/util/BytesTrie$Result;
    nop

    .line 411
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 412
    const/4 v0, 0x0

    goto :goto_26

    .line 414
    :cond_21
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v0

    .line 415
    nop

    .line 417
    :goto_26
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v1, v2, :cond_2c

    .line 418
    or-int/lit16 v0, v0, 0x100

    .line 421
    .end local v1    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_2c
    return v0
.end method

.method public static final blacklist getDistanceDouble(I)D
    .registers 5
    .param p0, "indexAndDistance"    # I

    .line 93
    invoke-static {p0}, Landroid/icu/impl/locale/LocaleDistance;->getShiftedDistance(I)I

    move-result v0

    int-to-double v0, v0

    .line 94
    .local v0, "shiftedDistance":D
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double v2, v0, v2

    return-wide v2
.end method

.method public static final blacklist getDistanceFloor(I)I
    .registers 2
    .param p0, "indexAndDistance"    # I

    .line 98
    and-int/lit16 v0, p0, 0x3ff

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static final blacklist getFallbackRegionDistance(Landroid/icu/util/BytesTrie;J)I
    .registers 5
    .param p0, "iter"    # Landroid/icu/util/BytesTrie;
    .param p1, "startState"    # J

    .line 490
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 491
    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    nop

    .line 492
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v1

    .line 493
    .local v1, "distance":I
    nop

    .line 494
    return v1
.end method

.method public static final blacklist getIndex(I)I
    .registers 2
    .param p0, "indexAndDistance"    # I

    .line 102
    nop

    .line 103
    shr-int/lit8 v0, p0, 0xa

    return v0
.end method

.method private static final blacklist getRegionPartitionsDistance(Landroid/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;I)I
    .registers 20
    .param p0, "iter"    # Landroid/icu/util/BytesTrie;
    .param p1, "startState"    # J
    .param p3, "desiredPartitions"    # Ljava/lang/String;
    .param p4, "supportedPartitions"    # Ljava/lang/String;
    .param p5, "threshold"    # I

    .line 426
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 427
    .local v3, "desLength":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 428
    .local v4, "suppLength":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3e

    if-ne v4, v5, :cond_3e

    .line 430
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p0, v6}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v6

    .line 431
    .local v6, "result":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 432
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v6

    .line 433
    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 434
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v5

    return v5

    .line 437
    :cond_39
    invoke-static/range {p0 .. p2}, Landroid/icu/impl/locale/LocaleDistance;->getFallbackRegionDistance(Landroid/icu/util/BytesTrie;J)I

    move-result v5

    return v5

    .line 440
    .end local v6    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_3e
    const/4 v6, 0x0

    .line 442
    .local v6, "regionDistance":I
    const/4 v7, 0x0

    .line 443
    .local v7, "star":Z
    const/4 v8, 0x0

    .line 446
    .local v8, "di":I
    :goto_41
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "di":I
    .local v9, "di":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    or-int/lit16 v8, v8, 0x80

    invoke-virtual {p0, v8}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v8

    .line 447
    .local v8, "result":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v8}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 448
    if-le v4, v5, :cond_5a

    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v10

    goto :goto_5c

    :cond_5a
    const-wide/16 v10, 0x0

    .line 449
    .local v10, "desState":J
    :goto_5c
    const/4 v12, 0x0

    .line 450
    .local v12, "si":I
    :goto_5d
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "si":I
    .local v13, "si":I
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {p0, v12}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v8

    .line 452
    invoke-virtual {v8}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v12

    if-eqz v12, :cond_74

    .line 453
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v12

    .local v12, "d":I
    goto :goto_7d

    .line 454
    .end local v12    # "d":I
    :cond_74
    if-eqz v7, :cond_78

    .line 455
    const/4 v12, 0x0

    .restart local v12    # "d":I
    goto :goto_7d

    .line 457
    .end local v12    # "d":I
    :cond_78
    invoke-static/range {p0 .. p2}, Landroid/icu/impl/locale/LocaleDistance;->getFallbackRegionDistance(Landroid/icu/util/BytesTrie;J)I

    move-result v12

    .line 458
    .restart local v12    # "d":I
    const/4 v7, 0x1

    .line 460
    :goto_7d
    if-le v12, v2, :cond_80

    .line 461
    return v12

    .line 462
    :cond_80
    if-ge v6, v12, :cond_83

    .line 463
    move v6, v12

    .line 465
    :cond_83
    if-ge v13, v4, :cond_8a

    .line 466
    invoke-virtual {p0, v10, v11}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 470
    .end local v12    # "d":I
    move v12, v13

    goto :goto_5d

    .line 465
    .end local v10    # "desState":J
    .end local v13    # "si":I
    :cond_8a
    goto :goto_99

    .line 471
    :cond_8b
    if-nez v7, :cond_99

    .line 472
    invoke-static/range {p0 .. p2}, Landroid/icu/impl/locale/LocaleDistance;->getFallbackRegionDistance(Landroid/icu/util/BytesTrie;J)I

    move-result v10

    .line 473
    .local v10, "d":I
    if-le v10, v2, :cond_94

    .line 474
    return v10

    .line 475
    :cond_94
    if-ge v6, v10, :cond_97

    .line 476
    move v6, v10

    .line 478
    :cond_97
    const/4 v7, 0x1

    goto :goto_9a

    .line 471
    .end local v10    # "d":I
    :cond_99
    :goto_99
    nop

    .line 480
    :goto_9a
    if-ge v9, v3, :cond_a1

    .line 481
    invoke-virtual/range {p0 .. p2}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 485
    .end local v8    # "result":Landroid/icu/util/BytesTrie$Result;
    move v8, v9

    goto :goto_41

    .line 486
    .end local v9    # "di":I
    :cond_a1
    return v6
.end method

.method public static final blacklist getShiftedDistance(I)I
    .registers 2
    .param p0, "indexAndDistance"    # I

    .line 89
    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private blacklist isMatch(Landroid/icu/impl/locale/LSR;Landroid/icu/impl/locale/LSR;ILandroid/icu/util/LocaleMatcher$FavorSubtag;)Z
    .registers 14
    .param p1, "desired"    # Landroid/icu/impl/locale/LSR;
    .param p2, "supported"    # Landroid/icu/impl/locale/LSR;
    .param p3, "shiftedThreshold"    # I
    .param p4, "favorSubtag"    # Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 396
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/icu/impl/locale/LSR;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    .end local p1    # "desired":Landroid/icu/impl/locale/LSR;
    .end local p3    # "shiftedThreshold":I
    .end local p4    # "favorSubtag":Landroid/icu/util/LocaleMatcher$FavorSubtag;
    .local v2, "desired":Landroid/icu/impl/locale/LSR;
    .local v5, "shiftedThreshold":I
    .local v6, "favorSubtag":Landroid/icu/util/LocaleMatcher$FavorSubtag;
    invoke-virtual/range {v1 .. v7}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result p1

    if-ltz p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v8

    :goto_14
    return v0
.end method

.method private blacklist partitionsForRegion(Landroid/icu/impl/locale/LSR;)Ljava/lang/String;
    .registers 4
    .param p1, "lsr"    # Landroid/icu/impl/locale/LSR;

    .line 535
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleDistance;->regionToPartitionsIndex:[B

    iget v1, p1, Landroid/icu/impl/locale/LSR;->regionIndex:I

    aget-byte v0, v0, v1

    .line 536
    .local v0, "pIndex":I
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleDistance;->partitionArrays:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static final blacklist shiftDistance(I)I
    .registers 2
    .param p0, "distance"    # I

    .line 85
    shl-int/lit8 v0, p0, 0x3

    return v0
.end method

.method private static final blacklist trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;Z)I
    .registers 9
    .param p0, "iter"    # Landroid/icu/util/BytesTrie;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "wantValue"    # Z

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 499
    return v1

    .line 501
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 502
    .local v2, "end":I
    :goto_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 503
    .local v3, "c":I
    if-ge v0, v2, :cond_23

    .line 504
    invoke-virtual {p0, v3}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v4

    if-nez v4, :cond_20

    .line 505
    return v1

    .line 501
    .end local v3    # "c":I
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 509
    .restart local v3    # "c":I
    :cond_23
    or-int/lit16 v4, v3, 0x80

    invoke-virtual {p0, v4}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    .line 510
    .local v4, "result":Landroid/icu/util/BytesTrie$Result;
    if-eqz p2, :cond_3c

    .line 511
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 512
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v1

    .line 513
    .local v1, "value":I
    sget-object v5, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v4, v5, :cond_3b

    .line 514
    or-int/lit16 v1, v1, 0x100

    .line 516
    :cond_3b
    return v1

    .line 519
    .end local v1    # "value":I
    :cond_3c
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 520
    const/4 v1, 0x0

    return v1

    .line 523
    :cond_44
    return v1
.end method


# virtual methods
.method public blacklist getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I
    .registers 30
    .param p1, "desired"    # Landroid/icu/impl/locale/LSR;
    .param p2, "supportedLSRs"    # [Landroid/icu/impl/locale/LSR;
    .param p3, "supportedLSRsLength"    # I
    .param p4, "shiftedThreshold"    # I
    .param p5, "favorSubtag"    # Landroid/icu/util/LocaleMatcher$FavorSubtag;
    .param p6, "direction"    # Landroid/icu/util/LocaleMatcher$Direction;

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v5, Landroid/icu/util/BytesTrie;

    iget-object v6, v0, Landroid/icu/impl/locale/LocaleDistance;->trie:Landroid/icu/util/BytesTrie;

    invoke-direct {v5, v6}, Landroid/icu/util/BytesTrie;-><init>(Landroid/icu/util/BytesTrie;)V

    move-object v7, v5

    .line 254
    .local v7, "iter":Landroid/icu/util/BytesTrie;
    iget-object v5, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v7, v5, v6}, Landroid/icu/impl/locale/LocaleDistance;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v5

    .line 255
    .local v5, "desLangDistance":I
    const/4 v6, 0x1

    if-ltz v5, :cond_23

    if-le v2, v6, :cond_23

    invoke-virtual {v7}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v8

    goto :goto_25

    :cond_23
    const-wide/16 v8, 0x0

    :goto_25
    move-wide v13, v8

    .line 257
    .local v13, "desLangState":J
    const/4 v8, -0x1

    .line 259
    .local v8, "bestIndex":I
    const/4 v9, -0x1

    .line 260
    .local v9, "bestLikelyInfo":I
    const/4 v10, 0x0

    move/from16 v15, p4

    move/from16 v16, v8

    move v8, v10

    .end local p4    # "shiftedThreshold":I
    .local v8, "slIndex":I
    .local v15, "shiftedThreshold":I
    .local v16, "bestIndex":I
    :goto_2e
    if-ge v8, v2, :cond_174

    .line 261
    aget-object v10, p2, v8

    .line 262
    .local v10, "supported":Landroid/icu/impl/locale/LSR;
    const/4 v11, 0x0

    .line 263
    .local v11, "star":Z
    move v12, v5

    .line 264
    .local v12, "distance":I
    if-ltz v12, :cond_42

    .line 265
    nop

    .line 266
    if-eqz v8, :cond_3c

    .line 267
    invoke-virtual {v7, v13, v14}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 269
    :cond_3c
    iget-object v2, v10, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-static {v7, v2, v6}, Landroid/icu/impl/locale/LocaleDistance;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v12

    .line 276
    :cond_42
    if-ltz v12, :cond_4a

    .line 277
    and-int/lit16 v2, v12, 0x180

    .line 278
    .local v2, "flags":I
    and-int/lit16 v12, v12, -0x181

    move v6, v11

    goto :goto_5d

    .line 280
    .end local v2    # "flags":I
    :cond_4a
    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v10, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 281
    const/4 v2, 0x0

    move v12, v2

    .end local v12    # "distance":I
    .local v2, "distance":I
    goto :goto_5a

    .line 283
    .end local v2    # "distance":I
    .restart local v12    # "distance":I
    :cond_57
    iget v2, v0, Landroid/icu/impl/locale/LocaleDistance;->defaultLanguageDistance:I

    move v12, v2

    .line 285
    :goto_5a
    const/4 v2, 0x0

    .line 286
    .local v2, "flags":I
    const/4 v11, 0x1

    move v6, v11

    .line 288
    .end local v11    # "star":Z
    .local v6, "star":Z
    :goto_5d
    nop

    .line 293
    add-int/lit8 v11, v15, 0x7

    shr-int/lit8 v11, v11, 0x3

    .line 299
    .local v11, "roundedThreshold":I
    move/from16 p4, v2

    .end local v2    # "flags":I
    .local p4, "flags":I
    sget-object v2, Landroid/icu/util/LocaleMatcher$FavorSubtag;->SCRIPT:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    if-ne v3, v2, :cond_6a

    .line 300
    shr-int/lit8 v12, v12, 0x2

    .line 304
    :cond_6a
    if-le v12, v11, :cond_73

    .line 305
    move/from16 v18, v5

    move/from16 v19, v8

    move v5, v9

    goto/16 :goto_16a

    .line 309
    :cond_73
    if-nez v6, :cond_96

    if-eqz p4, :cond_7e

    move/from16 v18, v5

    move/from16 v17, v6

    move/from16 v19, v8

    goto :goto_9c

    .line 316
    :cond_7e
    move v2, v5

    move/from16 v17, v6

    .end local v5    # "desLangDistance":I
    .end local v6    # "star":Z
    .local v2, "desLangDistance":I
    .local v17, "star":Z
    invoke-virtual {v7}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v5

    move/from16 v18, v2

    .end local v2    # "desLangDistance":I
    .local v18, "desLangDistance":I
    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    move/from16 v19, v8

    .end local v8    # "slIndex":I
    .local v19, "slIndex":I
    iget-object v8, v10, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-static {v7, v5, v6, v2, v8}, Landroid/icu/impl/locale/LocaleDistance;->getDesSuppScriptDistance(Landroid/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, "scriptDistance":I
    and-int/lit16 v5, v2, 0x100

    .line 319
    .end local p4    # "flags":I
    .local v5, "flags":I
    and-int/lit16 v2, v2, -0x101

    goto :goto_ae

    .line 309
    .end local v2    # "scriptDistance":I
    .end local v17    # "star":Z
    .end local v18    # "desLangDistance":I
    .end local v19    # "slIndex":I
    .local v5, "desLangDistance":I
    .restart local v6    # "star":Z
    .restart local v8    # "slIndex":I
    .restart local p4    # "flags":I
    :cond_96
    move/from16 v18, v5

    move/from16 v17, v6

    move/from16 v19, v8

    .line 310
    .end local v5    # "desLangDistance":I
    .end local v6    # "star":Z
    .end local v8    # "slIndex":I
    .restart local v17    # "star":Z
    .restart local v18    # "desLangDistance":I
    .restart local v19    # "slIndex":I
    :goto_9c
    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v5, v10, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 311
    const/4 v2, 0x0

    move/from16 v5, p4

    .restart local v2    # "scriptDistance":I
    goto :goto_ae

    .line 313
    .end local v2    # "scriptDistance":I
    :cond_aa
    iget v2, v0, Landroid/icu/impl/locale/LocaleDistance;->defaultScriptDistance:I

    move/from16 v5, p4

    .line 321
    .end local p4    # "flags":I
    .restart local v2    # "scriptDistance":I
    .local v5, "flags":I
    :goto_ae
    add-int v6, v12, v2

    .line 322
    .end local v12    # "distance":I
    .local v6, "distance":I
    if-le v6, v11, :cond_b5

    .line 323
    move v5, v9

    goto/16 :goto_16a

    .line 326
    :cond_b5
    iget-object v8, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v12, v10, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    move/from16 p4, v2

    move/from16 v20, v5

    move v5, v9

    move-object v2, v10

    move/from16 v22, v11

    goto :goto_10d

    .line 328
    :cond_c8
    if-nez v17, :cond_102

    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_d7

    move/from16 p4, v2

    move/from16 v20, v5

    move v5, v9

    move-object v2, v10

    move/from16 v22, v11

    goto :goto_10a

    .line 331
    :cond_d7
    sub-int v12, v11, v6

    .line 332
    .local v12, "remainingThreshold":I
    iget v8, v0, Landroid/icu/impl/locale/LocaleDistance;->minRegionDistance:I

    if-le v8, v12, :cond_e0

    .line 333
    move v5, v9

    goto/16 :goto_16a

    .line 341
    :cond_e0
    nop

    .line 342
    move/from16 v20, v9

    .end local v9    # "bestLikelyInfo":I
    .local v20, "bestLikelyInfo":I
    invoke-virtual {v7}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v8

    .line 343
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/locale/LocaleDistance;->partitionsForRegion(Landroid/icu/impl/locale/LSR;)Ljava/lang/String;

    move-result-object v21

    .line 344
    move/from16 v22, v11

    .end local v11    # "roundedThreshold":I
    .local v22, "roundedThreshold":I
    invoke-direct {v0, v10}, Landroid/icu/impl/locale/LocaleDistance;->partitionsForRegion(Landroid/icu/impl/locale/LSR;)Ljava/lang/String;

    move-result-object v11

    .line 341
    move/from16 p4, v20

    move/from16 v20, v5

    move/from16 v5, p4

    move/from16 p4, v2

    move-object v2, v10

    move-object/from16 v10, v21

    .end local v10    # "supported":Landroid/icu/impl/locale/LSR;
    .local v2, "supported":Landroid/icu/impl/locale/LSR;
    .local v5, "bestLikelyInfo":I
    .local v20, "flags":I
    .local p4, "scriptDistance":I
    invoke-static/range {v7 .. v12}, Landroid/icu/impl/locale/LocaleDistance;->getRegionPartitionsDistance(Landroid/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_10d

    .line 328
    .end local v12    # "remainingThreshold":I
    .end local v20    # "flags":I
    .end local v22    # "roundedThreshold":I
    .end local p4    # "scriptDistance":I
    .local v2, "scriptDistance":I
    .local v5, "flags":I
    .restart local v9    # "bestLikelyInfo":I
    .restart local v10    # "supported":Landroid/icu/impl/locale/LSR;
    .restart local v11    # "roundedThreshold":I
    :cond_102
    move/from16 p4, v2

    move/from16 v20, v5

    move v5, v9

    move-object v2, v10

    move/from16 v22, v11

    .line 329
    .end local v9    # "bestLikelyInfo":I
    .end local v10    # "supported":Landroid/icu/impl/locale/LSR;
    .end local v11    # "roundedThreshold":I
    .local v2, "supported":Landroid/icu/impl/locale/LSR;
    .local v5, "bestLikelyInfo":I
    .restart local v20    # "flags":I
    .restart local v22    # "roundedThreshold":I
    .restart local p4    # "scriptDistance":I
    :goto_10a
    iget v8, v0, Landroid/icu/impl/locale/LocaleDistance;->defaultRegionDistance:I

    add-int/2addr v6, v8

    .line 347
    :goto_10d
    invoke-static {v6}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v8

    .line 348
    .local v8, "shiftedDistance":I
    if-nez v8, :cond_133

    .line 351
    iget v9, v1, Landroid/icu/impl/locale/LSR;->flags:I

    iget v10, v2, Landroid/icu/impl/locale/LSR;->flags:I

    xor-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 352
    if-ge v8, v15, :cond_16a

    .line 353
    sget-object v9, Landroid/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Landroid/icu/util/LocaleMatcher$Direction;

    if-ne v4, v9, :cond_125

    .line 355
    invoke-direct {v0, v2, v1, v15, v3}, Landroid/icu/impl/locale/LocaleDistance;->isMatch(Landroid/icu/impl/locale/LSR;Landroid/icu/impl/locale/LSR;ILandroid/icu/util/LocaleMatcher$FavorSubtag;)Z

    move-result v9

    if-eqz v9, :cond_16a

    .line 356
    :cond_125
    if-nez v8, :cond_12a

    .line 357
    shl-int/lit8 v9, v19, 0xa

    return v9

    .line 359
    :cond_12a
    move/from16 v9, v19

    .line 360
    .end local v16    # "bestIndex":I
    .local v9, "bestIndex":I
    move v10, v8

    .line 361
    .end local v15    # "shiftedThreshold":I
    .local v10, "shiftedThreshold":I
    const/4 v5, -0x1

    move/from16 v16, v9

    move v15, v10

    move v9, v5

    goto :goto_16b

    .line 365
    .end local v9    # "bestIndex":I
    .end local v10    # "shiftedThreshold":I
    .restart local v15    # "shiftedThreshold":I
    .restart local v16    # "bestIndex":I
    :cond_133
    if-ge v8, v15, :cond_148

    .line 366
    sget-object v9, Landroid/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Landroid/icu/util/LocaleMatcher$Direction;

    if-ne v4, v9, :cond_13f

    .line 368
    invoke-direct {v0, v2, v1, v15, v3}, Landroid/icu/impl/locale/LocaleDistance;->isMatch(Landroid/icu/impl/locale/LSR;Landroid/icu/impl/locale/LSR;ILandroid/icu/util/LocaleMatcher$FavorSubtag;)Z

    move-result v9

    if-eqz v9, :cond_16a

    .line 369
    :cond_13f
    move/from16 v9, v19

    .line 370
    .end local v16    # "bestIndex":I
    .restart local v9    # "bestIndex":I
    move v10, v8

    .line 371
    .end local v15    # "shiftedThreshold":I
    .restart local v10    # "shiftedThreshold":I
    const/4 v5, -0x1

    move/from16 v16, v9

    move v15, v10

    move v9, v5

    goto :goto_16b

    .line 373
    .end local v9    # "bestIndex":I
    .end local v10    # "shiftedThreshold":I
    .restart local v15    # "shiftedThreshold":I
    .restart local v16    # "bestIndex":I
    :cond_148
    if-ne v8, v15, :cond_16a

    if-ltz v16, :cond_16a

    .line 374
    sget-object v9, Landroid/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Landroid/icu/util/LocaleMatcher$Direction;

    if-ne v4, v9, :cond_156

    .line 376
    invoke-direct {v0, v2, v1, v15, v3}, Landroid/icu/impl/locale/LocaleDistance;->isMatch(Landroid/icu/impl/locale/LSR;Landroid/icu/impl/locale/LSR;ILandroid/icu/util/LocaleMatcher$FavorSubtag;)Z

    move-result v9

    if-eqz v9, :cond_16a

    .line 377
    :cond_156
    sget-object v9, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    aget-object v10, p2, v16

    invoke-virtual {v9, v2, v10, v5}, Landroid/icu/impl/locale/LikelySubtags;->compareLikely(Landroid/icu/impl/locale/LSR;Landroid/icu/impl/locale/LSR;I)I

    move-result v5

    .line 379
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_168

    .line 383
    move/from16 v9, v19

    move/from16 v16, v9

    move v9, v5

    .end local v16    # "bestIndex":I
    .restart local v9    # "bestIndex":I
    goto :goto_16b

    .line 379
    .end local v9    # "bestIndex":I
    .restart local v16    # "bestIndex":I
    :cond_168
    move v9, v5

    goto :goto_16b

    .line 260
    .end local v2    # "supported":Landroid/icu/impl/locale/LSR;
    .end local v6    # "distance":I
    .end local v17    # "star":Z
    .end local v18    # "desLangDistance":I
    .end local v19    # "slIndex":I
    .end local v20    # "flags":I
    .end local v22    # "roundedThreshold":I
    .end local p4    # "scriptDistance":I
    .local v5, "desLangDistance":I
    .local v8, "slIndex":I
    .local v9, "bestLikelyInfo":I
    :cond_16a
    :goto_16a
    move v9, v5

    .end local v5    # "desLangDistance":I
    .end local v8    # "slIndex":I
    .restart local v18    # "desLangDistance":I
    .restart local v19    # "slIndex":I
    :goto_16b
    add-int/lit8 v8, v19, 0x1

    move/from16 v2, p3

    move/from16 v5, v18

    const/4 v6, 0x1

    .end local v19    # "slIndex":I
    .restart local v8    # "slIndex":I
    goto/16 :goto_2e

    .end local v18    # "desLangDistance":I
    .restart local v5    # "desLangDistance":I
    :cond_174
    move/from16 v18, v5

    move/from16 v19, v8

    move v5, v9

    .line 389
    .end local v8    # "slIndex":I
    .end local v9    # "bestLikelyInfo":I
    .local v5, "bestLikelyInfo":I
    .restart local v18    # "desLangDistance":I
    if-ltz v16, :cond_17f

    .line 390
    shl-int/lit8 v2, v16, 0xa

    or-int/2addr v2, v15

    goto :goto_187

    .line 391
    :cond_17f
    const/16 v2, 0x64

    invoke-static {v2}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v2

    or-int/lit16 v2, v2, -0x400

    .line 389
    :goto_187
    return v2
.end method

.method public blacklist getDefaultDemotionPerDesiredLocale()I
    .registers 2

    .line 563
    iget v0, p0, Landroid/icu/impl/locale/LocaleDistance;->defaultDemotionPerDesiredLocale:I

    return v0
.end method

.method blacklist getDefaultRegionDistance()I
    .registers 2

    .line 559
    iget v0, p0, Landroid/icu/impl/locale/LocaleDistance;->defaultRegionDistance:I

    return v0
.end method

.method public blacklist getDefaultScriptDistance()I
    .registers 2

    .line 555
    iget v0, p0, Landroid/icu/impl/locale/LocaleDistance;->defaultScriptDistance:I

    return v0
.end method

.method public blacklist isParadigmLSR(Landroid/icu/impl/locale/LSR;)Z
    .registers 5
    .param p1, "lsr"    # Landroid/icu/impl/locale/LSR;

    .line 544
    nop

    .line 545
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleDistance;->paradigmLSRs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/LSR;

    .line 546
    .local v1, "plsr":Landroid/icu/impl/locale/LSR;
    invoke-virtual {p1, v1}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 547
    const/4 v0, 0x1

    return v0

    .line 549
    .end local v1    # "plsr":Landroid/icu/impl/locale/LSR;
    :cond_1b
    goto :goto_7

    .line 550
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist testOnlyDistance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;ILandroid/icu/util/LocaleMatcher$FavorSubtag;)I
    .registers 15
    .param p1, "desired"    # Landroid/icu/util/ULocale;
    .param p2, "supported"    # Landroid/icu/util/ULocale;
    .param p3, "threshold"    # I
    .param p4, "favorSubtag"    # Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 233
    sget-object v0, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsrFrom(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 234
    .local v0, "supportedLSR":Landroid/icu/impl/locale/LSR;
    sget-object v2, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsrFrom(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v4

    .line 235
    .local v4, "desiredLSR":Landroid/icu/impl/locale/LSR;
    const/4 v2, 0x1

    new-array v5, v2, [Landroid/icu/impl/locale/LSR;

    aput-object v0, v5, v1

    .line 236
    invoke-static {p3}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v7

    sget-object v9, Landroid/icu/util/LocaleMatcher$Direction;->WITH_ONE_WAY:Landroid/icu/util/LocaleMatcher$Direction;

    .line 235
    const/4 v6, 0x1

    move-object v3, p0

    move-object v8, p4

    .end local p4    # "favorSubtag":Landroid/icu/util/LocaleMatcher$FavorSubtag;
    .local v8, "favorSubtag":Landroid/icu/util/LocaleMatcher$FavorSubtag;
    invoke-virtual/range {v3 .. v9}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result p4

    .line 237
    .local p4, "indexAndDistance":I
    invoke-static {p4}, Landroid/icu/impl/locale/LocaleDistance;->getDistanceFloor(I)I

    move-result v1

    return v1
.end method

.method public blacklist testOnlyGetDistanceTable()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 569
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/impl/locale/LocaleDistance;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2}, Landroid/icu/util/BytesTrie;->iterator()Landroid/icu/util/BytesTrie$Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/BytesTrie$Entry;

    .line 571
    .local v3, "entry":Landroid/icu/util/BytesTrie$Entry;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 572
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Entry;->bytesLength()I

    move-result v4

    .line 573
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_4b

    .line 574
    invoke-virtual {v3, v5}, Landroid/icu/util/BytesTrie$Entry;->byteAt(I)B

    move-result v6

    .line 575
    .local v6, "b":B
    const/16 v7, 0x2a

    if-ne v6, v7, :cond_35

    .line 577
    const-string v7, "*-*-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 579
    :cond_35
    if-ltz v6, :cond_3c

    .line 580
    int-to-char v7, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 582
    :cond_3c
    and-int/lit8 v7, v6, 0x7f

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    .end local v6    # "b":B
    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 586
    .end local v5    # "i":I
    :cond_4b
    nop

    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v3, Landroid/icu/util/BytesTrie$Entry;->value:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .end local v3    # "entry":Landroid/icu/util/BytesTrie$Entry;
    .end local v4    # "length":I
    goto :goto_10

    .line 590
    :cond_63
    return-object v0
.end method

.method public blacklist testOnlyPrintDistanceTable()V
    .registers 8

    .line 595
    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleDistance;->testOnlyGetDistanceTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 596
    .local v1, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, ""

    .line 597
    .local v2, "suffix":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 598
    .local v3, "value":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_2c

    .line 599
    and-int/lit16 v3, v3, -0x81

    .line 600
    const-string v2, " skip script"

    .line 602
    :cond_2c
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    .end local v1    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "value":I
    goto :goto_c

    .line 604
    :cond_53
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 530
    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleDistance;->testOnlyGetDistanceTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
