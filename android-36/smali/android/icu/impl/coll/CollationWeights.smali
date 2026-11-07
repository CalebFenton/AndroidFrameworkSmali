.class public final Landroid/icu/impl/coll/CollationWeights;
.super Ljava/lang/Object;
.source "CollationWeights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationWeights$WeightRange;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist maxBytes:[I

.field private blacklist middleLength:I

.field private blacklist minBytes:[I

.field private blacklist rangeCount:I

.field private blacklist rangeIndex:I

.field private blacklist ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    .line 557
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    .line 558
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 27
    return-void
.end method

.method private blacklist allocWeightsInMinLengthRanges(II)Z
    .registers 21
    .param p1, "n"    # I
    .param p2, "minLength"    # I

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 491
    .local v3, "count":I
    const/4 v4, 0x0

    .line 492
    .local v4, "minLengthRangeCount":I
    :goto_8
    iget v5, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge v4, v5, :cond_1e

    iget-object v5, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-ne v5, v2, :cond_1e

    .line 495
    iget-object v5, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/2addr v3, v5

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 498
    :cond_1e
    add-int/lit8 v5, v2, 0x1

    invoke-direct {v0, v5}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v5

    .line 499
    .local v5, "nextCountBytes":I
    mul-int v6, v3, v5

    const/4 v7, 0x0

    if-le v1, v6, :cond_2a

    return v7

    .line 502
    :cond_2a
    iget-object v6, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v6, v6, v7

    iget-wide v8, v6, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 503
    .local v8, "start":J
    iget-object v6, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v6, v6, v7

    iget-wide v10, v6, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 504
    .local v10, "end":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_37
    if-ge v6, v4, :cond_5c

    .line 505
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v6

    iget-wide v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long v12, v12, v8

    if-gez v12, :cond_49

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v6

    iget-wide v8, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 506
    :cond_49
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v6

    iget-wide v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    cmp-long v12, v12, v10

    if-lez v12, :cond_59

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v6

    iget-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 504
    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 516
    .end local v6    # "i":I
    :cond_5c
    sub-int v6, v1, v3

    add-int/lit8 v12, v5, -0x1

    div-int/2addr v6, v12

    .line 517
    .local v6, "count2":I
    sub-int v12, v3, v6

    .line 518
    .local v12, "count1":I
    if-eqz v6, :cond_6a

    mul-int v13, v6, v5

    add-int/2addr v13, v12

    if-ge v13, v1, :cond_6f

    .line 520
    :cond_6a
    add-int/lit8 v6, v6, 0x1

    .line 521
    add-int/lit8 v12, v12, -0x1

    .line 522
    nop

    .line 525
    :cond_6f
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v13, v13, v7

    iput-wide v8, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 527
    const/4 v13, 0x1

    if-nez v12, :cond_92

    .line 529
    iget-object v14, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v14, v14, v7

    iput-wide v10, v14, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 530
    iget-object v14, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v14, v14, v7

    iput v3, v14, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 531
    iget-object v14, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v7, v14, v7

    invoke-direct {v0, v7}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    .line 532
    iput v13, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_e4

    .line 539
    :cond_92
    iget-object v14, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v14, v14, v7

    add-int/lit8 v15, v12, -0x1

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "count":I
    .end local v4    # "minLengthRangeCount":I
    .local v16, "count":I
    .local v17, "minLengthRangeCount":I
    invoke-direct {v0, v8, v9, v2, v15}, Landroid/icu/impl/coll/CollationWeights;->incWeightByOffset(JII)J

    move-result-wide v3

    iput-wide v3, v14, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 540
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v7

    iput v12, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 542
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v13

    if-nez v3, :cond_b8

    .line 543
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    new-instance v4, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v14, 0x0

    invoke-direct {v4, v14}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights-IA;)V

    aput-object v4, v3, v13

    .line 545
    :cond_b8
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v13

    iget-object v4, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v4, v4, v7

    iget-wide v14, v4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    invoke-direct {v0, v14, v15, v2}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v14

    iput-wide v14, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 546
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v13

    iput-wide v10, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 547
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v13

    iput v2, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 548
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v13

    iput v6, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 549
    iget-object v3, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v13

    invoke-direct {v0, v3}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    .line 550
    const/4 v3, 0x2

    iput v3, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    .line 552
    :goto_e4
    return v13
.end method

