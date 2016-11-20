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
    .line 24
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 554
    new-array v0, v1, [I

    #@6
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@8
    .line 555
    new-array v0, v1, [I

    #@a
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@c
    .line 556
    const/4 v0, 0x7

    #@d
    new-array v0, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@f
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@11
    .line 25
    return-void
.end method

.method private allocWeightsInMinLengthRanges(II)Z
    .locals 16
    .param p1, "n"    # I
    .param p2, "minLength"    # I

    #@0
    .prologue
    .line 487
    const/4 v2, 0x0

    #@1
    .line 489
    .local v2, "count":I
    const/4 v8, 0x0

    #@2
    .line 490
    .local v8, "minLengthRangeCount":I
    :goto_0
    move-object/from16 v0, p0

    #@4
    iget v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@6
    if-ge v8, v12, :cond_0

    #@8
    .line 491
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
    .line 493
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
    .line 492
    add-int/lit8 v8, v8, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 496
    :cond_0
    add-int/lit8 v12, p2, 0x1

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@27
    move-result v9

    #@28
    .line 497
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
    .line 500
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
    .line 501
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
    .line 502
    .local v6, "end":J
    const/4 v5, 0x1

    #@43
    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_4

    #@45
    .line 503
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
    .line 504
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
    .line 502
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 514
    :cond_4
    sub-int v12, p1, v2

    #@72
    add-int/lit8 v13, v9, -0x1

    #@74
    div-int v4, v12, v13

    #@76
    .line 515
    .local v4, "count2":I
    sub-int v3, v2, v4

    #@78
    .line 516
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
    .line 518
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@83
    .line 519
    add-int/lit8 v3, v3, -0x1

    #@85
    .line 520
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
    .line 523
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
    .line 525
    if-nez v3, :cond_8

    #@a6
    .line 527
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
    .line 528
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
    .line 529
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
    .line 530
    const/4 v12, 0x1

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@c9
    .line 550
    :goto_3
    const/4 v12, 0x1

    #@ca
    return v12

    #@cb
    .line 537
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
    .line 538
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
    .line 540
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
    .line 541
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
    .line 543
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
    .line 544
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
    .line 545
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
    .line 546
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
    .line 547
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
    .line 548
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
    .line 461
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
    .line 462
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@13
    aget-object v1, v1, v0

    #@15
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@17
    if-gt p1, v1, :cond_2

    #@19
    .line 464
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1b
    aget-object v1, v1, v0

    #@1d
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@1f
    if-le v1, p2, :cond_0

    #@21
    .line 468
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@23
    aget-object v1, v1, v0

    #@25
    iput p1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@27
    .line 470
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@29
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@2b
    .line 473
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@2d
    if-le v1, v4, :cond_1

    #@2f
    .line 475
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@31
    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@33
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    #@36
    .line 477
    :cond_1
    return v4

    #@37
    .line 479
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@39
    aget-object v1, v1, v0

    #@3b
    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@3d
    sub-int/2addr p1, v1

    #@3e
    .line 461
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 481
    :cond_3
    return v3
.end method

.method private countBytes(I)I
    .locals 2
    .param p1, "idx"    # I

    #@0
    .prologue
    .line 241
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
    .line 236
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
    .line 201
    invoke-static {p0, p1, p2}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getWeightRanges(JJ)Z
    .locals 23
    .param p1, "lowerLimit"    # J
    .param p3, "upperLimit"    # J

    #@0
    .prologue
    .line 288
    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@2
    if-nez v18, :cond_1

    #@4
    const-wide/16 v18, 0x0

    #@6
    cmp-long v18, p1, v18

    #@8
    if-eqz v18, :cond_0

    #@a
    const/16 v18, 0x1

    #@c
    :goto_0
    if-nez v18, :cond_1

    #@e
    new-instance v18, Ljava/lang/AssertionError;

    #@10
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v18

    #@14
    :cond_0
    const/16 v18, 0x0

    #@16
    goto :goto_0

    #@17
    .line 289
    :cond_1
    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@19
    if-nez v18, :cond_3

    #@1b
    const-wide/16 v18, 0x0

    #@1d
    cmp-long v18, p3, v18

    #@1f
    if-eqz v18, :cond_2

    #@21
    const/16 v18, 0x1

    #@23
    :goto_1
    if-nez v18, :cond_3

    #@25
    new-instance v18, Ljava/lang/AssertionError;

    #@27
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@2a
    throw v18

    #@2b
    :cond_2
    const/16 v18, 0x0

    #@2d
    goto :goto_1

    #@2e
    .line 292
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    #@31
    move-result v8

    #@32
    .line 293
    .local v8, "lowerLength":I
    invoke-static/range {p3 .. p4}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    #@35
    move-result v13

    #@36
    .line 297
    .local v13, "upperLength":I
    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@38
    if-nez v18, :cond_5

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@3e
    move/from16 v18, v0

    #@40
    move/from16 v0, v18

    #@42
    if-lt v8, v0, :cond_4

    #@44
    const/16 v18, 0x1

    #@46
    :goto_2
    if-nez v18, :cond_5

    #@48
    new-instance v18, Ljava/lang/AssertionError;

    #@4a
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@4d
    throw v18

    #@4e
    :cond_4
    const/16 v18, 0x0

    #@50
    goto :goto_2

    #@51
    .line 300
    :cond_5
    cmp-long v18, p1, p3

    #@53
    if-ltz v18, :cond_6

    #@55
    .line 302
    const/16 v18, 0x0

    #@57
    return v18

    #@58
    .line 306
    :cond_6
    if-ge v8, v13, :cond_7

    #@5a
    .line 307
    move-wide/from16 v0, p3

    #@5c
    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@5f
    move-result-wide v18

    #@60
    cmp-long v18, p1, v18

    #@62
    if-nez v18, :cond_7

    #@64
    .line 309
    const/16 v18, 0x0

    #@66
    return v18

    #@67
    .line 314
    :cond_7
    const/16 v18, 0x5

    #@69
    move/from16 v0, v18

    #@6b
    new-array v5, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@6d
    .line 315
    .local v5, "lower":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    new-instance v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@6f
    const/16 v18, 0x0

    #@71
    move-object/from16 v0, v18

    #@73
    invoke-direct {v10, v0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@76
    .line 316
    .local v10, "middle":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    const/16 v18, 0x5

    #@78
    move/from16 v0, v18

    #@7a
    new-array v12, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@7c
    .line 332
    .local v12, "upper":[Landroid/icu/impl/coll/CollationWeights$WeightRange;
    move-wide/from16 v16, p1

    #@7e
    .line 333
    .local v16, "weight":J
    move v4, v8

    #@7f
    .local v4, "length":I
    :goto_3
    move-object/from16 v0, p0

    #@81
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@83
    move/from16 v18, v0

    #@85
    move/from16 v0, v18

    #@87
    if-le v4, v0, :cond_9

    #@89
    .line 334
    move-wide/from16 v0, v16

    #@8b
    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@8e
    move-result v11

    #@8f
    .line 335
    .local v11, "trail":I
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@93
    move-object/from16 v18, v0

    #@95
    aget v18, v18, v4

    #@97
    move/from16 v0, v18

    #@99
    if-ge v11, v0, :cond_8

    #@9b
    .line 336
    new-instance v18, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@9d
    const/16 v19, 0x0

    #@9f
    invoke-direct/range {v18 .. v19}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@a2
    aput-object v18, v5, v4

    #@a4
    .line 337
    aget-object v18, v5, v4

    #@a6
    move-wide/from16 v0, v16

    #@a8
    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    #@ab
    move-result-wide v20

    #@ac
    move-wide/from16 v0, v20

    #@ae
    move-object/from16 v2, v18

    #@b0
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@b2
    .line 338
    aget-object v18, v5, v4

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@b8
    move-object/from16 v19, v0

    #@ba
    aget v19, v19, v4

    #@bc
    move-wide/from16 v0, v16

    #@be
    move/from16 v2, v19

    #@c0
    invoke-static {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    #@c3
    move-result-wide v20

    #@c4
    move-wide/from16 v0, v20

    #@c6
    move-object/from16 v2, v18

    #@c8
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@ca
    .line 339
    aget-object v18, v5, v4

    #@cc
    move-object/from16 v0, v18

    #@ce
    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@d0
    .line 340
    aget-object v18, v5, v4

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@d6
    move-object/from16 v19, v0

    #@d8
    aget v19, v19, v4

    #@da
    sub-int v19, v19, v11

    #@dc
    move/from16 v0, v19

    #@de
    move-object/from16 v1, v18

    #@e0
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@e2
    .line 342
    :cond_8
    add-int/lit8 v18, v4, -0x1

    #@e4
    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@e7
    move-result-wide v16

    #@e8
    .line 333
    add-int/lit8 v4, v4, -0x1

    #@ea
    goto :goto_3

    #@eb
    .line 344
    .end local v11    # "trail":I
    :cond_9
    const-wide v18, 0xff000000L

    #@f0
    cmp-long v18, v16, v18

    #@f2
    if-gez v18, :cond_b

    #@f4
    .line 345
    move-object/from16 v0, p0

    #@f6
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@f8
    move/from16 v18, v0

    #@fa
    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    #@fd
    move-result-wide v18

    #@fe
    move-wide/from16 v0, v18

    #@100
    iput-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@102
    .line 352
    :goto_4
    move-wide/from16 v16, p3

    #@104
    .line 353
    move v4, v13

    #@105
    :goto_5
    move-object/from16 v0, p0

    #@107
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@109
    move/from16 v18, v0

    #@10b
    move/from16 v0, v18

    #@10d
    if-le v4, v0, :cond_c

    #@10f
    .line 354
    move-wide/from16 v0, v16

    #@111
    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@114
    move-result v11

    #@115
    .line 355
    .restart local v11    # "trail":I
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@119
    move-object/from16 v18, v0

    #@11b
    aget v18, v18, v4

    #@11d
    move/from16 v0, v18

    #@11f
    if-le v11, v0, :cond_a

    #@121
    .line 356
    new-instance v18, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@123
    const/16 v19, 0x0

    #@125
    invoke-direct/range {v18 .. v19}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@128
    aput-object v18, v12, v4

    #@12a
    .line 357
    aget-object v18, v12, v4

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@130
    move-object/from16 v19, v0

    #@132
    aget v19, v19, v4

    #@134
    move-wide/from16 v0, v16

    #@136
    move/from16 v2, v19

    #@138
    invoke-static {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    #@13b
    move-result-wide v20

    #@13c
    move-wide/from16 v0, v20

    #@13e
    move-object/from16 v2, v18

    #@140
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@142
    .line 358
    aget-object v18, v12, v4

    #@144
    move-wide/from16 v0, v16

    #@146
    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    #@149
    move-result-wide v20

    #@14a
    move-wide/from16 v0, v20

    #@14c
    move-object/from16 v2, v18

    #@14e
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@150
    .line 359
    aget-object v18, v12, v4

    #@152
    move-object/from16 v0, v18

    #@154
    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@156
    .line 360
    aget-object v18, v12, v4

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@15c
    move-object/from16 v19, v0

    #@15e
    aget v19, v19, v4

    #@160
    sub-int v19, v11, v19

    #@162
    move/from16 v0, v19

    #@164
    move-object/from16 v1, v18

    #@166
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@168
    .line 362
    :cond_a
    add-int/lit8 v18, v4, -0x1

    #@16a
    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@16d
    move-result-wide v16

    #@16e
    .line 353
    add-int/lit8 v4, v4, -0x1

    #@170
    goto :goto_5

    #@171
    .line 349
    .end local v11    # "trail":I
    :cond_b
    const-wide v18, 0xffffffffL

    #@176
    move-wide/from16 v0, v18

    #@178
    iput-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@17a
    goto :goto_4

    #@17b
    .line 364
    :cond_c
    move-object/from16 v0, p0

    #@17d
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@17f
    move/from16 v18, v0

    #@181
    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    #@184
    move-result-wide v18

    #@185
    move-wide/from16 v0, v18

    #@187
    iput-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@189
    .line 367
    move-object/from16 v0, p0

    #@18b
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@18d
    move/from16 v18, v0

    #@18f
    move/from16 v0, v18

    #@191
    iput v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@193
    .line 368
    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@195
    move-wide/from16 v18, v0

    #@197
    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@199
    move-wide/from16 v20, v0

    #@19b
    cmp-long v18, v18, v20

    #@19d
    if-ltz v18, :cond_11

    #@19f
    .line 369
    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@1a1
    move-wide/from16 v18, v0

    #@1a3
    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@1a5
    move-wide/from16 v20, v0

    #@1a7
    sub-long v18, v18, v20

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@1ad
    move/from16 v20, v0

    #@1af
    rsub-int/lit8 v20, v20, 0x4

    #@1b1
    mul-int/lit8 v20, v20, 0x8

    #@1b3
    shr-long v18, v18, v20

    #@1b5
    move-wide/from16 v0, v18

    #@1b7
    long-to-int v0, v0

    #@1b8
    move/from16 v18, v0

    #@1ba
    add-int/lit8 v18, v18, 0x1

    #@1bc
    move/from16 v0, v18

    #@1be
    iput v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1c0
    .line 442
    :cond_d
    const/16 v18, 0x0

    #@1c2
    move/from16 v0, v18

    #@1c4
    move-object/from16 v1, p0

    #@1c6
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@1c8
    .line 443
    iget v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1ca
    move/from16 v18, v0

    #@1cc
    if-lez v18, :cond_e

    #@1ce
    .line 444
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1d2
    move-object/from16 v18, v0

    #@1d4
    const/16 v19, 0x0

    #@1d6
    aput-object v10, v18, v19

    #@1d8
    .line 445
    const/16 v18, 0x1

    #@1da
    move/from16 v0, v18

    #@1dc
    move-object/from16 v1, p0

    #@1de
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@1e0
    .line 447
    :cond_e
    move-object/from16 v0, p0

    #@1e2
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@1e4
    move/from16 v18, v0

    #@1e6
    add-int/lit8 v4, v18, 0x1

    #@1e8
    :goto_6
    const/16 v18, 0x4

    #@1ea
    move/from16 v0, v18

    #@1ec
    if-gt v4, v0, :cond_19

    #@1ee
    .line 449
    aget-object v18, v12, v4

    #@1f0
    if-eqz v18, :cond_f

    #@1f2
    aget-object v18, v12, v4

    #@1f4
    move-object/from16 v0, v18

    #@1f6
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1f8
    move/from16 v18, v0

    #@1fa
    if-lez v18, :cond_f

    #@1fc
    .line 450
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@200
    move-object/from16 v18, v0

    #@202
    move-object/from16 v0, p0

    #@204
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@206
    move/from16 v19, v0

    #@208
    add-int/lit8 v20, v19, 0x1

    #@20a
    move/from16 v0, v20

    #@20c
    move-object/from16 v1, p0

    #@20e
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@210
    aget-object v20, v12, v4

    #@212
    aput-object v20, v18, v19

    #@214
    .line 452
    :cond_f
    aget-object v18, v5, v4

    #@216
    if-eqz v18, :cond_10

    #@218
    aget-object v18, v5, v4

    #@21a
    move-object/from16 v0, v18

    #@21c
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@21e
    move/from16 v18, v0

    #@220
    if-lez v18, :cond_10

    #@222
    .line 453
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@226
    move-object/from16 v18, v0

    #@228
    move-object/from16 v0, p0

    #@22a
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@22c
    move/from16 v19, v0

    #@22e
    add-int/lit8 v20, v19, 0x1

    #@230
    move/from16 v0, v20

    #@232
    move-object/from16 v1, p0

    #@234
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@236
    aget-object v20, v5, v4

    #@238
    aput-object v20, v18, v19

    #@23a
    .line 447
    :cond_10
    add-int/lit8 v4, v4, 0x1

    #@23c
    goto :goto_6

    #@23d
    .line 372
    :cond_11
    const/4 v4, 0x4

    #@23e
    :goto_7
    move-object/from16 v0, p0

    #@240
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@242
    move/from16 v18, v0

    #@244
    move/from16 v0, v18

    #@246
    if-le v4, v0, :cond_d

    #@248
    .line 373
    aget-object v18, v5, v4

    #@24a
    if-eqz v18, :cond_18

    #@24c
    aget-object v18, v12, v4

    #@24e
    if-eqz v18, :cond_18

    #@250
    .line 374
    aget-object v18, v5, v4

    #@252
    move-object/from16 v0, v18

    #@254
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@256
    move/from16 v18, v0

    #@258
    if-lez v18, :cond_18

    #@25a
    aget-object v18, v12, v4

    #@25c
    move-object/from16 v0, v18

    #@25e
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@260
    move/from16 v18, v0

    #@262
    if-lez v18, :cond_18

    #@264
    .line 380
    aget-object v18, v5, v4

    #@266
    move-object/from16 v0, v18

    #@268
    iget-wide v6, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@26a
    .line 381
    .local v6, "lowerEnd":J
    aget-object v18, v12, v4

    #@26c
    move-object/from16 v0, v18

    #@26e
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@270
    .line 382
    .local v14, "upperStart":J
    const/4 v9, 0x0

    #@271
    .line 384
    .local v9, "merged":Z
    cmp-long v18, v6, v14

    #@273
    if-lez v18, :cond_15

    #@275
    .line 392
    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@277
    if-nez v18, :cond_13

    #@279
    add-int/lit8 v18, v4, -0x1

    #@27b
    move/from16 v0, v18

    #@27d
    invoke-static {v6, v7, v0}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@280
    move-result-wide v18

    #@281
    .line 393
    add-int/lit8 v20, v4, -0x1

    #@283
    move/from16 v0, v20

    #@285
    invoke-static {v14, v15, v0}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    #@288
    move-result-wide v20

    #@289
    .line 392
    cmp-long v18, v18, v20

    #@28b
    if-nez v18, :cond_12

    #@28d
    const/16 v18, 0x1

    #@28f
    :goto_8
    if-nez v18, :cond_13

    #@291
    new-instance v18, Ljava/lang/AssertionError;

    #@293
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@296
    throw v18

    #@297
    :cond_12
    const/16 v18, 0x0

    #@299
    goto :goto_8

    #@29a
    .line 395
    :cond_13
    aget-object v18, v5, v4

    #@29c
    aget-object v19, v12, v4

    #@29e
    move-object/from16 v0, v19

    #@2a0
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@2a2
    move-wide/from16 v20, v0

    #@2a4
    move-wide/from16 v0, v20

    #@2a6
    move-object/from16 v2, v18

    #@2a8
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@2aa
    .line 396
    aget-object v18, v5, v4

    #@2ac
    .line 397
    aget-object v19, v5, v4

    #@2ae
    move-object/from16 v0, v19

    #@2b0
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@2b2
    move-wide/from16 v20, v0

    #@2b4
    move-wide/from16 v0, v20

    #@2b6
    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@2b9
    move-result v19

    #@2ba
    .line 398
    aget-object v20, v5, v4

    #@2bc
    move-object/from16 v0, v20

    #@2be
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@2c0
    move-wide/from16 v20, v0

    #@2c2
    move-wide/from16 v0, v20

    #@2c4
    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    #@2c7
    move-result v20

    #@2c8
    .line 397
    sub-int v19, v19, v20

    #@2ca
    add-int/lit8 v19, v19, 0x1

    #@2cc
    .line 396
    move/from16 v0, v19

    #@2ce
    move-object/from16 v1, v18

    #@2d0
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@2d2
    .line 401
    const/4 v9, 0x1

    #@2d3
    .line 413
    :cond_14
    :goto_9
    if-eqz v9, :cond_18

    #@2d5
    .line 416
    aget-object v18, v12, v4

    #@2d7
    const/16 v19, 0x0

    #@2d9
    move/from16 v0, v19

    #@2db
    move-object/from16 v1, v18

    #@2dd
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@2df
    .line 417
    :goto_a
    add-int/lit8 v4, v4, -0x1

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@2e5
    move/from16 v18, v0

    #@2e7
    move/from16 v0, v18

    #@2e9
    if-le v4, v0, :cond_d

    #@2eb
    .line 418
    const/16 v18, 0x0

    #@2ed
    aput-object v18, v12, v4

    #@2ef
    const/16 v18, 0x0

    #@2f1
    aput-object v18, v5, v4

    #@2f3
    goto :goto_a

    #@2f4
    .line 402
    :cond_15
    cmp-long v18, v6, v14

    #@2f6
    if-nez v18, :cond_17

    #@2f8
    .line 404
    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    #@2fa
    if-nez v18, :cond_14

    #@2fc
    move-object/from16 v0, p0

    #@2fe
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@300
    move-object/from16 v18, v0

    #@302
    aget v18, v18, v4

    #@304
    move-object/from16 v0, p0

    #@306
    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@308
    move-object/from16 v19, v0

    #@30a
    aget v19, v19, v4

    #@30c
    move/from16 v0, v18

    #@30e
    move/from16 v1, v19

    #@310
    if-ge v0, v1, :cond_16

    #@312
    const/16 v18, 0x1

    #@314
    :goto_b
    if-nez v18, :cond_14

    #@316
    new-instance v18, Ljava/lang/AssertionError;

    #@318
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@31b
    throw v18

    #@31c
    :cond_16
    const/16 v18, 0x0

    #@31e
    goto :goto_b

    #@31f
    .line 406
    :cond_17
    move-object/from16 v0, p0

    #@321
    invoke-direct {v0, v6, v7, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    #@324
    move-result-wide v18

    #@325
    cmp-long v18, v18, v14

    #@327
    if-nez v18, :cond_14

    #@329
    .line 408
    aget-object v18, v5, v4

    #@32b
    aget-object v19, v12, v4

    #@32d
    move-object/from16 v0, v19

    #@32f
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@331
    move-wide/from16 v20, v0

    #@333
    move-wide/from16 v0, v20

    #@335
    move-object/from16 v2, v18

    #@337
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    #@339
    .line 409
    aget-object v18, v5, v4

    #@33b
    move-object/from16 v0, v18

    #@33d
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@33f
    move/from16 v19, v0

    #@341
    aget-object v20, v12, v4

    #@343
    move-object/from16 v0, v20

    #@345
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@347
    move/from16 v20, v0

    #@349
    add-int v19, v19, v20

    #@34b
    move/from16 v0, v19

    #@34d
    move-object/from16 v1, v18

    #@34f
    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@351
    .line 410
    const/4 v9, 0x1

    #@352
    goto :goto_9

    #@353
    .line 372
    .end local v6    # "lowerEnd":J
    .end local v9    # "merged":Z
    .end local v14    # "upperStart":J
    :cond_18
    add-int/lit8 v4, v4, -0x1

    #@355
    goto/16 :goto_7

    #@357
    .line 456
    :cond_19
    move-object/from16 v0, p0

    #@359
    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@35b
    move/from16 v18, v0

    #@35d
    if-lez v18, :cond_1a

    #@35f
    const/16 v18, 0x1

    #@361
    :goto_c
    return v18

    #@362
    :cond_1a
    const/16 v18, 0x0

    #@364
    goto :goto_c
.end method

.method private static getWeightTrail(JI)I
    .locals 2
    .param p0, "weight"    # J
    .param p2, "length"    # I

    #@0
    .prologue
    .line 192
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
    .line 246
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    #@4
    move-result v0

    #@5
    .line 247
    .local v0, "b":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@7
    aget v1, v1, p3

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 248
    add-int/lit8 v1, v0, 0x1

    #@d
    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@10
    move-result-wide v2

    #@11
    return-wide v2

    #@12
    .line 251
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@14
    aget v1, v1, p3

    #@16
    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@19
    move-result-wide p1

    #@1a
    .line 252
    add-int/lit8 p3, p3, -0x1

    #@1c
    .line 253
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
    .line 260
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    #@4
    move-result v0

    #@5
    add-int/2addr p4, v0

    #@6
    .line 261
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@8
    aget v0, v0, p3

    #@a
    if-gt p4, v0, :cond_1

    #@c
    .line 262
    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0

    #@11
    .line 265
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@13
    aget v0, v0, p3

    #@15
    sub-int/2addr p4, v0

    #@16
    .line 266
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
    .line 267
    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    #@28
    move-result v0

    #@29
    div-int/2addr p4, v0

    #@2a
    .line 268
    add-int/lit8 p3, p3, -0x1

    #@2c
    .line 269
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
    .line 232
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
    .line 180
    const-wide/32 v0, 0xffffff

    #@5
    and-long/2addr v0, p0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_0

    #@a
    .line 181
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 182
    :cond_0
    const-wide/32 v0, 0xffff

    #@f
    and-long/2addr v0, p0

    #@10
    cmp-long v0, v0, v2

    #@12
    if-nez v0, :cond_1

    #@14
    .line 183
    const/4 v0, 0x2

    #@15
    return v0

    #@16
    .line 184
    :cond_1
    const-wide/16 v0, 0xff

    #@18
    and-long/2addr v0, p0

    #@19
    cmp-long v0, v0, v2

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 185
    const/4 v0, 0x3

    #@1e
    return v0

    #@1f
    .line 187
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
    .line 275
    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 276
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
    .line 277
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
    .line 278
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
    .line 279
    iput v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@27
    .line 274
    return-void
.end method

.method private static setWeightByte(JII)J
    .locals 6
    .param p0, "weight"    # J
    .param p2, "idx"    # I
    .param p3, "b"    # I

    #@0
    .prologue
    .line 207
    mul-int/lit8 p2, p2, 0x8

    #@2
    .line 208
    const/16 v2, 0x20

    #@4
    if-ge p2, v2, :cond_0

    #@6
    .line 209
    const-wide v2, 0xffffffffL

    #@b
    shr-long v0, v2, p2

    #@d
    .line 222
    .local v0, "mask":J
    :goto_0
    rsub-int/lit8 p2, p2, 0x20

    #@f
    .line 223
    const-wide v2, 0xffffff00L

    #@14
    shl-long/2addr v2, p2

    #@15
    or-long/2addr v0, v2

    #@16
    .line 224
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
    .line 220
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
    .line 196
    rsub-int/lit8 v0, p2, 0x4

    #@2
    mul-int/lit8 p2, v0, 0x8

    #@4
    .line 197
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
    .line 228
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
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->getWeightRanges(JJ)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 93
    return v3

    #@8
    .line 99
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@a
    aget-object v2, v2, v3

    #@c
    iget v1, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@e
    .line 101
    .local v1, "minLength":I
    invoke-direct {p0, p5, v1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInShortRanges(II)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 124
    :cond_1
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@16
    .line 125
    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@18
    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1a
    array-length v3, v3

    #@1b
    if-ge v2, v3, :cond_2

    #@1d
    .line 126
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@1f
    iget v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@21
    const/4 v4, 0x0

    #@22
    aput-object v4, v2, v3

    #@24
    .line 128
    :cond_2
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 103
    :cond_3
    const/4 v2, 0x4

    #@27
    if-ne v1, v2, :cond_4

    #@29
    .line 106
    return v3

    #@2a
    .line 109
    :cond_4
    invoke-direct {p0, p5, v1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInMinLengthRanges(II)Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_1

    #@30
    .line 113
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
    .line 114
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@3b
    aget-object v2, v2, v0

    #@3d
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    #@40
    .line 113
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
    .line 28
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@8
    .line 29
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@a
    aput v4, v0, v1

    #@c
    .line 30
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@e
    aput v3, v0, v1

    #@10
    .line 31
    if-eqz p1, :cond_0

    #@12
    .line 32
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@14
    aput v5, v0, v2

    #@16
    .line 33
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@18
    const/16 v1, 0xfe

    #@1a
    aput v1, v0, v2

    #@1c
    .line 38
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@1e
    aput v2, v0, v4

    #@20
    .line 39
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@22
    aput v3, v0, v4

    #@24
    .line 40
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@26
    aput v2, v0, v5

    #@28
    .line 41
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@2a
    aput v3, v0, v5

    #@2c
    .line 27
    return-void

    #@2d
    .line 35
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@2f
    aput v2, v0, v2

    #@31
    .line 36
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
    .line 46
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@7
    .line 47
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@9
    aput v1, v0, v4

    #@b
    .line 48
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@d
    aput v1, v0, v4

    #@f
    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@11
    aput v1, v0, v2

    #@13
    .line 50
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@15
    aput v1, v0, v2

    #@17
    .line 51
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@19
    aput v2, v0, v3

    #@1b
    .line 52
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@1d
    const/16 v1, 0xff

    #@1f
    aput v1, v0, v3

    #@21
    .line 53
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@23
    aput v2, v0, v5

    #@25
    .line 54
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@27
    const/16 v1, 0xff

    #@29
    aput v1, v0, v5

    #@2b
    .line 44
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
    .line 59
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    #@7
    .line 60
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@9
    aput v1, v0, v4

    #@b
    .line 61
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@d
    aput v1, v0, v4

    #@f
    .line 62
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@11
    aput v1, v0, v2

    #@13
    .line 63
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@15
    aput v1, v0, v2

    #@17
    .line 66
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@19
    aput v2, v0, v3

    #@1b
    .line 67
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@1d
    const/16 v1, 0x3f

    #@1f
    aput v1, v0, v3

    #@21
    .line 68
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    #@23
    aput v2, v0, v5

    #@25
    .line 69
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    #@27
    const/16 v1, 0x3f

    #@29
    aput v1, v0, v5

    #@2b
    .line 57
    return-void
.end method

.method public nextWeight()J
    .locals 8

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    iget v4, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@3
    iget v5, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    #@5
    if-lt v4, v5, :cond_0

    #@7
    .line 140
    const-wide v4, 0xffffffffL

    #@c
    return-wide v4

    #@d
    .line 143
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@f
    iget v5, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@11
    aget-object v0, v4, v5

    #@13
    .line 144
    .local v0, "range":Landroid/icu/impl/coll/CollationWeights$WeightRange;
    iget-wide v2, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@15
    .line 145
    .local v2, "weight":J
    iget v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@17
    add-int/lit8 v4, v4, -0x1

    #@19
    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 147
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    #@23
    .line 154
    :cond_1
    return-wide v2

    #@24
    .line 150
    :cond_2
    iget v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    #@26
    invoke-direct {p0, v2, v3, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    #@29
    move-result-wide v4

    #@2a
    iput-wide v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@2c
    .line 151
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
