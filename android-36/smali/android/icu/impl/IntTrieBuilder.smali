.class public Landroid/icu/impl/IntTrieBuilder;
.super Landroid/icu/impl/TrieBuilder;
.source "IntTrieBuilder.java"


# instance fields
.field protected blacklist m_data_:[I

.field protected blacklist m_initialValue_:I

.field private blacklist m_leadUnitValue_:I


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .registers 6
    .param p1, "table"    # Landroid/icu/impl/IntTrieBuilder;

    .line 48
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieBuilder;-><init>(Landroid/icu/impl/TrieBuilder;)V

    .line 49
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    .line 50
    iget-object v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 52
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    .line 53
    return-void
.end method

.method public constructor blacklist <init>([IIIIZ)V
    .registers 11
    .param p1, "aliasdata"    # [I
    .param p2, "maxdatalength"    # I
    .param p3, "initialvalue"    # I
    .param p4, "leadunitvalue"    # I
    .param p5, "latin1linear"    # Z

    .line 66
    invoke-direct {p0}, Landroid/icu/impl/TrieBuilder;-><init>()V

    .line 67
    const/16 v0, 0x20

    if-lt p2, v0, :cond_3e

    if-eqz p5, :cond_d

    const/16 v1, 0x400

    if-lt p2, v1, :cond_3e

    .line 73
    :cond_d
    if-eqz p1, :cond_12

    .line 74
    iput-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    goto :goto_16

    .line 77
    :cond_12
    new-array v1, p2, [I

    iput-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    .line 81
    :goto_16
    const/16 v1, 0x20

    .line 83
    .local v1, "j":I
    if-eqz p5, :cond_29

    .line 88
    const/4 v2, 0x0

    .line 92
    .local v2, "i":I
    :goto_1b
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aput v1, v3, v2

    .line 93
    add-int/2addr v1, v0

    .line 94
    const/16 v2, 0x8

    if-lt v4, v2, :cond_27

    goto :goto_29

    :cond_27
    move v2, v4

    goto :goto_1b

    .line 97
    .end local v4    # "i":I
    :cond_29
    :goto_29
    iput v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 99
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 100
    iput p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 101
    iput p4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    .line 102
    iput p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    .line 103
    iput-boolean p5, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    .line 104
    iput-boolean v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    .line 105
    return-void

    .line 69
    .end local v1    # "j":I
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument maxdatalength is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist allocDataBlock()I
    .registers 4

    .line 508
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 509
    .local v0, "newBlock":I
    add-int/lit8 v1, v0, 0x20

    .line 510
    .local v1, "newTop":I
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    if-le v1, v2, :cond_a

    .line 512
    const/4 v2, -0x1

    return v2

    .line 514
    :cond_a
    iput v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 515
    return v0
.end method

.method private blacklist compact(Z)V
    .registers 10
    .param p1, "overlap"    # Z

    .line 559
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-eqz v0, :cond_5

    .line 560
    return-void

    .line 565
    :cond_5
    invoke-virtual {p0}, Landroid/icu/impl/IntTrieBuilder;->findUnusedBlocks()V

    .line 569
    const/16 v0, 0x20

    .line 570
    .local v0, "overlapStart":I
    iget-boolean v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v1, :cond_10

    .line 571
    add-int/lit16 v0, v0, 0x100

    .line 574
    :cond_10
    const/16 v1, 0x20

    .line 576
    .local v1, "newStart":I
    move v2, v1

    .local v2, "start":I
    :cond_13
    :goto_13
    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v2, v3, :cond_99

    .line 581
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v4, v2, 0x5

    aget v3, v3, v4

    if-gez v3, :cond_22

    .line 583
    add-int/lit8 v2, v2, 0x20

    .line 585
    goto :goto_13

    .line 588
    :cond_22
    if-lt v2, v0, :cond_3b

    .line 589
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    .line 590
    if-eqz p1, :cond_2a

    const/4 v4, 0x4

    goto :goto_2c

    :cond_2a
    const/16 v4, 0x20

    .line 589
    :goto_2c
    invoke-static {v3, v1, v2, v4}, Landroid/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I

    move-result v3

    .line 591
    .local v3, "i":I
    if-ltz v3, :cond_3b

    .line 594
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v5, v2, 0x5

    aput v3, v4, v5

    .line 596
    add-int/lit8 v2, v2, 0x20

    .line 598
    goto :goto_13

    .line 603
    .end local v3    # "i":I
    :cond_3b
    if-eqz p1, :cond_50

    if-lt v2, v0, :cond_50

    .line 605
    const/16 v3, 0x1c

    .line 606
    .restart local v3    # "i":I
    :goto_41
    if-lez v3, :cond_51

    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    sub-int v5, v1, v3

    invoke-static {v4, v5, v2, v3}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v4

    if-nez v4, :cond_51

    .line 607
    add-int/lit8 v3, v3, -0x4

    goto :goto_41

    .line 609
    .end local v3    # "i":I
    :cond_50
    const/4 v3, 0x0

    .line 611
    .restart local v3    # "i":I
    :cond_51
    if-lez v3, :cond_71

    .line 613
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v5, v2, 0x5

    sub-int v6, v1, v3

    aput v6, v4, v5

    .line 615
    add-int/2addr v2, v3

    .line 616
    rsub-int/lit8 v3, v3, 0x20

    :goto_5e
    if-lez v3, :cond_13

    .line 617
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "newStart":I
    .local v5, "newStart":I
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "start":I
    .local v7, "start":I
    aget v2, v6, v2

    aput v2, v4, v1

    .line 616
    add-int/lit8 v3, v3, -0x1

    move v1, v5

    move v2, v7

    goto :goto_5e

    .line 620
    .end local v5    # "newStart":I
    .end local v7    # "start":I
    .restart local v1    # "newStart":I
    .restart local v2    # "start":I
    :cond_71
    if-ge v1, v2, :cond_8e

    .line 622
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v5, v2, 0x5

    aput v1, v4, v5

    .line 623
    const/16 v3, 0x20

    :goto_7b
    if-lez v3, :cond_13

    .line 624
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "newStart":I
    .restart local v5    # "newStart":I
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "start":I
    .restart local v7    # "start":I
    aget v2, v6, v2

    aput v2, v4, v1

    .line 623
    add-int/lit8 v3, v3, -0x1

    move v1, v5

    move v2, v7

    goto :goto_7b

    .line 628
    .end local v5    # "newStart":I
    .end local v7    # "start":I
    .restart local v1    # "newStart":I
    .restart local v2    # "start":I
    :cond_8e
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v5, v2, 0x5

    aput v2, v4, v5

    .line 629
    add-int/lit8 v1, v1, 0x20

    .line 630
    move v2, v1

    goto/16 :goto_13

    .line 634
    .end local v2    # "start":I
    .end local v3    # "i":I
    :cond_99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9a
    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge v2, v3, :cond_b3

    .line 635
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x5

    aget v4, v4, v5

    aput v4, v3, v2

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 637
    :cond_b3
    iput v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 638
    return-void
.end method

.method private blacklist fillBlock(IIIIZ)V
    .registers 8
    .param p1, "block"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I
    .param p5, "overwrite"    # Z

    .line 779
    add-int/2addr p3, p1

    .line 780
    add-int/2addr p1, p2

    .line 781
    if-eqz p5, :cond_e

    .line 782
    :goto_4
    if-ge p1, p3, :cond_1f

    .line 783
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "block":I
    .local v1, "block":I
    aput p4, v0, p1

    move p1, v1

    goto :goto_4

    .line 787
    .end local v1    # "block":I
    .restart local p1    # "block":I
    :cond_e
    :goto_e
    if-ge p1, p3, :cond_1f

    .line 788
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget v0, v0, p1

    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v0, v1, :cond_1c

    .line 789
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aput p4, v0, p1

    .line 791
    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 794
    :cond_1f
    return-void
.end method

.method private static final blacklist findSameDataBlock([IIII)I
    .registers 6
    .param p0, "data"    # [I
    .param p1, "dataLength"    # I
    .param p2, "otherBlock"    # I
    .param p3, "step"    # I

    .line 651
    add-int/lit8 p1, p1, -0x20

    .line 653
    const/4 v0, 0x0

    .local v0, "block":I
    :goto_3
    if-gt v0, p1, :cond_10

    .line 654
    const/16 v1, 0x20

    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 655
    return v0

    .line 653
    :cond_e
    add-int/2addr v0, p3

    goto :goto_3

    .line 658
    .end local v0    # "block":I
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method private final blacklist fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V
    .registers 15
    .param p1, "manipulate"    # Landroid/icu/impl/TrieBuilder$DataManipulate;

    .line 674
    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 675
    .local v1, "leadIndexes":[I
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    .line 677
    .local v2, "index":[I
    const/16 v3, 0x6c0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    const/4 v3, 0x0

    .line 688
    .local v3, "block":I
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iget v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v5, v6, :cond_15

    move-object v7, p0

    goto :goto_26

    .line 694
    :cond_15
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v8

    .line 695
    .end local v3    # "block":I
    .local v8, "block":I
    if-ltz v8, :cond_99

    .line 699
    iget v11, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    .line 701
    neg-int v3, v8

    .line 703
    .end local v8    # "block":I
    .restart local v3    # "block":I
    :goto_26
    const/16 v5, 0x6c0

    .local v5, "c":I
    :goto_28
    const/16 v6, 0x6e0

    if-ge v5, v6, :cond_33

    .line 704
    iget-object v6, v7, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aput v3, v6, v5

    .line 703
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 714
    .end local v5    # "c":I
    :cond_33
    const/16 v5, 0x800

    .line 716
    .local v5, "indexLength":I
    const/high16 v6, 0x10000

    .local v6, "c":I
    :goto_37
    const/high16 v8, 0x110000

    if-ge v6, v8, :cond_7c

    .line 717
    shr-int/lit8 v8, v6, 0x5

    aget v8, v2, v8

    if-eqz v8, :cond_79

    .line 719
    and-int/lit16 v6, v6, -0x400

    .line 721
    shr-int/lit8 v8, v6, 0x5

    invoke-static {v2, v5, v8}, Landroid/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I

    move-result v3

    .line 727
    add-int/lit8 v8, v3, 0x20

    invoke-interface {p1, v6, v8}, Landroid/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I

    move-result v8

    .line 729
    .local v8, "value":I
    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v9

    invoke-virtual {p0, v9}, Landroid/icu/impl/IntTrieBuilder;->getValue(I)I

    move-result v9

    if-eq v8, v9, :cond_75

    .line 730
    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v9

    invoke-virtual {p0, v9, v8}, Landroid/icu/impl/IntTrieBuilder;->setValue(II)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 736
    if-ne v3, v5, :cond_75

    .line 739
    shr-int/lit8 v9, v6, 0x5

    invoke-static {v2, v9, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    add-int/lit8 v5, v5, 0x20

    goto :goto_75

    .line 732
    :cond_6d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Data table overflow"

    invoke-direct {v0, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_75
    :goto_75
    nop

    .end local v8    # "value":I
    add-int/lit16 v6, v6, 0x400

    .line 745
    goto :goto_37

    .line 747
    :cond_79
    add-int/lit8 v6, v6, 0x20

    goto :goto_37

    .line 759
    .end local v6    # "c":I
    :cond_7c
    const v6, 0x8800

    if-ge v5, v6, :cond_91

    .line 764
    add-int/lit16 v6, v5, -0x800

    const/16 v8, 0x800

    const/16 v9, 0x820

    invoke-static {v2, v8, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    invoke-static {v1, v4, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    add-int/2addr v5, v0

    .line 770
    iput v5, v7, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    .line 771
    return-void

    .line 760
    :cond_91
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Index table overflow"

    invoke-direct {v0, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    .end local v3    # "block":I
    .end local v5    # "indexLength":I
    .local v8, "block":I
    :cond_99
    move-object v7, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Internal error: Out of memory space"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getDataBlock(I)I
    .registers 8
    .param p1, "ch"    # I

    .line 525
    shr-int/lit8 p1, p1, 0x5

    .line 526
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v0, v0, p1

    .line 527
    .local v0, "indexValue":I
    if-lez v0, :cond_9

    .line 528
    return v0

    .line 532
    :cond_9
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v1

    .line 533
    .local v1, "newBlock":I
    if-gez v1, :cond_11

    .line 535
    const/4 v2, -0x1

    return v2

    .line 537
    :cond_11
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aput v1, v2, p1

    .line 540
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    const/16 v5, 0x80

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    return v1
.end method


# virtual methods
.method public blacklist getValue(I)I
    .registers 6
    .param p1, "ch"    # I

    .line 175
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-nez v0, :cond_1e

    const v0, 0x10ffff

    if-gt p1, v0, :cond_1e

    if-gez p1, :cond_c

    goto :goto_1e

    .line 179
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    .line 180
    .local v0, "block":I
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    and-int/lit8 v3, p1, 0x1f

    add-int/2addr v2, v3

    aget v1, v1, v2

    return v1

    .line 176
    .end local v0    # "block":I
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue(I[Z)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "inBlockZero"    # [Z

    .line 193
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_28

    const v0, 0x10ffff

    if-gt p1, v0, :cond_28

    if-gez p1, :cond_e

    goto :goto_28

    .line 200
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    .line 201
    .local v0, "block":I
    if-eqz p2, :cond_1c

    .line 202
    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    aput-boolean v1, p2, v2

    .line 204
    :cond_1c
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    and-int/lit8 v3, p1, 0x1f

    add-int/2addr v2, v3

    aget v1, v1, v2

    return v1

    .line 194
    .end local v0    # "block":I
    :cond_28
    :goto_28
    if-eqz p2, :cond_2c

    .line 195
    aput-boolean v1, p2, v2

    .line 197
    :cond_2c
    return v2
.end method

.method public blacklist serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I
    .registers 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "reduceTo16Bits"    # Z
    .param p3, "datamanipulate"    # Landroid/icu/impl/TrieBuilder$DataManipulate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    if-eqz p3, :cond_ae

    .line 305
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-nez v0, :cond_13

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 309
    invoke-direct {p0, p3}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 312
    iput-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    .line 317
    :cond_13
    if-eqz p2, :cond_1b

    .line 318
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    add-int/2addr v0, v1

    .local v0, "length":I
    goto :goto_1d

    .line 320
    .end local v0    # "length":I
    :cond_1b
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 322
    .restart local v0    # "length":I
    :goto_1d
    const/high16 v1, 0x40000

    if-ge v0, v1, :cond_a6

    .line 331
    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    .line 332
    .end local v0    # "length":I
    .local v1, "length":I
    if-eqz p2, :cond_2f

    .line 333
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    goto :goto_34

    .line 335
    :cond_2f
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 338
    :goto_34
    if-nez p1, :cond_37

    .line 340
    return v1

    .line 343
    :cond_37
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 344
    .local v0, "dos":Ljava/io/DataOutputStream;
    const v2, 0x54726965

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 346
    const/16 v2, 0x25

    .line 347
    .local v2, "options":I
    if-nez p2, :cond_48

    .line 348
    or-int/lit16 v2, v2, 0x100

    .line 350
    :cond_48
    iget-boolean v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v3, :cond_4e

    .line 351
    or-int/lit16 v2, v2, 0x200

    .line 353
    :cond_4e
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 355
    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 356
    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 359
    if-eqz p2, :cond_85

    .line 361
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5e
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge v3, v4, :cond_71

    .line 362
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v4, v4, v3

    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    add-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x2

    .line 363
    .local v4, "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 361
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 367
    .end local v3    # "i":I
    :cond_71
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_72
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v3, v4, :cond_84

    .line 368
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget v4, v4, v3

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 369
    .restart local v4    # "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 367
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .end local v3    # "i":I
    :cond_84
    goto :goto_a5

    .line 373
    :cond_85
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_86
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge v3, v4, :cond_96

    .line 374
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v4, v4, v3

    ushr-int/lit8 v4, v4, 0x2

    .line 375
    .restart local v4    # "v":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 373
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 379
    .end local v3    # "i":I
    :cond_96
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_97
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v3, v4, :cond_a5

    .line 380
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 384
    .end local v3    # "i":I
    :cond_a5
    :goto_a5
    return v1

    .line 323
    .end local v1    # "length":I
    .end local v2    # "options":I
    .local v0, "length":I
    :cond_a6
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Data length too small"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v0    # "length":I
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;
    .registers 11
    .param p1, "datamanipulate"    # Landroid/icu/impl/TrieBuilder$DataManipulate;
    .param p2, "triedatamanipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    .line 240
    if-eqz p1, :cond_58

    .line 245
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 247
    invoke-direct {p0, v1}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 249
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 252
    iput-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    .line 255
    :cond_13
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/high16 v2, 0x40000

    if-ge v0, v2, :cond_4f

    .line 259
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    new-array v3, v0, [C

    .line 260
    .local v3, "index":[C
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    new-array v4, v0, [I

    .line 263
    .local v4, "data":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge v0, v2, :cond_32

    .line 264
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x2

    int-to-char v2, v2

    aput-char v2, v3, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 267
    .end local v0    # "i":I
    :cond_32
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    const/16 v0, 0x25

    .line 270
    .local v0, "options":I
    or-int/lit16 v0, v0, 0x100

    .line 271
    iget-boolean v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v1, :cond_45

    .line 272
    or-int/lit16 v0, v0, 0x200

    move v6, v0

    goto :goto_46

    .line 271
    :cond_45
    move v6, v0

    .line 274
    .end local v0    # "options":I
    .local v6, "options":I
    :goto_46
    new-instance v2, Landroid/icu/impl/IntTrie;

    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    move-object v7, p2

    .end local p2    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    .local v7, "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/IntTrie;-><init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V

    return-object v2

    .line 256
    .end local v3    # "index":[C
    .end local v4    # "data":[I
    .end local v6    # "options":I
    .end local v7    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    .restart local p2    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    :cond_4f
    move-object v7, p2

    .end local p2    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    .restart local v7    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Data length too small"

    invoke-direct {p2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 241
    .end local v7    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    .restart local p2    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    :cond_58
    move-object v7, p2

    .end local p2    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    .restart local v7    # "triedatamanipulate":Landroid/icu/impl/Trie$DataManipulate;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters can not be null"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist setRange(IIIZ)Z
    .registers 16
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "value"    # I
    .param p4, "overwrite"    # Z

    .line 409
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v6, 0x0

    if-nez v0, :cond_aa

    if-ltz p1, :cond_aa

    const v0, 0x10ffff

    if-gt p1, v0, :cond_aa

    if-ltz p2, :cond_aa

    const/high16 v0, 0x110000

    if-gt p2, v0, :cond_aa

    if-le p1, p2, :cond_16

    goto/16 :goto_aa

    .line 415
    :cond_16
    const/4 v7, 0x1

    if-ne p1, p2, :cond_1a

    .line 416
    return v7

    .line 419
    :cond_1a
    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_42

    .line 421
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    .line 422
    .local v1, "block":I
    if-gez v1, :cond_25

    .line 423
    return v6

    .line 426
    :cond_25
    add-int/lit8 v0, p1, 0x20

    and-int/lit8 v8, v0, -0x20

    .line 427
    .local v8, "nextStart":I
    if-gt v8, p2, :cond_37

    .line 428
    and-int/lit8 v2, p1, 0x1f

    const/16 v3, 0x20

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    .line 430
    move p1, v8

    goto :goto_42

    .line 433
    :cond_37
    and-int/lit8 v2, p1, 0x1f

    and-int/lit8 v3, p2, 0x1f

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    .line 435
    return v7

    .line 440
    .end local v1    # "block":I
    .end local v8    # "nextStart":I
    :cond_42
    :goto_42
    and-int/lit8 v8, p2, 0x1f

    .line 443
    .local v8, "rest":I
    and-int/lit8 p2, p2, -0x20

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "repeatBlock":I
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne p3, v2, :cond_4d

    move v9, v1

    goto :goto_4f

    .line 451
    :cond_4d
    const/4 v1, -0x1

    move v9, v1

    .line 453
    .end local v1    # "repeatBlock":I
    .local v9, "repeatBlock":I
    :goto_4f
    if-ge p1, p2, :cond_96

    .line 455
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    .line 456
    .local v1, "block":I
    if-lez v1, :cond_64

    .line 458
    const/4 v2, 0x0

    const/16 v3, 0x20

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    move v10, v1

    .end local v1    # "block":I
    .local v10, "block":I
    goto :goto_92

    .line 460
    .end local v10    # "block":I
    .restart local v1    # "block":I
    :cond_64
    move v10, v1

    .end local v1    # "block":I
    .restart local v10    # "block":I
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    neg-int v2, v10

    aget v1, v1, v2

    if-eq v1, p3, :cond_92

    if-eqz v10, :cond_70

    if-eqz p4, :cond_92

    .line 463
    :cond_70
    if-ltz v9, :cond_7a

    .line 464
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v2, p1, 0x5

    neg-int v3, v9

    aput v3, v1, v2

    goto :goto_92

    .line 468
    :cond_7a
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    .line 469
    .end local v9    # "repeatBlock":I
    .local v1, "repeatBlock":I
    if-gez v1, :cond_81

    .line 470
    return v6

    .line 475
    :cond_81
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    neg-int v5, v1

    aput v5, v2, v3

    .line 476
    const/16 v3, 0x20

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    move v9, v1

    .line 480
    .end local v1    # "repeatBlock":I
    .restart local v9    # "repeatBlock":I
    :cond_92
    :goto_92
    nop

    .end local v10    # "block":I
    add-int/lit8 p1, p1, 0x20

    .line 481
    goto :goto_4f

    .line 483
    :cond_96
    if-lez v8, :cond_a8

    .line 485
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    .line 486
    .local v1, "block":I
    if-gez v1, :cond_9f

    .line 487
    return v6

    .line 489
    :cond_9f
    const/4 v2, 0x0

    move-object v0, p0

    move v4, p3

    move v5, p4

    move v3, v8

    .end local v8    # "rest":I
    .local v3, "rest":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    goto :goto_a9

    .line 483
    .end local v1    # "block":I
    .end local v3    # "rest":I
    .restart local v8    # "rest":I
    :cond_a8
    move v3, v8

    .line 492
    .end local v8    # "rest":I
    .restart local v3    # "rest":I
    :goto_a9
    return v7

    .line 412
    .end local v3    # "rest":I
    .end local v9    # "repeatBlock":I
    :cond_aa
    :goto_aa
    return v6
.end method

.method public blacklist setValue(II)Z
    .registers 6
    .param p1, "ch"    # I
    .param p2, "value"    # I

    .line 218
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const v0, 0x10ffff

    if-gt p1, v0, :cond_1d

    if-gez p1, :cond_d

    goto :goto_1d

    .line 222
    :cond_d
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v0

    .line 223
    .local v0, "block":I
    if-gez v0, :cond_14

    .line 224
    return v1

    .line 227
    :cond_14
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v2, v0

    aput p2, v1, v2

    .line 228
    const/4 v1, 0x1

    return v1

    .line 219
    .end local v0    # "block":I
    :cond_1d
    :goto_1d
    return v1
.end method