.method private blacklist allocWeightsInShortRanges(II)Z
    .registers 8
    .param p1, "n"    # I
    .param p2, "minLength"    # I

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_41

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    add-int/lit8 v3, p2, 0x1

    if-gt v1, v3, :cond_41

    .line 464
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-gt p1, v1, :cond_37

    .line 466
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-le v1, p2, :cond_26

    .line 470
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iput p1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 472
    :cond_26
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    .line 475
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_36

    .line 477
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v4, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 479
    :cond_36
    return v3

    .line 481
    :cond_37
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    sub-int/2addr p1, v1

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    :cond_41
    return v2
.end method

.method private blacklist countBytes(I)I
    .registers 4
    .param p1, "idx"    # I

    .line 243
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v0, v0, p1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist decWeightTrail(JI)J
    .registers 6
    .param p0, "weight"    # J
    .param p2, "length"    # I

    .line 238
    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static blacklist getWeightByte(JI)I
    .registers 4
    .param p0, "weight"    # J
    .param p2, "idx"    # I

    .line 203
    invoke-static {p0, p1, p2}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v0

    return v0
.end method

.method private blacklist getWeightRanges(JJ)Z
    .registers 28
    .param p1, "lowerLimit"    # J
    .param p3, "upperLimit"    # J

    .line 290
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 291
    nop

    .line 294
    invoke-static/range {p1 .. p2}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    move-result v3

    .line 295
    .local v3, "lowerLength":I
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    move-result v4

    .line 299
    .local v4, "upperLength":I
    nop

    .line 302
    cmp-long v5, p1, v1

    const/4 v6, 0x0

    if-ltz v5, :cond_14

    .line 304
    return v6

    .line 308
    :cond_14
    if-ge v3, v4, :cond_1f

    .line 309
    invoke-static {v1, v2, v3}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v7

    cmp-long v5, p1, v7

    if-nez v5, :cond_1f

    .line 311
    return v6

    .line 316
    :cond_1f
    const/4 v5, 0x5

    new-array v7, v5, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 317
    .local v7, "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    new-instance v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights-IA;)V

    .line 318
    .local v8, "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    new-array v5, v5, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 334
    .local v5, "upper":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    move-wide/from16 v10, p1

    .line 335
    .local v10, "weight":J
    move v12, v3

    .local v12, "length":I
    :goto_2d
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le v12, v13, :cond_76

    .line 336
    invoke-static {v10, v11, v12}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v13

    .line 337
    .local v13, "trail":I
    iget-object v14, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v14, v14, v12

    if-ge v13, v14, :cond_66

    .line 338
    new-instance v14, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-direct {v14, v9}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights-IA;)V

    aput-object v14, v7, v12

    .line 339
    aget-object v14, v7, v12

    move-object/from16 v16, v7

    .end local v7    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .local v16, "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    invoke-static {v10, v11, v12}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    move-result-wide v6

    iput-wide v6, v14, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 340
    aget-object v6, v16, v12

    iget-object v7, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v7, v7, v12

    invoke-static {v10, v11, v12, v7}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v1

    iput-wide v1, v6, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 341
    aget-object v1, v16, v12

    iput v12, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 342
    aget-object v1, v16, v12

    iget-object v2, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v2, v2, v12

    sub-int/2addr v2, v13

    iput v2, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    goto :goto_68

    .line 337
    .end local v16    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v7    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :cond_66
    move-object/from16 v16, v7

    .line 344
    .end local v7    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v16    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :goto_68
    add-int/lit8 v1, v12, -0x1

    invoke-static {v10, v11, v1}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v10

    .line 335
    .end local v13    # "trail":I
    add-int/lit8 v12, v12, -0x1

    move-wide/from16 v1, p3

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_2d

    .end local v16    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v7    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :cond_76
    move-object/from16 v16, v7

    .line 346
    .end local v7    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .end local v12    # "length":I
    .restart local v16    # "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    const-wide v1, 0xff000000L

    cmp-long v1, v10, v1

    if-gez v1, :cond_8a

    .line 347
    iget v1, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    invoke-static {v10, v11, v1}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    move-result-wide v1

    iput-wide v1, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    goto :goto_91

    .line 351
    :cond_8a
    const-wide v1, 0xffffffffL

    iput-wide v1, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 354
    :goto_91
    move-wide/from16 v1, p3

    .line 355
    .end local v10    # "weight":J
    .local v1, "weight":J
    move v6, v4

    .local v6, "length":I
    :goto_94
    iget v7, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le v6, v7, :cond_d4

    .line 356
    invoke-static {v1, v2, v6}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v7

    .line 357
    .local v7, "trail":I
    iget-object v10, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v10, v10, v6

    if-le v7, v10, :cond_cb

    .line 358
    new-instance v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-direct {v10, v9}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights-IA;)V

    aput-object v10, v5, v6

    .line 359
    aget-object v10, v5, v6

    iget-object v11, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v11, v11, v6

    invoke-static {v1, v2, v6, v11}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v11

    iput-wide v11, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 360
    aget-object v10, v5, v6

    invoke-static {v1, v2, v6}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    move-result-wide v11

    iput-wide v11, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 361
    aget-object v10, v5, v6

    iput v6, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 362
    aget-object v10, v5, v6

    iget-object v11, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v11, v11, v6

    sub-int v11, v7, v11

    iput v11, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 364
    :cond_cb
    add-int/lit8 v10, v6, -0x1

    invoke-static {v1, v2, v10}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v1

    .line 355
    .end local v7    # "trail":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_94

    .line 366
    .end local v6    # "length":I
    :cond_d4
    iget v6, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    invoke-static {v1, v2, v6}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    move-result-wide v6

    iput-wide v6, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 369
    iget v6, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    iput v6, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 370
    iget-wide v6, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-wide v10, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long v6, v6, v10

    const/4 v7, 0x4

    const/4 v10, 0x1

    if-ltz v6, :cond_100

    .line 371
    iget-wide v11, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-wide v13, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    sub-long/2addr v11, v13

    iget v6, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    rsub-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x8

    shr-long/2addr v11, v6

    long-to-int v6, v11

    add-int/2addr v6, v10

    iput v6, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move-object/from16 v19, v8

    move/from16 v20, v10

    goto/16 :goto_1a9

    .line 374
    :cond_100
    const/4 v6, 0x4

    .restart local v6    # "length":I
    :goto_101
    iget v11, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le v6, v11, :cond_1a5

    .line 375
    aget-object v11, v16, v6

    if-eqz v11, :cond_194

    aget-object v11, v5, v6

    if-eqz v11, :cond_194

    aget-object v11, v16, v6

    iget v11, v11, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez v11, :cond_194

    aget-object v11, v5, v6

    iget v11, v11, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez v11, :cond_194

    .line 382
    aget-object v11, v16, v6

    iget-wide v11, v11, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 383
    .local v11, "lowerEnd":J
    aget-object v13, v5, v6

    iget-wide v13, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 384
    .local v13, "upperStart":J
    const/16 v17, 0x0

    .line 386
    .local v17, "merged":Z
    cmp-long v18, v11, v13

    if-lez v18, :cond_154

    .line 394
    nop

    .line 397
    move-object/from16 v18, v9

    aget-object v9, v16, v6

    aget-object v15, v5, v6

    move-object/from16 v19, v8

    .end local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .local v19, "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    iget-wide v7, v15, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iput-wide v7, v9, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 398
    aget-object v7, v16, v6

    aget-object v8, v16, v6

    iget-wide v8, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 399
    invoke-static {v8, v9, v6}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v8

    aget-object v9, v16, v6

    move/from16 v20, v10

    move-wide/from16 v21, v11

    .end local v11    # "lowerEnd":J
    .local v21, "lowerEnd":J
    iget-wide v10, v9, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 400
    invoke-static {v10, v11, v6}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 403
    const/16 v17, 0x1

    move-wide/from16 v7, v21

    goto :goto_182

    .line 404
    .end local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .end local v21    # "lowerEnd":J
    .restart local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v11    # "lowerEnd":J
    :cond_154
    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move/from16 v20, v10

    move-wide/from16 v21, v11

    .end local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .end local v11    # "lowerEnd":J
    .restart local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v21    # "lowerEnd":J
    cmp-long v7, v21, v13

    if-nez v7, :cond_163

    .line 406
    move-wide/from16 v7, v21

    goto :goto_182

    .line 408
    :cond_163
    move-wide/from16 v7, v21

    .end local v21    # "lowerEnd":J
    .local v7, "lowerEnd":J
    invoke-direct {v0, v7, v8, v6}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-nez v9, :cond_182

    .line 410
    aget-object v9, v16, v6

    aget-object v10, v5, v6

    iget-wide v10, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iput-wide v10, v9, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 411
    aget-object v9, v16, v6

    iget v10, v9, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    aget-object v11, v5, v6

    iget v11, v11, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 412
    const/16 v17, 0x1

    .line 415
    :cond_182
    :goto_182
    if-eqz v17, :cond_19a

    .line 418
    aget-object v9, v5, v6

    const/4 v15, 0x0

    iput v15, v9, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 419
    :goto_189
    add-int/lit8 v6, v6, -0x1

    iget v9, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le v6, v9, :cond_1a9

    .line 420
    aput-object v18, v5, v6

    aput-object v18, v16, v6

    goto :goto_189

    .line 375
    .end local v7    # "lowerEnd":J
    .end local v13    # "upperStart":J
    .end local v17    # "merged":Z
    .end local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :cond_194
    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move/from16 v20, v10

    .line 374
    .end local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :cond_19a
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v18

    move-object/from16 v8, v19

    move/from16 v10, v20

    const/4 v7, 0x4

    goto/16 :goto_101

    .end local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :cond_1a5
    move-object/from16 v19, v8

    move/from16 v20, v10

    .line 444
    .end local v6    # "length":I
    .end local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    :cond_1a9
    :goto_1a9
    const/4 v15, 0x0

    iput v15, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    .line 445
    move-object/from16 v8, v19

    .end local v19    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    .restart local v8    # "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    iget v6, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez v6, :cond_1bb

    .line 446
    iget-object v6, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aput-object v8, v6, v15

    .line 447
    move/from16 v6, v20

    iput v6, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    goto :goto_1bd

    .line 445
    :cond_1bb
    move/from16 v6, v20

    .line 449
    :goto_1bd
    iget v7, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    add-int/2addr v7, v6

    .local v7, "length":I
    :goto_1c0
    const/4 v9, 0x4

    if-gt v7, v9, :cond_1f2

    .line 451
    aget-object v10, v5, v7

    if-eqz v10, :cond_1d9

    aget-object v10, v5, v7

    iget v10, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez v10, :cond_1d9

    .line 452
    iget-object v10, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v11, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    aget-object v12, v5, v7

    aput-object v12, v10, v11

    .line 454
    :cond_1d9
    aget-object v10, v16, v7

    if-eqz v10, :cond_1ef

    aget-object v10, v16, v7

    iget v10, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez v10, :cond_1ef

    .line 455
    iget-object v10, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v11, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    aget-object v12, v16, v7

    aput-object v12, v10, v11

    .line 449
    :cond_1ef
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c0

    .line 458
    .end local v7    # "length":I
    :cond_1f2
    iget v7, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-lez v7, :cond_1f7

    goto :goto_1f8

    :cond_1f7
    move v6, v15

    :goto_1f8
    return v6
