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
    .line 44
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieBuilder;-><init>(Landroid/icu/impl/TrieBuilder;)V

    #@4
    .line 45
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@a
    .line 46
    iget-object v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@c
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@e
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@10
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@13
    .line 47
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@15
    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@17
    .line 48
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@19
    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@1b
    .line 42
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
    .line 62
    invoke-direct {p0}, Landroid/icu/impl/TrieBuilder;-><init>()V

    #@4
    .line 63
    const/16 v3, 0x20

    #@6
    if-lt p2, v3, :cond_0

    #@8
    if-eqz p5, :cond_1

    #@a
    .line 64
    const/16 v3, 0x400

    #@c
    if-ge p2, v3, :cond_1

    #@e
    .line 65
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    .line 66
    const-string/jumbo v4, "Argument maxdatalength is too small"

    #@13
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 69
    :cond_1
    if-eqz p1, :cond_2

    #@19
    .line 70
    iput-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@1b
    .line 77
    :goto_0
    const/16 v2, 0x20

    #@1d
    .line 79
    .local v2, "j":I
    if-eqz p5, :cond_3

    #@1f
    .line 84
    const/4 v0, 0x0

    #@20
    .line 88
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@22
    add-int/lit8 v1, v0, 0x1

    #@24
    .end local v0    # "i":I
    .local v1, "i":I
    aput v2, v3, v0

    #@26
    .line 89
    add-int/lit8 v2, v2, 0x20

    #@28
    .line 90
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
    .line 73
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_2
    new-array v3, p2, [I

    #@30
    iput-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@32
    goto :goto_0

    #@33
    .line 93
    .restart local v2    # "j":I
    :cond_3
    iput v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@35
    .line 95
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@37
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@39
    invoke-static {v3, v5, v4, p3}, Ljava/util/Arrays;->fill([IIII)V

    #@3c
    .line 96
    iput p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@3e
    .line 97
    iput p4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@40
    .line 98
    iput p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    #@42
    .line 99
    iput-boolean p5, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    #@44
    .line 100
    iput-boolean v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@46
    .line 60
    return-void
.end method

.method private allocDataBlock()I
    .locals 3

    #@0
    .prologue
    .line 504
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@2
    .line 505
    .local v0, "newBlock":I
    add-int/lit8 v1, v0, 0x20

    #@4
    .line 506
    .local v1, "newTop":I
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 508
    const/4 v2, -0x1

    #@9
    return v2

    #@a
    .line 510
    :cond_0
    iput v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@c
    .line 511
    return v0
.end method

.method private compact(Z)V
    .locals 9
    .param p1, "overlap"    # Z

    #@0
    .prologue
    .line 555
    iget-boolean v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 556
    return-void

    #@5
    .line 561
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/IntTrieBuilder;->findUnusedBlocks()V

    #@8
    .line 565
    const/16 v3, 0x20

    #@a
    .line 566
    .local v3, "overlapStart":I
    iget-boolean v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 567
    const/16 v3, 0x120

    #@10
    .line 570
    :cond_1
    const/16 v1, 0x20

    #@12
    .local v1, "newStart":I
    const/16 v4, 0x20

    #@14
    .line 572
    .local v4, "start":I
    :goto_0
    iget v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@16
    if-ge v4, v6, :cond_a

    #@18
    .line 577
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    #@1a
    ushr-int/lit8 v7, v4, 0x5

    #@1c
    aget v6, v6, v7

    #@1e
    if-gez v6, :cond_2

    #@20
    .line 579
    add-int/lit8 v4, v4, 0x20

    #@22
    .line 581
    goto :goto_0

    #@23
    .line 584
    :cond_2
    if-lt v4, v3, :cond_4

    #@25
    .line 585
    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@27
    .line 586
    if-eqz p1, :cond_3

    #@29
    const/4 v6, 0x4

    #@2a
    .line 585
    :goto_1
    invoke-static {v7, v1, v4, v6}, Landroid/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I

    #@2d
    move-result v0

    #@2e
    .line 587
    .local v0, "i":I
    if-ltz v0, :cond_4

    #@30
    .line 590
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    #@32
    ushr-int/lit8 v7, v4, 0x5

    #@34
    aput v0, v6, v7

    #@36
    .line 592
    add-int/lit8 v4, v4, 0x20

    #@38
    .line 594
    goto :goto_0

    #@39
    .line 586
    .end local v0    # "i":I
    :cond_3
    const/16 v6, 0x20

    #@3b
    goto :goto_1

    #@3c
    .line 599
    :cond_4
    if-eqz p1, :cond_7

    #@3e
    if-lt v4, v3, :cond_7

    #@40
    .line 601
    const/16 v0, 0x1c

    #@42
    .line 602
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
    .line 607
    :cond_5
    :goto_3
    if-lez v0, :cond_8

    #@50
    .line 609
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    #@52
    ushr-int/lit8 v7, v4, 0x5

    #@54
    sub-int v8, v1, v0

    #@56
    aput v8, v6, v7

    #@58
    .line 611
    add-int/2addr v4, v0

    #@59
    .line 612
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
    .line 613
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
    .line 612
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
    .line 603
    .end local v2    # "newStart":I
    .end local v5    # "start":I
    .restart local v1    # "newStart":I
    .restart local v4    # "start":I
    :cond_6
    add-int/lit8 v0, v0, -0x4

    #@72
    goto :goto_2

    #@73
    .line 605
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    #@74
    .restart local v0    # "i":I
    goto :goto_3

    #@75
    .line 616
    :cond_8
    if-ge v1, v4, :cond_9

    #@77
    .line 618
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    #@79
    ushr-int/lit8 v7, v4, 0x5

    #@7b
    aput v1, v6, v7

    #@7d
    .line 619
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
    .line 620
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
    .line 619
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
    .line 624
    .end local v2    # "newStart":I
    .end local v5    # "start":I
    .restart local v1    # "newStart":I
    .restart local v4    # "start":I
    :cond_9
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    #@96
    ushr-int/lit8 v7, v4, 0x5

    #@98
    aput v4, v6, v7

    #@9a
    .line 625
    add-int/lit8 v1, v1, 0x20

    #@9c
    .line 626
    move v4, v1

    #@9d
    goto/16 :goto_0

    #@9f
    .line 630
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    #@a0
    .restart local v0    # "i":I
    :goto_6
    iget v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@a2
    if-ge v0, v6, :cond_b

    #@a4
    .line 631
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@a6
    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    #@a8
    iget-object v8, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

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
    .line 630
    add-int/lit8 v0, v0, 0x1

    #@b8
    goto :goto_6

    #@b9
    .line 633
    :cond_b
    iput v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@bb
    .line 553
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
    .line 775
    add-int/2addr p3, p1

    #@1
    .line 776
    add-int/2addr p1, p2

    #@2
    .line 777
    if-eqz p5, :cond_0

    #@4
    :goto_0
    move v0, p1

    #@5
    .line 778
    .end local p1    # "block":I
    .local v0, "block":I
    if-ge v0, p3, :cond_2

    #@7
    .line 779
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
    .line 783
    :cond_0
    :goto_1
    if-ge p1, p3, :cond_3

    #@10
    .line 784
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@12
    aget v1, v1, p1

    #@14
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 785
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@1a
    aput p4, v1, p1

    #@1c
    .line 787
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
    .line 773
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
    .line 647
    add-int/lit8 p1, p1, -0x20

    #@2
    .line 649
    const/4 v0, 0x0

    #@3
    .local v0, "block":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@5
    .line 650
    const/16 v1, 0x20

    #@7
    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 651
    return v0

    #@e
    .line 649
    :cond_0
    add-int/2addr v0, p3

    #@f
    goto :goto_0

    #@10
    .line 654
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
    .line 670
    new-array v9, v3, [I

    #@7
    .line 671
    .local v9, "leadIndexes":[I
    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@9
    .line 673
    .local v7, "index":[I
    const/16 v0, 0x6c0

    #@b
    invoke-static {v7, v0, v9, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@e
    .line 683
    const/4 v1, 0x0

    #@f
    .line 684
    .local v1, "block":I
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@11
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@13
    if-ne v0, v4, :cond_0

    #@15
    .line 699
    :goto_0
    const/16 v6, 0x6c0

    #@17
    .local v6, "c":I
    :goto_1
    const/16 v0, 0x6e0

    #@19
    if-ge v6, v0, :cond_2

    #@1b
    .line 700
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@1d
    aput v1, v0, v6

    #@1f
    .line 699
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_1

    #@22
    .line 690
    .end local v6    # "c":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    #@25
    move-result v1

    #@26
    .line 691
    if-gez v1, :cond_1

    #@28
    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2a
    const-string/jumbo v2, "Internal error: Out of memory space"

    #@2d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 695
    :cond_1
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    #@33
    const/4 v5, 0x1

    #@34
    move-object v0, p0

    #@35
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    #@38
    .line 697
    neg-int v1, v1

    #@39
    goto :goto_0

    #@3a
    .line 710
    .restart local v6    # "c":I
    :cond_2
    const/16 v8, 0x800

    #@3c
    .line 712
    .local v8, "indexLength":I
    const/high16 v6, 0x10000

    #@3e
    :goto_2
    const/high16 v0, 0x110000

    #@40
    if-ge v6, v0, :cond_6

    #@42
    .line 713
    shr-int/lit8 v0, v6, 0x5

    #@44
    aget v0, v7, v0

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 715
    and-int/lit16 v6, v6, -0x400

    #@4a
    .line 717
    shr-int/lit8 v0, v6, 0x5

    #@4c
    invoke-static {v7, v8, v0}, Landroid/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I

    #@4f
    move-result v1

    #@50
    .line 724
    add-int/lit8 v0, v1, 0x20

    #@52
    .line 723
    invoke-interface {p1, v6, v0}, Landroid/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I

    #@55
    move-result v10

    #@56
    .line 725
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
    .line 726
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
    .line 728
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6c
    .line 729
    const-string/jumbo v2, "Data table overflow"

    #@6f
    .line 728
    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@72
    throw v0

    #@73
    .line 732
    :cond_3
    if-ne v1, v8, :cond_4

    #@75
    .line 735
    shr-int/lit8 v0, v6, 0x5

    #@77
    invoke-static {v7, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@7a
    .line 737
    add-int/lit8 v8, v8, 0x20

    #@7c
    .line 740
    :cond_4
    add-int/lit16 v6, v6, 0x400

    #@7e
    goto :goto_2

    #@7f
    .line 743
    .end local v10    # "value":I
    :cond_5
    add-int/lit8 v6, v6, 0x20

    #@81
    goto :goto_2

    #@82
    .line 755
    :cond_6
    const v0, 0x8800

    #@85
    if-lt v8, v0, :cond_7

    #@87
    .line 756
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@89
    const-string/jumbo v2, "Index table overflow"

    #@8c
    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0

    #@90
    .line 762
    :cond_7
    add-int/lit16 v0, v8, -0x800

    #@92
    .line 761
    const/16 v4, 0x820

    #@94
    .line 760
    invoke-static {v7, v11, v7, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@97
    .line 763
    invoke-static {v9, v2, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@9a
    .line 765
    add-int/lit8 v8, v8, 0x20

    #@9c
    .line 766
    iput v8, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@9e
    .line 668
    return-void
.end method

.method private getDataBlock(I)I
    .locals 6
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 521
    shr-int/lit8 p1, p1, 0x5

    #@2
    .line 522
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@4
    aget v0, v2, p1

    #@6
    .line 523
    .local v0, "indexValue":I
    if-lez v0, :cond_0

    #@8
    .line 524
    return v0

    #@9
    .line 528
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    #@c
    move-result v1

    #@d
    .line 529
    .local v1, "newBlock":I
    if-gez v1, :cond_1

    #@f
    .line 531
    const/4 v2, -0x1

    #@10
    return v2

    #@11
    .line 533
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@13
    aput v1, v2, p1

    #@15
    .line 536
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@17
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@1a
    move-result v3

    #@1b
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@1d
    .line 537
    const/16 v5, 0x80

    #@1f
    .line 536
    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@22
    .line 538
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
    .line 171
    iget-boolean v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@3
    if-nez v1, :cond_0

    #@5
    const v1, 0x10ffff

    #@8
    if-le p1, v1, :cond_1

    #@a
    .line 172
    :cond_0
    return v2

    #@b
    .line 171
    :cond_1
    if-ltz p1, :cond_0

    #@d
    .line 175
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@f
    shr-int/lit8 v2, p1, 0x5

    #@11
    aget v0, v1, v2

    #@13
    .line 176
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
    .line 189
    iget-boolean v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@4
    if-nez v3, :cond_0

    #@6
    const v3, 0x10ffff

    #@9
    if-le p1, v3, :cond_2

    #@b
    .line 190
    :cond_0
    if-eqz p2, :cond_1

    #@d
    .line 191
    aput-boolean v1, p2, v2

    #@f
    .line 193
    :cond_1
    return v2

    #@10
    .line 189
    :cond_2
    if-ltz p1, :cond_0

    #@12
    .line 196
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@14
    shr-int/lit8 v4, p1, 0x5

    #@16
    aget v0, v3, v4

    #@18
    .line 197
    .local v0, "block":I
    if-eqz p2, :cond_3

    #@1a
    .line 198
    if-nez v0, :cond_4

    #@1c
    :goto_0
    aput-boolean v1, p2, v2

    #@1e
    .line 200
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
    .line 198
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
    .line 295
    if-nez p3, :cond_0

    #@3
    .line 296
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "Parameters can not be null"

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 301
    :cond_0
    iget-boolean v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@e
    if-nez v5, :cond_1

    #@10
    .line 303
    const/4 v5, 0x0

    #@11
    invoke-direct {p0, v5}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@14
    .line 305
    invoke-direct {p0, p3}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    #@17
    .line 307
    invoke-direct {p0, v6}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@1a
    .line 308
    iput-boolean v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@1c
    .line 313
    :cond_1
    if-eqz p2, :cond_2

    #@1e
    .line 314
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@20
    iget v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@22
    add-int v2, v5, v6

    #@24
    .line 318
    .local v2, "length":I
    :goto_0
    const/high16 v5, 0x40000

    #@26
    if-lt v2, v5, :cond_3

    #@28
    .line 319
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2a
    const-string/jumbo v6, "Data length too small"

    #@2d
    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@30
    throw v5

    #@31
    .line 316
    .end local v2    # "length":I
    :cond_2
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@33
    .restart local v2    # "length":I
    goto :goto_0

    #@34
    .line 327
    :cond_3
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@36
    mul-int/lit8 v5, v5, 0x2

    #@38
    add-int/lit8 v2, v5, 0x10

    #@3a
    .line 328
    if-eqz p2, :cond_4

    #@3c
    .line 329
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@3e
    mul-int/lit8 v5, v5, 0x2

    #@40
    add-int/2addr v2, v5

    #@41
    .line 334
    :goto_1
    if-nez p1, :cond_5

    #@43
    .line 336
    return v2

    #@44
    .line 331
    :cond_4
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@46
    mul-int/lit8 v5, v5, 0x4

    #@48
    add-int/2addr v2, v5

    #@49
    goto :goto_1

    #@4a
    .line 339
    :cond_5
    new-instance v0, Ljava/io/DataOutputStream;

    #@4c
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4f
    .line 340
    .local v0, "dos":Ljava/io/DataOutputStream;
    const v5, 0x54726965

    #@52
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@55
    .line 342
    const/16 v3, 0x25

    #@57
    .line 343
    .local v3, "options":I
    if-nez p2, :cond_6

    #@59
    .line 344
    const/16 v3, 0x125

    #@5b
    .line 346
    :cond_6
    iget-boolean v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    #@5d
    if-eqz v5, :cond_7

    #@5f
    .line 347
    or-int/lit16 v3, v3, 0x200

    #@61
    .line 349
    :cond_7
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@64
    .line 351
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@66
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@69
    .line 352
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@6b
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@6e
    .line 355
    if-eqz p2, :cond_9

    #@70
    .line 357
    const/4 v1, 0x0

    #@71
    .local v1, "i":I
    :goto_2
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@73
    if-ge v1, v5, :cond_8

    #@75
    .line 358
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@77
    aget v5, v5, v1

    #@79
    iget v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@7b
    add-int/2addr v5, v6

    #@7c
    ushr-int/lit8 v4, v5, 0x2

    #@7e
    .line 359
    .local v4, "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@81
    .line 357
    add-int/lit8 v1, v1, 0x1

    #@83
    goto :goto_2

    #@84
    .line 363
    .end local v4    # "v":I
    :cond_8
    const/4 v1, 0x0

    #@85
    :goto_3
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@87
    if-ge v1, v5, :cond_b

    #@89
    .line 364
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@8b
    aget v5, v5, v1

    #@8d
    const v6, 0xffff

    #@90
    and-int v4, v5, v6

    #@92
    .line 365
    .restart local v4    # "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@95
    .line 363
    add-int/lit8 v1, v1, 0x1

    #@97
    goto :goto_3

    #@98
    .line 369
    .end local v1    # "i":I
    .end local v4    # "v":I
    :cond_9
    const/4 v1, 0x0

    #@99
    .restart local v1    # "i":I
    :goto_4
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@9b
    if-ge v1, v5, :cond_a

    #@9d
    .line 370
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@9f
    aget v5, v5, v1

    #@a1
    ushr-int/lit8 v4, v5, 0x2

    #@a3
    .line 371
    .restart local v4    # "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@a6
    .line 369
    add-int/lit8 v1, v1, 0x1

    #@a8
    goto :goto_4

    #@a9
    .line 375
    .end local v4    # "v":I
    :cond_a
    const/4 v1, 0x0

    #@aa
    :goto_5
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@ac
    if-ge v1, v5, :cond_b

    #@ae
    .line 376
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@b0
    aget v5, v5, v1

    #@b2
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@b5
    .line 375
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto :goto_5

    #@b8
    .line 380
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
    .line 236
    if-nez p1, :cond_0

    #@4
    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "Parameters can not be null"

    #@9
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 241
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 243
    invoke-direct {p0, v5}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@14
    .line 245
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    #@17
    .line 247
    invoke-direct {p0, v3}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    #@1a
    .line 248
    iput-boolean v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@1c
    .line 251
    :cond_1
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@1e
    const/high16 v3, 0x40000

    #@20
    if-lt v0, v3, :cond_2

    #@22
    .line 252
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@24
    const-string/jumbo v3, "Data length too small"

    #@27
    invoke-direct {v0, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 255
    :cond_2
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@2d
    new-array v1, v0, [C

    #@2f
    .line 256
    .local v1, "index":[C
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@31
    new-array v2, v0, [I

    #@33
    .line 259
    .local v2, "data":[I
    const/4 v6, 0x0

    #@34
    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    #@36
    if-ge v6, v0, :cond_3

    #@38
    .line 260
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@3a
    aget v0, v0, v6

    #@3c
    ushr-int/lit8 v0, v0, 0x2

    #@3e
    int-to-char v0, v0

    #@3f
    aput-char v0, v1, v6

    #@41
    .line 259
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 263
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@46
    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    #@48
    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@4b
    .line 266
    const/16 v4, 0x125

    #@4d
    .line 267
    .local v4, "options":I
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 268
    or-int/lit16 v4, v4, 0x200

    #@53
    .line 270
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
    .line 405
    iget-boolean v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@2
    if-nez v1, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 408
    :cond_0
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 406
    :cond_1
    const v1, 0x10ffff

    #@b
    if-gt p1, v1, :cond_0

    #@d
    if-ltz p2, :cond_0

    #@f
    .line 407
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
    .line 411
    move/from16 v0, p2

    #@1b
    if-ne p1, v0, :cond_2

    #@1d
    .line 412
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 415
    :cond_2
    and-int/lit8 v1, p1, 0x1f

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 417
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@26
    move-result v2

    #@27
    .line 418
    .local v2, "block":I
    if-gez v2, :cond_3

    #@29
    .line 419
    const/4 v1, 0x0

    #@2a
    return v1

    #@2b
    .line 422
    :cond_3
    add-int/lit8 v1, p1, 0x20

    #@2d
    and-int/lit8 v11, v1, -0x20

    #@2f
    .line 423
    .local v11, "nextStart":I
    move/from16 v0, p2

    #@31
    if-gt v11, v0, :cond_5

    #@33
    .line 424
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
    .line 426
    move p1, v11

    #@40
    .line 436
    .end local v2    # "block":I
    .end local v11    # "nextStart":I
    :cond_4
    and-int/lit8 v13, p2, 0x1f

    #@42
    .line 439
    .local v13, "rest":I
    and-int/lit8 p2, p2, -0x20

    #@44
    .line 442
    const/4 v4, 0x0

    #@45
    .line 443
    .local v4, "repeatBlock":I
    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    #@47
    move/from16 v0, p3

    #@49
    if-ne v0, v1, :cond_6

    #@4b
    move v12, v4

    #@4c
    .line 449
    .end local v4    # "repeatBlock":I
    .local v12, "repeatBlock":I
    :goto_0
    move/from16 v0, p2

    #@4e
    if-ge p1, v0, :cond_c

    #@50
    .line 451
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@52
    shr-int/lit8 v3, p1, 0x5

    #@54
    aget v2, v1, v3

    #@56
    .line 452
    .restart local v2    # "block":I
    if-lez v2, :cond_7

    #@58
    .line 454
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
    .line 476
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
    .line 429
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
    .line 431
    const/4 v1, 0x1

    #@75
    return v1

    #@76
    .line 447
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
    .line 456
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
    .line 459
    :cond_8
    if-ltz v12, :cond_a

    #@88
    .line 460
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

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
    .line 456
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    goto :goto_1

    #@93
    .line 464
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    :cond_a
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@96
    move-result v4

    #@97
    .line 465
    .end local v12    # "repeatBlock":I
    .restart local v4    # "repeatBlock":I
    if-gez v4, :cond_b

    #@99
    .line 466
    const/4 v1, 0x0

    #@9a
    return v1

    #@9b
    .line 471
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    #@9d
    shr-int/lit8 v3, p1, 0x5

    #@9f
    neg-int v5, v4

    #@a0
    aput v5, v1, v3

    #@a2
    .line 472
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
    .line 479
    .end local v2    # "block":I
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    :cond_c
    if-lez v13, :cond_e

    #@af
    .line 481
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@b2
    move-result v2

    #@b3
    .line 482
    .restart local v2    # "block":I
    if-gez v2, :cond_d

    #@b5
    .line 483
    const/4 v1, 0x0

    #@b6
    return v1

    #@b7
    .line 485
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
    .line 488
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
    .line 214
    iget-boolean v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    #@3
    if-nez v1, :cond_0

    #@5
    const v1, 0x10ffff

    #@8
    if-le p1, v1, :cond_1

    #@a
    .line 215
    :cond_0
    return v2

    #@b
    .line 214
    :cond_1
    if-ltz p1, :cond_0

    #@d
    .line 218
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    #@10
    move-result v0

    #@11
    .line 219
    .local v0, "block":I
    if-gez v0, :cond_2

    #@13
    .line 220
    return v2

    #@14
    .line 223
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    #@16
    and-int/lit8 v2, p1, 0x1f

    #@18
    add-int/2addr v2, v0

    #@19
    aput p2, v1, v2

    #@1b
    .line 224
    const/4 v1, 0x1

    #@1c
    return v1
.end method
