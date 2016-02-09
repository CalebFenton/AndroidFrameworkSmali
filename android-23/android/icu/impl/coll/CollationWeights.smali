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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private maxBytes:[I

.field private middleLength:I

.field private minBytes:[I

.field private rangeCount:I

.field private rangeIndex:I

.field private ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationWeights;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@b
    .line 22
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 532
    new-array v0, v1, [I

    #@6
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@8
    .line 533
    new-array v0, v1, [I

    #@a
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@c
    .line 534
    const/4 v0, 0x7

    #@d
    new-array v0, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@f
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@11
    .line 23
    return-void
.end method

.method private allocWeightsInMinLengthRanges(II)Z
    .locals 16
    .param p1, "n"    # I
    .param p2, "minLength"    # I

    #@0
    .prologue
    .line 465
    const/4 v2, 0x0

    #@1
    .line 467
    .local v2, "count":I
    const/4 v8, 0x0

    #@2
    .line 468
    .local v8, "minLengthRangeCount":I
    :goto_0
    move-object/from16 v0, p0

    #@4
    iget v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@6
    if-ge v8, v12, :cond_0

    #@8
    .line 469
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@c
    aget-object v12, v12, v8

    #@e
    iget v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@10
    move/from16 v0, p2

    #@12
    if-ne v12, v0, :cond_0

    #@14
    .line 471
    move-object/from16 v0, p0

    #@16
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@18
    aget-object v12, v12, v8

    #@1a
    iget v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1c
    add-int/2addr v2, v12

    #@1d
    .line 470
    add-int/lit8 v8, v8, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 474
    :cond_0
    add-int/lit8 v12, p2, 0x1

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@27
    move-result v9

    #@28
    .line 475
    .local v9, "nextCountBytes":I
    mul-int v12, v2, v9

    #@2a
    move/from16 v0, p1

    #@2c
    if-le v0, v12, :cond_1

    #@2e
    const/4 v12, 0x0

    #@2f
    return v12

    #@30
    .line 478
    :cond_1
    move-object/from16 v0, p0

    #@32
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@34
    const/4 v13, 0x0

    #@35
    aget-object v12, v12, v13

    #@37
    iget-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@39
    .line 479
    .local v10, "start":J
    move-object/from16 v0, p0

    #@3b
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@3d
    const/4 v13, 0x0

    #@3e
    aget-object v12, v12, v13

    #@40
    iget-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@42
    .line 480
    .local v6, "end":J
    const/4 v5, 0x1

    #@43
    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_4

    #@45
    .line 481
    move-object/from16 v0, p0

    #@47
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@49
    aget-object v12, v12, v5

    #@4b
    iget-wide v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@4d
    cmp-long v12, v12, v10

    #@4f
    if-gez v12, :cond_2

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@55
    aget-object v12, v12, v5

    #@57
    iget-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@59
    .line 482
    :cond_2
    move-object/from16 v0, p0

    #@5b
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@5d
    aget-object v12, v12, v5

    #@5f
    iget-wide v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@61
    cmp-long v12, v12, v6

    #@63
    if-lez v12, :cond_3

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@69
    aget-object v12, v12, v5

    #@6b
    iget-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@6d
    .line 480
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 492
    :cond_4
    sub-int v12, p1, v2

    #@72
    add-int/lit8 v13, v9, -0x1

    #@74
    div-int v4, v12, v13

    #@76
    .line 493
    .local v4, "count2":I
    sub-int v3, v2, v4

    #@78
    .line 494
    .local v3, "count1":I
    if-eqz v4, :cond_5

    #@7a
    mul-int v12, v4, v9

    #@7c
    add-int/2addr v12, v3

    #@7d
    move/from16 v0, p1

    #@7f
    if-ge v12, v0, :cond_7

    #@81
    .line 496
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@83
    .line 497
    add-int/lit8 v3, v3, -0x1

    #@85
    .line 498
    sget-boolean v12, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@87
    if-nez v12, :cond_7

    #@89
    mul-int v12, v4, v9

    #@8b
    add-int/2addr v12, v3

    #@8c
    move/from16 v0, p1

    #@8e
    if-lt v12, v0, :cond_6

    #@90
    const/4 v12, 0x1

    #@91
    :goto_2
    if-nez v12, :cond_7

    #@93
    new-instance v12, Ljava/lang/AssertionError;

    #@95
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@98
    throw v12

    #@99
    :cond_6
    const/4 v12, 0x0

    #@9a
    goto :goto_2

    #@9b
    .line 501
    :cond_7
    move-object/from16 v0, p0

    #@9d
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@9f
    const/4 v13, 0x0

    #@a0
    aget-object v12, v12, v13

    #@a2
    iput-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@a4
    .line 503
    if-nez v3, :cond_8

    #@a6
    .line 505
    move-object/from16 v0, p0

    #@a8
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@aa
    const/4 v13, 0x0

    #@ab
    aget-object v12, v12, v13

    #@ad
    iput-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@af
    .line 506
    move-object/from16 v0, p0

    #@b1
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@b3
    const/4 v13, 0x0

    #@b4
    aget-object v12, v12, v13

    #@b6
    iput v2, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@b8
    .line 507
    move-object/from16 v0, p0

    #@ba
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@bc
    const/4 v13, 0x0

    #@bd
    aget-object v12, v12, v13

    #@bf
    move-object/from16 v0, p0

    #@c1
    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@c4
    .line 508
    const/4 v12, 0x1

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@c9
    .line 528
    :goto_3
    const/4 v12, 0x1

    #@ca
    return v12

    #@cb
    .line 515
    :cond_8
    move-object/from16 v0, p0

    #@cd
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@cf
    const/4 v13, 0x0

    #@d0
    aget-object v12, v12, v13

    #@d2
    add-int/lit8 v13, v3, -0x1

    #@d4
    move-object/from16 v0, p0

    #@d6
    move/from16 v1, p2

    #@d8
    invoke-direct {v0, v10, v11, v1, v13}, Landroid/icu/impl/coll/CollationWeights;->incWeightByOffset(JII)J

    #@db
    move-result-wide v14

    #@dc
    iput-wide v14, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@de
    .line 516
    move-object/from16 v0, p0

    #@e0
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@e2
    const/4 v13, 0x0

    #@e3
    aget-object v12, v12, v13

    #@e5
    iput v3, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@e7
    .line 518
    move-object/from16 v0, p0

    #@e9
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@eb
    const/4 v13, 0x1

    #@ec
    aget-object v12, v12, v13

    #@ee
    if-nez v12, :cond_9

    #@f0
    .line 519
    move-object/from16 v0, p0

    #@f2
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@f4
    new-instance v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@f6
    const/4 v14, 0x0

    #@f7
    invoke-direct {v13, v14}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@fa
    const/4 v14, 0x1

    #@fb
    aput-object v13, v12, v14

    #@fd
    .line 521
    :cond_9
    move-object/from16 v0, p0

    #@ff
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@101
    const/4 v13, 0x1

    #@102
    aget-object v12, v12, v13

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@108
    const/4 v14, 0x0

    #@109
    aget-object v13, v13, v14

    #@10b
    iget-wide v14, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@10d
    move-object/from16 v0, p0

    #@10f
    move/from16 v1, p2

    #@111
    invoke-direct {v0, v14, v15, v1}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    #@114
    move-result-wide v14

    #@115
    iput-wide v14, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@117
    .line 522
    move-object/from16 v0, p0

    #@119
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@11b
    const/4 v13, 0x1

    #@11c
    aget-object v12, v12, v13

    #@11e
    iput-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@120
    .line 523
    move-object/from16 v0, p0

    #@122
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@124
    const/4 v13, 0x1

    #@125
    aget-object v12, v12, v13

    #@127
    move/from16 v0, p2

    #@129
    iput v0, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@12b
    .line 524
    move-object/from16 v0, p0

    #@12d
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@12f
    const/4 v13, 0x1

    #@130
    aget-object v12, v12, v13

    #@132
    iput v4, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@134
    .line 525
    move-object/from16 v0, p0

    #@136
    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@138
    const/4 v13, 0x1

    #@139
    aget-object v12, v12, v13

    #@13b
    move-object/from16 v0, p0

    #@13d
    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@140
    .line 526
    const/4 v12, 0x2

    #@141
    move-object/from16 v0, p0

    #@143
    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@145
    goto :goto_3
.end method

.method private allocWeightsInShortRanges(II)Z
    .locals 5
    .param p1, "n"    # I
    .param p2, "minLength"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 439
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@5
    if-ge v0, v1, :cond_3

    #@7
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@9
    aget-object v1, v1, v0

    #@b
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@d
    add-int/lit8 v2, p2, 0x1

    #@f
    if-gt v1, v2, :cond_3

    #@11
    .line 440
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@13
    aget-object v1, v1, v0

    #@15
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@17
    if-gt p1, v1, :cond_2

    #@19
    .line 442
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1b
    aget-object v1, v1, v0

    #@1d
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@1f
    if-le v1, p2, :cond_0

    #@21
    .line 446
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@23
    aget-object v1, v1, v0

    #@25
    iput p1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@27
    .line 448
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@29
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@2b
    .line 451
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@2d
    if-le v1, v4, :cond_1

    #@2f
    .line 453
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@31
    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@33
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    #@36
    .line 455
    :cond_1
    return v4

    #@37
    .line 457
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@39
    aget-object v1, v1, v0

    #@3b
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@3d
    sub-int/2addr p1, v1

    #@3e
    .line 439
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 459
    :cond_3
    return v3
.end method

.method private countBytes(I)I
    .locals 2
    .param p1, "idx"    # I

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@2
    aget v0, v0, p1

    #@4
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@6
    aget v1, v1, p1

    #@8
    sub-int/2addr v0, v1

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    return v0
.end method

.method private static decWeightTrail(JI)J
    .locals 4
    .param p0, "weight"    # J
    .param p2, "length"    # I

    #@0
    .prologue
    .line 234
    rsub-int/lit8 v0, p2, 0x4

    #@2
    mul-int/lit8 v0, v0, 0x8

    #@4
    const-wide/16 v2, 0x1

    #@6
    shl-long v0, v2, v0

    #@8
    sub-long v0, p0, v0

    #@a
    return-wide v0
.end method

.method private static getWeightByte(JI)I
    .locals 2
    .param p0, "weight"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    .line 199
    invoke-static {p0, p1, p2}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getWeightRanges(JJ)Z
    .locals 21
    .param p1, "lowerLimit"    # J
    .param p3, "upperLimit"    # J

    #@0
    .prologue
    .line 286
    sget-boolean v13, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@2
    if-nez v13, :cond_1

    #@4
    const-wide/16 v16, 0x0

    #@6
    cmp-long v13, p1, v16

    #@8
    if-eqz v13, :cond_0

    #@a
    const/4 v13, 0x1

    #@b
    :goto_0
    if-nez v13, :cond_1

    #@d
    new-instance v13, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v13

    #@13
    :cond_0
    const/4 v13, 0x0

    #@14
    goto :goto_0

    #@15
    .line 287
    :cond_1
    sget-boolean v13, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@17
    if-nez v13, :cond_3

    #@19
    const-wide/16 v16, 0x0

    #@1b
    cmp-long v13, p3, v16

    #@1d
    if-eqz v13, :cond_2

    #@1f
    const/4 v13, 0x1

    #@20
    :goto_1
    if-nez v13, :cond_3

    #@22
    new-instance v13, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    #@27
    throw v13

    #@28
    :cond_2
    const/4 v13, 0x0

    #@29
    goto :goto_1

    #@2a
    .line 290
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    #@2d
    move-result v6

    #@2e
    .line 291
    .local v6, "lowerLength":I
    invoke-static/range {p3 .. p4}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    #@31
    move-result v12

    #@32
    .line 295
    .local v12, "upperLength":I
    sget-boolean v13, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@34
    if-nez v13, :cond_5

    #@36
    move-object/from16 v0, p0

    #@38
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@3a
    if-lt v6, v13, :cond_4

    #@3c
    const/4 v13, 0x1

    #@3d
    :goto_2
    if-nez v13, :cond_5

    #@3f
    new-instance v13, Ljava/lang/AssertionError;

    #@41
    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    #@44
    throw v13

    #@45
    :cond_4
    const/4 v13, 0x0

    #@46
    goto :goto_2

    #@47
    .line 298
    :cond_5
    cmp-long v13, p1, p3

    #@49
    if-ltz v13, :cond_6

    #@4b
    .line 300
    const/4 v13, 0x0

    #@4c
    return v13

    #@4d
    .line 304
    :cond_6
    if-ge v6, v12, :cond_7

    #@4f
    .line 305
    move-wide/from16 v0, p3

    #@51
    invoke-static {v0, v1, v6}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@54
    move-result-wide v16

    #@55
    cmp-long v13, p1, v16

    #@57
    if-nez v13, :cond_7

    #@59
    .line 307
    const/4 v13, 0x0

    #@5a
    return v13

    #@5b
    .line 312
    :cond_7
    const/4 v13, 0x5

    #@5c
    new-array v5, v13, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@5e
    .line 313
    .local v5, "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    new-instance v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@60
    const/4 v13, 0x0

    #@61
    invoke-direct {v7, v13}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@64
    .line 314
    .local v7, "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    const/4 v13, 0x5

    #@65
    new-array v11, v13, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@67
    .line 330
    .local v11, "upper":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    move-wide/from16 v14, p1

    #@69
    .line 331
    .local v14, "weight":J
    move v4, v6

    #@6a
    .local v4, "length":I
    :goto_3
    move-object/from16 v0, p0

    #@6c
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@6e
    if-le v4, v13, :cond_9

    #@70
    .line 332
    invoke-static {v14, v15, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@73
    move-result v10

    #@74
    .line 333
    .local v10, "trail":I
    move-object/from16 v0, p0

    #@76
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@78
    aget v13, v13, v4

    #@7a
    if-ge v10, v13, :cond_8

    #@7c
    .line 334
    new-instance v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@7e
    const/16 v16, 0x0

    #@80
    move-object/from16 v0, v16

    #@82
    invoke-direct {v13, v0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@85
    aput-object v13, v5, v4

    #@87
    .line 335
    aget-object v13, v5, v4

    #@89
    invoke-static {v14, v15, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    #@8c
    move-result-wide v16

    #@8d
    move-wide/from16 v0, v16

    #@8f
    iput-wide v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@91
    .line 336
    aget-object v13, v5, v4

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@97
    move-object/from16 v16, v0

    #@99
    aget v16, v16, v4

    #@9b
    move/from16 v0, v16

    #@9d
    invoke-static {v14, v15, v4, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    #@a0
    move-result-wide v16

    #@a1
    move-wide/from16 v0, v16

    #@a3
    iput-wide v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@a5
    .line 337
    aget-object v13, v5, v4

    #@a7
    iput v4, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@a9
    .line 338
    aget-object v13, v5, v4

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@af
    move-object/from16 v16, v0

    #@b1
    aget v16, v16, v4

    #@b3
    sub-int v16, v16, v10

    #@b5
    move/from16 v0, v16

    #@b7
    iput v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@b9
    .line 340
    :cond_8
    add-int/lit8 v13, v4, -0x1

    #@bb
    invoke-static {v14, v15, v13}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@be
    move-result-wide v14

    #@bf
    .line 331
    add-int/lit8 v4, v4, -0x1

    #@c1
    goto :goto_3

    #@c2
    .line 342
    .end local v10    # "trail":I
    :cond_9
    const-wide v16, 0xff000000L

    #@c7
    cmp-long v13, v14, v16

    #@c9
    if-gez v13, :cond_b

    #@cb
    .line 343
    move-object/from16 v0, p0

    #@cd
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@cf
    invoke-static {v14, v15, v13}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    #@d2
    move-result-wide v16

    #@d3
    move-wide/from16 v0, v16

    #@d5
    iput-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@d7
    .line 350
    :goto_4
    move-wide/from16 v14, p3

    #@d9
    .line 351
    move v4, v12

    #@da
    :goto_5
    move-object/from16 v0, p0

    #@dc
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@de
    if-le v4, v13, :cond_c

    #@e0
    .line 352
    invoke-static {v14, v15, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@e3
    move-result v10

    #@e4
    .line 353
    .restart local v10    # "trail":I
    move-object/from16 v0, p0

    #@e6
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@e8
    aget v13, v13, v4

    #@ea
    if-le v10, v13, :cond_a

    #@ec
    .line 354
    new-instance v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@ee
    const/16 v16, 0x0

    #@f0
    move-object/from16 v0, v16

    #@f2
    invoke-direct {v13, v0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@f5
    aput-object v13, v11, v4

    #@f7
    .line 355
    aget-object v13, v11, v4

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@fd
    move-object/from16 v16, v0

    #@ff
    aget v16, v16, v4

    #@101
    move/from16 v0, v16

    #@103
    invoke-static {v14, v15, v4, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    #@106
    move-result-wide v16

    #@107
    move-wide/from16 v0, v16

    #@109
    iput-wide v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@10b
    .line 356
    aget-object v13, v11, v4

    #@10d
    invoke-static {v14, v15, v4}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    #@110
    move-result-wide v16

    #@111
    move-wide/from16 v0, v16

    #@113
    iput-wide v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@115
    .line 357
    aget-object v13, v11, v4

    #@117
    iput v4, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@119
    .line 358
    aget-object v13, v11, v4

    #@11b
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@11f
    move-object/from16 v16, v0

    #@121
    aget v16, v16, v4

    #@123
    sub-int v16, v10, v16

    #@125
    move/from16 v0, v16

    #@127
    iput v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@129
    .line 360
    :cond_a
    add-int/lit8 v13, v4, -0x1

    #@12b
    invoke-static {v14, v15, v13}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@12e
    move-result-wide v14

    #@12f
    .line 351
    add-int/lit8 v4, v4, -0x1

    #@131
    goto :goto_5

    #@132
    .line 347
    .end local v10    # "trail":I
    :cond_b
    const-wide v16, 0xffffffffL

    #@137
    move-wide/from16 v0, v16

    #@139
    iput-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@13b
    goto :goto_4

    #@13c
    .line 362
    :cond_c
    move-object/from16 v0, p0

    #@13e
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@140
    invoke-static {v14, v15, v13}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    #@143
    move-result-wide v16

    #@144
    move-wide/from16 v0, v16

    #@146
    iput-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@148
    .line 365
    move-object/from16 v0, p0

    #@14a
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@14c
    iput v13, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@14e
    .line 366
    iget-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@150
    move-wide/from16 v16, v0

    #@152
    iget-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@154
    move-wide/from16 v18, v0

    #@156
    cmp-long v13, v16, v18

    #@158
    if-ltz v13, :cond_11

    #@15a
    .line 367
    iget-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@15c
    move-wide/from16 v16, v0

    #@15e
    iget-wide v0, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@160
    move-wide/from16 v18, v0

    #@162
    sub-long v16, v16, v18

    #@164
    move-object/from16 v0, p0

    #@166
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@168
    rsub-int/lit8 v13, v13, 0x4

    #@16a
    mul-int/lit8 v13, v13, 0x8

    #@16c
    shr-long v16, v16, v13

    #@16e
    move-wide/from16 v0, v16

    #@170
    long-to-int v13, v0

    #@171
    add-int/lit8 v13, v13, 0x1

    #@173
    iput v13, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@175
    .line 420
    :cond_d
    const/4 v13, 0x0

    #@176
    move-object/from16 v0, p0

    #@178
    iput v13, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@17a
    .line 421
    iget v13, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@17c
    if-lez v13, :cond_e

    #@17e
    .line 422
    move-object/from16 v0, p0

    #@180
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@182
    const/16 v16, 0x0

    #@184
    aput-object v7, v13, v16

    #@186
    .line 423
    const/4 v13, 0x1

    #@187
    move-object/from16 v0, p0

    #@189
    iput v13, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@18b
    .line 425
    :cond_e
    move-object/from16 v0, p0

    #@18d
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@18f
    add-int/lit8 v4, v13, 0x1

    #@191
    :goto_6
    const/4 v13, 0x4

    #@192
    if-gt v4, v13, :cond_16

    #@194
    .line 427
    aget-object v13, v11, v4

    #@196
    if-eqz v13, :cond_f

    #@198
    aget-object v13, v11, v4

    #@19a
    iget v13, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@19c
    if-lez v13, :cond_f

    #@19e
    .line 428
    move-object/from16 v0, p0

    #@1a0
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@1a6
    move/from16 v16, v0

    #@1a8
    add-int/lit8 v17, v16, 0x1

    #@1aa
    move/from16 v0, v17

    #@1ac
    move-object/from16 v1, p0

    #@1ae
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@1b0
    aget-object v17, v11, v4

    #@1b2
    aput-object v17, v13, v16

    #@1b4
    .line 430
    :cond_f
    aget-object v13, v5, v4

    #@1b6
    if-eqz v13, :cond_10

    #@1b8
    aget-object v13, v5, v4

    #@1ba
    iget v13, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1bc
    if-lez v13, :cond_10

    #@1be
    .line 431
    move-object/from16 v0, p0

    #@1c0
    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@1c6
    move/from16 v16, v0

    #@1c8
    add-int/lit8 v17, v16, 0x1

    #@1ca
    move/from16 v0, v17

    #@1cc
    move-object/from16 v1, p0

    #@1ce
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@1d0
    aget-object v17, v5, v4

    #@1d2
    aput-object v17, v13, v16

    #@1d4
    .line 425
    :cond_10
    add-int/lit8 v4, v4, 0x1

    #@1d6
    goto :goto_6

    #@1d7
    .line 372
    :cond_11
    const/4 v4, 0x4

    #@1d8
    :goto_7
    move-object/from16 v0, p0

    #@1da
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@1dc
    if-le v4, v13, :cond_d

    #@1de
    .line 373
    aget-object v13, v5, v4

    #@1e0
    if-eqz v13, :cond_15

    #@1e2
    aget-object v13, v11, v4

    #@1e4
    if-eqz v13, :cond_15

    #@1e6
    .line 374
    aget-object v13, v5, v4

    #@1e8
    iget v13, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1ea
    if-lez v13, :cond_15

    #@1ec
    aget-object v13, v11, v4

    #@1ee
    iget v13, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1f0
    if-lez v13, :cond_15

    #@1f2
    .line 375
    aget-object v13, v11, v4

    #@1f4
    iget-wide v8, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@1f6
    .line 376
    .local v8, "start":J
    aget-object v13, v5, v4

    #@1f8
    iget-wide v2, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@1fa
    .line 378
    .local v2, "end":J
    cmp-long v13, v2, v8

    #@1fc
    if-gez v13, :cond_12

    #@1fe
    move-object/from16 v0, p0

    #@200
    invoke-direct {v0, v2, v3, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    #@203
    move-result-wide v16

    #@204
    cmp-long v13, v16, v8

    #@206
    if-nez v13, :cond_15

    #@208
    .line 380
    :cond_12
    aget-object v13, v5, v4

    #@20a
    iget-wide v8, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@20c
    .line 381
    aget-object v13, v11, v4

    #@20e
    iget-wide v2, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@210
    .end local v2    # "end":J
    aget-object v13, v5, v4

    #@212
    iput-wide v2, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@214
    .line 386
    .restart local v2    # "end":J
    aget-object v13, v5, v4

    #@216
    .line 387
    invoke-static {v2, v3, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@219
    move-result v16

    #@21a
    invoke-static {v8, v9, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@21d
    move-result v17

    #@21e
    sub-int v16, v16, v17

    #@220
    add-int/lit8 v16, v16, 0x1

    #@222
    .line 388
    move-object/from16 v0, p0

    #@224
    invoke-direct {v0, v4}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@227
    move-result v17

    #@228
    add-int/lit8 v18, v4, -0x1

    #@22a
    move/from16 v0, v18

    #@22c
    invoke-static {v2, v3, v0}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    #@22f
    move-result v18

    #@230
    add-int/lit8 v19, v4, -0x1

    #@232
    move/from16 v0, v19

    #@234
    invoke-static {v8, v9, v0}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    #@237
    move-result v19

    #@238
    sub-int v18, v18, v19

    #@23a
    mul-int v17, v17, v18

    #@23c
    .line 387
    add-int v16, v16, v17

    #@23e
    .line 386
    move/from16 v0, v16

    #@240
    iput v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@242
    .line 389
    aget-object v13, v11, v4

    #@244
    const/16 v16, 0x0

    #@246
    move/from16 v0, v16

    #@248
    iput v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@24a
    .line 390
    :cond_13
    :goto_8
    add-int/lit8 v4, v4, -0x1

    #@24c
    move-object/from16 v0, p0

    #@24e
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@250
    if-le v4, v13, :cond_d

    #@252
    .line 391
    aget-object v13, v5, v4

    #@254
    if-eqz v13, :cond_14

    #@256
    .line 392
    aget-object v13, v5, v4

    #@258
    const/16 v16, 0x0

    #@25a
    move/from16 v0, v16

    #@25c
    iput v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@25e
    .line 394
    :cond_14
    aget-object v13, v11, v4

    #@260
    if-eqz v13, :cond_13

    #@262
    .line 395
    aget-object v13, v11, v4

    #@264
    const/16 v16, 0x0

    #@266
    move/from16 v0, v16

    #@268
    iput v0, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@26a
    goto :goto_8

    #@26b
    .line 372
    .end local v2    # "end":J
    .end local v8    # "start":J
    :cond_15
    add-int/lit8 v4, v4, -0x1

    #@26d
    goto/16 :goto_7

    #@26f
    .line 434
    :cond_16
    move-object/from16 v0, p0

    #@271
    iget v13, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@273
    if-lez v13, :cond_17

    #@275
    const/4 v13, 0x1

    #@276
    :goto_9
    return v13

    #@277
    :cond_17
    const/4 v13, 0x0

    #@278
    goto :goto_9
.end method

.method private static getWeightTrail(JI)I
    .locals 2
    .param p0, "weight"    # J
    .param p2, "length"    # I

    #@0
    .prologue
    .line 190
    rsub-int/lit8 v0, p2, 0x4

    #@2
    mul-int/lit8 v0, v0, 0x8

    #@4
    shr-long v0, p0, v0

    #@6
    long-to-int v0, v0

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    return v0
.end method

.method private incWeight(JI)J
    .locals 5
    .param p1, "weight"    # J
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 244
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    #@4
    move-result v0

    #@5
    .line 245
    .local v0, "b":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@7
    aget v1, v1, p3

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 246
    add-int/lit8 v1, v0, 0x1

    #@d
    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@10
    move-result-wide v2

    #@11
    return-wide v2

    #@12
    .line 249
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@14
    aget v1, v1, p3

    #@16
    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@19
    move-result-wide p1

    #@1a
    .line 250
    add-int/lit8 p3, p3, -0x1

    #@1c
    .line 251
    sget-boolean v1, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@1e
    if-nez v1, :cond_0

    #@20
    if-lez p3, :cond_2

    #@22
    const/4 v1, 0x1

    #@23
    :goto_0
    if-nez v1, :cond_0

    #@25
    new-instance v1, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@2a
    throw v1

    #@2b
    :cond_2
    move v1, v2

    #@2c
    goto :goto_0
.end method

.method private incWeightByOffset(JII)J
    .locals 3
    .param p1, "weight"    # J
    .param p3, "length"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 258
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    #@4
    move-result v0

    #@5
    add-int/2addr p4, v0

    #@6
    .line 259
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@8
    aget v0, v0, p3

    #@a
    if-gt p4, v0, :cond_1

    #@c
    .line 260
    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0

    #@11
    .line 263
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@13
    aget v0, v0, p3

    #@15
    sub-int/2addr p4, v0

    #@16
    .line 264
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@18
    aget v0, v0, p3

    #@1a
    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@1d
    move-result v2

    #@1e
    rem-int v2, p4, v2

    #@20
    add-int/2addr v0, v2

    #@21
    invoke-static {p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@24
    move-result-wide p1

    #@25
    .line 265
    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@28
    move-result v0

    #@29
    div-int/2addr p4, v0

    #@2a
    .line 266
    add-int/lit8 p3, p3, -0x1

    #@2c
    .line 267
    sget-boolean v0, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@2e
    if-nez v0, :cond_0

    #@30
    if-lez p3, :cond_2

    #@32
    const/4 v0, 0x1

    #@33
    :goto_0
    if-nez v0, :cond_0

    #@35
    new-instance v0, Ljava/lang/AssertionError;

    #@37
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3a
    throw v0

    #@3b
    :cond_2
    move v0, v1

    #@3c
    goto :goto_0
.end method

.method private static incWeightTrail(JI)J
    .locals 4
    .param p0, "weight"    # J
    .param p2, "length"    # I

    #@0
    .prologue
    .line 230
    rsub-int/lit8 v0, p2, 0x4

    #@2
    mul-int/lit8 v0, v0, 0x8

    #@4
    const-wide/16 v2, 0x1

    #@6
    shl-long v0, v2, v0

    #@8
    add-long/2addr v0, p0

    #@9
    return-wide v0
.end method

.method public static lengthOfWeight(J)I
    .locals 4
    .param p0, "weight"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 178
    const-wide/32 v0, 0xffffff

    #@5
    and-long/2addr v0, p0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_0

    #@a
    .line 179
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 180
    :cond_0
    const-wide/32 v0, 0xffff

    #@f
    and-long/2addr v0, p0

    #@10
    cmp-long v0, v0, v2

    #@12
    if-nez v0, :cond_1

    #@14
    .line 181
    const/4 v0, 0x2

    #@15
    return v0

    #@16
    .line 182
    :cond_1
    const-wide/16 v0, 0xff

    #@18
    and-long/2addr v0, p0

    #@19
    cmp-long v0, v0, v2

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 183
    const/4 v0, 0x3

    #@1e
    return v0

    #@1f
    .line 185
    :cond_2
    const/4 v0, 0x4

    #@20
    return v0
.end method

.method private lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V
    .locals 4
    .param p1, "range"    # Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@0
    .prologue
    .line 273
    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 274
    .local v0, "length":I
    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@6
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@8
    aget v1, v1, v0

    #@a
    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    #@d
    move-result-wide v2

    #@e
    iput-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@10
    .line 275
    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@12
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@14
    aget v1, v1, v0

    #@16
    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    #@19
    move-result-wide v2

    #@1a
    iput-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@1c
    .line 276
    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1e
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@21
    move-result v2

    #@22
    mul-int/2addr v1, v2

    #@23
    iput v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@25
    .line 277
    iput v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@27
    .line 272
    return-void
.end method

.method private static setWeightByte(JII)J
    .locals 6
    .param p0, "weight"    # J
    .param p2, "idx"    # I
    .param p3, "b"    # I

    #@0
    .prologue
    .line 205
    mul-int/lit8 p2, p2, 0x8

    #@2
    .line 206
    const/16 v2, 0x20

    #@4
    if-ge p2, v2, :cond_0

    #@6
    .line 207
    const-wide v2, 0xffffffffL

    #@b
    shr-long v0, v2, p2

    #@d
    .line 220
    .local v0, "mask":J
    :goto_0
    rsub-int/lit8 p2, p2, 0x20

    #@f
    .line 221
    const-wide v2, 0xffffff00L

    #@14
    shl-long/2addr v2, p2

    #@15
    or-long/2addr v0, v2

    #@16
    .line 222
    and-long v2, p0, v0

    #@18
    int-to-long v4, p3

    #@19
    shl-long/2addr v4, p2

    #@1a
    or-long/2addr v2, v4

    #@1b
    return-wide v2

    #@1c
    .line 218
    .end local v0    # "mask":J
    :cond_0
    const-wide/16 v0, 0x0

    #@1e
    .restart local v0    # "mask":J
    goto :goto_0
.end method

.method private static setWeightTrail(JII)J
    .locals 4
    .param p0, "weight"    # J
    .param p2, "length"    # I
    .param p3, "trail"    # I

    #@0
    .prologue
    .line 194
    rsub-int/lit8 v0, p2, 0x4

    #@2
    mul-int/lit8 p2, v0, 0x8

    #@4
    .line 195
    const-wide v0, 0xffffff00L

    #@9
    shl-long/2addr v0, p2

    #@a
    and-long/2addr v0, p0

    #@b
    int-to-long v2, p3

    #@c
    shl-long/2addr v2, p2

    #@d
    or-long/2addr v0, v2

    #@e
    return-wide v0
.end method

.method private static truncateWeight(JI)J
    .locals 4
    .param p0, "weight"    # J
    .param p2, "length"    # I

    #@0
    .prologue
    .line 226
    rsub-int/lit8 v0, p2, 0x4

    #@2
    mul-int/lit8 v0, v0, 0x8

    #@4
    const-wide v2, 0xffffffffL

    #@9
    shl-long v0, v2, v0

    #@b
    and-long/2addr v0, p0

    #@c
    return-wide v0
.end method


# virtual methods
.method public allocWeights(JJI)Z
    .locals 5
    .param p1, "lowerLimit"    # J
    .param p3, "upperLimit"    # J
    .param p5, "n"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->getWeightRanges(JJ)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 91
    return v3

    #@8
    .line 97
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@a
    aget-object v2, v2, v3

    #@c
    iget v1, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@e
    .line 99
    .local v1, "minLength":I
    invoke-direct {p0, p5, v1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInShortRanges(II)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 122
    :cond_1
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@16
    .line 123
    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@18
    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1a
    array-length v3, v3

    #@1b
    if-ge v2, v3, :cond_2

    #@1d
    .line 124
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1f
    iget v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@21
    const/4 v4, 0x0

    #@22
    aput-object v4, v2, v3

    #@24
    .line 126
    :cond_2
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 101
    :cond_3
    const/4 v2, 0x4

    #@27
    if-ne v1, v2, :cond_4

    #@29
    .line 104
    return v3

    #@2a
    .line 107
    :cond_4
    invoke-direct {p0, p5, v1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInMinLengthRanges(II)Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_1

    #@30
    .line 111
    const/4 v0, 0x0

    #@31
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@33
    aget-object v2, v2, v0

    #@35
    iget v2, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@37
    if-ne v2, v1, :cond_0

    #@39
    .line 112
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@3b
    aget-object v2, v2, v0

    #@3d
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@40
    .line 111
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0
.end method

.method public initForPrimary(Z)V
    .locals 6
    .param p1, "compressible"    # Z

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v1, 0x1

    #@3
    const/16 v3, 0xff

    #@5
    const/4 v2, 0x2

    #@6
    .line 26
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@8
    .line 27
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@a
    aput v4, v0, v1

    #@c
    .line 28
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@e
    aput v3, v0, v1

    #@10
    .line 29
    if-eqz p1, :cond_0

    #@12
    .line 30
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@14
    aput v5, v0, v2

    #@16
    .line 31
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@18
    const/16 v1, 0xfe

    #@1a
    aput v1, v0, v2

    #@1c
    .line 36
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@1e
    aput v2, v0, v4

    #@20
    .line 37
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@22
    aput v3, v0, v4

    #@24
    .line 38
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@26
    aput v2, v0, v5

    #@28
    .line 39
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@2a
    aput v3, v0, v5

    #@2c
    .line 25
    return-void

    #@2d
    .line 33
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@2f
    aput v2, v0, v2

    #@31
    .line 34
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@33
    aput v3, v0, v2

    #@35
    goto :goto_0
.end method

.method public initForSecondary()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x3

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v1, 0x0

    #@5
    .line 44
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@7
    .line 45
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@9
    aput v1, v0, v4

    #@b
    .line 46
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@d
    aput v1, v0, v4

    #@f
    .line 47
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@11
    aput v1, v0, v2

    #@13
    .line 48
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@15
    aput v1, v0, v2

    #@17
    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@19
    aput v2, v0, v3

    #@1b
    .line 50
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@1d
    const/16 v1, 0xff

    #@1f
    aput v1, v0, v3

    #@21
    .line 51
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@23
    aput v2, v0, v5

    #@25
    .line 52
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@27
    const/16 v1, 0xff

    #@29
    aput v1, v0, v5

    #@2b
    .line 42
    return-void
.end method

.method public initForTertiary()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x3

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v1, 0x0

    #@5
    .line 57
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@7
    .line 58
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@9
    aput v1, v0, v4

    #@b
    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@d
    aput v1, v0, v4

    #@f
    .line 60
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@11
    aput v1, v0, v2

    #@13
    .line 61
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@15
    aput v1, v0, v2

    #@17
    .line 64
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@19
    aput v2, v0, v3

    #@1b
    .line 65
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@1d
    const/16 v1, 0x3f

    #@1f
    aput v1, v0, v3

    #@21
    .line 66
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@23
    aput v2, v0, v5

    #@25
    .line 67
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@27
    const/16 v1, 0x3f

    #@29
    aput v1, v0, v5

    #@2b
    .line 55
    return-void
.end method

.method public nextWeight()J
    .locals 8

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    iget v4, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@3
    iget v5, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@5
    if-lt v4, v5, :cond_0

    #@7
    .line 138
    const-wide v4, 0xffffffffL

    #@c
    return-wide v4

    #@d
    .line 141
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@f
    iget v5, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@11
    aget-object v0, v4, v5

    #@13
    .line 142
    .local v0, "range":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    iget-wide v2, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@15
    .line 143
    .local v2, "weight":J
    iget v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@17
    add-int/lit8 v4, v4, -0x1

    #@19
    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 145
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@23
    .line 152
    :cond_1
    return-wide v2

    #@24
    .line 148
    :cond_2
    iget v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@26
    invoke-direct {p0, v2, v3, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    #@29
    move-result-wide v4

    #@2a
    iput-wide v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@2c
    .line 149
    sget-boolean v4, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@2e
    if-nez v4, :cond_1

    #@30
    iget-wide v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@32
    iget-wide v6, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@34
    cmp-long v4, v4, v6

    #@36
    if-gtz v4, :cond_3

    #@38
    const/4 v1, 0x1

    #@39
    :cond_3
    if-nez v1, :cond_1

    #@3b
    new-instance v1, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v1
.end method