.end method

.method private static blacklist getWeightTrail(JI)I
    .registers 5
    .param p0, "weight"    # J
    .param p2, "length"    # I

    .line 194
    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private blacklist incWeight(JI)J
    .registers 7
    .param p1, "weight"    # J
    .param p3, "length"    # I

    .line 248
    nop

    :goto_1
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    move-result v0

    .line 249
    .local v0, "b":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v1, v1, p3

    if-ge v0, v1, :cond_12

    .line 250
    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide v1

    return-wide v1

    .line 253
    :cond_12
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v1, v1, p3

    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p1

    .line 254
    add-int/lit8 p3, p3, -0x1

    .line 255
    nop

    .line 257
    .end local v0    # "b":I
    goto :goto_1
.end method

.method private blacklist incWeightByOffset(JII)J
    .registers 7
    .param p1, "weight"    # J
    .param p3, "length"    # I
    .param p4, "offset"    # I

    .line 262
    nop

    :goto_1
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    move-result v0

    add-int/2addr p4, v0

    .line 263
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v0, v0, p3

    if-gt p4, v0, :cond_11

    .line 264
    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide v0

    return-wide v0

    .line 267
    :cond_11
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, p3

    sub-int/2addr p4, v0

    .line 268
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, p3

    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v1

    rem-int v1, p4, v1

    add-int/2addr v0, v1

    invoke-static {p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p1

    .line 269
    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v0

    div-int/2addr p4, v0

    .line 270
    add-int/lit8 p3, p3, -0x1

    .line 271
    goto :goto_1
.end method

.method private static blacklist incWeightTrail(JI)J
    .registers 6
    .param p0, "weight"    # J
    .param p2, "length"    # I

    .line 234
    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist lengthOfWeight(J)I
    .registers 6
    .param p0, "weight"    # J

    .line 182
    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 183
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_c
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 185
    const/4 v0, 0x2

    return v0

    .line 186
    :cond_16
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 187
    const/4 v0, 0x3

    return v0

    .line 189
    :cond_1f
    const/4 v0, 0x4

    return v0
.end method

.method private blacklist lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V
    .registers 6
    .param p1, "range"    # Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 277
    iget v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    add-int/lit8 v0, v0, 0x1

    .line 278
    .local v0, "length":I
    iget-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v0, v3}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v1

    iput-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 279
    iget-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v0, v3}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v1

    iput-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 280
    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 281
    iput v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 282
    return-void
