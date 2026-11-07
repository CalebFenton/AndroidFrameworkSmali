.class final Landroid/icu/impl/coll/CollationFastLatinBuilder;
.super Ljava/lang/Object;
.source "CollationFastLatinBuilder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CONTRACTION_FLAG:J = 0x80000000L

.field private static final blacklist NUM_SPECIAL_GROUPS:I = 0x4


# instance fields
.field private blacklist ce0:J

.field private blacklist ce1:J

.field private blacklist charCEs:[[J

.field private blacklist contractionCEs:Landroid/icu/impl/coll/UVector64;

.field private blacklist firstDigitPrimary:J

.field private blacklist firstLatinPrimary:J

.field private blacklist firstShortPrimary:J

.field private blacklist headerLength:I

.field private blacklist lastLatinPrimary:J

.field blacklist lastSpecialPrimaries:[J

.field private blacklist miniCEs:[C

.field private blacklist result:Ljava/lang/StringBuilder;

.field private blacklist shortPrimaryOverflow:Z

.field private blacklist uniqueCEs:Landroid/icu/impl/coll/UVector64;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 21
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    const/16 v2, 0x1c0

    aput v2, v1, v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    .line 695
    const/4 v1, 0x4

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    .line 68
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 69
    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 70
    new-instance v3, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v3}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    .line 71
    new-instance v3, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v3}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    .line 72
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    .line 73
    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    .line 74
    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    .line 75
    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    .line 76
    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 77
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 78
    iput v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    .line 79
    return-void
.end method

.method private blacklist addContractionEntry(IJJ)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "cce0"    # J
    .param p4, "cce1"    # J

    .line 383
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 384
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, p2, p3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 385
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, p4, p5}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 386
    invoke-direct {p0, p2, p3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 387
    invoke-direct {p0, p4, p5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 388
    return-void
.end method

.method private blacklist addUniqueCE(J)V
    .registers 7
    .param p1, "ce"    # J

    .line 391
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    goto :goto_2e

    .line 392
    :cond_11
    const-wide/32 v0, -0xc001

    and-long/2addr p1, v0

    .line 393
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result v0

    .line 394
    .local v0, "i":I
    if-gez v0, :cond_2d

    .line 395
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    not-int v2, v0

    invoke-virtual {v1, p1, p2, v2}, Landroid/icu/impl/coll/UVector64;->insertElementAt(JI)V

    .line 397
    :cond_2d
    return-void

    .line 391
    .end local v0    # "i":I
    :cond_2e
    :goto_2e
    return-void
.end method

.method private static final blacklist binarySearch([JIJ)I
    .registers 9
    .param p0, "list"    # [J
    .param p1, "limit"    # I
    .param p2, "ce"    # J

    .line 46
    if-nez p1, :cond_4

    const/4 v0, -0x1

    return v0

    .line 47
    :cond_4
    const/4 v0, 0x0

    .line 49
    .local v0, "start":I
    :goto_5
    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 50
    .local v1, "i":I
    aget-wide v2, p0, v1

    invoke-static {p2, p3, v2, v3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->compareInt64AsUnsigned(JJ)I

    move-result v2

    .line 51
    .local v2, "cmp":I
    if-nez v2, :cond_15

    .line 52
    return v1

    .line 53
    :cond_15
    if-gez v2, :cond_1d

    .line 54
    if-ne v1, v0, :cond_1b

    .line 55
    not-int v3, v0

    return v3

    .line 57
    :cond_1b
    move p1, v1

    goto :goto_24

    .line 59
    :cond_1d
    if-ne v1, v0, :cond_23

    .line 60
    add-int/lit8 v3, v0, 0x1

    not-int v3, v3

    return v3

    .line 62
    :cond_23
    move v0, v1

    .line 64
    .end local v1    # "i":I
    .end local v2    # "cmp":I
    :goto_24
    goto :goto_5
.end method

.method private static final blacklist compareInt64AsUnsigned(JJ)I
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 28
    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    .line 29
    add-long/2addr p2, v0

    .line 30
    cmp-long v0, p0, p2

    if-gez v0, :cond_a

    .line 31
    const/4 v0, -0x1

    return v0

    .line 32
    :cond_a
    cmp-long v0, p0, p2

    if-lez v0, :cond_10

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist encodeCharCEs()V
    .registers 12

    .line 534
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 535
    .local v0, "miniCEsStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    const/16 v3, 0x1c0

    if-ge v1, v3, :cond_14

    .line 536
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 538
    .end local v1    # "i":I
    :cond_14
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 539
    .local v1, "indexBase":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v3, :cond_60

    .line 540
    iget-object v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    .line 541
    .local v5, "ce":J
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_5d

    .line 542
    :cond_2a
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v7, v4

    const/4 v8, 0x1

    aget-wide v7, v7, v8

    invoke-direct {p0, v5, v6, v7, v8}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v7

    .line 543
    .local v7, "miniCE":I
    ushr-int/lit8 v8, v7, 0x10

    if-lez v8, :cond_55

    .line 547
    iget-object v8, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v1

    .line 548
    .local v8, "expansionIndex":I
    const/16 v9, 0x3ff

    if-le v8, v9, :cond_46

    .line 549
    const/4 v7, 0x1

    goto :goto_55

    .line 551
    :cond_46
    iget-object v9, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v10, v7, 0x10

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    or-int/lit16 v7, v8, 0x800

    .line 555
    .end local v8    # "expansionIndex":I
    :cond_55
    :goto_55
    iget-object v8, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    add-int v9, v0, v4

    int-to-char v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 539
    .end local v5    # "ce":J
    .end local v7    # "miniCE":I
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 557
    .end local v4    # "i":I
    :cond_60
    return-void
.end method

.method private blacklist encodeContractions()V
    .registers 23

    .line 562
    move-object/from16 v0, p0

    iget v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    const/16 v2, 0x1c0

    add-int/2addr v1, v2

    .line 563
    .local v1, "indexBase":I
    iget-object v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 564
    .local v3, "firstContractionIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_b9

    .line 565
    iget-object v5, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v5, v5, v4

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    .line 566
    .local v5, "ce":J
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_52

    .line 567
    :cond_1e
    iget-object v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v1

    .line 568
    .local v7, "contractionIndex":I
    const/16 v8, 0x3ff

    const/4 v9, 0x1

    if-le v7, v8, :cond_33

    .line 569
    iget-object v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/2addr v10, v4

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 570
    goto :goto_52

    .line 572
    :cond_33
    const/4 v8, 0x1

    .line 573
    .local v8, "firstTriple":Z
    long-to-int v10, v5

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    .line 574
    .local v10, "index":I
    :goto_39
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v11, v10}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v11

    .line 575
    .local v11, "x":J
    const-wide/16 v13, 0x1ff

    cmp-long v13, v11, v13

    if-nez v13, :cond_55

    if-nez v8, :cond_55

    .line 593
    .end local v10    # "index":I
    .end local v11    # "x":J
    iget-object v9, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/2addr v10, v4

    or-int/lit16 v11, v7, 0x400

    int-to-char v11, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 564
    .end local v5    # "ce":J
    .end local v7    # "contractionIndex":I
    .end local v8    # "firstTriple":Z
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 576
    .restart local v5    # "ce":J
    .restart local v7    # "contractionIndex":I
    .restart local v8    # "firstTriple":Z
    .restart local v10    # "index":I
    .restart local v11    # "x":J
    :cond_55
    iget-object v13, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v13

    .line 577
    .local v13, "cce0":J
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    add-int/lit8 v2, v10, 0x2

    move/from16 v16, v10

    .end local v10    # "index":I
    .local v16, "index":I
    invoke-virtual {v15, v2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v9

    .line 578
    .local v9, "cce1":J
    invoke-direct {v0, v13, v14, v9, v10}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v2

    .line 579
    .local v2, "miniCE":I
    const/4 v15, 0x1

    if-ne v2, v15, :cond_7e

    .line 580
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v17, 0x200

    move/from16 v19, v4

    move-wide/from16 v20, v5

    .end local v4    # "i":I
    .end local v5    # "ce":J
    .local v19, "i":I
    .local v20, "ce":J
    or-long v4, v11, v17

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 581
    .end local v19    # "i":I
    .end local v20    # "ce":J
    .restart local v4    # "i":I
    .restart local v5    # "ce":J
    :cond_7e
    move/from16 v19, v4

    move-wide/from16 v20, v5

    .end local v4    # "i":I
    .end local v5    # "ce":J
    .restart local v19    # "i":I
    .restart local v20    # "ce":J
    ushr-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_97

    .line 582
    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x400

    or-long/2addr v5, v11

    long-to-int v5, v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 585
    :cond_97
    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x600

    or-long/2addr v5, v11

    long-to-int v5, v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v2, 0x10

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    :goto_ae
    const/4 v8, 0x0

    .line 573
    .end local v2    # "miniCE":I
    .end local v9    # "cce1":J
    .end local v11    # "x":J
    .end local v13    # "cce0":J
    add-int/lit8 v10, v16, 0x3

    move/from16 v4, v19

    move-wide/from16 v5, v20

    const/16 v2, 0x1c0

    const/4 v9, 0x1

    .end local v16    # "index":I
    .restart local v10    # "index":I
    goto :goto_39

    .line 564
    .end local v7    # "contractionIndex":I
    .end local v8    # "firstTriple":Z
    .end local v10    # "index":I
    .end local v19    # "i":I
    .end local v20    # "ce":J
    .restart local v4    # "i":I
    :cond_b9
    move/from16 v19, v4

    .line 596
    .end local v4    # "i":I
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_ca

    .line 598
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/16 v4, 0x1ff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :cond_ca
    return-void
.end method

.method private blacklist encodeTwoCEs(JJ)I
    .registers 12
    .param p1, "first"    # J
    .param p3, "second"    # J

    .line 629
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_8

    .line 630
    const/4 v0, 0x0

    return v0

    .line 632
    :cond_8
    const-wide v2, 0x101000100L

    cmp-long v2, p1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_13

    .line 633
    return v3

    .line 635
    :cond_13
    nop

    .line 637
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result v2

    .line 638
    .local v2, "miniCE":I
    if-ne v2, v3, :cond_1b

    return v2

    .line 639
    :cond_1b
    const v4, 0xc000

    const/16 v5, 0x1000

    if-lt v2, v5, :cond_29

    .line 642
    long-to-int v6, p1

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0xb

    .line 644
    .local v6, "c":I
    add-int/lit8 v6, v6, 0x8

    .line 645
    or-int/2addr v2, v6

    .line 647
    .end local v6    # "c":I
    :cond_29
    cmp-long v0, p3, v0

    if-nez v0, :cond_2e

    return v2

    .line 649
    :cond_2e
    invoke-direct {p0, p3, p4}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result v0

    .line 650
    .local v0, "miniCE1":I
    if-ne v0, v3, :cond_35

    return v0

    .line 652
    :cond_35
    long-to-int v1, p3

    and-int/2addr v1, v4

    .line 653
    .local v1, "case1":I
    if-lt v2, v5, :cond_4f

    and-int/lit16 v3, v2, 0x3e0

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_4f

    .line 656
    and-int/lit16 v3, v0, 0x3e0

    .line 657
    .local v3, "sec1":I
    and-int/lit8 v4, v0, 0x7

    .line 658
    .local v4, "ter1":I
    const/16 v6, 0x180

    if-lt v3, v6, :cond_4f

    if-nez v1, :cond_4f

    if-nez v4, :cond_4f

    .line 661
    and-int/lit16 v5, v2, -0x3e1

    or-int/2addr v5, v3

    return v5

    .line 665
    .end local v3    # "sec1":I
    .end local v4    # "ter1":I
    :cond_4f
    const/16 v3, 0x3e0

    if-le v0, v3, :cond_55

    if-gt v5, v0, :cond_5a

    .line 667
    :cond_55
    shr-int/lit8 v3, v1, 0xb

    add-int/lit8 v1, v3, 0x8

    .line 668
    or-int/2addr v0, v1

    .line 670
    :cond_5a
    shl-int/lit8 v3, v2, 0x10

    or-int/2addr v3, v0

    return v3
.end method

.method private blacklist encodeUniqueCEs()V
    .registers 22

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, "group":I
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v2, v2, v1

    .line 411
    .local v2, "lastGroupPrimary":J
    nop

    .line 412
    const-wide/16 v4, 0x0

    .line 413
    .local v4, "prevPrimary":J
    const/4 v6, 0x0

    .line 414
    .local v6, "prevSecondary":I
    const/4 v7, 0x0

    .line 415
    .local v7, "pri":I
    const/4 v8, 0x0

    .line 416
    .local v8, "sec":I
    const/4 v9, 0x0

    .line 417
    .local v9, "ter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_19
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v11}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v11

    if-ge v10, v11, :cond_132

    .line 418
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v11, v10}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v11

    .line 421
    .local v11, "ce":J
    const/16 v13, 0x20

    ushr-long v13, v11, v13

    .line 422
    .local v13, "p":J
    cmp-long v15, v13, v4

    move/from16 v16, v1

    .end local v1    # "group":I
    .local v16, "group":I
    if-eqz v15, :cond_9c

    .line 423
    :goto_31
    cmp-long v15, v13, v2

    if-lez v15, :cond_54

    .line 424
    nop

    .line 427
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    add-int/lit8 v1, v16, 0x1

    move-wide/from16 v19, v2

    .end local v2    # "lastGroupPrimary":J
    .local v19, "lastGroupPrimary":J
    int-to-char v2, v7

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 428
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "group":I
    .restart local v1    # "group":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4e

    .line 429
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v2, v2, v1

    move/from16 v16, v1

    .end local v19    # "lastGroupPrimary":J
    .restart local v2    # "lastGroupPrimary":J
    goto :goto_31

    .line 431
    .end local v2    # "lastGroupPrimary":J
    .restart local v19    # "lastGroupPrimary":J
    :cond_4e
    const-wide v2, 0xffffffffL

    .line 432
    .end local v19    # "lastGroupPrimary":J
    .restart local v2    # "lastGroupPrimary":J
    goto :goto_5a

    .line 423
    .end local v1    # "group":I
    .restart local v16    # "group":I
    :cond_54
    move-wide/from16 v19, v2

    const/16 v18, 0x1

    .end local v2    # "lastGroupPrimary":J
    .restart local v19    # "lastGroupPrimary":J
    move/from16 v1, v16

    .line 435
    .end local v16    # "group":I
    .end local v19    # "lastGroupPrimary":J
    .restart local v1    # "group":I
    .restart local v2    # "lastGroupPrimary":J
    :goto_5a
    move v15, v1

    move-wide/from16 v19, v2

    .end local v1    # "group":I
    .end local v2    # "lastGroupPrimary":J
    .local v15, "group":I
    .restart local v19    # "lastGroupPrimary":J
    iget-wide v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v1, v13, v1

    if-gez v1, :cond_75

    .line 436
    if-nez v7, :cond_69

    .line 437
    const/16 v1, 0xc00

    move v7, v1

    .end local v7    # "pri":I
    .local v1, "pri":I
    goto :goto_84

    .line 438
    .end local v1    # "pri":I
    .restart local v7    # "pri":I
    :cond_69
    const/16 v1, 0xff8

    if-ge v7, v1, :cond_70

    .line 439
    add-int/lit8 v7, v7, 0x8

    goto :goto_84

    .line 444
    :cond_70
    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aput-char v18, v1, v10

    .line 445
    goto :goto_97

    .line 448
    :cond_75
    const/16 v1, 0x1000

    if-ge v7, v1, :cond_7d

    .line 449
    const/16 v1, 0x1000

    move v7, v1

    .end local v7    # "pri":I
    .restart local v1    # "pri":I
    goto :goto_84

    .line 450
    .end local v1    # "pri":I
    .restart local v7    # "pri":I
    :cond_7d
    const v1, 0xf800

    if-ge v7, v1, :cond_8e

    .line 452
    add-int/lit16 v7, v7, 0x400

    .line 462
    :goto_84
    move-wide v4, v13

    .line 463
    const/16 v6, 0x500

    .line 464
    const/16 v8, 0xa0

    .line 465
    const/4 v9, 0x0

    move v1, v15

    move-wide/from16 v2, v19

    goto :goto_9e

    .line 457
    :cond_8e
    move/from16 v1, v18

    iput-boolean v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 458
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aput-char v1, v2, v10

    .line 459
    nop

    .line 417
    .end local v11    # "ce":J
    .end local v13    # "p":J
    :goto_97
    move v1, v15

    move-wide/from16 v2, v19

    goto/16 :goto_12e

    .line 422
    .end local v15    # "group":I
    .end local v19    # "lastGroupPrimary":J
    .restart local v2    # "lastGroupPrimary":J
    .restart local v11    # "ce":J
    .restart local v13    # "p":J
    .restart local v16    # "group":I
    :cond_9c
    move/from16 v1, v16

    .line 467
    .end local v16    # "group":I
    .local v1, "group":I
    :goto_9e
    long-to-int v15, v11

    .line 468
    .local v15, "lower32":I
    move/from16 v16, v1

    .end local v1    # "group":I
    .restart local v16    # "group":I
    ushr-int/lit8 v1, v15, 0x10

    .line 469
    .local v1, "s":I
    move-wide/from16 v19, v2

    .end local v2    # "lastGroupPrimary":J
    .restart local v19    # "lastGroupPrimary":J
    const/16 v2, 0x500

    if-eq v1, v6, :cond_f7

    .line 470
    if-nez v7, :cond_c2

    .line 471
    if-nez v8, :cond_b0

    .line 472
    const/16 v3, 0x180

    .end local v8    # "sec":I
    .local v3, "sec":I
    goto :goto_b6

    .line 473
    .end local v3    # "sec":I
    .restart local v8    # "sec":I
    :cond_b0
    const/16 v3, 0x3e0

    if-ge v8, v3, :cond_ba

    .line 474
    add-int/lit8 v3, v8, 0x20

    .line 479
    .end local v8    # "sec":I
    .restart local v3    # "sec":I
    :goto_b6
    move v6, v1

    .line 480
    const/4 v9, 0x0

    move v8, v3

    goto :goto_ed

    .line 476
    .end local v3    # "sec":I
    .restart local v8    # "sec":I
    :cond_ba
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/16 v18, 0x1

    aput-char v18, v2, v10

    .line 477
    goto/16 :goto_12a

    .line 481
    :cond_c2
    if-ge v1, v2, :cond_d9

    .line 482
    const/16 v3, 0xa0

    if-ne v8, v3, :cond_cb

    .line 483
    const/4 v3, 0x0

    move v8, v3

    .end local v8    # "sec":I
    .restart local v3    # "sec":I
    goto :goto_ed

    .line 484
    .end local v3    # "sec":I
    .restart local v8    # "sec":I
    :cond_cb
    const/16 v3, 0x80

    if-ge v8, v3, :cond_d2

    .line 485
    add-int/lit8 v8, v8, 0x20

    goto :goto_ed

    .line 487
    :cond_d2
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/16 v18, 0x1

    aput-char v18, v2, v10

    .line 488
    goto :goto_12a

    .line 490
    :cond_d9
    if-ne v1, v2, :cond_df

    .line 491
    const/16 v3, 0xa0

    move v8, v3

    .end local v8    # "sec":I
    .restart local v3    # "sec":I
    goto :goto_ed

    .line 493
    .end local v3    # "sec":I
    .restart local v8    # "sec":I
    :cond_df
    const/16 v3, 0xc0

    if-ge v8, v3, :cond_e7

    .line 494
    const/16 v3, 0xc0

    move v8, v3

    .end local v8    # "sec":I
    .restart local v3    # "sec":I
    goto :goto_ed

    .line 495
    .end local v3    # "sec":I
    .restart local v8    # "sec":I
    :cond_e7
    const/16 v3, 0x160

    if-ge v8, v3, :cond_f0

    .line 496
    add-int/lit8 v8, v8, 0x20

    .line 502
    :goto_ed
    move v6, v1

    .line 503
    const/4 v9, 0x0

    goto :goto_f7

    .line 498
    :cond_f0
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/16 v18, 0x1

    aput-char v18, v2, v10

    .line 499
    goto :goto_12a

    .line 505
    :cond_f7
    :goto_f7
    nop

    .line 506
    and-int/lit16 v3, v15, 0x3f3f

    .line 507
    .local v3, "t":I
    if-le v3, v2, :cond_10d

    .line 508
    const/4 v2, 0x7

    if-ge v9, v2, :cond_102

    .line 509
    add-int/lit8 v9, v9, 0x1

    goto :goto_10d

    .line 511
    :cond_102
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/16 v18, 0x1

    aput-char v18, v2, v10

    .line 512
    move/from16 v1, v16

    move-wide/from16 v2, v19

    goto :goto_12e

    .line 515
    :cond_10d
    :goto_10d
    const/16 v2, 0xc00

    if-gt v2, v7, :cond_120

    const/16 v2, 0xff8

    if-gt v7, v2, :cond_120

    .line 516
    nop

    .line 517
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move/from16 v17, v1

    .end local v1    # "s":I
    .local v17, "s":I
    or-int v1, v7, v9

    int-to-char v1, v1

    aput-char v1, v2, v10

    goto :goto_12a

    .line 515
    .end local v17    # "s":I
    .restart local v1    # "s":I
    :cond_120
    move/from16 v17, v1

    .line 519
    .end local v1    # "s":I
    .restart local v17    # "s":I
    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    or-int v2, v7, v8

    or-int/2addr v2, v9

    int-to-char v2, v2

    aput-char v2, v1, v10

    .line 417
    .end local v3    # "t":I
    .end local v11    # "ce":J
    .end local v13    # "p":J
    .end local v15    # "lower32":I
    .end local v17    # "s":I
    :goto_12a
    move/from16 v1, v16

    move-wide/from16 v2, v19

    .end local v16    # "group":I
    .end local v19    # "lastGroupPrimary":J
    .local v1, "group":I
    .restart local v2    # "lastGroupPrimary":J
    :goto_12e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_19

    .line 531
    .end local v10    # "i":I
    :cond_132
    return-void
.end method

.method private blacklist getCEs(Landroid/icu/impl/coll/CollationData;)V
    .registers 17
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 195
    move-object/from16 v6, p1

    const/4 v1, 0x0

    .line 196
    .local v1, "i":I
    const/4 v2, 0x0

    move v7, v1

    .line 197
    .end local v1    # "i":I
    .local v2, "c":C
    .local v7, "i":I
    :goto_5
    const/16 v1, 0x180

    if-ne v2, v1, :cond_d

    .line 198
    const/16 v2, 0x2000

    move v8, v2

    goto :goto_1b

    .line 199
    :cond_d
    const/16 v1, 0x2040

    if-ne v2, v1, :cond_1a

    .line 200
    nop

    .line 230
    .end local v2    # "c":C
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    const-wide/16 v2, 0x1ff

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 231
    return-void

    .line 199
    .restart local v2    # "c":C
    :cond_1a
    move v8, v2

    .line 203
    .end local v2    # "c":C
    .local v8, "c":C
    :goto_1b
    invoke-virtual {v6, v8}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    .line 204
    .local v1, "ce32":I
    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2c

    .line 205
    iget-object v2, v6, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 206
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v2, v8}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    move v9, v1

    move-object v10, v2

    goto :goto_30

    .line 208
    .end local v2    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_2c
    move-object/from16 v2, p1

    move v9, v1

    move-object v10, v2

    .line 210
    .end local v1    # "ce32":I
    .local v9, "ce32":I
    .local v10, "d":Landroid/icu/impl/coll/CollationData;
    :goto_30
    invoke-direct {p0, v10, v8, v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v1

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_55

    .line 211
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v1, v1, v7

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    aput-wide v2, v1, v14

    .line 212
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v1, v1, v7

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    aput-wide v2, v1, v13

    .line 213
    iget-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 214
    iget-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    goto :goto_6a

    .line 217
    :cond_55
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v1, v1, v7

    const-wide v2, 0x101000100L

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    aput-wide v2, v1, v14

    .line 218
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v1, v1, v7

    iput-wide v11, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    aput-wide v11, v1, v13

    .line 220
    :goto_6a
    if-nez v8, :cond_90

    iget-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v1

    if-nez v1, :cond_90

    .line 223
    nop

    .line 224
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/16 v1, 0x1ff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 225
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v1, v1, v14

    const-wide v2, 0x180000000L

    aput-wide v2, v1, v14

    .line 226
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v1, v1, v14

    aput-wide v11, v1, v13

    .line 196
    .end local v9    # "ce32":I
    .end local v10    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_90
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v8, 0x1

    int-to-char v2, v1

    .end local v8    # "c":C
    .local v2, "c":C
    goto/16 :goto_5
.end method

.method private blacklist getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z
    .registers 23
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "ce32"    # I

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    .line 235
    .end local p3    # "ce32":I
    .local v2, "ce32":I
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 236
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1f

    .line 237
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    move/from16 v5, p2

    goto/16 :goto_90

    .line 239
    :cond_1f
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v5

    const/4 v7, 0x2

    sparse-switch v5, :sswitch_data_11c

    .line 283
    move/from16 v5, p2

    move/from16 p3, v6

    return p3

    .line 279
    :sswitch_2c
    nop

    .line 280
    move/from16 v5, p2

    invoke-virtual {v1, v5, v2}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 281
    goto :goto_90

    .line 276
    :sswitch_36
    move/from16 v5, p2

    .line 277
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z

    move-result v3

    return v3

    .line 258
    :sswitch_3d
    move/from16 v5, p2

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 259
    .local v8, "index":I
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v9

    .line 260
    .local v9, "length":I
    if-gt v9, v7, :cond_5a

    .line 261
    iget-object v10, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    aget-wide v10, v10, v8

    iput-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 262
    if-ne v9, v7, :cond_90

    .line 263
    iget-object v7, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int/lit8 v10, v8, 0x1

    aget-wide v10, v7, v10

    iput-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_90

    .line 267
    :cond_5a
    return v6

    .line 245
    .end local v8    # "index":I
    .end local v9    # "length":I
    :sswitch_5b
    move/from16 v5, p2

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 246
    .restart local v8    # "index":I
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v9

    .line 247
    .restart local v9    # "length":I
    if-gt v9, v7, :cond_80

    .line 248
    iget-object v10, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget v10, v10, v8

    invoke-static {v10}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 249
    if-ne v9, v7, :cond_90

    .line 250
    iget-object v7, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int/lit8 v10, v8, 0x1

    aget v7, v7, v10

    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_90

    .line 254
    :cond_80
    return v6

    .line 241
    .end local v8    # "index":I
    .end local v9    # "length":I
    :sswitch_81
    move/from16 v5, p2

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 242
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 243
    nop

    .line 287
    :cond_90
    :goto_90
    iget-wide v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_9e

    iget-wide v9, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    cmp-long v3, v9, v3

    if-nez v3, :cond_9d

    const/4 v6, 0x1

    :cond_9d
    return v6

    .line 289
    :cond_9e
    iget-wide v9, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const/16 v7, 0x20

    ushr-long/2addr v9, v7

    .line 290
    .local v9, "p0":J
    cmp-long v11, v9, v3

    if-nez v11, :cond_a8

    return v6

    .line 292
    :cond_a8
    iget-wide v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_af

    return v6

    .line 294
    :cond_af
    iget-wide v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    long-to-int v11, v11

    .line 295
    .local v11, "lower32_0":I
    iget-wide v12, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v12, v9, v12

    const/high16 v13, 0x5000000

    if-gez v12, :cond_bf

    .line 296
    and-int/lit16 v12, v11, -0x4000

    .line 297
    .local v12, "sc0":I
    if-eq v12, v13, :cond_bf

    return v6

    .line 300
    .end local v12    # "sc0":I
    :cond_bf
    and-int/lit16 v12, v11, 0x3f3f

    const/16 v14, 0x500

    if-ge v12, v14, :cond_c6

    return v6

    .line 301
    :cond_c6
    move-wide v15, v3

    iget-wide v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    cmp-long v3, v3, v15

    if-eqz v3, :cond_108

    .line 307
    iget-wide v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    ushr-long/2addr v3, v7

    .line 308
    .local v3, "p1":J
    cmp-long v7, v3, v15

    if-nez v7, :cond_dd

    move/from16 p3, v6

    iget-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v6, v9, v6

    if-gez v6, :cond_e6

    goto :goto_e5

    :cond_dd
    move/from16 p3, v6

    invoke-direct {v0, v9, v10, v3, v4}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->inSameGroup(JJ)Z

    move-result v6

    if-nez v6, :cond_e6

    :goto_e5
    return p3

    .line 309
    :cond_e6
    iget-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    long-to-int v6, v6

    .line 311
    .local v6, "lower32_1":I
    ushr-int/lit8 v7, v6, 0x10

    if-nez v7, :cond_ee

    return p3

    .line 314
    :cond_ee
    cmp-long v7, v3, v15

    if-eqz v7, :cond_100

    move-wide/from16 v17, v9

    const/4 v7, 0x1

    .end local v9    # "p0":J
    .local v17, "p0":J
    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_103

    .line 315
    and-int/lit16 v8, v6, -0x4000

    .line 316
    .local v8, "sc1":I
    if-eq v8, v13, :cond_103

    return p3

    .line 314
    .end local v8    # "sc1":I
    .end local v17    # "p0":J
    .restart local v9    # "p0":J
    :cond_100
    move-wide/from16 v17, v9

    const/4 v7, 0x1

    .line 319
    .end local v9    # "p0":J
    .restart local v17    # "p0":J
    :cond_103
    and-int/lit16 v8, v11, 0x3f3f

    if-ge v8, v14, :cond_10d

    return p3

    .line 301
    .end local v3    # "p1":J
    .end local v6    # "lower32_1":I
    .end local v17    # "p0":J
    .restart local v9    # "p0":J
    :cond_108
    move/from16 p3, v6

    move-wide/from16 v17, v9

    const/4 v7, 0x1

    .line 322
    .end local v9    # "p0":J
    .restart local v17    # "p0":J
    :cond_10d
    iget-wide v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    or-long/2addr v3, v8

    const-wide/16 v8, 0xc0

    and-long/2addr v3, v8

    cmp-long v3, v3, v15

    if-eqz v3, :cond_11a

    return p3

    .line 323
    :cond_11a
    return v7

    nop

    :sswitch_data_11c
    .sparse-switch
        0x4 -> :sswitch_81
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_3d
        0x9 -> :sswitch_36
        0xe -> :sswitch_2c
    .end sparse-switch
.end method

.method private blacklist getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z
    .registers 23
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "ce32"    # I

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v7

    .line 328
    .local v7, "trieIndex":I
    invoke-virtual {v6, v7}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v8

    .line 331
    .end local p2    # "ce32":I
    .local v8, "ce32":I
    nop

    .line 332
    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v9

    .line 333
    .local v9, "contractionIndex":I
    const/4 v10, -0x1

    invoke-direct {v0, v6, v10, v8}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 334
    iget-wide v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/16 v1, 0x1ff

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_32

    .line 337
    :cond_24
    const-wide v2, 0x101000100L

    const-wide/16 v4, 0x0

    const/16 v1, 0x1ff

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 341
    :goto_32
    const/4 v0, -0x1

    .line 342
    .local v0, "prevX":I
    const/4 v1, 0x0

    .line 343
    .local v1, "addContraction":Z
    iget-object v2, v6, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v7, 0x2

    const/4 v11, 0x0

    invoke-static {v2, v3, v11}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v12

    move v13, v1

    move v14, v8

    move v8, v0

    .line 344
    .end local v0    # "prevX":I
    .end local v1    # "addContraction":Z
    .local v8, "prevX":I
    .local v12, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    .local v13, "addContraction":Z
    .local v14, "ce32":I
    :goto_40
    invoke-virtual {v12}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_ba

    .line 345
    invoke-virtual {v12}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 346
    .local v0, "entry":Landroid/icu/util/CharsTrie$Entry;
    iget-object v1, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 347
    .local v1, "suffix":Ljava/lang/CharSequence;
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/coll/CollationFastLatin;->getCharIndex(C)I

    move-result v2

    .line 348
    .local v2, "x":I
    if-gez v2, :cond_5a

    move-object/from16 v0, p0

    goto :goto_40

    .line 349
    :cond_5a
    if-ne v2, v8, :cond_7c

    .line 350
    if-eqz v13, :cond_74

    .line 352
    move-object v4, v1

    move v1, v2

    .end local v2    # "x":I
    .local v1, "x":I
    .local v4, "suffix":Ljava/lang/CharSequence;
    const-wide v2, 0x101000100L

    move-object v15, v4

    .end local v4    # "suffix":Ljava/lang/CharSequence;
    .local v15, "suffix":Ljava/lang/CharSequence;
    const-wide/16 v4, 0x0

    move-object/from16 v16, v15

    move-object v15, v0

    move-object/from16 v0, p0

    .end local v0    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .local v15, "entry":Landroid/icu/util/CharsTrie$Entry;
    .local v16, "suffix":Ljava/lang/CharSequence;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 353
    move/from16 v17, v1

    .end local v1    # "x":I
    .local v17, "x":I
    const/4 v13, 0x0

    goto :goto_40

    .line 350
    .end local v15    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v16    # "suffix":Ljava/lang/CharSequence;
    .end local v17    # "x":I
    .restart local v0    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .local v1, "suffix":Ljava/lang/CharSequence;
    .restart local v2    # "x":I
    :cond_74
    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v0, p0

    .end local v0    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v1    # "suffix":Ljava/lang/CharSequence;
    .end local v2    # "x":I
    .restart local v15    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .restart local v16    # "suffix":Ljava/lang/CharSequence;
    .restart local v17    # "x":I
    goto :goto_40

    .line 357
    .end local v15    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v16    # "suffix":Ljava/lang/CharSequence;
    .end local v17    # "x":I
    .restart local v0    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .restart local v1    # "suffix":Ljava/lang/CharSequence;
    .restart local v2    # "x":I
    :cond_7c
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object v1, v0

    move-object/from16 v0, p0

    .end local v0    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v2    # "x":I
    .local v1, "entry":Landroid/icu/util/CharsTrie$Entry;
    .restart local v16    # "suffix":Ljava/lang/CharSequence;
    .restart local v17    # "x":I
    if-eqz v13, :cond_94

    .line 358
    iget-wide v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move/from16 v19, v8

    move-object v8, v1

    move/from16 v1, v19

    .local v1, "prevX":I
    .local v8, "entry":Landroid/icu/util/CharsTrie$Entry;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    move/from16 v18, v1

    .end local v1    # "prevX":I
    .local v18, "prevX":I
    goto :goto_97

    .line 357
    .end local v18    # "prevX":I
    .local v1, "entry":Landroid/icu/util/CharsTrie$Entry;
    .local v8, "prevX":I
    :cond_94
    move/from16 v18, v8

    move-object v8, v1

    .line 360
    .end local v1    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .local v8, "entry":Landroid/icu/util/CharsTrie$Entry;
    .restart local v18    # "prevX":I
    :goto_97
    iget v14, v8, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 361
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v15, :cond_aa

    invoke-direct {v0, v6, v10, v14}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 362
    const/4 v1, 0x1

    move v13, v1

    move/from16 v1, v17

    .end local v13    # "addContraction":Z
    .local v1, "addContraction":Z
    goto :goto_b8

    .line 364
    .end local v1    # "addContraction":Z
    .restart local v13    # "addContraction":Z
    :cond_aa
    const-wide v2, 0x101000100L

    const-wide/16 v4, 0x0

    move/from16 v1, v17

    .end local v17    # "x":I
    .local v1, "x":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 365
    const/4 v2, 0x0

    move v13, v2

    .line 367
    :goto_b8
    move v8, v1

    .line 368
    .end local v1    # "x":I
    .end local v16    # "suffix":Ljava/lang/CharSequence;
    .end local v18    # "prevX":I
    .local v8, "prevX":I
    goto :goto_40

    .line 369
    :cond_ba
    move-object/from16 v0, p0

    move/from16 v18, v8

    .end local v8    # "prevX":I
    .restart local v18    # "prevX":I
    if-eqz v13, :cond_ca

    .line 370
    iget-wide v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move/from16 v1, v18

    .end local v18    # "prevX":I
    .local v1, "prevX":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_cc

    .line 369
    .end local v1    # "prevX":I
    .restart local v18    # "prevX":I
    :cond_ca
    move/from16 v1, v18

    .line 377
    .end local v18    # "prevX":I
    .restart local v1    # "prevX":I
    :goto_cc
    const-wide v2, 0x180000000L

    int-to-long v4, v9

    or-long/2addr v2, v4

    iput-wide v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 378
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 379
    return v15
.end method

.method private blacklist getMiniCE(J)I
    .registers 5
    .param p1, "ce"    # J

    .line 400
    const-wide/32 v0, -0xc001

    and-long/2addr p1, v0

    .line 401
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result v0

    .line 402
    .local v0, "index":I
    nop

    .line 403
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aget-char v1, v1, v0

    return v1
.end method

.method private blacklist inSameGroup(JJ)Z
    .registers 13
    .param p1, "p"    # J
    .param p3, "q"    # J

    .line 160
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_11

    .line 161
    iget-wide v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v0, p3, v3

    if-ltz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 162
    :cond_11
    iget-wide v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v0, p3, v3

    if-ltz v0, :cond_18

    .line 163
    return v2

    .line 167
    :cond_18
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    .line 168
    .local v3, "lastVariablePrimary":J
    cmp-long v0, p1, v3

    if-lez v0, :cond_28

    .line 169
    cmp-long v0, p3, v3

    if-lez v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    .line 170
    :cond_28
    cmp-long v0, p3, v3

    if-lez v0, :cond_2d

    .line 171
    return v2

    .line 176
    :cond_2d
    nop

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "i":I
    :goto_2f
    iget-object v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v5, v5, v0

    .line 179
    .local v5, "lastPrimary":J
    cmp-long v7, p1, v5

    if-gtz v7, :cond_3e

    .line 180
    cmp-long v7, p3, v5

    if-gtz v7, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    return v1

    .line 181
    :cond_3e
    cmp-long v7, p3, v5

    if-gtz v7, :cond_43

    .line 182
    return v2

    .line 177
    .end local v5    # "lastPrimary":J
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method private static blacklist isContractionCharCE(J)Z
    .registers 6
    .param p0, "ce"    # J

    .line 674
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const-wide v0, 0x101000100L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private blacklist loadGroups(Landroid/icu/impl/coll/CollationData;)Z
    .registers 10
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 133
    const/4 v0, 0x5

    iput v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    .line 134
    iget v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    or-int/lit16 v0, v0, 0x200

    .line 135
    .local v0, "r0":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/4 v2, 0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-ge v1, v2, :cond_2f

    .line 139
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    add-int/lit16 v6, v1, 0x1000

    invoke-virtual {p1, v6}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 140
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v6, v2, v1

    cmp-long v2, v6, v4

    if-nez v2, :cond_27

    .line 142
    return v3

    .line 144
    :cond_27
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 147
    .end local v1    # "i":I
    :cond_2f
    const/16 v1, 0x1004

    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    .line 148
    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    .line 149
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    .line 150
    iget-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_54

    iget-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_52

    goto :goto_54

    .line 154
    :cond_52
    const/4 v1, 0x1

    return v1

    .line 152
    :cond_54
    :goto_54
    return v3
.end method

.method private blacklist resetCEs()V
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    .line 189
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 191
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    return-void
.end method


# virtual methods
.method blacklist forData(Landroid/icu/impl/coll/CollationData;)Z
    .registers 4
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 82
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_42

    .line 85
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->loadGroups(Landroid/icu/impl/coll/CollationData;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_10
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 89
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    .line 90
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    .line 91
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    if-eqz v0, :cond_2b

    .line 94
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 95
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->resetCEs()V

    .line 96
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    .line 97
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    .line 107
    :cond_2b
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    xor-int/lit8 v0, v0, 0x1

    .line 108
    .local v0, "ok":Z
    if-eqz v0, :cond_37

    .line 109
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeCharCEs()V

    .line 110
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeContractions()V

    .line 112
    :cond_37
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    .line 113
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    .line 114
    return v0

    .line 83
    .end local v0    # "ok":Z
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reuse a CollationFastLatinBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getHeader()[C
    .registers 5

    .line 121
    iget v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    new-array v0, v0, [C

    .line 122
    .local v0, "resultArray":[C
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    invoke-virtual {v1, v2, v3, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 123
    return-object v0
.end method

.method blacklist getTable()[C
    .registers 6

    .line 127
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    sub-int/2addr v0, v1

    new-array v0, v0, [C

    .line 128
    .local v0, "resultArray":[C
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 129
    return-object v0
.end method
