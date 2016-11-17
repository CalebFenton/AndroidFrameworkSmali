.class public Landroid/icu/impl/IntTrieBuilder;
.super Landroid/icu/impl/TrieBuilder;
.source "IntTrieBuilder.java"


# instance fields
.field protected m_data_:[I

.field protected m_initialValue_:I

.field private m_leadUnitValue_:I


# direct methods
.method public constructor <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .locals 4
    .param p1, "table"    # Landroid/icu/impl/IntTrieBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 46
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieBuilder;-><init>(Landroid/icu/impl/TrieBuilder;)V

    #@4
    .line 47
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@a
    .line 48
    iget-object v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@c
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@e
    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@10
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@13
    .line 49
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@15
    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@17
    .line 50
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@19
    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@1b
    .line 44
    return-void
.end method

.method public constructor <init>([IIIIZ)V
    .locals 6
    .param p1, "aliasdata"    # [I
    .param p2, "maxdatalength"    # I
    .param p3, "initialvalue"    # I
    .param p4, "leadunitvalue"    # I
    .param p5, "latin1linear"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 64
    invoke-direct {p0}, Landroid/icu/impl/TrieBuilder;-><init>()V

    #@4
    .line 65
    const/16 v3, 0x20

    #@6
    if-lt p2, v3, :cond_0

    #@8
    if-eqz p5, :cond_1

    #@a
    .line 66
    const/16 v3, 0x400

    #@c
    if-ge p2, v3, :cond_1

    #@e
    .line 67
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    .line 68
    const-string/jumbo v4, "Argument maxdatalength is too small"

    #@13
    .line 67
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 71
    :cond_1
    if-eqz p1, :cond_2

    #@19
    .line 72
    iput-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@1b
    .line 79
    :goto_0
    const/16 v2, 0x20

    #@1d
    .line 81
    .local v2, "j":I
    if-eqz p5, :cond_3

    #@1f
    .line 86
    const/4 v0, 0x0

    #@20
    .line 90
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@22
    add-int/lit8 v1, v0, 0x1

    #@24
    .end local v0    # "i":I
    .local v1, "i":I
    aput v2, v3, v0

    #@26
    .line 91
    add-int/lit8 v2, v2, 0x20

    #@28
    .line 92
    const/16 v3, 0x8

    #@2a
    if-ge v1, v3, :cond_3

    #@2c
    move v0, v1

    #@2d
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    #@2e
    .line 75
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_2
    new-array v3, p2, [I

    #@30
    iput-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@32
    goto :goto_0

    #@33
    .line 95
    .restart local v2    # "j":I
    :cond_3
    iput v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@35
    .line 97
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@37
    iget v4, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@39
    invoke-static {v3, v5, v4, p3}, Ljava/util/Arrays;->fill([IIII)V

    #@3c
    .line 98
    iput p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@3e
    .line 99
    iput p4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@40
    .line 100
    iput p2, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    #@42
    .line 101
    iput-boolean p5, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@44
    .line 102
    iput-boolean v5, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@46
    .line 62
    return-void
.end method

.method private allocDataBlock()I
    .locals 3

    #@0
    .prologue
    .line 506
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@2
    .line 507
    .local v0, "newBlock":I
    add-int/lit8 v1, v0, 0x20

    #@4
    .line 508
    .local v1, "newTop":I
    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 510
    const/4 v2, -0x1

    #@9
    return v2

    #@a
    .line 512
    :cond_0
    iput v1, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@c
    .line 513
    return v0
.end method

.method private compact(Z)V
    .locals 9
    .param p1, "overlap"    # Z

    #@0
    .prologue
    .line 557
    iget-boolean v6, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 558
    return-void

    #@5
    .line 563
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/TrieBuilder;->findUnusedBlocks()V

    #@8
    .line 567
    const/16 v3, 0x20

    #@a
    .line 568
    .local v3, "overlapStart":I
    iget-boolean v6, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 569
    const/16 v3, 0x120

    #@10
    .line 572
    :cond_1
    const/16 v1, 0x20

    #@12
    .local v1, "newStart":I
    const/16 v4, 0x20

    #@14
    .line 574
    .local v4, "start":I
    :goto_0
    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@16
    if-ge v4, v6, :cond_a

    #@18
    .line 579
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@1a
    ushr-int/lit8 v7, v4, 0x5

    #@1c
    aget v6, v6, v7

    #@1e
    if-gez v6, :cond_2

    #@20
    .line 581
    add-int/lit8 v4, v4, 0x20

    #@22
    .line 583
    goto :goto_0

    #@23
    .line 586
    :cond_2
    if-lt v4, v3, :cond_4

    #@25
    .line 587
    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@27
    .line 588
    if-eqz p1, :cond_3

    #@29
    const/4 v6, 0x4

    #@2a
    .line 587
    :goto_1
    invoke-static {v7, v1, v4, v6}, Landroid/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I

    #@2d
    move-result v0

    #@2e
    .line 589
    .local v0, "i":I
    if-ltz v0, :cond_4

    #@30
    .line 592
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@32
    ushr-int/lit8 v7, v4, 0x5

    #@34
    aput v0, v6, v7

    #@36
    .line 594
    add-int/lit8 v4, v4, 0x20

    #@38
    .line 596
    goto :goto_0

    #@39
    .line 588
    .end local v0    # "i":I
    :cond_3
    const/16 v6, 0x20

    #@3b
    goto :goto_1

    #@3c
    .line 601
    :cond_4
    if-eqz p1, :cond_7

    #@3e
    if-lt v4, v3, :cond_7

    #@40
    .line 603
    const/16 v0, 0x1c

    #@42
    .line 604
    .restart local v0    # "i":I
    :goto_2
    if-lez v0, :cond_5

    #@44
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@46
    sub-int v7, v1, v0

    #@48
    invoke-static {v6, v7, v4, v0}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_6

    #@4e
    .line 609
    :cond_5
    :goto_3
    if-lez v0, :cond_8

    #@50
    .line 611
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@52
    ushr-int/lit8 v7, v4, 0x5

    #@54
    sub-int v8, v1, v0

    #@56
    aput v8, v6, v7

    #@58
    .line 613
    add-int/2addr v4, v0

    #@59
    .line 614
    rsub-int/lit8 v0, v0, 0x20

    #@5b
    move v5, v4

    #@5c
    .end local v4    # "start":I
    .local v5, "start":I
    move v2, v1

    #@5d
    .end local v1    # "newStart":I
    .local v2, "newStart":I
    :goto_4
    if-lez v0, :cond_c

    #@5f
    .line 615
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@61
    add-int/lit8 v1, v2, 0x1

    #@63
    .end local v2    # "newStart":I
    .restart local v1    # "newStart":I
    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@65
    add-int/lit8 v4, v5, 0x1

    #@67
    .end local v5    # "start":I
    .restart local v4    # "start":I
    aget v7, v7, v5

    #@69
    aput v7, v6, v2

    #@6b
    .line 614
    add-int/lit8 v0, v0, -0x1

    #@6d
    move v5, v4

    #@6e
    .end local v4    # "start":I
    .restart local v5    # "start":I
    move v2, v1

    #@6f
    .end local v1    # "newStart":I
    .restart local v2    # "newStart":I
    goto :goto_4

    #@70
    .line 605
    .end local v2    # "newStart":I
    .end local v5    # "start":I
    .restart local v1    # "newStart":I
    .restart local v4    # "start":I
    :cond_6
    add-int/lit8 v0, v0, -0x4

    #@72
    goto :goto_2

    #@73
    .line 607
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    #@74
    .restart local v0    # "i":I
    goto :goto_3

    #@75
    .line 618
    :cond_8
    if-ge v1, v4, :cond_9

    #@77
    .line 620
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@79
    ushr-int/lit8 v7, v4, 0x5

    #@7b
    aput v1, v6, v7

    #@7d
    .line 621
    const/16 v0, 0x20

    #@7f
    move v5, v4

    #@80
    .end local v4    # "start":I
    .restart local v5    # "start":I
    move v2, v1

    #@81
    .end local v1    # "newStart":I
    .restart local v2    # "newStart":I
    :goto_5
    if-lez v0, :cond_c

    #@83
    .line 622
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@85
    add-int/lit8 v1, v2, 0x1

    #@87
    .end local v2    # "newStart":I
    .restart local v1    # "newStart":I
    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@89
    add-int/lit8 v4, v5, 0x1

    #@8b
    .end local v5    # "start":I
    .restart local v4    # "start":I
    aget v7, v7, v5

    #@8d
    aput v7, v6, v2

    #@8f
    .line 621
    add-int/lit8 v0, v0, -0x1

    #@91
    move v5, v4

    #@92
    .end local v4    # "start":I
    .restart local v5    # "start":I
    move v2, v1

    #@93
    .end local v1    # "newStart":I
    .restart local v2    # "newStart":I
    goto :goto_5

    #@94
    .line 626
    .end local v2    # "newStart":I
    .end local v5    # "start":I
    .restart local v1    # "newStart":I
    .restart local v4    # "start":I
    :cond_9
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@96
    ushr-int/lit8 v7, v4, 0x5

    #@98
    aput v4, v6, v7

    #@9a
    .line 627
    add-int/lit8 v1, v1, 0x20

    #@9c
    .line 628
    move v4, v1

    #@9d
    goto/16 :goto_0

    #@9f
    .line 632
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    #@a0
    .restart local v0    # "i":I
    :goto_6
    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@a2
    if-ge v0, v6, :cond_b

    #@a4
    .line 633
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@a6
    iget-object v7, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    #@a8
    iget-object v8, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@aa
    aget v8, v8, v0

    #@ac
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@af
    move-result v8

    #@b0
    ushr-int/lit8 v8, v8, 0x5

    #@b2
    aget v7, v7, v8

    #@b4
    aput v7, v6, v0

    #@b6
    .line 632
    add-int/lit8 v0, v0, 0x1

    #@b8
    goto :goto_6

    #@b9
    .line 635
    :cond_b
    iput v1, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@bb
    .line 555
    return-void

    #@bc
    .end local v1    # "newStart":I
    .end local v4    # "start":I
    .restart local v2    # "newStart":I
    .restart local v5    # "start":I
    :cond_c
    move v4, v5

    #@bd
    .end local v5    # "start":I
    .restart local v4    # "start":I
    move v1, v2

    #@be
    .end local v2    # "newStart":I
    .restart local v1    # "newStart":I
    goto/16 :goto_0
.end method

.method private fillBlock(IIIIZ)V
    .locals 3
    .param p1, "block"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I
    .param p5, "overwrite"    # Z

    #@0
    .prologue
    .line 777
    add-int/2addr p3, p1

    #@1
    .line 778
    add-int/2addr p1, p2

    #@2
    .line 779
    if-eqz p5, :cond_0

    #@4
    :goto_0
    move v0, p1

    #@5
    .line 780
    .end local p1    # "block":I
    .local v0, "block":I
    if-ge v0, p3, :cond_2

    #@7
    .line 781
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@9
    add-int/lit8 p1, v0, 0x1

    #@b
    .end local v0    # "block":I
    .restart local p1    # "block":I
    aput p4, v1, v0

    #@d
    goto :goto_0

    #@e
    .line 785
    :cond_0
    :goto_1
    if-ge p1, p3, :cond_3

    #@10
    .line 786
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@12
    aget v1, v1, p1

    #@14
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 787
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@1a
    aput p4, v1, p1

    #@1c
    .line 789
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@1e
    goto :goto_1

    #@1f
    .end local p1    # "block":I
    .restart local v0    # "block":I
    :cond_2
    move p1, v0

    #@20
    .line 775
    .end local v0    # "block":I
    .restart local p1    # "block":I
    :cond_3
    return-void
.end method

.method private static final findSameDataBlock([IIII)I
    .locals 2
    .param p0, "data"    # [I
    .param p1, "dataLength"    # I
    .param p2, "otherBlock"    # I
    .param p3, "step"    # I

    #@0
    .prologue
    .line 649
    add-int/lit8 p1, p1, -0x20

    #@2
    .line 651
    const/4 v0, 0x0

    #@3
    .local v0, "block":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@5
    .line 652
    const/16 v1, 0x20

    #@7
    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 653
    return v0

    #@e
    .line 651
    :cond_0
    add-int/2addr v0, p3

    #@f
    goto :goto_0

    #@10
    .line 656
    :cond_1
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method private final fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V
    .locals 12
    .param p1, "manipulate"    # Landroid/icu/impl/TrieBuilder$DataManipulate;

    #@0
    .prologue
    const/16 v11, 0x800

    #@2
    const/16 v3, 0x20

    #@4
    const/4 v2, 0x0

    #@5
    .line 672
    new-array v9, v3, [I

    #@7
    .line 673
    .local v9, "leadIndexes":[I
    iget-object v7, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@9
    .line 675
    .local v7, "index":[I
    const/16 v0, 0x6c0

    #@b
    invoke-static {v7, v0, v9, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@e
    .line 685
    const/4 v1, 0x0

    #@f
    .line 686
    .local v1, "block":I
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@11
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@13
    if-ne v0, v4, :cond_0

    #@15
    .line 701
    :goto_0
    const/16 v6, 0x6c0

    #@17
    .local v6, "c":I
    :goto_1
    const/16 v0, 0x6e0

    #@19
    if-ge v6, v0, :cond_2

    #@1b
    .line 702
    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@1d
    aput v1, v0, v6

    #@1f
    .line 701
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_1

    #@22
    .line 692
    .end local v6    # "c":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    #@25
    move-result v1

    #@26
    .line 693
    if-gez v1, :cond_1

    #@28
    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2a
    const-string/jumbo v2, "Internal error: Out of memory space"

    #@2d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 697
    :cond_1
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@33
    const/4 v5, 0x1

    #@34
    move-object v0, p0

    #@35
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@38
    .line 699
    neg-int v1, v1

    #@39
    goto :goto_0

    #@3a
    .line 712
    .restart local v6    # "c":I
    :cond_2
    const/16 v8, 0x800

    #@3c
    .line 714
    .local v8, "indexLength":I
    const/high16 v6, 0x10000

    #@3e
    :goto_2
    const/high16 v0, 0x110000

    #@40
    if-ge v6, v0, :cond_6

    #@42
    .line 715
    shr-int/lit8 v0, v6, 0x5

    #@44
    aget v0, v7, v0

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 717
    and-int/lit16 v6, v6, -0x400

    #@4a
    .line 719
    shr-int/lit8 v0, v6, 0x5

    #@4c
    invoke-static {v7, v8, v0}, Landroid/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I

    #@4f
    move-result v1

    #@50
    .line 726
    add-int/lit8 v0, v1, 0x20

    #@52
    .line 725
    invoke-interface {p1, v6, v0}, Landroid/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I

    #@55
    move-result v10

    #@56
    .line 727
    .local v10, "value":I
    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@59
    move-result v0

    #@5a
    invoke-virtual {p0, v0}, Landroid/icu/impl/IntTrieBuilder;->getValue(I)I

    #@5d
    move-result v0

    #@5e
    if-eq v10, v0, :cond_4

    #@60
    .line 728
    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@63
    move-result v0

    #@64
    invoke-virtual {p0, v0, v10}, Landroid/icu/impl/IntTrieBuilder;->setValue(II)Z

    #@67
    move-result v0

    #@68
    if-nez v0, :cond_3

    #@6a
    .line 730
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6c
    .line 731
    const-string/jumbo v2, "Data table overflow"

    #@6f
    .line 730
    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@72
    throw v0

    #@73
    .line 734
    :cond_3
    if-ne v1, v8, :cond_4

    #@75
    .line 737
    shr-int/lit8 v0, v6, 0x5

    #@77
    invoke-static {v7, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@7a
    .line 739
    add-int/lit8 v8, v8, 0x20

    #@7c
    .line 742
    :cond_4
    add-int/lit16 v6, v6, 0x400

    #@7e
    goto :goto_2

    #@7f
    .line 745
    .end local v10    # "value":I
    :cond_5
    add-int/lit8 v6, v6, 0x20

    #@81
    goto :goto_2

    #@82
    .line 757
    :cond_6
    const v0, 0x8800

    #@85
    if-lt v8, v0, :cond_7

    #@87
    .line 758
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@89
    const-string/jumbo v2, "Index table overflow"

    #@8c
    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0

    #@90
    .line 764
    :cond_7
    add-int/lit16 v0, v8, -0x800

    #@92
    .line 763
    const/16 v4, 0x820

    #@94
    .line 762
    invoke-static {v7, v11, v7, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@97
    .line 765
    invoke-static {v9, v2, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@9a
    .line 767
    add-int/lit8 v8, v8, 0x20

    #@9c
    .line 768
    iput v8, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@9e
    .line 670
    return-void
.end method

.method private getDataBlock(I)I
    .locals 6
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 523
    shr-int/lit8 p1, p1, 0x5

    #@2
    .line 524
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@4
    aget v0, v2, p1

    #@6
    .line 525
    .local v0, "indexValue":I
    if-lez v0, :cond_0

    #@8
    .line 526
    return v0

    #@9
    .line 530
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    #@c
    move-result v1

    #@d
    .line 531
    .local v1, "newBlock":I
    if-gez v1, :cond_1

    #@f
    .line 533
    const/4 v2, -0x1

    #@10
    return v2

    #@11
    .line 535
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@13
    aput v1, v2, p1

    #@15
    .line 538
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@17
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@1a
    move-result v3

    #@1b
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@1d
    .line 539
    const/16 v5, 0x80

    #@1f
    .line 538
    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@22
    .line 540
    return v1
.end method


# virtual methods
.method public getValue(I)I
    .locals 4
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 173
    iget-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@3
    if-nez v1, :cond_0

    #@5
    const v1, 0x10ffff

    #@8
    if-le p1, v1, :cond_1

    #@a
    .line 174
    :cond_0
    return v2

    #@b
    .line 173
    :cond_1
    if-ltz p1, :cond_0

    #@d
    .line 177
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@f
    shr-int/lit8 v2, p1, 0x5

    #@11
    aget v0, v1, v2

    #@13
    .line 178
    .local v0, "block":I
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@15
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@18
    move-result v2

    #@19
    and-int/lit8 v3, p1, 0x1f

    #@1b
    add-int/2addr v2, v3

    #@1c
    aget v1, v1, v2

    #@1e
    return v1
.end method

.method public getValue(I[Z)I
    .locals 5
    .param p1, "ch"    # I
    .param p2, "inBlockZero"    # [Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 191
    iget-boolean v3, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@4
    if-nez v3, :cond_0

    #@6
    const v3, 0x10ffff

    #@9
    if-le p1, v3, :cond_2

    #@b
    .line 192
    :cond_0
    if-eqz p2, :cond_1

    #@d
    .line 193
    aput-boolean v1, p2, v2

    #@f
    .line 195
    :cond_1
    return v2

    #@10
    .line 191
    :cond_2
    if-ltz p1, :cond_0

    #@12
    .line 198
    iget-object v3, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@14
    shr-int/lit8 v4, p1, 0x5

    #@16
    aget v0, v3, v4

    #@18
    .line 199
    .local v0, "block":I
    if-eqz p2, :cond_3

    #@1a
    .line 200
    if-nez v0, :cond_4

    #@1c
    :goto_0
    aput-boolean v1, p2, v2

    #@1e
    .line 202
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v2

    #@24
    and-int/lit8 v3, p1, 0x1f

    #@26
    add-int/2addr v2, v3

    #@27
    aget v1, v1, v2

    #@29
    return v1

    #@2a
    :cond_4
    move v1, v2

    #@2b
    .line 200
    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "reduceTo16Bits"    # Z
    .param p3, "datamanipulate"    # Landroid/icu/impl/TrieBuilder$DataManipulate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 297
    if-nez p3, :cond_0

    #@3
    .line 298
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "Parameters can not be null"

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 303
    :cond_0
    iget-boolean v5, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@e
    if-nez v5, :cond_1

    #@10
    .line 305
    const/4 v5, 0x0

    #@11
    invoke-direct {p0, v5}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@14
    .line 307
    invoke-direct {p0, p3}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    #@17
    .line 309
    invoke-direct {p0, v6}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@1a
    .line 310
    iput-boolean v6, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@1c
    .line 315
    :cond_1
    if-eqz p2, :cond_2

    #@1e
    .line 316
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@20
    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@22
    add-int v2, v5, v6

    #@24
    .line 320
    .local v2, "length":I
    :goto_0
    const/high16 v5, 0x40000

    #@26
    if-lt v2, v5, :cond_3

    #@28
    .line 321
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2a
    const-string/jumbo v6, "Data length too small"

    #@2d
    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@30
    throw v5

    #@31
    .line 318
    .end local v2    # "length":I
    :cond_2
    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@33
    .restart local v2    # "length":I
    goto :goto_0

    #@34
    .line 329
    :cond_3
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@36
    mul-int/lit8 v5, v5, 0x2

    #@38
    add-int/lit8 v2, v5, 0x10

    #@3a
    .line 330
    if-eqz p2, :cond_4

    #@3c
    .line 331
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@3e
    mul-int/lit8 v5, v5, 0x2

    #@40
    add-int/2addr v2, v5

    #@41
    .line 336
    :goto_1
    if-nez p1, :cond_5

    #@43
    .line 338
    return v2

    #@44
    .line 333
    :cond_4
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@46
    mul-int/lit8 v5, v5, 0x4

    #@48
    add-int/2addr v2, v5

    #@49
    goto :goto_1

    #@4a
    .line 341
    :cond_5
    new-instance v0, Ljava/io/DataOutputStream;

    #@4c
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4f
    .line 342
    .local v0, "dos":Ljava/io/DataOutputStream;
    const v5, 0x54726965

    #@52
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@55
    .line 344
    const/16 v3, 0x25

    #@57
    .line 345
    .local v3, "options":I
    if-nez p2, :cond_6

    #@59
    .line 346
    const/16 v3, 0x125

    #@5b
    .line 348
    :cond_6
    iget-boolean v5, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@5d
    if-eqz v5, :cond_7

    #@5f
    .line 349
    or-int/lit16 v3, v3, 0x200

    #@61
    .line 351
    :cond_7
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@64
    .line 353
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@66
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@69
    .line 354
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@6b
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@6e
    .line 357
    if-eqz p2, :cond_9

    #@70
    .line 359
    const/4 v1, 0x0

    #@71
    .local v1, "i":I
    :goto_2
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@73
    if-ge v1, v5, :cond_8

    #@75
    .line 360
    iget-object v5, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@77
    aget v5, v5, v1

    #@79
    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@7b
    add-int/2addr v5, v6

    #@7c
    ushr-int/lit8 v4, v5, 0x2

    #@7e
    .line 361
    .local v4, "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@81
    .line 359
    add-int/lit8 v1, v1, 0x1

    #@83
    goto :goto_2

    #@84
    .line 365
    .end local v4    # "v":I
    :cond_8
    const/4 v1, 0x0

    #@85
    :goto_3
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@87
    if-ge v1, v5, :cond_b

    #@89
    .line 366
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@8b
    aget v5, v5, v1

    #@8d
    const v6, 0xffff

    #@90
    and-int v4, v5, v6

    #@92
    .line 367
    .restart local v4    # "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@95
    .line 365
    add-int/lit8 v1, v1, 0x1

    #@97
    goto :goto_3

    #@98
    .line 371
    .end local v1    # "i":I
    .end local v4    # "v":I
    :cond_9
    const/4 v1, 0x0

    #@99
    .restart local v1    # "i":I
    :goto_4
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@9b
    if-ge v1, v5, :cond_a

    #@9d
    .line 372
    iget-object v5, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@9f
    aget v5, v5, v1

    #@a1
    ushr-int/lit8 v4, v5, 0x2

    #@a3
    .line 373
    .restart local v4    # "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@a6
    .line 371
    add-int/lit8 v1, v1, 0x1

    #@a8
    goto :goto_4

    #@a9
    .line 377
    .end local v4    # "v":I
    :cond_a
    const/4 v1, 0x0

    #@aa
    :goto_5
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@ac
    if-ge v1, v5, :cond_b

    #@ae
    .line 378
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@b0
    aget v5, v5, v1

    #@b2
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@b5
    .line 377
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto :goto_5

    #@b8
    .line 382
    :cond_b
    return v2
.end method

.method public serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;
    .locals 7
    .param p1, "datamanipulate"    # Landroid/icu/impl/TrieBuilder$DataManipulate;
    .param p2, "triedatamanipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 238
    if-nez p1, :cond_0

    #@4
    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "Parameters can not be null"

    #@9
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 243
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 245
    invoke-direct {p0, v5}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@14
    .line 247
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    #@17
    .line 249
    invoke-direct {p0, v3}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@1a
    .line 250
    iput-boolean v3, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@1c
    .line 253
    :cond_1
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@1e
    const/high16 v3, 0x40000

    #@20
    if-lt v0, v3, :cond_2

    #@22
    .line 254
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@24
    const-string/jumbo v3, "Data length too small"

    #@27
    invoke-direct {v0, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 257
    :cond_2
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@2d
    new-array v1, v0, [C

    #@2f
    .line 258
    .local v1, "index":[C
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@31
    new-array v2, v0, [I

    #@33
    .line 261
    .local v2, "data":[I
    const/4 v6, 0x0

    #@34
    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    #@36
    if-ge v6, v0, :cond_3

    #@38
    .line 262
    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@3a
    aget v0, v0, v6

    #@3c
    ushr-int/lit8 v0, v0, 0x2

    #@3e
    int-to-char v0, v0

    #@3f
    aput-char v0, v1, v6

    #@41
    .line 261
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 265
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@46
    iget v3, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    #@48
    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@4b
    .line 268
    const/16 v4, 0x125

    #@4d
    .line 269
    .local v4, "options":I
    iget-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 270
    or-int/lit16 v4, v4, 0x200

    #@53
    .line 272
    :cond_4
    new-instance v0, Landroid/icu/impl/IntTrie;

    #@55
    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@57
    move-object v5, p2

    #@58
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrie;-><init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V

    #@5b
    return-object v0
.end method

.method public setRange(IIIZ)Z
    .locals 14
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "value"    # I
    .param p4, "overwrite"    # Z

    #@0
    .prologue
    .line 407
    iget-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@2
    if-nez v1, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 410
    :cond_0
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 408
    :cond_1
    const v1, 0x10ffff

    #@b
    if-gt p1, v1, :cond_0

    #@d
    if-ltz p2, :cond_0

    #@f
    .line 409
    const/high16 v1, 0x110000

    #@11
    move/from16 v0, p2

    #@13
    if-gt v0, v1, :cond_0

    #@15
    move/from16 v0, p2

    #@17
    if-gt p1, v0, :cond_0

    #@19
    .line 413
    move/from16 v0, p2

    #@1b
    if-ne p1, v0, :cond_2

    #@1d
    .line 414
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 417
    :cond_2
    and-int/lit8 v1, p1, 0x1f

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 419
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@26
    move-result v2

    #@27
    .line 420
    .local v2, "block":I
    if-gez v2, :cond_3

    #@29
    .line 421
    const/4 v1, 0x0

    #@2a
    return v1

    #@2b
    .line 424
    :cond_3
    add-int/lit8 v1, p1, 0x20

    #@2d
    and-int/lit8 v11, v1, -0x20

    #@2f
    .line 425
    .local v11, "nextStart":I
    move/from16 v0, p2

    #@31
    if-gt v11, v0, :cond_5

    #@33
    .line 426
    and-int/lit8 v3, p1, 0x1f

    #@35
    const/16 v4, 0x20

    #@37
    move-object v1, p0

    #@38
    move/from16 v5, p3

    #@3a
    move/from16 v6, p4

    #@3c
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@3f
    .line 428
    move p1, v11

    #@40
    .line 438
    .end local v2    # "block":I
    .end local v11    # "nextStart":I
    :cond_4
    and-int/lit8 v13, p2, 0x1f

    #@42
    .line 441
    .local v13, "rest":I
    and-int/lit8 p2, p2, -0x20

    #@44
    .line 444
    const/4 v4, 0x0

    #@45
    .line 445
    .local v4, "repeatBlock":I
    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@47
    move/from16 v0, p3

    #@49
    if-ne v0, v1, :cond_6

    #@4b
    move v12, v4

    #@4c
    .line 451
    .end local v4    # "repeatBlock":I
    .local v12, "repeatBlock":I
    :goto_0
    move/from16 v0, p2

    #@4e
    if-ge p1, v0, :cond_c

    #@50
    .line 453
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@52
    shr-int/lit8 v3, p1, 0x5

    #@54
    aget v2, v1, v3

    #@56
    .line 454
    .restart local v2    # "block":I
    if-lez v2, :cond_7

    #@58
    .line 456
    const/4 v3, 0x0

    #@59
    const/16 v4, 0x20

    #@5b
    move-object v1, p0

    #@5c
    move/from16 v5, p3

    #@5e
    move/from16 v6, p4

    #@60
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@63
    move v4, v12

    #@64
    .line 478
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    :goto_1
    add-int/lit8 p1, p1, 0x20

    #@66
    move v12, v4

    #@67
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    goto :goto_0

    #@68
    .line 431
    .end local v12    # "repeatBlock":I
    .end local v13    # "rest":I
    .restart local v11    # "nextStart":I
    :cond_5
    and-int/lit8 v3, p1, 0x1f

    #@6a
    and-int/lit8 v4, p2, 0x1f

    #@6c
    move-object v1, p0

    #@6d
    move/from16 v5, p3

    #@6f
    move/from16 v6, p4

    #@71
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@74
    .line 433
    const/4 v1, 0x1

    #@75
    return v1

    #@76
    .line 449
    .end local v2    # "block":I
    .end local v11    # "nextStart":I
    .restart local v4    # "repeatBlock":I
    .restart local v13    # "rest":I
    :cond_6
    const/4 v4, -0x1

    #@77
    move v12, v4

    #@78
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    goto :goto_0

    #@79
    .line 458
    .restart local v2    # "block":I
    :cond_7
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@7b
    neg-int v3, v2

    #@7c
    aget v1, v1, v3

    #@7e
    move/from16 v0, p3

    #@80
    if-eq v1, v0, :cond_9

    #@82
    if-eqz v2, :cond_8

    #@84
    if-eqz p4, :cond_f

    #@86
    .line 461
    :cond_8
    if-ltz v12, :cond_a

    #@88
    .line 462
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@8a
    shr-int/lit8 v3, p1, 0x5

    #@8c
    neg-int v5, v12

    #@8d
    aput v5, v1, v3

    #@8f
    move v4, v12

    #@90
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    goto :goto_1

    #@91
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    :cond_9
    move v4, v12

    #@92
    .line 458
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    goto :goto_1

    #@93
    .line 466
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    :cond_a
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@96
    move-result v4

    #@97
    .line 467
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    if-gez v4, :cond_b

    #@99
    .line 468
    const/4 v1, 0x0

    #@9a
    return v1

    #@9b
    .line 473
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    #@9d
    shr-int/lit8 v3, p1, 0x5

    #@9f
    neg-int v5, v4

    #@a0
    aput v5, v1, v3

    #@a2
    .line 474
    const/4 v5, 0x0

    #@a3
    const/16 v6, 0x20

    #@a5
    const/4 v8, 0x1

    #@a6
    move-object v3, p0

    #@a7
    move/from16 v7, p3

    #@a9
    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@ac
    goto :goto_1

    #@ad
    .line 481
    .end local v2    # "block":I
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    :cond_c
    if-lez v13, :cond_e

    #@af
    .line 483
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@b2
    move-result v2

    #@b3
    .line 484
    .restart local v2    # "block":I
    if-gez v2, :cond_d

    #@b5
    .line 485
    const/4 v1, 0x0

    #@b6
    return v1

    #@b7
    .line 487
    :cond_d
    const/4 v7, 0x0

    #@b8
    move-object v5, p0

    #@b9
    move v6, v2

    #@ba
    move v8, v13

    #@bb
    move/from16 v9, p3

    #@bd
    move/from16 v10, p4

    #@bf
    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@c2
    .line 490
    .end local v2    # "block":I
    :cond_e
    const/4 v1, 0x1

    #@c3
    return v1

    #@c4
    .restart local v2    # "block":I
    :cond_f
    move v4, v12

    #@c5
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    goto :goto_1
.end method

.method public setValue(II)Z
    .locals 3
    .param p1, "ch"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 216
    iget-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    #@3
    if-nez v1, :cond_0

    #@5
    const v1, 0x10ffff

    #@8
    if-le p1, v1, :cond_1

    #@a
    .line 217
    :cond_0
    return v2

    #@b
    .line 216
    :cond_1
    if-ltz p1, :cond_0

    #@d
    .line 220
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@10
    move-result v0

    #@11
    .line 221
    .local v0, "block":I
    if-gez v0, :cond_2

    #@13
    .line 222
    return v2

    #@14
    .line 225
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@16
    and-int/lit8 v2, p1, 0x1f

    #@18
    add-int/2addr v2, v0

    #@19
    aput p2, v1, v2

    #@1b
    .line 226
    const/4 v1, 0x1

    #@1c
    return v1
.end method