.end method

.method private static blacklist setWeightByte(JII)J
    .registers 11
    .param p0, "weight"    # J
    .param p2, "idx"    # I
    .param p3, "b"    # I

    .line 209
    mul-int/lit8 p2, p2, 0x8

    .line 210
    const/16 v0, 0x20

    if-ge p2, v0, :cond_d

    .line 211
    const-wide v1, 0xffffffffL

    shr-long/2addr v1, p2

    .local v1, "mask":J
    goto :goto_f

    .line 222
    .end local v1    # "mask":J
    :cond_d
    const-wide/16 v1, 0x0

    .line 224
    .restart local v1    # "mask":J
    :goto_f
    sub-int/2addr v0, p2

    .line 225
    .end local p2    # "idx":I
    .local v0, "idx":I
    const-wide v3, 0xffffff00L

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    .line 226
    and-long v3, p0, v1

    int-to-long v5, p3

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private static blacklist setWeightTrail(JII)J
    .registers 9
    .param p0, "weight"    # J
    .param p2, "length"    # I
    .param p3, "trail"    # I

    .line 198
    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    .line 199
    .end local p2    # "length":I
    .local v0, "length":I
    const-wide v1, 0xffffff00L

    shl-long/2addr v1, v0

    and-long/2addr v1, p0

    int-to-long v3, p3

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method private static blacklist truncateWeight(JI)J
    .registers 6
    .param p0, "weight"    # J
    .param p2, "length"    # I

    .line 230
    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    const-wide v1, 0xffffffffL

    shl-long v0, v1, v0

    and-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public blacklist allocWeights(JJI)Z
    .registers 10
    .param p1, "lowerLimit"    # J
    .param p3, "upperLimit"    # J
    .param p5, "n"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->getWeightRanges(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 95
    return v1

    .line 101
    :cond_8
    :goto_8
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 103
    .local v0, "minLength":I
    invoke-direct {p0, p5, v0}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInShortRanges(II)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_1f

    .line 105
    :cond_15
    const/4 v2, 0x4

    if-ne v0, v2, :cond_19

    .line 108
    return v1

    .line 111
    :cond_19
    invoke-direct {p0, p5, v0}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInMinLengthRanges(II)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 126
    .end local v0    # "minLength":I
    :goto_1f
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    .line 127
    iget v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 128
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 130
    :cond_2f
    const/4 v0, 0x1

    return v0

    .line 115
    .restart local v0    # "minLength":I
    :cond_31
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    iget v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-ne v3, v0, :cond_48

    .line 116
    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 118
    .end local v0    # "minLength":I
    .end local v2    # "i":I
    :cond_48
    goto :goto_8
.end method

.method public blacklist initForPrimary(Z)V
    .registers 8
    .param p1, "compressible"    # Z

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    .line 31
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x3

    aput v2, v1, v0

    .line 32
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v3, 0xff

    aput v3, v1, v0

    .line 33
    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eqz p1, :cond_1d

    .line 34
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v0, v4, v1

    .line 35
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v5, 0xfe

    aput v5, v4, v1

    goto :goto_25

    .line 37
    :cond_1d
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v4, v1

    .line 38
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v4, v1

    .line 40
    :goto_25
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v4, v2

    .line 41
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v4, v2

    .line 42
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v2, v0

    .line 43
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v1, v0

    .line 44
    return-void
.end method

.method public blacklist initForSecondary()V
    .registers 5

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    .line 49
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 50
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v1, v2

    .line 51
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 52
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v1, v2

    .line 53
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v1, v0

    .line 54
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v3, 0xff

    aput v3, v1, v0

    .line 55
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v0, v1

    .line 57
    return-void
.end method

.method public blacklist initForTertiary()V
    .registers 5

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    .line 62
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 63
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v1, v2

    .line 64
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 65
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v1, v2

    .line 68
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v1, v0

    .line 69
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v3, 0x3f

    aput v3, v1, v0

    .line 70
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 71
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v0, v1

    .line 72
    return-void
.end method

.method public blacklist nextWeight()J
    .registers 6

    .line 141
    iget v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-lt v0, v1, :cond_c

    .line 142
    const-wide v0, 0xffffffffL

    return-wide v0

    .line 145
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    aget-object v0, v0, v1

    .line 146
    .local v0, "range":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    iget-wide v1, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 147
    .local v1, "weight":J
    iget v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-nez v3, :cond_23

    .line 149
    iget v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    goto :goto_2c

    .line 152
    :cond_23
    iget v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 153
    nop

    .line 156
    :goto_2c
    return-wide v1
.end method
