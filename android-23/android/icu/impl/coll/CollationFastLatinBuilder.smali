.class final Landroid/icu/impl/coll/CollationFastLatinBuilder;
.super Ljava/lang/Object;
.source "CollationFastLatinBuilder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CONTRACTION_FLAG:J = 0x80000000L

.field private static final NUM_SPECIAL_GROUPS:I = 0x4


# instance fields
.field private ce0:J

.field private ce1:J

.field private charCEs:[[J

.field private contractionCEs:Landroid/icu/impl/coll/UVector64;

.field private firstDigitPrimary:J

.field private firstLatinPrimary:J

.field private firstShortPrimary:J

.field private headerLength:I

.field private lastLatinPrimary:J

.field lastSpecialPrimaries:[J

.field private miniCEs:[C

.field private result:Ljava/lang/StringBuilder;

.field private shortPrimaryOverflow:Z

.field private uniqueCEs:Landroid/icu/impl/coll/UVector64;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@b
    .line 18
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 683
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@8
    const/16 v1, 0x1c0

    #@a
    const/4 v2, 0x2

    #@b
    filled-new-array {v1, v2}, [I

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [[J

    #@15
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@17
    .line 692
    const/4 v0, 0x4

    #@18
    new-array v0, v0, [J

    #@1a
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@1c
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@23
    .line 65
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@25
    .line 66
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@27
    .line 67
    new-instance v0, Landroid/icu/impl/coll/UVector64;

    #@29
    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@2e
    .line 68
    new-instance v0, Landroid/icu/impl/coll/UVector64;

    #@30
    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    #@33
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@35
    .line 69
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@38
    .line 70
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    #@3a
    .line 71
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    #@3c
    .line 72
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    #@3e
    .line 73
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@40
    .line 74
    iput-boolean v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    #@42
    .line 75
    iput v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@44
    .line 64
    return-void
.end method

.method private addContractionEntry(IJJ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "cce0"    # J
    .param p4, "cce1"    # J

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@2
    int-to-long v2, p1

    #@3
    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@6
    .line 381
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@8
    invoke-virtual {v0, p2, p3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@b
    .line 382
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@d
    invoke-virtual {v0, p4, p5}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@10
    .line 383
    invoke-direct {p0, p2, p3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    #@13
    .line 384
    invoke-direct {p0, p4, p5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    #@16
    .line 379
    return-void
.end method

.method private addUniqueCE(J)V
    .locals 7
    .param p1, "ce"    # J

    #@0
    .prologue
    .line 388
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-eqz v1, :cond_0

    #@6
    const/16 v1, 0x20

    #@8
    ushr-long v2, p1, v1

    #@a
    const-wide/16 v4, 0x1

    #@c
    cmp-long v1, v2, v4

    #@e
    if-nez v1, :cond_1

    #@10
    :cond_0
    return-void

    #@11
    .line 389
    :cond_1
    const-wide/32 v2, -0xc001

    #@14
    and-long/2addr p1, v2

    #@15
    .line 390
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@17
    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@1d
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    #@20
    move-result v2

    #@21
    invoke-static {v1, v2, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    #@24
    move-result v0

    #@25
    .line 391
    .local v0, "i":I
    if-gez v0, :cond_2

    #@27
    .line 392
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@29
    not-int v2, v0

    #@2a
    invoke-virtual {v1, p1, p2, v2}, Landroid/icu/impl/coll/UVector64;->insertElementAt(JI)V

    #@2d
    .line 387
    :cond_2
    return-void
.end method

.method private static final binarySearch([JIJ)I
    .locals 6
    .param p0, "list"    # [J
    .param p1, "limit"    # I
    .param p2, "ce"    # J

    #@0
    .prologue
    .line 43
    if-nez p1, :cond_0

    #@2
    const/4 v3, -0x1

    #@3
    return v3

    #@4
    .line 44
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 46
    .local v2, "start":I
    :goto_0
    add-int v3, v2, p1

    #@7
    div-int/lit8 v1, v3, 0x2

    #@9
    .line 47
    .local v1, "i":I
    aget-wide v4, p0, v1

    #@b
    invoke-static {p2, p3, v4, v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->compareInt64AsUnsigned(JJ)I

    #@e
    move-result v0

    #@f
    .line 48
    .local v0, "cmp":I
    if-nez v0, :cond_1

    #@11
    .line 49
    return v1

    #@12
    .line 50
    :cond_1
    if-gez v0, :cond_3

    #@14
    .line 51
    if-ne v1, v2, :cond_2

    #@16
    .line 52
    not-int v3, v2

    #@17
    return v3

    #@18
    .line 54
    :cond_2
    move p1, v1

    #@19
    goto :goto_0

    #@1a
    .line 56
    :cond_3
    if-ne v1, v2, :cond_4

    #@1c
    .line 57
    add-int/lit8 v3, v2, 0x1

    #@1e
    not-int v3, v3

    #@1f
    return v3

    #@20
    .line 59
    :cond_4
    move v2, v1

    #@21
    goto :goto_0
.end method

.method private static final compareInt64AsUnsigned(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    #@0
    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    .line 25
    add-long/2addr p0, v0

    #@3
    .line 26
    add-long/2addr p2, v0

    #@4
    .line 27
    cmp-long v0, p0, p2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 28
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 29
    :cond_0
    cmp-long v0, p0, p2

    #@c
    if-lez v0, :cond_1

    #@e
    .line 30
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 32
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method private encodeCharCEs()V
    .locals 12

    #@0
    .prologue
    const/16 v11, 0x1c0

    #@2
    const/4 v10, 0x0

    #@3
    .line 531
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@8
    move-result v6

    #@9
    .line 532
    .local v6, "miniCEsStart":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v11, :cond_0

    #@c
    .line 533
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 532
    add-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_0

    #@14
    .line 535
    :cond_0
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@19
    move-result v4

    #@1a
    .line 536
    .local v4, "indexBase":I
    const/4 v3, 0x0

    #@1b
    :goto_1
    if-ge v3, v11, :cond_4

    #@1d
    .line 537
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@1f
    aget-object v7, v7, v3

    #@21
    aget-wide v0, v7, v10

    #@23
    .line 538
    .local v0, "ce":J
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_1

    #@29
    .line 536
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 539
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@2e
    aget-object v7, v7, v3

    #@30
    const/4 v8, 0x1

    #@31
    aget-wide v8, v7, v8

    #@33
    invoke-direct {p0, v0, v1, v8, v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    #@36
    move-result v5

    #@37
    .line 540
    .local v5, "miniCE":I
    ushr-int/lit8 v7, v5, 0x10

    #@39
    if-lez v7, :cond_2

    #@3b
    .line 544
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@3d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@40
    move-result v7

    #@41
    sub-int v2, v7, v4

    #@43
    .line 545
    .local v2, "expansionIndex":I
    const/16 v7, 0x3ff

    #@45
    if-le v2, v7, :cond_3

    #@47
    .line 546
    const/4 v5, 0x1

    #@48
    .line 552
    .end local v2    # "expansionIndex":I
    :cond_2
    :goto_3
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@4a
    add-int v8, v6, v3

    #@4c
    int-to-char v9, v5

    #@4d
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@50
    goto :goto_2

    #@51
    .line 548
    .restart local v2    # "expansionIndex":I
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@53
    shr-int/lit8 v8, v5, 0x10

    #@55
    int-to-char v8, v8

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    int-to-char v8, v5

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    .line 549
    or-int/lit16 v5, v2, 0x800

    #@60
    goto :goto_3

    #@61
    .line 530
    .end local v0    # "ce":J
    .end local v2    # "expansionIndex":I
    .end local v5    # "miniCE":I
    :cond_4
    return-void
.end method

.method private encodeContractions()V
    .locals 20

    #@0
    .prologue
    .line 559
    move-object/from16 v0, p0

    #@2
    iget v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@4
    add-int/lit16 v13, v15, 0x1c0

    #@6
    .line 560
    .local v13, "indexBase":I
    move-object/from16 v0, p0

    #@8
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@d
    move-result v9

    #@e
    .line 561
    .local v9, "firstContractionIndex":I
    const/4 v11, 0x0

    #@f
    .local v11, "i":I
    :goto_0
    const/16 v15, 0x1c0

    #@11
    if-ge v11, v15, :cond_6

    #@13
    .line 562
    move-object/from16 v0, p0

    #@15
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@17
    aget-object v15, v15, v11

    #@19
    const/16 v18, 0x0

    #@1b
    aget-wide v6, v15, v18

    #@1d
    .line 563
    .local v6, "ce":J
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    #@20
    move-result v15

    #@21
    if-nez v15, :cond_0

    #@23
    .line 561
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@25
    goto :goto_0

    #@26
    .line 564
    :cond_0
    move-object/from16 v0, p0

    #@28
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@2d
    move-result v15

    #@2e
    sub-int v8, v15, v13

    #@30
    .line 565
    .local v8, "contractionIndex":I
    const/16 v15, 0x3ff

    #@32
    if-le v8, v15, :cond_1

    #@34
    .line 566
    move-object/from16 v0, p0

    #@36
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@38
    move-object/from16 v0, p0

    #@3a
    iget v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@3c
    move/from16 v18, v0

    #@3e
    add-int v18, v18, v11

    #@40
    const/16 v19, 0x1

    #@42
    move/from16 v0, v18

    #@44
    move/from16 v1, v19

    #@46
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@49
    goto :goto_1

    #@4a
    .line 569
    :cond_1
    const/4 v10, 0x1

    #@4b
    .line 570
    .local v10, "firstTriple":Z
    long-to-int v15, v6

    #@4c
    const v18, 0x7fffffff

    #@4f
    and-int v12, v15, v18

    #@51
    .line 571
    .local v12, "index":I
    :goto_2
    move-object/from16 v0, p0

    #@53
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@55
    invoke-virtual {v15, v12}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@58
    move-result-wide v16

    #@59
    .line 572
    .local v16, "x":J
    const-wide/16 v18, 0x1ff

    #@5b
    cmp-long v15, v16, v18

    #@5d
    if-nez v15, :cond_2

    #@5f
    if-eqz v10, :cond_5

    #@61
    .line 573
    :cond_2
    move-object/from16 v0, p0

    #@63
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@65
    add-int/lit8 v18, v12, 0x1

    #@67
    move/from16 v0, v18

    #@69
    invoke-virtual {v15, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@6c
    move-result-wide v2

    #@6d
    .line 574
    .local v2, "cce0":J
    move-object/from16 v0, p0

    #@6f
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@71
    add-int/lit8 v18, v12, 0x2

    #@73
    move/from16 v0, v18

    #@75
    invoke-virtual {v15, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@78
    move-result-wide v4

    #@79
    .line 575
    .local v4, "cce1":J
    move-object/from16 v0, p0

    #@7b
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    #@7e
    move-result v14

    #@7f
    .line 576
    .local v14, "miniCE":I
    const/4 v15, 0x1

    #@80
    if-ne v14, v15, :cond_3

    #@82
    .line 577
    move-object/from16 v0, p0

    #@84
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@86
    const-wide/16 v18, 0x200

    #@88
    or-long v18, v18, v16

    #@8a
    move-wide/from16 v0, v18

    #@8c
    long-to-int v0, v0

    #@8d
    move/from16 v18, v0

    #@8f
    move/from16 v0, v18

    #@91
    int-to-char v0, v0

    #@92
    move/from16 v18, v0

    #@94
    move/from16 v0, v18

    #@96
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@99
    .line 585
    :goto_3
    const/4 v10, 0x0

    #@9a
    .line 570
    add-int/lit8 v12, v12, 0x3

    #@9c
    goto :goto_2

    #@9d
    .line 578
    :cond_3
    ushr-int/lit8 v15, v14, 0x10

    #@9f
    if-nez v15, :cond_4

    #@a1
    .line 579
    move-object/from16 v0, p0

    #@a3
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@a5
    const-wide/16 v18, 0x400

    #@a7
    or-long v18, v18, v16

    #@a9
    move-wide/from16 v0, v18

    #@ab
    long-to-int v0, v0

    #@ac
    move/from16 v18, v0

    #@ae
    move/from16 v0, v18

    #@b0
    int-to-char v0, v0

    #@b1
    move/from16 v18, v0

    #@b3
    move/from16 v0, v18

    #@b5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b8
    .line 580
    move-object/from16 v0, p0

    #@ba
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@bc
    int-to-char v0, v14

    #@bd
    move/from16 v18, v0

    #@bf
    move/from16 v0, v18

    #@c1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c4
    goto :goto_3

    #@c5
    .line 582
    :cond_4
    move-object/from16 v0, p0

    #@c7
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@c9
    const-wide/16 v18, 0x600

    #@cb
    or-long v18, v18, v16

    #@cd
    move-wide/from16 v0, v18

    #@cf
    long-to-int v0, v0

    #@d0
    move/from16 v18, v0

    #@d2
    move/from16 v0, v18

    #@d4
    int-to-char v0, v0

    #@d5
    move/from16 v18, v0

    #@d7
    move/from16 v0, v18

    #@d9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@dc
    .line 583
    move-object/from16 v0, p0

    #@de
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@e0
    shr-int/lit8 v18, v14, 0x10

    #@e2
    move/from16 v0, v18

    #@e4
    int-to-char v0, v0

    #@e5
    move/from16 v18, v0

    #@e7
    move/from16 v0, v18

    #@e9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v15

    #@ed
    int-to-char v0, v14

    #@ee
    move/from16 v18, v0

    #@f0
    move/from16 v0, v18

    #@f2
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f5
    goto :goto_3

    #@f6
    .line 590
    .end local v2    # "cce0":J
    .end local v4    # "cce1":J
    .end local v14    # "miniCE":I
    :cond_5
    move-object/from16 v0, p0

    #@f8
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@fe
    move/from16 v18, v0

    #@100
    add-int v18, v18, v11

    #@102
    .line 591
    or-int/lit16 v0, v8, 0x400

    #@104
    move/from16 v19, v0

    #@106
    move/from16 v0, v19

    #@108
    int-to-char v0, v0

    #@109
    move/from16 v19, v0

    #@10b
    .line 590
    move/from16 v0, v18

    #@10d
    move/from16 v1, v19

    #@10f
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@112
    goto/16 :goto_1

    #@114
    .line 593
    .end local v6    # "ce":J
    .end local v8    # "contractionIndex":I
    .end local v10    # "firstTriple":Z
    .end local v12    # "index":I
    .end local v16    # "x":J
    :cond_6
    move-object/from16 v0, p0

    #@116
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@118
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@11b
    move-result v15

    #@11c
    if-le v15, v9, :cond_7

    #@11e
    .line 595
    move-object/from16 v0, p0

    #@120
    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@122
    const/16 v18, 0x1ff

    #@124
    move/from16 v0, v18

    #@126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@129
    .line 556
    :cond_7
    return-void
.end method

.method private encodeTwoCEs(JJ)I
    .locals 11
    .param p1, "first"    # J
    .param p3, "second"    # J

    #@0
    .prologue
    .line 626
    const-wide/16 v6, 0x0

    #@2
    cmp-long v6, p1, v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 627
    const/4 v6, 0x0

    #@7
    return v6

    #@8
    .line 629
    :cond_0
    const-wide v6, 0x101000100L

    #@d
    cmp-long v6, p1, v6

    #@f
    if-nez v6, :cond_1

    #@11
    .line 630
    const/4 v6, 0x1

    #@12
    return v6

    #@13
    .line 632
    :cond_1
    sget-boolean v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@15
    if-nez v6, :cond_3

    #@17
    const/16 v6, 0x20

    #@19
    ushr-long v6, p1, v6

    #@1b
    const-wide/16 v8, 0x1

    #@1d
    cmp-long v6, v6, v8

    #@1f
    if-eqz v6, :cond_2

    #@21
    const/4 v6, 0x1

    #@22
    :goto_0
    if-nez v6, :cond_3

    #@24
    new-instance v6, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v6

    #@2a
    :cond_2
    const/4 v6, 0x0

    #@2b
    goto :goto_0

    #@2c
    .line 634
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    #@2f
    move-result v2

    #@30
    .line 635
    .local v2, "miniCE":I
    const/4 v6, 0x1

    #@31
    if-ne v2, v6, :cond_4

    #@33
    return v2

    #@34
    .line 636
    :cond_4
    const/16 v6, 0x1000

    #@36
    if-lt v2, v6, :cond_5

    #@38
    .line 639
    long-to-int v6, p1

    #@39
    const v7, 0xc000

    #@3c
    and-int/2addr v6, v7

    #@3d
    shr-int/lit8 v0, v6, 0xb

    #@3f
    .line 641
    .local v0, "c":I
    add-int/lit8 v0, v0, 0x8

    #@41
    .line 642
    or-int/2addr v2, v0

    #@42
    .line 644
    .end local v0    # "c":I
    :cond_5
    const-wide/16 v6, 0x0

    #@44
    cmp-long v6, p3, v6

    #@46
    if-nez v6, :cond_6

    #@48
    return v2

    #@49
    .line 646
    :cond_6
    invoke-direct {p0, p3, p4}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    #@4c
    move-result v3

    #@4d
    .line 647
    .local v3, "miniCE1":I
    const/4 v6, 0x1

    #@4e
    if-ne v3, v6, :cond_7

    #@50
    return v3

    #@51
    .line 649
    :cond_7
    long-to-int v6, p3

    #@52
    const v7, 0xc000

    #@55
    and-int v1, v6, v7

    #@57
    .line 650
    .local v1, "case1":I
    const/16 v6, 0x1000

    #@59
    if-lt v2, v6, :cond_8

    #@5b
    .line 651
    and-int/lit16 v6, v2, 0x3e0

    #@5d
    const/16 v7, 0xa0

    #@5f
    if-ne v6, v7, :cond_8

    #@61
    .line 653
    and-int/lit16 v4, v3, 0x3e0

    #@63
    .line 654
    .local v4, "sec1":I
    and-int/lit8 v5, v3, 0x7

    #@65
    .line 655
    .local v5, "ter1":I
    const/16 v6, 0x180

    #@67
    if-lt v4, v6, :cond_8

    #@69
    if-nez v1, :cond_8

    #@6b
    .line 656
    if-nez v5, :cond_8

    #@6d
    .line 658
    and-int/lit16 v6, v2, -0x3e1

    #@6f
    or-int/2addr v6, v4

    #@70
    return v6

    #@71
    .line 662
    .end local v4    # "sec1":I
    .end local v5    # "ter1":I
    :cond_8
    const/16 v6, 0x3e0

    #@73
    if-le v3, v6, :cond_9

    #@75
    const/16 v6, 0x1000

    #@77
    if-gt v6, v3, :cond_a

    #@79
    .line 664
    :cond_9
    shr-int/lit8 v6, v1, 0xb

    #@7b
    add-int/lit8 v1, v6, 0x8

    #@7d
    .line 665
    or-int/2addr v3, v1

    #@7e
    .line 667
    :cond_a
    shl-int/lit8 v6, v2, 0x10

    #@80
    or-int/2addr v6, v3

    #@81
    return v6
.end method

.method private encodeUniqueCEs()V
    .locals 22

    #@0
    .prologue
    .line 404
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@4
    move-object/from16 v19, v0

    #@6
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/UVector64;->size()I

    #@9
    move-result v19

    #@a
    move/from16 v0, v19

    #@c
    new-array v0, v0, [C

    #@e
    move-object/from16 v19, v0

    #@10
    move-object/from16 v0, v19

    #@12
    move-object/from16 v1, p0

    #@14
    iput-object v0, v1, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@16
    .line 405
    const/4 v4, 0x0

    #@17
    .line 406
    .local v4, "group":I
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@1b
    move-object/from16 v19, v0

    #@1d
    aget-wide v6, v19, v4

    #@1f
    .line 408
    .local v6, "lastGroupPrimary":J
    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@21
    if-nez v19, :cond_1

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@27
    move-object/from16 v19, v0

    #@29
    const/16 v20, 0x0

    #@2b
    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@2e
    move-result-wide v20

    #@2f
    move-wide/from16 v0, v20

    #@31
    long-to-int v0, v0

    #@32
    move/from16 v19, v0

    #@34
    ushr-int/lit8 v19, v19, 0x10

    #@36
    if-eqz v19, :cond_0

    #@38
    const/16 v19, 0x1

    #@3a
    :goto_0
    if-nez v19, :cond_1

    #@3c
    new-instance v19, Ljava/lang/AssertionError;

    #@3e
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@41
    throw v19

    #@42
    :cond_0
    const/16 v19, 0x0

    #@44
    goto :goto_0

    #@45
    .line 409
    :cond_1
    const-wide/16 v12, 0x0

    #@47
    .line 410
    .local v12, "prevPrimary":J
    const/4 v9, 0x0

    #@48
    .line 411
    .local v9, "prevSecondary":I
    const/4 v14, 0x0

    #@49
    .line 412
    .local v14, "pri":I
    const/16 v16, 0x0

    #@4b
    .line 413
    .local v16, "sec":I
    const/16 v18, 0x0

    #@4d
    .line 414
    .local v18, "ter":I
    const/4 v5, 0x0

    #@4e
    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@52
    move-object/from16 v19, v0

    #@54
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/UVector64;->size()I

    #@57
    move-result v19

    #@58
    move/from16 v0, v19

    #@5a
    if-ge v5, v0, :cond_1d

    #@5c
    .line 415
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@60
    move-object/from16 v19, v0

    #@62
    move-object/from16 v0, v19

    #@64
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@67
    move-result-wide v2

    #@68
    .line 418
    .local v2, "ce":J
    const/16 v19, 0x20

    #@6a
    ushr-long v10, v2, v19

    #@6c
    .line 419
    .local v10, "p":J
    cmp-long v19, v10, v12

    #@6e
    if-eqz v19, :cond_6

    #@70
    .line 420
    :goto_2
    cmp-long v19, v10, v6

    #@72
    if-lez v19, :cond_5

    #@74
    .line 421
    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@76
    if-nez v19, :cond_3

    #@78
    const/16 v19, 0xff8

    #@7a
    move/from16 v0, v19

    #@7c
    if-gt v14, v0, :cond_2

    #@7e
    const/16 v19, 0x1

    #@80
    :goto_3
    if-nez v19, :cond_3

    #@82
    new-instance v19, Ljava/lang/AssertionError;

    #@84
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@87
    throw v19

    #@88
    :cond_2
    const/16 v19, 0x0

    #@8a
    goto :goto_3

    #@8b
    .line 424
    :cond_3
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@8f
    move-object/from16 v19, v0

    #@91
    add-int/lit8 v20, v4, 0x1

    #@93
    int-to-char v0, v14

    #@94
    move/from16 v21, v0

    #@96
    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@99
    .line 425
    add-int/lit8 v4, v4, 0x1

    #@9b
    const/16 v19, 0x4

    #@9d
    move/from16 v0, v19

    #@9f
    if-ge v4, v0, :cond_4

    #@a1
    .line 426
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@a5
    move-object/from16 v19, v0

    #@a7
    aget-wide v6, v19, v4

    #@a9
    goto :goto_2

    #@aa
    .line 428
    :cond_4
    const-wide v6, 0xffffffffL

    #@af
    .line 432
    :cond_5
    move-object/from16 v0, p0

    #@b1
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@b3
    move-wide/from16 v20, v0

    #@b5
    cmp-long v19, v10, v20

    #@b7
    if-gez v19, :cond_a

    #@b9
    .line 433
    if-nez v14, :cond_8

    #@bb
    .line 434
    const/16 v14, 0xc00

    #@bd
    .line 459
    :goto_4
    move-wide v12, v10

    #@be
    .line 460
    const/16 v9, 0x500

    #@c0
    .line 461
    const/16 v16, 0xa0

    #@c2
    .line 462
    const/16 v18, 0x0

    #@c4
    .line 464
    :cond_6
    long-to-int v8, v2

    #@c5
    .line 465
    .local v8, "lower32":I
    ushr-int/lit8 v15, v8, 0x10

    #@c7
    .line 466
    .local v15, "s":I
    if-eq v15, v9, :cond_7

    #@c9
    .line 467
    if-nez v14, :cond_f

    #@cb
    .line 468
    if-nez v16, :cond_d

    #@cd
    .line 469
    const/16 v16, 0x180

    #@cf
    .line 476
    :goto_5
    move v9, v15

    #@d0
    .line 477
    const/16 v18, 0x0

    #@d2
    .line 499
    :goto_6
    move v9, v15

    #@d3
    .line 500
    const/16 v18, 0x0

    #@d5
    .line 502
    :cond_7
    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@d7
    if-nez v19, :cond_17

    #@d9
    const v19, 0xc000

    #@dc
    and-int v19, v19, v8

    #@de
    if-nez v19, :cond_16

    #@e0
    const/16 v19, 0x1

    #@e2
    :goto_7
    if-nez v19, :cond_17

    #@e4
    new-instance v19, Ljava/lang/AssertionError;

    #@e6
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@e9
    throw v19

    #@ea
    .line 435
    .end local v8    # "lower32":I
    .end local v15    # "s":I
    :cond_8
    const/16 v19, 0xff8

    #@ec
    move/from16 v0, v19

    #@ee
    if-ge v14, v0, :cond_9

    #@f0
    .line 436
    add-int/lit8 v14, v14, 0x8

    #@f2
    goto :goto_4

    #@f3
    .line 441
    :cond_9
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@f7
    move-object/from16 v19, v0

    #@f9
    const/16 v20, 0x1

    #@fb
    aput-char v20, v19, v5

    #@fd
    .line 414
    :goto_8
    add-int/lit8 v5, v5, 0x1

    #@ff
    goto/16 :goto_1

    #@101
    .line 445
    :cond_a
    const/16 v19, 0x1000

    #@103
    move/from16 v0, v19

    #@105
    if-ge v14, v0, :cond_b

    #@107
    .line 446
    const/16 v14, 0x1000

    #@109
    goto :goto_4

    #@10a
    .line 447
    :cond_b
    const v19, 0xf800

    #@10d
    move/from16 v0, v19

    #@10f
    if-ge v14, v0, :cond_c

    #@111
    .line 449
    add-int/lit16 v14, v14, 0x400

    #@113
    goto :goto_4

    #@114
    .line 454
    :cond_c
    const/16 v19, 0x1

    #@116
    move/from16 v0, v19

    #@118
    move-object/from16 v1, p0

    #@11a
    iput-boolean v0, v1, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    #@11c
    .line 455
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@120
    move-object/from16 v19, v0

    #@122
    const/16 v20, 0x1

    #@124
    aput-char v20, v19, v5

    #@126
    goto :goto_8

    #@127
    .line 470
    .restart local v8    # "lower32":I
    .restart local v15    # "s":I
    :cond_d
    const/16 v19, 0x3e0

    #@129
    move/from16 v0, v16

    #@12b
    move/from16 v1, v19

    #@12d
    if-ge v0, v1, :cond_e

    #@12f
    .line 471
    add-int/lit8 v16, v16, 0x20

    #@131
    goto :goto_5

    #@132
    .line 473
    :cond_e
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@136
    move-object/from16 v19, v0

    #@138
    const/16 v20, 0x1

    #@13a
    aput-char v20, v19, v5

    #@13c
    goto :goto_8

    #@13d
    .line 478
    :cond_f
    const/16 v19, 0x500

    #@13f
    move/from16 v0, v19

    #@141
    if-ge v15, v0, :cond_12

    #@143
    .line 479
    const/16 v19, 0xa0

    #@145
    move/from16 v0, v16

    #@147
    move/from16 v1, v19

    #@149
    if-ne v0, v1, :cond_10

    #@14b
    .line 480
    const/16 v16, 0x0

    #@14d
    goto :goto_6

    #@14e
    .line 481
    :cond_10
    const/16 v19, 0x80

    #@150
    move/from16 v0, v16

    #@152
    move/from16 v1, v19

    #@154
    if-ge v0, v1, :cond_11

    #@156
    .line 482
    add-int/lit8 v16, v16, 0x20

    #@158
    goto/16 :goto_6

    #@15a
    .line 484
    :cond_11
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@15e
    move-object/from16 v19, v0

    #@160
    const/16 v20, 0x1

    #@162
    aput-char v20, v19, v5

    #@164
    goto :goto_8

    #@165
    .line 487
    :cond_12
    const/16 v19, 0x500

    #@167
    move/from16 v0, v19

    #@169
    if-ne v15, v0, :cond_13

    #@16b
    .line 488
    const/16 v16, 0xa0

    #@16d
    goto/16 :goto_6

    #@16f
    .line 490
    :cond_13
    const/16 v19, 0xc0

    #@171
    move/from16 v0, v16

    #@173
    move/from16 v1, v19

    #@175
    if-ge v0, v1, :cond_14

    #@177
    .line 491
    const/16 v16, 0xc0

    #@179
    goto/16 :goto_6

    #@17b
    .line 492
    :cond_14
    const/16 v19, 0x160

    #@17d
    move/from16 v0, v16

    #@17f
    move/from16 v1, v19

    #@181
    if-ge v0, v1, :cond_15

    #@183
    .line 493
    add-int/lit8 v16, v16, 0x20

    #@185
    goto/16 :goto_6

    #@187
    .line 495
    :cond_15
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@18b
    move-object/from16 v19, v0

    #@18d
    const/16 v20, 0x1

    #@18f
    aput-char v20, v19, v5

    #@191
    goto/16 :goto_8

    #@193
    .line 502
    :cond_16
    const/16 v19, 0x0

    #@195
    goto/16 :goto_7

    #@197
    .line 503
    :cond_17
    and-int/lit16 v0, v8, 0x3f3f

    #@199
    move/from16 v17, v0

    #@19b
    .line 504
    .local v17, "t":I
    const/16 v19, 0x500

    #@19d
    move/from16 v0, v17

    #@19f
    move/from16 v1, v19

    #@1a1
    if-le v0, v1, :cond_18

    #@1a3
    .line 505
    const/16 v19, 0x7

    #@1a5
    move/from16 v0, v18

    #@1a7
    move/from16 v1, v19

    #@1a9
    if-ge v0, v1, :cond_19

    #@1ab
    .line 506
    add-int/lit8 v18, v18, 0x1

    #@1ad
    .line 512
    :cond_18
    const/16 v19, 0xc00

    #@1af
    move/from16 v0, v19

    #@1b1
    if-gt v0, v14, :cond_1c

    #@1b3
    const/16 v19, 0xff8

    #@1b5
    move/from16 v0, v19

    #@1b7
    if-gt v14, v0, :cond_1c

    #@1b9
    .line 513
    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@1bb
    if-nez v19, :cond_1b

    #@1bd
    const/16 v19, 0xa0

    #@1bf
    move/from16 v0, v16

    #@1c1
    move/from16 v1, v19

    #@1c3
    if-ne v0, v1, :cond_1a

    #@1c5
    const/16 v19, 0x1

    #@1c7
    :goto_9
    if-nez v19, :cond_1b

    #@1c9
    new-instance v19, Ljava/lang/AssertionError;

    #@1cb
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@1ce
    throw v19

    #@1cf
    .line 508
    :cond_19
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@1d3
    move-object/from16 v19, v0

    #@1d5
    const/16 v20, 0x1

    #@1d7
    aput-char v20, v19, v5

    #@1d9
    goto/16 :goto_8

    #@1db
    .line 513
    :cond_1a
    const/16 v19, 0x0

    #@1dd
    goto :goto_9

    #@1de
    .line 514
    :cond_1b
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@1e2
    move-object/from16 v19, v0

    #@1e4
    or-int v20, v14, v18

    #@1e6
    move/from16 v0, v20

    #@1e8
    int-to-char v0, v0

    #@1e9
    move/from16 v20, v0

    #@1eb
    aput-char v20, v19, v5

    #@1ed
    goto/16 :goto_8

    #@1ef
    .line 516
    :cond_1c
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@1f3
    move-object/from16 v19, v0

    #@1f5
    or-int v20, v14, v16

    #@1f7
    or-int v20, v20, v18

    #@1f9
    move/from16 v0, v20

    #@1fb
    int-to-char v0, v0

    #@1fc
    move/from16 v20, v0

    #@1fe
    aput-char v20, v19, v5

    #@200
    goto/16 :goto_8

    #@202
    .line 403
    .end local v2    # "ce":J
    .end local v8    # "lower32":I
    .end local v10    # "p":J
    .end local v15    # "s":I
    .end local v17    # "t":I
    :cond_1d
    return-void
.end method

.method private getCEs(Landroid/icu/impl/coll/CollationData;)V
    .locals 10
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 192
    const/4 v9, 0x0

    #@1
    .line 193
    .local v9, "i":I
    const/4 v6, 0x0

    #@2
    .line 194
    :goto_0
    const/16 v0, 0x180

    #@4
    if-ne v6, v0, :cond_2

    #@6
    .line 195
    const/16 v6, 0x2000

    #@8
    .line 200
    :cond_0
    invoke-virtual {p1, v6}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@b
    move-result v7

    #@c
    .line 201
    .local v7, "ce32":I
    const/16 v0, 0xc0

    #@e
    if-ne v7, v0, :cond_3

    #@10
    .line 202
    iget-object v8, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@12
    .line 203
    .local v8, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v8, v6}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@15
    move-result v7

    #@16
    .line 207
    :goto_1
    invoke-direct {p0, v8, v6, v7}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_4

    #@1c
    .line 208
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@1e
    aget-object v0, v0, v9

    #@20
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@22
    const/4 v1, 0x0

    #@23
    aput-wide v2, v0, v1

    #@25
    .line 209
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@27
    aget-object v0, v0, v9

    #@29
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@2b
    const/4 v1, 0x1

    #@2c
    aput-wide v2, v0, v1

    #@2e
    .line 210
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@30
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    #@33
    .line 211
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@35
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    #@38
    .line 217
    :goto_2
    if-nez v6, :cond_1

    #@3a
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@3c
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 193
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@44
    add-int/lit8 v0, v6, 0x1

    #@46
    int-to-char v6, v0

    #@47
    .local v6, "c":C
    goto :goto_0

    #@48
    .line 196
    .end local v6    # "c":C
    .end local v7    # "ce32":I
    .end local v8    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_2
    const/16 v0, 0x2040

    #@4a
    if-ne v6, v0, :cond_0

    #@4c
    .line 227
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@4e
    const-wide/16 v2, 0x1ff

    #@50
    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@53
    .line 191
    return-void

    #@54
    .line 205
    .restart local v7    # "ce32":I
    :cond_3
    move-object v8, p1

    #@55
    .restart local v8    # "d":Landroid/icu/impl/coll/CollationData;
    goto :goto_1

    #@56
    .line 214
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@58
    aget-object v0, v0, v9

    #@5a
    const-wide v2, 0x101000100L

    #@5f
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@61
    const-wide v2, 0x101000100L

    #@66
    const/4 v1, 0x0

    #@67
    aput-wide v2, v0, v1

    #@69
    .line 215
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@6b
    aget-object v0, v0, v9

    #@6d
    const-wide/16 v2, 0x0

    #@6f
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@71
    const-wide/16 v2, 0x0

    #@73
    const/4 v1, 0x1

    #@74
    aput-wide v2, v0, v1

    #@76
    goto :goto_2

    #@77
    .line 220
    :cond_5
    sget-boolean v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@79
    if-nez v0, :cond_6

    #@7b
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@7d
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->isEmpty()Z

    #@80
    move-result v0

    #@81
    if-nez v0, :cond_6

    #@83
    new-instance v0, Ljava/lang/AssertionError;

    #@85
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@88
    throw v0

    #@89
    .line 221
    :cond_6
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@8b
    iget-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@8d
    const/16 v1, 0x1ff

    #@8f
    move-object v0, p0

    #@90
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@93
    .line 222
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@95
    const/4 v1, 0x0

    #@96
    aget-object v0, v0, v1

    #@98
    const-wide v2, 0x180000000L

    #@9d
    const/4 v1, 0x0

    #@9e
    aput-wide v2, v0, v1

    #@a0
    .line 223
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    #@a2
    const/4 v1, 0x0

    #@a3
    aget-object v0, v0, v1

    #@a5
    const-wide/16 v2, 0x0

    #@a7
    const/4 v1, 0x1

    #@a8
    aput-wide v2, v0, v1

    #@aa
    goto :goto_3
.end method

.method private getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z
    .locals 18
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 231
    move-object/from16 v0, p1

    #@2
    move/from16 v1, p3

    #@4
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@7
    move-result p3

    #@8
    .line 232
    const-wide/16 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@e
    .line 233
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    #@11
    move-result v14

    #@12
    if-eqz v14, :cond_1

    #@14
    .line 234
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@17
    move-result-wide v14

    #@18
    move-object/from16 v0, p0

    #@1a
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@1c
    .line 284
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@1e
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@20
    const-wide/16 v16, 0x0

    #@22
    cmp-long v14, v14, v16

    #@24
    if-nez v14, :cond_9

    #@26
    move-object/from16 v0, p0

    #@28
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@2a
    const-wide/16 v16, 0x0

    #@2c
    cmp-long v14, v14, v16

    #@2e
    if-nez v14, :cond_8

    #@30
    const/4 v14, 0x1

    #@31
    :goto_1
    return v14

    #@32
    .line 236
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@35
    move-result v14

    #@36
    packed-switch v14, :pswitch_data_0

    #@39
    .line 280
    :pswitch_0
    const/4 v14, 0x0

    #@3a
    return v14

    #@3b
    .line 238
    :pswitch_1
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    #@3e
    move-result-wide v14

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@43
    .line 239
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    #@46
    move-result-wide v14

    #@47
    move-object/from16 v0, p0

    #@49
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@4b
    goto :goto_0

    #@4c
    .line 242
    :pswitch_2
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@4f
    move-result v4

    #@50
    .line 243
    .local v4, "index":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@53
    move-result v5

    #@54
    .line 244
    .local v5, "length":I
    const/4 v14, 0x2

    #@55
    if-gt v5, v14, :cond_2

    #@57
    .line 245
    move-object/from16 v0, p1

    #@59
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@5b
    aget v14, v14, v4

    #@5d
    invoke-static {v14}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@60
    move-result-wide v14

    #@61
    move-object/from16 v0, p0

    #@63
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@65
    .line 246
    const/4 v14, 0x2

    #@66
    if-ne v5, v14, :cond_0

    #@68
    .line 247
    move-object/from16 v0, p1

    #@6a
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@6c
    add-int/lit8 v15, v4, 0x1

    #@6e
    aget v14, v14, v15

    #@70
    invoke-static {v14}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@73
    move-result-wide v14

    #@74
    move-object/from16 v0, p0

    #@76
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@78
    goto :goto_0

    #@79
    .line 251
    :cond_2
    const/4 v14, 0x0

    #@7a
    return v14

    #@7b
    .line 255
    .end local v4    # "index":I
    .end local v5    # "length":I
    :pswitch_3
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@7e
    move-result v4

    #@7f
    .line 256
    .restart local v4    # "index":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@82
    move-result v5

    #@83
    .line 257
    .restart local v5    # "length":I
    const/4 v14, 0x2

    #@84
    if-gt v5, v14, :cond_3

    #@86
    .line 258
    move-object/from16 v0, p1

    #@88
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@8a
    aget-wide v14, v14, v4

    #@8c
    move-object/from16 v0, p0

    #@8e
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@90
    .line 259
    const/4 v14, 0x2

    #@91
    if-ne v5, v14, :cond_0

    #@93
    .line 260
    move-object/from16 v0, p1

    #@95
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@97
    add-int/lit8 v15, v4, 0x1

    #@99
    aget-wide v14, v14, v15

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@9f
    goto/16 :goto_0

    #@a1
    .line 264
    :cond_3
    const/4 v14, 0x0

    #@a2
    return v14

    #@a3
    .line 273
    .end local v4    # "index":I
    .end local v5    # "length":I
    :pswitch_4
    sget-boolean v14, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@a5
    if-nez v14, :cond_5

    #@a7
    if-ltz p2, :cond_4

    #@a9
    const/4 v14, 0x1

    #@aa
    :goto_2
    if-nez v14, :cond_5

    #@ac
    new-instance v14, Ljava/lang/AssertionError;

    #@ae
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@b1
    throw v14

    #@b2
    :cond_4
    const/4 v14, 0x0

    #@b3
    goto :goto_2

    #@b4
    .line 274
    :cond_5
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, p1

    #@b8
    move/from16 v2, p3

    #@ba
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z

    #@bd
    move-result v14

    #@be
    return v14

    #@bf
    .line 276
    :pswitch_5
    sget-boolean v14, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@c1
    if-nez v14, :cond_7

    #@c3
    if-ltz p2, :cond_6

    #@c5
    const/4 v14, 0x1

    #@c6
    :goto_3
    if-nez v14, :cond_7

    #@c8
    new-instance v14, Ljava/lang/AssertionError;

    #@ca
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@cd
    throw v14

    #@ce
    :cond_6
    const/4 v14, 0x0

    #@cf
    goto :goto_3

    #@d0
    .line 277
    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    #@d3
    move-result-wide v14

    #@d4
    move-object/from16 v0, p0

    #@d6
    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@d8
    goto/16 :goto_0

    #@da
    .line 284
    :cond_8
    const/4 v14, 0x0

    #@db
    goto/16 :goto_1

    #@dd
    .line 286
    :cond_9
    move-object/from16 v0, p0

    #@df
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@e1
    const/16 v16, 0x20

    #@e3
    ushr-long v8, v14, v16

    #@e5
    .line 287
    .local v8, "p0":J
    const-wide/16 v14, 0x0

    #@e7
    cmp-long v14, v8, v14

    #@e9
    if-nez v14, :cond_a

    #@eb
    const/4 v14, 0x0

    #@ec
    return v14

    #@ed
    .line 289
    :cond_a
    move-object/from16 v0, p0

    #@ef
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    #@f1
    cmp-long v14, v8, v14

    #@f3
    if-lez v14, :cond_b

    #@f5
    const/4 v14, 0x0

    #@f6
    return v14

    #@f7
    .line 291
    :cond_b
    move-object/from16 v0, p0

    #@f9
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@fb
    long-to-int v6, v14

    #@fc
    .line 292
    .local v6, "lower32_0":I
    move-object/from16 v0, p0

    #@fe
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@100
    cmp-long v14, v8, v14

    #@102
    if-gez v14, :cond_c

    #@104
    .line 293
    and-int/lit16 v12, v6, -0x4000

    #@106
    .line 294
    .local v12, "sc0":I
    const/high16 v14, 0x5000000

    #@108
    if-eq v12, v14, :cond_c

    #@10a
    const/4 v14, 0x0

    #@10b
    return v14

    #@10c
    .line 297
    .end local v12    # "sc0":I
    :cond_c
    and-int/lit16 v14, v6, 0x3f3f

    #@10e
    const/16 v15, 0x500

    #@110
    if-ge v14, v15, :cond_d

    #@112
    const/4 v14, 0x0

    #@113
    return v14

    #@114
    .line 298
    :cond_d
    move-object/from16 v0, p0

    #@116
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@118
    const-wide/16 v16, 0x0

    #@11a
    cmp-long v14, v14, v16

    #@11c
    if-eqz v14, :cond_13

    #@11e
    .line 304
    move-object/from16 v0, p0

    #@120
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@122
    const/16 v16, 0x20

    #@124
    ushr-long v10, v14, v16

    #@126
    .line 305
    .local v10, "p1":J
    const-wide/16 v14, 0x0

    #@128
    cmp-long v14, v10, v14

    #@12a
    if-nez v14, :cond_f

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@130
    cmp-long v14, v8, v14

    #@132
    if-gez v14, :cond_10

    #@134
    :cond_e
    const/4 v14, 0x0

    #@135
    return v14

    #@136
    :cond_f
    move-object/from16 v0, p0

    #@138
    invoke-direct {v0, v8, v9, v10, v11}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->inSameGroup(JJ)Z

    #@13b
    move-result v14

    #@13c
    if-eqz v14, :cond_e

    #@13e
    .line 306
    :cond_10
    move-object/from16 v0, p0

    #@140
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@142
    long-to-int v7, v14

    #@143
    .line 308
    .local v7, "lower32_1":I
    ushr-int/lit8 v14, v7, 0x10

    #@145
    if-nez v14, :cond_11

    #@147
    const/4 v14, 0x0

    #@148
    return v14

    #@149
    .line 311
    :cond_11
    const-wide/16 v14, 0x0

    #@14b
    cmp-long v14, v10, v14

    #@14d
    if-eqz v14, :cond_12

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@153
    cmp-long v14, v10, v14

    #@155
    if-gez v14, :cond_12

    #@157
    .line 312
    and-int/lit16 v13, v7, -0x4000

    #@159
    .line 313
    .local v13, "sc1":I
    const/high16 v14, 0x5000000

    #@15b
    if-eq v13, v14, :cond_12

    #@15d
    const/4 v14, 0x0

    #@15e
    return v14

    #@15f
    .line 316
    .end local v13    # "sc1":I
    :cond_12
    and-int/lit16 v14, v6, 0x3f3f

    #@161
    const/16 v15, 0x500

    #@163
    if-ge v14, v15, :cond_13

    #@165
    const/4 v14, 0x0

    #@166
    return v14

    #@167
    .line 319
    .end local v7    # "lower32_1":I
    .end local v10    # "p1":J
    :cond_13
    move-object/from16 v0, p0

    #@169
    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@16f
    move-wide/from16 v16, v0

    #@171
    or-long v14, v14, v16

    #@173
    const-wide/16 v16, 0xc0

    #@175
    and-long v14, v14, v16

    #@177
    const-wide/16 v16, 0x0

    #@179
    cmp-long v14, v14, v16

    #@17b
    if-eqz v14, :cond_14

    #@17d
    const/4 v14, 0x0

    #@17e
    return v14

    #@17f
    .line 320
    :cond_14
    const/4 v14, 0x1

    #@180
    return v14

    #@181
    .line 236
    nop

    #@182
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z
    .locals 19
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "ce32"    # I

    #@0
    .prologue
    .line 324
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@3
    move-result v18

    #@4
    .line 325
    .local v18, "trieIndex":I
    move-object/from16 v0, p1

    #@6
    move/from16 v1, v18

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@b
    move-result p2

    #@c
    .line 328
    sget-boolean v4, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@e
    if-nez v4, :cond_1

    #@10
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    const/4 v4, 0x0

    #@17
    :goto_0
    if-nez v4, :cond_1

    #@19
    new-instance v4, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@1e
    throw v4

    #@1f
    :cond_0
    const/4 v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 329
    :cond_1
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@25
    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector64;->size()I

    #@28
    move-result v13

    #@29
    .line 330
    .local v13, "contractionIndex":I
    const/4 v4, -0x1

    #@2a
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, p1

    #@2e
    move/from16 v2, p2

    #@30
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 331
    move-object/from16 v0, p0

    #@38
    iget-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@3e
    const/16 v5, 0x1ff

    #@40
    move-object/from16 v4, p0

    #@42
    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@45
    .line 338
    :goto_1
    const/4 v15, -0x1

    #@46
    .line 339
    .local v15, "prevX":I
    const/4 v12, 0x0

    #@47
    .line 340
    .local v12, "addContraction":Z
    move-object/from16 v0, p1

    #@49
    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@4b
    add-int/lit8 v6, v18, 0x2

    #@4d
    const/4 v7, 0x0

    #@4e
    invoke-static {v4, v6, v7}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    #@51
    move-result-object v17

    #@52
    .line 341
    .local v17, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_7

    #@58
    .line 342
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@5b
    move-result-object v14

    #@5c
    .line 343
    .local v14, "entry":Landroid/icu/util/CharsTrie$Entry;
    iget-object v0, v14, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@5e
    move-object/from16 v16, v0

    #@60
    .line 344
    .local v16, "suffix":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    #@61
    move-object/from16 v0, v16

    #@63
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@66
    move-result v4

    #@67
    invoke-static {v4}, Landroid/icu/impl/coll/CollationFastLatin;->getCharIndex(C)I

    #@6a
    move-result v5

    #@6b
    .line 345
    .local v5, "x":I
    if-ltz v5, :cond_2

    #@6d
    .line 346
    if-ne v5, v15, :cond_4

    #@6f
    .line 347
    if-eqz v12, :cond_2

    #@71
    .line 349
    const-wide/16 v8, 0x0

    #@73
    const-wide v6, 0x101000100L

    #@78
    move-object/from16 v4, p0

    #@7a
    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@7d
    .line 350
    const/4 v12, 0x0

    #@7e
    goto :goto_2

    #@7f
    .line 334
    .end local v5    # "x":I
    .end local v12    # "addContraction":Z
    .end local v14    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v15    # "prevX":I
    .end local v16    # "suffix":Ljava/lang/CharSequence;
    .end local v17    # "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_3
    const-wide/16 v8, 0x0

    #@81
    const/16 v5, 0x1ff

    #@83
    const-wide v6, 0x101000100L

    #@88
    move-object/from16 v4, p0

    #@8a
    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@8d
    goto :goto_1

    #@8e
    .line 354
    .restart local v5    # "x":I
    .restart local v12    # "addContraction":Z
    .restart local v14    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .restart local v15    # "prevX":I
    .restart local v16    # "suffix":Ljava/lang/CharSequence;
    .restart local v17    # "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_4
    if-eqz v12, :cond_5

    #@90
    .line 355
    move-object/from16 v0, p0

    #@92
    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@94
    move-object/from16 v0, p0

    #@96
    iget-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@98
    move-object/from16 v6, p0

    #@9a
    move v7, v15

    #@9b
    invoke-direct/range {v6 .. v11}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@9e
    .line 357
    :cond_5
    iget v0, v14, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@a0
    move/from16 p2, v0

    #@a2
    .line 358
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    #@a5
    move-result v4

    #@a6
    const/4 v6, 0x1

    #@a7
    if-ne v4, v6, :cond_6

    #@a9
    const/4 v4, -0x1

    #@aa
    move-object/from16 v0, p0

    #@ac
    move-object/from16 v1, p1

    #@ae
    move/from16 v2, p2

    #@b0
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    #@b3
    move-result v4

    #@b4
    if-eqz v4, :cond_6

    #@b6
    .line 359
    const/4 v12, 0x1

    #@b7
    .line 364
    :goto_3
    move v15, v5

    #@b8
    goto :goto_2

    #@b9
    .line 361
    :cond_6
    const-wide/16 v8, 0x0

    #@bb
    const-wide v6, 0x101000100L

    #@c0
    move-object/from16 v4, p0

    #@c2
    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@c5
    .line 362
    const/4 v12, 0x0

    #@c6
    goto :goto_3

    #@c7
    .line 366
    .end local v5    # "x":I
    .end local v14    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v16    # "suffix":Ljava/lang/CharSequence;
    :cond_7
    if-eqz v12, :cond_8

    #@c9
    .line 367
    move-object/from16 v0, p0

    #@cb
    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@d1
    move-object/from16 v6, p0

    #@d3
    move v7, v15

    #@d4
    invoke-direct/range {v6 .. v11}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    #@d7
    .line 374
    :cond_8
    int-to-long v6, v13

    #@d8
    const-wide v8, 0x180000000L

    #@dd
    or-long/2addr v6, v8

    #@de
    move-object/from16 v0, p0

    #@e0
    iput-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    #@e2
    .line 375
    const-wide/16 v6, 0x0

    #@e4
    move-object/from16 v0, p0

    #@e6
    iput-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    #@e8
    .line 376
    const/4 v4, 0x1

    #@e9
    return v4
.end method

.method private getMiniCE(J)I
    .locals 5
    .param p1, "ce"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 397
    const-wide/32 v2, -0xc001

    #@4
    and-long/2addr p1, v2

    #@5
    .line 398
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@7
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@d
    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector64;->size()I

    #@10
    move-result v3

    #@11
    invoke-static {v2, v3, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    #@14
    move-result v0

    #@15
    .line 399
    .local v0, "index":I
    sget-boolean v2, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@17
    if-nez v2, :cond_1

    #@19
    if-ltz v0, :cond_0

    #@1b
    const/4 v1, 0x1

    #@1c
    :cond_0
    if-nez v1, :cond_1

    #@1e
    new-instance v1, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v1

    #@24
    .line 400
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    #@26
    aget-char v1, v1, v0

    #@28
    return v1
.end method

.method private inSameGroup(JJ)Z
    .locals 9
    .param p1, "p"    # J
    .param p3, "q"    # J

    #@0
    .prologue
    .line 157
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@2
    cmp-long v1, p1, v6

    #@4
    if-ltz v1, :cond_1

    #@6
    .line 158
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@8
    cmp-long v1, p3, v6

    #@a
    if-ltz v1, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0

    #@10
    .line 159
    :cond_1
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@12
    cmp-long v1, p3, v6

    #@14
    if-ltz v1, :cond_2

    #@16
    .line 160
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 164
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@1a
    const/4 v6, 0x3

    #@1b
    aget-wide v4, v1, v6

    #@1d
    .line 165
    .local v4, "lastVariablePrimary":J
    cmp-long v1, p1, v4

    #@1f
    if-lez v1, :cond_4

    #@21
    .line 166
    cmp-long v1, p3, v4

    #@23
    if-lez v1, :cond_3

    #@25
    const/4 v1, 0x1

    #@26
    :goto_1
    return v1

    #@27
    :cond_3
    const/4 v1, 0x0

    #@28
    goto :goto_1

    #@29
    .line 167
    :cond_4
    cmp-long v1, p3, v4

    #@2b
    if-lez v1, :cond_5

    #@2d
    .line 168
    const/4 v1, 0x0

    #@2e
    return v1

    #@2f
    .line 173
    :cond_5
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    #@31
    if-nez v1, :cond_7

    #@33
    const-wide/16 v6, 0x0

    #@35
    cmp-long v1, p1, v6

    #@37
    if-eqz v1, :cond_6

    #@39
    const-wide/16 v6, 0x0

    #@3b
    cmp-long v1, p3, v6

    #@3d
    if-eqz v1, :cond_6

    #@3f
    const/4 v1, 0x1

    #@40
    :goto_2
    if-nez v1, :cond_7

    #@42
    new-instance v1, Ljava/lang/AssertionError;

    #@44
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@47
    throw v1

    #@48
    :cond_6
    const/4 v1, 0x0

    #@49
    goto :goto_2

    #@4a
    .line 174
    :cond_7
    const/4 v0, 0x0

    #@4b
    .line 175
    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@4d
    aget-wide v2, v1, v0

    #@4f
    .line 176
    .local v2, "lastPrimary":J
    cmp-long v1, p1, v2

    #@51
    if-gtz v1, :cond_9

    #@53
    .line 177
    cmp-long v1, p3, v2

    #@55
    if-gtz v1, :cond_8

    #@57
    const/4 v1, 0x1

    #@58
    :goto_4
    return v1

    #@59
    :cond_8
    const/4 v1, 0x0

    #@5a
    goto :goto_4

    #@5b
    .line 178
    :cond_9
    cmp-long v1, p3, v2

    #@5d
    if-gtz v1, :cond_a

    #@5f
    .line 179
    const/4 v1, 0x0

    #@60
    return v1

    #@61
    .line 174
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_3
.end method

.method private static isContractionCharCE(J)Z
    .locals 6
    .param p0, "ce"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 671
    const/16 v1, 0x20

    #@3
    ushr-long v2, p0, v1

    #@5
    const-wide/16 v4, 0x1

    #@7
    cmp-long v1, v2, v4

    #@9
    if-nez v1, :cond_0

    #@b
    const-wide v2, 0x101000100L

    #@10
    cmp-long v1, p0, v2

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    :cond_0
    return v0
.end method

.method private loadGroups(Landroid/icu/impl/coll/CollationData;)Z
    .locals 10
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    const/16 v7, 0x19

    #@2
    const-wide/16 v8, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 130
    const/4 v2, 0x5

    #@6
    iput v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@8
    .line 131
    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@a
    or-int/lit16 v1, v2, 0x200

    #@c
    .line 132
    .local v1, "r0":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@e
    int-to-char v3, v1

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 135
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    #@14
    if-ge v0, v2, :cond_1

    #@16
    .line 136
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@18
    add-int/lit16 v3, v0, 0x1000

    #@1a
    invoke-virtual {p1, v3}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@1d
    move-result-wide v4

    #@1e
    aput-wide v4, v2, v0

    #@20
    .line 137
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    #@22
    aget-wide v2, v2, v0

    #@24
    cmp-long v2, v2, v8

    #@26
    if-nez v2, :cond_0

    #@28
    .line 139
    return v6

    #@29
    .line 141
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@2b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 144
    :cond_1
    const/16 v2, 0x1004

    #@33
    invoke-virtual {p1, v2}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    #@36
    move-result-wide v2

    #@37
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    #@39
    .line 145
    invoke-virtual {p1, v7}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    #@3c
    move-result-wide v2

    #@3d
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    #@3f
    .line 146
    invoke-virtual {p1, v7}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@42
    move-result-wide v2

    #@43
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    #@45
    .line 147
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    #@47
    cmp-long v2, v2, v8

    #@49
    if-eqz v2, :cond_2

    #@4b
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    #@4d
    cmp-long v2, v2, v8

    #@4f
    if-nez v2, :cond_3

    #@51
    .line 149
    :cond_2
    return v6

    #@52
    .line 151
    :cond_3
    const/4 v2, 0x1

    #@53
    return v2
.end method

.method private resetCEs()V
    .locals 2

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    #@5
    .line 186
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@7
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    #@a
    .line 187
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    #@d
    .line 188
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@f
    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@14
    .line 184
    return-void
.end method


# virtual methods
.method forData(Landroid/icu/impl/coll/CollationData;)Z
    .locals 4
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 79
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "attempt to reuse a CollationFastLatinBuilder"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 82
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->loadGroups(Landroid/icu/impl/coll/CollationData;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    return v2

    #@19
    .line 85
    :cond_1
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    #@1b
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@1d
    .line 86
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    #@20
    .line 87
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    #@23
    .line 88
    iget-boolean v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 91
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    #@29
    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    #@2b
    .line 92
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->resetCEs()V

    #@2e
    .line 93
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    #@31
    .line 94
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    #@34
    .line 104
    :cond_2
    iget-boolean v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    #@36
    if-eqz v1, :cond_4

    #@38
    const/4 v0, 0x0

    #@39
    .line 105
    .local v0, "ok":Z
    :goto_0
    if-eqz v0, :cond_3

    #@3b
    .line 106
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeCharCEs()V

    #@3e
    .line 107
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeContractions()V

    #@41
    .line 109
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    #@43
    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    #@46
    .line 110
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    #@48
    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    #@4b
    .line 111
    return v0

    #@4c
    .line 104
    .end local v0    # "ok":Z
    :cond_4
    const/4 v0, 0x1

    #@4d
    .restart local v0    # "ok":Z
    goto :goto_0
.end method

.method getHeader()[C
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 118
    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@3
    new-array v0, v1, [C

    #@5
    .line 119
    .local v0, "resultArray":[C
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@7
    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@9
    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@c
    .line 120
    return-object v0
.end method

.method getTable()[C
    .locals 5

    #@0
    .prologue
    .line 124
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@8
    sub-int/2addr v1, v2

    #@9
    new-array v0, v1, [C

    #@b
    .line 125
    .local v0, "resultArray":[C
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@d
    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    #@f
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    #@11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@14
    move-result v3

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {v1, v2, v3, v0, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@19
    .line 126
    return-object v0
.end method
