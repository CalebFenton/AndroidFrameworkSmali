.class public Landroid/icu/impl/Trie2Writable;
.super Landroid/icu/impl/Trie2;
.source "Trie2Writable.java"


# static fields
.field private static synthetic -android_icu_impl_Trie2$ValueWidthSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final UNEWTRIE2_DATA_0800_OFFSET:I = 0x880

.field private static final UNEWTRIE2_DATA_NULL_OFFSET:I = 0xc0

.field private static final UNEWTRIE2_DATA_START_OFFSET:I = 0x100

.field private static final UNEWTRIE2_INDEX_2_NULL_OFFSET:I = 0xa60

.field private static final UNEWTRIE2_INDEX_2_START_OFFSET:I = 0xaa0

.field private static final UNEWTRIE2_INITIAL_DATA_LENGTH:I = 0x4000

.field private static final UNEWTRIE2_MEDIUM_DATA_LENGTH:I = 0x20000

.field private static final UTRIE2_MAX_DATA_LENGTH:I = 0x3fffc

.field private static final UTRIE2_MAX_INDEX_LENGTH:I = 0xffff


# instance fields
.field private UTRIE2_DEBUG:Z

.field private data:[I

.field private dataCapacity:I

.field private firstFreeBlock:I

.field private index1:[I

.field private index2:[I

.field private index2Length:I

.field private index2NullOffset:I

.field private isCompacted:Z

.field private map:[I


# direct methods
.method private static synthetic -getandroid_icu_impl_Trie2$ValueWidthSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/Trie2Writable;->-android_icu_impl_Trie2$ValueWidthSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/Trie2Writable;->-android_icu_impl_Trie2$ValueWidthSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->values()[Landroid/icu/impl/Trie2$ValueWidth;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@10
    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    #@19
    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/impl/Trie2Writable;->-android_icu_impl_Trie2$ValueWidthSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/Trie2Writable;

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
    sput-boolean v0, Landroid/icu/impl/Trie2Writable;->-assertionsDisabled:Z

    #@b
    .line 16
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialValueP"    # I
    .param p2, "errorValueP"    # I

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    #@3
    .line 1186
    const/16 v0, 0x220

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@9
    .line 1187
    const v0, 0x8aa0

    #@c
    new-array v0, v0, [I

    #@e
    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@10
    .line 1212
    const v0, 0x8824

    #@13
    new-array v0, v0, [I

    #@15
    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@17
    .line 1215
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@1a
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->init(II)V

    #@1d
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/Trie2;)V
    .locals 4
    .param p1, "source"    # Landroid/icu/impl/Trie2;

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    #@3
    .line 1186
    const/16 v2, 0x220

    #@5
    new-array v2, v2, [I

    #@7
    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@9
    .line 1187
    const v2, 0x8aa0

    #@c
    new-array v2, v2, [I

    #@e
    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@10
    .line 1212
    const v2, 0x8824

    #@13
    new-array v2, v2, [I

    #@15
    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@17
    .line 1215
    const/4 v2, 0x0

    #@18
    iput-boolean v2, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@1a
    .line 144
    iget v2, p1, Landroid/icu/impl/Trie2;->initialValue:I

    #@1c
    iget v3, p1, Landroid/icu/impl/Trie2;->errorValue:I

    #@1e
    invoke-direct {p0, v2, v3}, Landroid/icu/impl/Trie2Writable;->init(II)V

    #@21
    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@31
    .line 147
    .local v0, "r":Landroid/icu/impl/Trie2$Range;
    const/4 v2, 0x1

    #@32
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/Trie2Writable;->setRange(Landroid/icu/impl/Trie2$Range;Z)Landroid/icu/impl/Trie2Writable;

    #@35
    goto :goto_0

    #@36
    .line 143
    .end local v0    # "r":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void
.end method

.method private allocDataBlock(I)I
    .locals 8
    .param p1, "copyBlock"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 203
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 205
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    #@7
    .line 206
    .local v1, "newBlock":I
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@9
    shr-int/lit8 v5, v1, 0x5

    #@b
    aget v4, v4, v5

    #@d
    neg-int v4, v4

    #@e
    iput v4, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    #@10
    .line 235
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@12
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@14
    const/16 v6, 0x20

    #@16
    invoke-static {v4, p1, v5, v1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@19
    .line 236
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@1b
    shr-int/lit8 v5, v1, 0x5

    #@1d
    aput v7, v4, v5

    #@1f
    .line 237
    return v1

    #@20
    .line 209
    .end local v1    # "newBlock":I
    :cond_0
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@22
    .line 210
    .restart local v1    # "newBlock":I
    add-int/lit8 v3, v1, 0x20

    #@24
    .line 211
    .local v3, "newTop":I
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@26
    if-le v3, v4, :cond_1

    #@28
    .line 216
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@2a
    const/high16 v5, 0x20000

    #@2c
    if-ge v4, v5, :cond_2

    #@2e
    .line 217
    const/high16 v0, 0x20000

    #@30
    .line 228
    .local v0, "capacity":I
    :goto_1
    new-array v2, v0, [I

    #@32
    .line 229
    .local v2, "newData":[I
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@34
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@36
    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@39
    .line 230
    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@3b
    .line 231
    iput v0, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@3d
    .line 233
    .end local v0    # "capacity":I
    .end local v2    # "newData":[I
    :cond_1
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@3f
    goto :goto_0

    #@40
    .line 218
    :cond_2
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@42
    const v5, 0x110480

    #@45
    if-ge v4, v5, :cond_3

    #@47
    .line 219
    const v0, 0x110480

    #@4a
    .restart local v0    # "capacity":I
    goto :goto_1

    #@4b
    .line 226
    .end local v0    # "capacity":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    #@4d
    const-string/jumbo v5, "Internal error in Trie2 creation."

    #@50
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4
.end method

.method private allocIndex2Block()I
    .locals 6

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@2
    .line 170
    .local v0, "newBlock":I
    add-int/lit8 v1, v0, 0x40

    #@4
    .line 171
    .local v1, "newTop":I
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@6
    array-length v2, v2

    #@7
    if-le v1, v2, :cond_0

    #@9
    .line 172
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v3, "Internal error in Trie2 creation."

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 179
    :cond_0
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@14
    .line 180
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@16
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@18
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@1a
    const/16 v5, 0x40

    #@1c
    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@1f
    .line 181
    return v0
.end method

.method private compactData()V
    .locals 17

    #@0
    .prologue
    .line 743
    const/16 v7, 0xc0

    #@2
    .line 744
    .local v7, "newStart":I
    const/4 v10, 0x0

    #@3
    .local v10, "start":I
    const/4 v3, 0x0

    #@4
    .line 743
    .local v3, "i":I
    :goto_0
    const/16 v12, 0xc0

    #@6
    .line 744
    if-ge v10, v12, :cond_0

    #@8
    .line 745
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@c
    aput v10, v12, v3

    #@e
    .line 744
    add-int/lit8 v10, v10, 0x20

    #@10
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 752
    :cond_0
    const/16 v2, 0x40

    #@15
    .line 753
    .local v2, "blockLength":I
    const/4 v1, 0x2

    #@16
    .line 743
    .local v1, "blockCount":I
    const/16 v10, 0xc0

    #@18
    .line 754
    :goto_1
    move-object/from16 v0, p0

    #@1a
    iget v12, v0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@1c
    if-ge v10, v12, :cond_c

    #@1e
    .line 760
    const/16 v12, 0x880

    #@20
    if-ne v10, v12, :cond_1

    #@22
    .line 761
    const/16 v2, 0x20

    #@24
    .line 762
    const/4 v1, 0x1

    #@25
    .line 766
    :cond_1
    move-object/from16 v0, p0

    #@27
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@29
    shr-int/lit8 v13, v10, 0x5

    #@2b
    aget v12, v12, v13

    #@2d
    if-gtz v12, :cond_2

    #@2f
    .line 768
    add-int/2addr v10, v2

    #@30
    .line 771
    goto :goto_1

    #@31
    .line 775
    :cond_2
    move-object/from16 v0, p0

    #@33
    invoke-direct {v0, v7, v10, v2}, Landroid/icu/impl/Trie2Writable;->findSameDataBlock(III)I

    #@36
    move-result v6

    #@37
    .line 776
    .local v6, "movedStart":I
    if-ltz v6, :cond_4

    #@39
    .line 778
    move v3, v1

    #@3a
    shr-int/lit8 v4, v10, 0x5

    #@3c
    .local v4, "mapIndex":I
    move v5, v4

    #@3d
    .end local v4    # "mapIndex":I
    .local v5, "mapIndex":I
    :goto_2
    if-lez v3, :cond_3

    #@3f
    .line 779
    move-object/from16 v0, p0

    #@41
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@43
    add-int/lit8 v4, v5, 0x1

    #@45
    .end local v5    # "mapIndex":I
    .restart local v4    # "mapIndex":I
    aput v6, v12, v5

    #@47
    .line 780
    add-int/lit8 v6, v6, 0x20

    #@49
    .line 778
    add-int/lit8 v3, v3, -0x1

    #@4b
    move v5, v4

    #@4c
    .end local v4    # "mapIndex":I
    .restart local v5    # "mapIndex":I
    goto :goto_2

    #@4d
    .line 784
    :cond_3
    add-int/2addr v10, v2

    #@4e
    .line 787
    goto :goto_1

    #@4f
    .line 792
    .end local v5    # "mapIndex":I
    :cond_4
    add-int/lit8 v9, v2, -0x4

    #@51
    .line 793
    .local v9, "overlap":I
    :goto_3
    if-lez v9, :cond_5

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@57
    sub-int v13, v7, v9

    #@59
    move-object/from16 v0, p0

    #@5b
    invoke-direct {v0, v12, v13, v10, v9}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    #@5e
    move-result v12

    #@5f
    if-eqz v12, :cond_7

    #@61
    .line 796
    :cond_5
    if-gtz v9, :cond_6

    #@63
    if-ge v7, v10, :cond_a

    #@65
    .line 798
    :cond_6
    sub-int v6, v7, v9

    #@67
    .line 799
    move v3, v1

    #@68
    shr-int/lit8 v4, v10, 0x5

    #@6a
    .restart local v4    # "mapIndex":I
    move v5, v4

    #@6b
    .end local v4    # "mapIndex":I
    .restart local v5    # "mapIndex":I
    :goto_4
    if-lez v3, :cond_8

    #@6d
    .line 800
    move-object/from16 v0, p0

    #@6f
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@71
    add-int/lit8 v4, v5, 0x1

    #@73
    .end local v5    # "mapIndex":I
    .restart local v4    # "mapIndex":I
    aput v6, v12, v5

    #@75
    .line 801
    add-int/lit8 v6, v6, 0x20

    #@77
    .line 799
    add-int/lit8 v3, v3, -0x1

    #@79
    move v5, v4

    #@7a
    .end local v4    # "mapIndex":I
    .restart local v5    # "mapIndex":I
    goto :goto_4

    #@7b
    .line 794
    .end local v5    # "mapIndex":I
    :cond_7
    add-int/lit8 v9, v9, -0x4

    #@7d
    goto :goto_3

    #@7e
    .line 805
    .restart local v5    # "mapIndex":I
    :cond_8
    add-int/2addr v10, v9

    #@7f
    .line 806
    sub-int v3, v2, v9

    #@81
    move v8, v7

    #@82
    .end local v7    # "newStart":I
    .local v8, "newStart":I
    move v11, v10

    #@83
    .end local v10    # "start":I
    .local v11, "start":I
    :goto_5
    if-lez v3, :cond_9

    #@85
    .line 807
    move-object/from16 v0, p0

    #@87
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@89
    add-int/lit8 v7, v8, 0x1

    #@8b
    .end local v8    # "newStart":I
    .restart local v7    # "newStart":I
    move-object/from16 v0, p0

    #@8d
    iget-object v13, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@8f
    add-int/lit8 v10, v11, 0x1

    #@91
    .end local v11    # "start":I
    .restart local v10    # "start":I
    aget v13, v13, v11

    #@93
    aput v13, v12, v8

    #@95
    .line 806
    add-int/lit8 v3, v3, -0x1

    #@97
    move v8, v7

    #@98
    .end local v7    # "newStart":I
    .restart local v8    # "newStart":I
    move v11, v10

    #@99
    .end local v10    # "start":I
    .restart local v11    # "start":I
    goto :goto_5

    #@9a
    :cond_9
    move v7, v8

    #@9b
    .end local v8    # "newStart":I
    .restart local v7    # "newStart":I
    move v10, v11

    #@9c
    .line 796
    .end local v11    # "start":I
    .restart local v10    # "start":I
    goto/16 :goto_1

    #@9e
    .line 810
    .end local v5    # "mapIndex":I
    :cond_a
    move v3, v1

    #@9f
    shr-int/lit8 v4, v10, 0x5

    #@a1
    .restart local v4    # "mapIndex":I
    move v5, v4

    #@a2
    .end local v4    # "mapIndex":I
    .restart local v5    # "mapIndex":I
    :goto_6
    if-lez v3, :cond_b

    #@a4
    .line 811
    move-object/from16 v0, p0

    #@a6
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@a8
    add-int/lit8 v4, v5, 0x1

    #@aa
    .end local v5    # "mapIndex":I
    .restart local v4    # "mapIndex":I
    aput v10, v12, v5

    #@ac
    .line 812
    add-int/lit8 v10, v10, 0x20

    #@ae
    .line 810
    add-int/lit8 v3, v3, -0x1

    #@b0
    move v5, v4

    #@b1
    .end local v4    # "mapIndex":I
    .restart local v5    # "mapIndex":I
    goto :goto_6

    #@b2
    .line 814
    :cond_b
    move v7, v10

    #@b3
    goto/16 :goto_1

    #@b5
    .line 819
    .end local v5    # "mapIndex":I
    .end local v6    # "movedStart":I
    .end local v9    # "overlap":I
    :cond_c
    const/4 v3, 0x0

    #@b6
    :goto_7
    move-object/from16 v0, p0

    #@b8
    iget v12, v0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@ba
    if-ge v3, v12, :cond_e

    #@bc
    .line 820
    const/16 v12, 0x820

    #@be
    if-ne v3, v12, :cond_d

    #@c0
    .line 822
    add-int/lit16 v3, v3, 0x240

    #@c2
    .line 824
    :cond_d
    move-object/from16 v0, p0

    #@c4
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v13, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-object v14, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@ce
    aget v14, v14, v3

    #@d0
    shr-int/lit8 v14, v14, 0x5

    #@d2
    aget v13, v13, v14

    #@d4
    aput v13, v12, v3

    #@d6
    .line 819
    add-int/lit8 v3, v3, 0x1

    #@d8
    goto :goto_7

    #@d9
    .line 826
    :cond_e
    move-object/from16 v0, p0

    #@db
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@dd
    move-object/from16 v0, p0

    #@df
    iget v13, v0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@e1
    shr-int/lit8 v13, v13, 0x5

    #@e3
    aget v12, v12, v13

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput v12, v0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@e9
    move v8, v7

    #@ea
    .line 829
    .end local v7    # "newStart":I
    .restart local v8    # "newStart":I
    :goto_8
    and-int/lit8 v12, v8, 0x3

    #@ec
    if-eqz v12, :cond_f

    #@ee
    .line 830
    move-object/from16 v0, p0

    #@f0
    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@f2
    add-int/lit8 v7, v8, 0x1

    #@f4
    .end local v8    # "newStart":I
    .restart local v7    # "newStart":I
    move-object/from16 v0, p0

    #@f6
    iget v13, v0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@f8
    aput v13, v12, v8

    #@fa
    move v8, v7

    #@fb
    .end local v7    # "newStart":I
    .restart local v8    # "newStart":I
    goto :goto_8

    #@fc
    .line 833
    :cond_f
    move-object/from16 v0, p0

    #@fe
    iget-boolean v12, v0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@100
    if-eqz v12, :cond_10

    #@102
    .line 835
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@104
    const-string/jumbo v13, "compacting UTrie2: count of 32-bit data words %d->%d\n"

    #@107
    const/4 v14, 0x2

    #@108
    new-array v14, v14, [Ljava/lang/Object;

    #@10a
    .line 836
    move-object/from16 v0, p0

    #@10c
    iget v15, v0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@10e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@111
    move-result-object v15

    #@112
    const/16 v16, 0x0

    #@114
    aput-object v15, v14, v16

    #@116
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@119
    move-result-object v15

    #@11a
    const/16 v16, 0x1

    #@11c
    aput-object v15, v14, v16

    #@11e
    .line 835
    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@121
    .line 839
    :cond_10
    move-object/from16 v0, p0

    #@123
    iput v8, v0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@125
    .line 737
    return-void
.end method

.method private compactIndex2()V
    .locals 12

    #@0
    .prologue
    const/16 v8, 0x820

    #@2
    const/4 v11, 0x0

    #@3
    .line 847
    const/4 v5, 0x0

    #@4
    .local v5, "start":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    #@7
    .line 848
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@9
    aput v5, v7, v0

    #@b
    .line 847
    add-int/lit8 v5, v5, 0x40

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 852
    :cond_0
    iget v7, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@12
    const/high16 v8, 0x10000

    #@14
    sub-int/2addr v7, v8

    #@15
    shr-int/lit8 v7, v7, 0xb

    #@17
    add-int/lit8 v7, v7, 0x20

    #@19
    add-int/lit16 v2, v7, 0x820

    #@1b
    .line 854
    .local v2, "newStart":I
    const/16 v5, 0xa60

    #@1d
    :goto_1
    iget v7, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@1f
    if-ge v5, v7, :cond_7

    #@21
    .line 862
    invoke-direct {p0, v2, v5}, Landroid/icu/impl/Trie2Writable;->findSameIndex2Block(II)I

    #@24
    move-result v1

    #@25
    .local v1, "movedStart":I
    if-ltz v1, :cond_1

    #@27
    .line 866
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@29
    shr-int/lit8 v8, v5, 0x6

    #@2b
    aput v1, v7, v8

    #@2d
    .line 869
    add-int/lit8 v5, v5, 0x40

    #@2f
    .line 872
    goto :goto_1

    #@30
    .line 877
    :cond_1
    const/16 v4, 0x3f

    #@32
    .line 878
    .local v4, "overlap":I
    :goto_2
    if-lez v4, :cond_2

    #@34
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@36
    sub-int v8, v2, v4

    #@38
    invoke-direct {p0, v7, v8, v5, v4}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_4

    #@3e
    .line 881
    :cond_2
    if-gtz v4, :cond_3

    #@40
    if-ge v2, v5, :cond_6

    #@42
    .line 883
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@44
    shr-int/lit8 v8, v5, 0x6

    #@46
    sub-int v9, v2, v4

    #@48
    aput v9, v7, v8

    #@4a
    .line 886
    add-int/2addr v5, v4

    #@4b
    .line 887
    rsub-int/lit8 v0, v4, 0x40

    #@4d
    move v3, v2

    #@4e
    .end local v2    # "newStart":I
    .local v3, "newStart":I
    move v6, v5

    #@4f
    .end local v5    # "start":I
    .local v6, "start":I
    :goto_3
    if-lez v0, :cond_5

    #@51
    .line 888
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@53
    add-int/lit8 v2, v3, 0x1

    #@55
    .end local v3    # "newStart":I
    .restart local v2    # "newStart":I
    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@57
    add-int/lit8 v5, v6, 0x1

    #@59
    .end local v6    # "start":I
    .restart local v5    # "start":I
    aget v8, v8, v6

    #@5b
    aput v8, v7, v3

    #@5d
    .line 887
    add-int/lit8 v0, v0, -0x1

    #@5f
    move v3, v2

    #@60
    .end local v2    # "newStart":I
    .restart local v3    # "newStart":I
    move v6, v5

    #@61
    .end local v5    # "start":I
    .restart local v6    # "start":I
    goto :goto_3

    #@62
    .line 879
    .end local v3    # "newStart":I
    .end local v6    # "start":I
    .restart local v2    # "newStart":I
    .restart local v5    # "start":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@64
    goto :goto_2

    #@65
    .end local v2    # "newStart":I
    .end local v5    # "start":I
    .restart local v3    # "newStart":I
    .restart local v6    # "start":I
    :cond_5
    move v2, v3

    #@66
    .end local v3    # "newStart":I
    .restart local v2    # "newStart":I
    move v5, v6

    #@67
    .line 881
    .end local v6    # "start":I
    .restart local v5    # "start":I
    goto :goto_1

    #@68
    .line 891
    :cond_6
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@6a
    shr-int/lit8 v8, v5, 0x6

    #@6c
    aput v5, v7, v8

    #@6e
    .line 892
    add-int/lit8 v5, v5, 0x40

    #@70
    .line 893
    move v2, v5

    #@71
    goto :goto_1

    #@72
    .line 898
    .end local v1    # "movedStart":I
    .end local v4    # "overlap":I
    :cond_7
    const/4 v0, 0x0

    #@73
    :goto_4
    const/16 v7, 0x220

    #@75
    if-ge v0, v7, :cond_8

    #@77
    .line 899
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@79
    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@7b
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@7d
    aget v9, v9, v0

    #@7f
    shr-int/lit8 v9, v9, 0x6

    #@81
    aget v8, v8, v9

    #@83
    aput v8, v7, v0

    #@85
    .line 898
    add-int/lit8 v0, v0, 0x1

    #@87
    goto :goto_4

    #@88
    .line 901
    :cond_8
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@8a
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@8c
    shr-int/lit8 v8, v8, 0x6

    #@8e
    aget v7, v7, v8

    #@90
    iput v7, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@92
    move v3, v2

    #@93
    .line 909
    .end local v2    # "newStart":I
    .restart local v3    # "newStart":I
    :goto_5
    and-int/lit8 v7, v3, 0x3

    #@95
    if-eqz v7, :cond_9

    #@97
    .line 911
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@99
    add-int/lit8 v2, v3, 0x1

    #@9b
    .end local v3    # "newStart":I
    .restart local v2    # "newStart":I
    const v8, 0x3fffc

    #@9e
    aput v8, v7, v3

    #@a0
    move v3, v2

    #@a1
    .end local v2    # "newStart":I
    .restart local v3    # "newStart":I
    goto :goto_5

    #@a2
    .line 914
    :cond_9
    iget-boolean v7, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@a4
    if-eqz v7, :cond_a

    #@a6
    .line 916
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a8
    const-string/jumbo v8, "compacting UTrie2: count of 16-bit index-2 words %d->%d\n"

    #@ab
    const/4 v9, 0x2

    #@ac
    new-array v9, v9, [Ljava/lang/Object;

    #@ae
    .line 917
    iget v10, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@b0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v10

    #@b4
    aput-object v10, v9, v11

    #@b6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b9
    move-result-object v10

    #@ba
    const/4 v11, 0x1

    #@bb
    aput-object v10, v9, v11

    #@bd
    .line 916
    invoke-virtual {v7, v8, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@c0
    .line 920
    :cond_a
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@c2
    .line 842
    return-void
.end method

.method private compactTrie()V
    .locals 12

    #@0
    .prologue
    const/high16 v11, 0x10000

    #@2
    const/4 v10, 0x3

    #@3
    const/4 v9, 0x2

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v7, 0x1

    #@6
    .line 929
    const v3, 0x10ffff

    #@9
    invoke-virtual {p0, v3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@c
    move-result v0

    #@d
    .line 930
    .local v0, "highValue":I
    invoke-direct {p0, v0}, Landroid/icu/impl/Trie2Writable;->findHighStart(I)I

    #@10
    move-result v1

    #@11
    .line 931
    .local v1, "localHighStart":I
    add-int/lit16 v3, v1, 0x7ff

    #@13
    and-int/lit16 v1, v3, -0x800

    #@15
    .line 932
    const/high16 v3, 0x110000

    #@17
    if-ne v1, v3, :cond_0

    #@19
    .line 933
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@1b
    .line 940
    :cond_0
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@1d
    .line 942
    iget-boolean v3, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 943
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@23
    const-string/jumbo v4, "UTrie2: highStart U+%04x  highValue 0x%x  initialValue 0x%x\n"

    #@26
    new-array v5, v10, [Ljava/lang/Object;

    #@28
    .line 944
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@2a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v6

    #@2e
    aput-object v6, v5, v8

    #@30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v6

    #@34
    aput-object v6, v5, v7

    #@36
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v6

    #@3c
    aput-object v6, v5, v9

    #@3e
    .line 943
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@41
    .line 947
    :cond_1
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@43
    const/high16 v4, 0x110000

    #@45
    if-ge v3, v4, :cond_2

    #@47
    .line 949
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@49
    if-gt v3, v11, :cond_4

    #@4b
    const/high16 v2, 0x10000

    #@4d
    .line 950
    .local v2, "suppHighStart":I
    :goto_0
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@4f
    const v4, 0x10ffff

    #@52
    invoke-virtual {p0, v2, v4, v3, v7}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@55
    .line 953
    .end local v2    # "suppHighStart":I
    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactData()V

    #@58
    .line 954
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@5a
    if-le v3, v11, :cond_5

    #@5c
    .line 955
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactIndex2()V

    #@5f
    .line 968
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@61
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@63
    add-int/lit8 v5, v4, 0x1

    #@65
    iput v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@67
    aput v0, v3, v4

    #@69
    .line 969
    :goto_2
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@6b
    and-int/lit8 v3, v3, 0x3

    #@6d
    if-eqz v3, :cond_6

    #@6f
    .line 970
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@71
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@73
    add-int/lit8 v5, v4, 0x1

    #@75
    iput v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@77
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@79
    aput v5, v3, v4

    #@7b
    goto :goto_2

    #@7c
    .line 949
    :cond_4
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@7e
    .restart local v2    # "suppHighStart":I
    goto :goto_0

    #@7f
    .line 957
    .end local v2    # "suppHighStart":I
    :cond_5
    iget-boolean v3, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@81
    if-eqz v3, :cond_3

    #@83
    .line 958
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@85
    const-string/jumbo v4, "UTrie2: highStart U+%04x  count of 16-bit index-2 words %d->%d\n"

    #@88
    new-array v5, v10, [Ljava/lang/Object;

    #@8a
    .line 959
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@8c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v6

    #@90
    aput-object v6, v5, v8

    #@92
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@97
    move-result-object v6

    #@98
    aput-object v6, v5, v7

    #@9a
    const/16 v6, 0x840

    #@9c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9f
    move-result-object v6

    #@a0
    aput-object v6, v5, v9

    #@a2
    .line 958
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@a5
    goto :goto_1

    #@a6
    .line 973
    :cond_6
    iput-boolean v7, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@a8
    .line 923
    return-void
.end method

.method private equal_int([IIII)Z
    .locals 3
    .param p1, "a"    # [I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 616
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    #@3
    .line 617
    add-int v1, p2, v0

    #@5
    aget v1, p1, v1

    #@7
    add-int v2, p3, v0

    #@9
    aget v2, p1, v2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 618
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 621
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method private fillBlock(IIIIIZ)V
    .locals 3
    .param p1, "block"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I
    .param p5, "initialValue"    # I
    .param p6, "overwrite"    # Z

    #@0
    .prologue
    .line 363
    add-int v1, p1, p3

    #@2
    .line 364
    .local v1, "pLimit":I
    if-eqz p6, :cond_0

    #@4
    .line 365
    add-int v0, p1, p2

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@8
    .line 366
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@a
    aput p4, v2, v0

    #@c
    .line 365
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 369
    .end local v0    # "i":I
    :cond_0
    add-int v0, p1, p2

    #@11
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@13
    .line 370
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@15
    aget v2, v2, v0

    #@17
    if-ne v2, p5, :cond_1

    #@19
    .line 371
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@1b
    aput p4, v2, v0

    #@1d
    .line 369
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 361
    :cond_2
    return-void
.end method

.method private findHighStart(I)I
    .locals 12
    .param p1, "highValue"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 666
    iget v9, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@3
    if-ne p1, v9, :cond_1

    #@5
    .line 667
    iget v7, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@7
    .line 668
    .local v7, "prevI2Block":I
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@9
    .line 676
    .local v6, "prevBlock":I
    :goto_0
    const/16 v2, 0x220

    #@b
    .line 673
    .local v2, "i1":I
    const/high16 v1, 0x110000

    #@d
    .line 678
    .local v1, "c":I
    :cond_0
    :goto_1
    if-lez v1, :cond_a

    #@f
    .line 679
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    aget v4, v9, v2

    #@15
    .line 680
    .local v4, "i2Block":I
    if-ne v4, v7, :cond_2

    #@17
    .line 682
    add-int/lit16 v1, v1, -0x800

    #@19
    .line 683
    goto :goto_1

    #@1a
    .line 670
    .end local v1    # "c":I
    .end local v2    # "i1":I
    .end local v4    # "i2Block":I
    .end local v6    # "prevBlock":I
    .end local v7    # "prevI2Block":I
    :cond_1
    const/4 v7, -0x1

    #@1b
    .line 671
    .restart local v7    # "prevI2Block":I
    const/4 v6, -0x1

    #@1c
    .restart local v6    # "prevBlock":I
    goto :goto_0

    #@1d
    .line 685
    .restart local v1    # "c":I
    .restart local v2    # "i1":I
    .restart local v4    # "i2Block":I
    :cond_2
    move v7, v4

    #@1e
    .line 686
    iget v9, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@20
    if-ne v4, v9, :cond_4

    #@22
    .line 688
    iget v9, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@24
    if-eq p1, v9, :cond_3

    #@26
    .line 689
    return v1

    #@27
    .line 691
    :cond_3
    add-int/lit16 v1, v1, -0x800

    #@29
    goto :goto_1

    #@2a
    .line 694
    :cond_4
    const/16 v3, 0x40

    #@2c
    .local v3, "i2":I
    :cond_5
    :goto_2
    if-lez v3, :cond_0

    #@2e
    .line 695
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@30
    add-int/lit8 v3, v3, -0x1

    #@32
    add-int v10, v4, v3

    #@34
    aget v0, v9, v10

    #@36
    .line 696
    .local v0, "block":I
    if-ne v0, v6, :cond_6

    #@38
    .line 698
    add-int/lit8 v1, v1, -0x20

    #@3a
    .line 699
    goto :goto_2

    #@3b
    .line 701
    :cond_6
    move v6, v0

    #@3c
    .line 702
    iget v9, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@3e
    if-ne v0, v9, :cond_8

    #@40
    .line 704
    iget v9, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@42
    if-eq p1, v9, :cond_7

    #@44
    .line 705
    return v1

    #@45
    .line 707
    :cond_7
    add-int/lit8 v1, v1, -0x20

    #@47
    goto :goto_2

    #@48
    .line 709
    :cond_8
    const/16 v5, 0x20

    #@4a
    .local v5, "j":I
    :goto_3
    if-lez v5, :cond_5

    #@4c
    .line 710
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@4e
    add-int/lit8 v5, v5, -0x1

    #@50
    add-int v10, v0, v5

    #@52
    aget v8, v9, v10

    #@54
    .line 711
    .local v8, "value":I
    if-eq v8, p1, :cond_9

    #@56
    .line 712
    return v1

    #@57
    .line 714
    :cond_9
    add-int/lit8 v1, v1, -0x1

    #@59
    goto :goto_3

    #@5a
    .line 722
    .end local v0    # "block":I
    .end local v3    # "i2":I
    .end local v4    # "i2Block":I
    .end local v5    # "j":I
    .end local v8    # "value":I
    :cond_a
    return v11
.end method

.method private findSameDataBlock(III)I
    .locals 2
    .param p1, "dataLength"    # I
    .param p2, "otherBlock"    # I
    .param p3, "blockLength"    # I

    #@0
    .prologue
    .line 644
    sub-int/2addr p1, p3

    #@1
    .line 646
    const/4 v0, 0x0

    #@2
    .local v0, "block":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@4
    .line 647
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@6
    invoke-direct {p0, v1, v0, p2, p3}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 648
    return v0

    #@d
    .line 646
    :cond_0
    add-int/lit8 v0, v0, 0x4

    #@f
    goto :goto_0

    #@10
    .line 651
    :cond_1
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method private findSameIndex2Block(II)I
    .locals 3
    .param p1, "index2Length"    # I
    .param p2, "otherBlock"    # I

    #@0
    .prologue
    .line 629
    add-int/lit8 p1, p1, -0x40

    #@2
    .line 631
    const/4 v0, 0x0

    #@3
    .local v0, "block":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@5
    .line 632
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@7
    const/16 v2, 0x40

    #@9
    invoke-direct {p0, v1, v0, p2, v2}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 633
    return v0

    #@10
    .line 631
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 636
    :cond_1
    const/4 v1, -0x1

    #@14
    return v1
.end method

.method private freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V
    .locals 11
    .param p1, "dest"    # Landroid/icu/impl/Trie2;
    .param p2, "valueBits"    # Landroid/icu/impl/Trie2$ValueWidth;

    #@0
    .prologue
    .line 1023
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 1024
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactTrie()V

    #@7
    .line 1027
    :cond_0
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@9
    const/high16 v9, 0x10000

    #@b
    if-gt v8, v9, :cond_2

    #@d
    .line 1028
    const/16 v0, 0x840

    #@f
    .line 1032
    .local v0, "allIndexesLength":I
    :goto_0
    sget-object v8, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@11
    if-ne p2, v8, :cond_3

    #@13
    .line 1033
    move v1, v0

    #@14
    .line 1040
    .local v1, "dataMove":I
    :goto_1
    const v8, 0xffff

    #@17
    if-gt v0, v8, :cond_1

    #@19
    .line 1042
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@1b
    add-int/2addr v8, v1

    #@1c
    const v9, 0xffff

    #@1f
    if-le v8, v9, :cond_4

    #@21
    .line 1047
    :cond_1
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@23
    const-string/jumbo v9, "Trie2 data is too large."

    #@26
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@29
    throw v8

    #@2a
    .line 1030
    .end local v0    # "allIndexesLength":I
    .end local v1    # "dataMove":I
    :cond_2
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@2c
    .restart local v0    # "allIndexesLength":I
    goto :goto_0

    #@2d
    .line 1035
    :cond_3
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "dataMove":I
    goto :goto_1

    #@2f
    .line 1044
    :cond_4
    add-int/lit16 v8, v1, 0x880

    #@31
    const v9, 0xffff

    #@34
    if-gt v8, v9, :cond_1

    #@36
    .line 1046
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@38
    add-int/2addr v8, v1

    #@39
    const v9, 0x3fffc

    #@3c
    if-gt v8, v9, :cond_1

    #@3e
    .line 1051
    move v7, v0

    #@3f
    .line 1052
    .local v7, "indexLength":I
    sget-object v8, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@41
    if-ne p2, v8, :cond_5

    #@43
    .line 1053
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@45
    add-int/2addr v7, v8

    #@46
    .line 1057
    :goto_2
    new-array v8, v7, [C

    #@48
    iput-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@4a
    .line 1059
    iput v0, p1, Landroid/icu/impl/Trie2;->indexLength:I

    #@4c
    .line 1060
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@4e
    iput v8, p1, Landroid/icu/impl/Trie2;->dataLength:I

    #@50
    .line 1061
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@52
    const/high16 v9, 0x10000

    #@54
    if-gt v8, v9, :cond_6

    #@56
    .line 1062
    const v8, 0xffff

    #@59
    iput v8, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    #@5b
    .line 1066
    :goto_3
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@5d
    iput v8, p1, Landroid/icu/impl/Trie2;->initialValue:I

    #@5f
    .line 1067
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@61
    iput v8, p1, Landroid/icu/impl/Trie2;->errorValue:I

    #@63
    .line 1068
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@65
    iput v8, p1, Landroid/icu/impl/Trie2;->highStart:I

    #@67
    .line 1069
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@69
    add-int/2addr v8, v1

    #@6a
    add-int/lit8 v8, v8, -0x4

    #@6c
    iput v8, p1, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@6e
    .line 1070
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@70
    add-int/2addr v8, v1

    #@71
    iput v8, p1, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@73
    .line 1075
    new-instance v8, Landroid/icu/impl/Trie2$UTrie2Header;

    #@75
    invoke-direct {v8}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    #@78
    iput-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@7a
    .line 1076
    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@7c
    const v9, 0x54726932

    #@7f
    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@81
    .line 1077
    iget-object v9, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@83
    sget-object v8, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@85
    if-ne p2, v8, :cond_7

    #@87
    const/4 v8, 0x0

    #@88
    :goto_4
    iput v8, v9, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@8a
    .line 1078
    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@8c
    iget v9, p1, Landroid/icu/impl/Trie2;->indexLength:I

    #@8e
    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@90
    .line 1079
    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@92
    iget v9, p1, Landroid/icu/impl/Trie2;->dataLength:I

    #@94
    shr-int/lit8 v9, v9, 0x2

    #@96
    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@98
    .line 1080
    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@9a
    iget v9, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    #@9c
    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@9e
    .line 1081
    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@a0
    iget v9, p1, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@a2
    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@a4
    .line 1082
    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@a6
    iget v9, p1, Landroid/icu/impl/Trie2;->highStart:I

    #@a8
    shr-int/lit8 v9, v9, 0xb

    #@aa
    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@ac
    .line 1087
    const/4 v2, 0x0

    #@ad
    .line 1088
    .local v2, "destIdx":I
    const/4 v4, 0x0

    #@ae
    .local v4, "i":I
    move v3, v2

    #@af
    .end local v2    # "destIdx":I
    .local v3, "destIdx":I
    :goto_5
    const/16 v8, 0x820

    #@b1
    if-ge v4, v8, :cond_8

    #@b3
    .line 1089
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@b5
    add-int/lit8 v2, v3, 0x1

    #@b7
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@b9
    aget v9, v9, v4

    #@bb
    add-int/2addr v9, v1

    #@bc
    shr-int/lit8 v9, v9, 0x2

    #@be
    int-to-char v9, v9

    #@bf
    aput-char v9, v8, v3

    #@c1
    .line 1088
    add-int/lit8 v4, v4, 0x1

    #@c3
    move v3, v2

    #@c4
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    goto :goto_5

    #@c5
    .line 1055
    .end local v3    # "destIdx":I
    .end local v4    # "i":I
    :cond_5
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@c7
    new-array v8, v8, [I

    #@c9
    iput-object v8, p1, Landroid/icu/impl/Trie2;->data32:[I

    #@cb
    goto/16 :goto_2

    #@cd
    .line 1064
    :cond_6
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@cf
    add-int/lit8 v8, v8, 0x0

    #@d1
    iput v8, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    #@d3
    goto :goto_3

    #@d4
    .line 1077
    :cond_7
    const/4 v8, 0x1

    #@d5
    goto :goto_4

    #@d6
    .line 1091
    .restart local v3    # "destIdx":I
    .restart local v4    # "i":I
    :cond_8
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@d8
    if-eqz v8, :cond_9

    #@da
    .line 1092
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@dc
    new-instance v9, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v10, "\n\nIndex2 for BMP limit is "

    #@e4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f7
    .line 1096
    :cond_9
    const/4 v4, 0x0

    #@f8
    :goto_6
    const/4 v8, 0x2

    #@f9
    if-ge v4, v8, :cond_a

    #@fb
    .line 1097
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@fd
    add-int/lit8 v2, v3, 0x1

    #@ff
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    add-int/lit16 v9, v1, 0x80

    #@101
    int-to-char v9, v9

    #@102
    aput-char v9, v8, v3

    #@104
    .line 1096
    add-int/lit8 v4, v4, 0x1

    #@106
    move v3, v2

    #@107
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    goto :goto_6

    #@108
    .line 1099
    :cond_a
    :goto_7
    const/16 v8, 0x20

    #@10a
    if-ge v4, v8, :cond_b

    #@10c
    .line 1100
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@10e
    add-int/lit8 v2, v3, 0x1

    #@110
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@112
    shl-int/lit8 v10, v4, 0x1

    #@114
    aget v9, v9, v10

    #@116
    add-int/2addr v9, v1

    #@117
    int-to-char v9, v9

    #@118
    aput-char v9, v8, v3

    #@11a
    .line 1099
    add-int/lit8 v4, v4, 0x1

    #@11c
    move v3, v2

    #@11d
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    goto :goto_7

    #@11e
    .line 1102
    :cond_b
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@120
    if-eqz v8, :cond_c

    #@122
    .line 1103
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@124
    new-instance v9, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v10, "Index2 for UTF-8 2byte values limit is "

    #@12c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v9

    #@130
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@133
    move-result-object v10

    #@134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v9

    #@138
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v9

    #@13c
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13f
    .line 1106
    :cond_c
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@141
    const/high16 v9, 0x10000

    #@143
    if-le v8, v9, :cond_14

    #@145
    .line 1107
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@147
    const/high16 v9, 0x10000

    #@149
    sub-int/2addr v8, v9

    #@14a
    shr-int/lit8 v5, v8, 0xb

    #@14c
    .line 1108
    .local v5, "index1Length":I
    add-int/lit16 v6, v5, 0x840

    #@14e
    .line 1112
    .local v6, "index2Offset":I
    const/4 v4, 0x0

    #@14f
    :goto_8
    if-ge v4, v5, :cond_d

    #@151
    .line 1114
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@153
    add-int/lit8 v2, v3, 0x1

    #@155
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@157
    add-int/lit8 v10, v4, 0x20

    #@159
    aget v9, v9, v10

    #@15b
    add-int/lit8 v9, v9, 0x0

    #@15d
    int-to-char v9, v9

    #@15e
    aput-char v9, v8, v3

    #@160
    .line 1112
    add-int/lit8 v4, v4, 0x1

    #@162
    move v3, v2

    #@163
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    goto :goto_8

    #@164
    .line 1116
    :cond_d
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@166
    if-eqz v8, :cond_e

    #@168
    .line 1117
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16a
    new-instance v9, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string/jumbo v10, "Index 1 for supplementals, limit is "

    #@172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v9

    #@176
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@179
    move-result-object v10

    #@17a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v9

    #@17e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v9

    #@182
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@185
    .line 1124
    :cond_e
    const/4 v4, 0x0

    #@186
    move v2, v3

    #@187
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    :goto_9
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@189
    sub-int/2addr v8, v6

    #@18a
    if-ge v4, v8, :cond_f

    #@18c
    .line 1125
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@18e
    add-int/lit8 v3, v2, 0x1

    #@190
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@192
    add-int v10, v6, v4

    #@194
    aget v9, v9, v10

    #@196
    add-int/2addr v9, v1

    #@197
    shr-int/lit8 v9, v9, 0x2

    #@199
    int-to-char v9, v9

    #@19a
    aput-char v9, v8, v2

    #@19c
    .line 1124
    add-int/lit8 v4, v4, 0x1

    #@19e
    move v2, v3

    #@19f
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    goto :goto_9

    #@1a0
    .line 1127
    :cond_f
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    #@1a2
    if-eqz v8, :cond_10

    #@1a4
    .line 1128
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a6
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v10, "Index 2 for supplementals, limit is "

    #@1ae
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v9

    #@1b2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b5
    move-result-object v10

    #@1b6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v9

    #@1ba
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bd
    move-result-object v9

    #@1be
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c1
    .line 1133
    .end local v5    # "index1Length":I
    .end local v6    # "index2Offset":I
    :cond_10
    :goto_a
    invoke-static {}, Landroid/icu/impl/Trie2Writable;->-getandroid_icu_impl_Trie2$ValueWidthSwitchesValues()[I

    #@1c4
    move-result-object v8

    #@1c5
    invoke-virtual {p2}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@1c8
    move-result v9

    #@1c9
    aget v8, v8, v9

    #@1cb
    packed-switch v8, :pswitch_data_0

    #@1ce
    .line 1016
    :cond_11
    return-void

    #@1cf
    .line 1136
    :pswitch_0
    sget-boolean v8, Landroid/icu/impl/Trie2Writable;->-assertionsDisabled:Z

    #@1d1
    if-nez v8, :cond_13

    #@1d3
    if-ne v2, v1, :cond_12

    #@1d5
    const/4 v8, 0x1

    #@1d6
    :goto_b
    if-nez v8, :cond_13

    #@1d8
    new-instance v8, Ljava/lang/AssertionError;

    #@1da
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@1dd
    throw v8

    #@1de
    :cond_12
    const/4 v8, 0x0

    #@1df
    goto :goto_b

    #@1e0
    .line 1137
    :cond_13
    iput v2, p1, Landroid/icu/impl/Trie2;->data16:I

    #@1e2
    .line 1138
    const/4 v4, 0x0

    #@1e3
    :goto_c
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@1e5
    if-ge v4, v8, :cond_11

    #@1e7
    .line 1139
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    #@1e9
    add-int/lit8 v3, v2, 0x1

    #@1eb
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@1ed
    aget v9, v9, v4

    #@1ef
    int-to-char v9, v9

    #@1f0
    aput-char v9, v8, v2

    #@1f2
    .line 1138
    add-int/lit8 v4, v4, 0x1

    #@1f4
    move v2, v3

    #@1f5
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    goto :goto_c

    #@1f6
    .line 1144
    :pswitch_1
    const/4 v4, 0x0

    #@1f7
    :goto_d
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@1f9
    if-ge v4, v8, :cond_11

    #@1fb
    .line 1145
    iget-object v8, p1, Landroid/icu/impl/Trie2;->data32:[I

    #@1fd
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@1ff
    aget v9, v9, v4

    #@201
    aput v9, v8, v4

    #@203
    .line 1144
    add-int/lit8 v4, v4, 0x1

    #@205
    goto :goto_d

    #@206
    .end local v2    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_14
    move v2, v3

    #@207
    .end local v3    # "destIdx":I
    .restart local v2    # "destIdx":I
    goto :goto_a

    #@208
    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private get(IZ)I
    .locals 5
    .param p1, "c"    # I
    .param p2, "fromLSCP"    # Z

    #@0
    .prologue
    const v4, 0xdc00

    #@3
    const v3, 0xd800

    #@6
    .line 580
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@8
    if-lt p1, v2, :cond_2

    #@a
    if-lt p1, v3, :cond_0

    #@c
    if-lt p1, v4, :cond_1

    #@e
    .line 581
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@10
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@12
    add-int/lit8 v3, v3, -0x4

    #@14
    aget v2, v2, v3

    #@16
    return v2

    #@17
    .line 580
    :cond_1
    if-nez p2, :cond_0

    #@19
    .line 584
    :cond_2
    if-lt p1, v3, :cond_3

    #@1b
    if-ge p1, v4, :cond_3

    #@1d
    if-eqz p2, :cond_3

    #@1f
    .line 586
    shr-int/lit8 v2, p1, 0x5

    #@21
    .line 585
    add-int/lit16 v1, v2, 0x140

    #@23
    .line 591
    .local v1, "i2":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@25
    aget v0, v2, v1

    #@27
    .line 592
    .local v0, "block":I
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@29
    and-int/lit8 v3, p1, 0x1f

    #@2b
    add-int/2addr v3, v0

    #@2c
    aget v2, v2, v3

    #@2e
    return v2

    #@2f
    .line 588
    .end local v0    # "block":I
    .end local v1    # "i2":I
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@31
    shr-int/lit8 v3, p1, 0xb

    #@33
    aget v2, v2, v3

    #@35
    .line 589
    shr-int/lit8 v3, p1, 0x5

    #@37
    and-int/lit8 v3, v3, 0x3f

    #@39
    .line 588
    add-int v1, v2, v3

    #@3b
    .restart local v1    # "i2":I
    goto :goto_0
.end method

.method private getDataBlock(IZ)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    #@3
    move-result v0

    #@4
    .line 274
    .local v0, "i2":I
    shr-int/lit8 v3, p1, 0x5

    #@6
    and-int/lit8 v3, v3, 0x3f

    #@8
    add-int/2addr v0, v3

    #@9
    .line 275
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@b
    aget v2, v3, v0

    #@d
    .line 276
    .local v2, "oldBlock":I
    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 277
    return v2

    #@14
    .line 281
    :cond_0
    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2Writable;->allocDataBlock(I)I

    #@17
    move-result v1

    #@18
    .line 282
    .local v1, "newBlock":I
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    #@1b
    .line 283
    return v1
.end method

.method private getIndex2Block(IZ)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z

    #@0
    .prologue
    .line 187
    const v2, 0xd800

    #@3
    if-lt p1, v2, :cond_0

    #@5
    const v2, 0xdc00

    #@8
    if-ge p1, v2, :cond_0

    #@a
    if-eqz p2, :cond_0

    #@c
    .line 188
    const/16 v2, 0x800

    #@e
    return v2

    #@f
    .line 191
    :cond_0
    shr-int/lit8 v0, p1, 0xb

    #@11
    .line 192
    .local v0, "i1":I
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@13
    aget v1, v2, v0

    #@15
    .line 193
    .local v1, "i2":I
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 194
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->allocIndex2Block()I

    #@1c
    move-result v1

    #@1d
    .line 195
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@1f
    aput v1, v2, v0

    #@21
    .line 197
    :cond_1
    return v1
.end method

.method private init(II)V
    .locals 10
    .param p1, "initialValueP"    # I
    .param p2, "errorValueP"    # I

    #@0
    .prologue
    const/16 v9, 0x80

    #@2
    const/16 v8, 0xa60

    #@4
    const/16 v7, 0x100

    #@6
    const/4 v5, 0x0

    #@7
    const/16 v6, 0xc0

    #@9
    .line 32
    iput p1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@b
    .line 33
    iput p2, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@d
    .line 34
    const/high16 v3, 0x110000

    #@f
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@11
    .line 36
    const/16 v3, 0x4000

    #@13
    new-array v3, v3, [I

    #@15
    iput-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@17
    .line 37
    const/16 v3, 0x4000

    #@19
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@1b
    .line 38
    iput p1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@1d
    .line 39
    iput p2, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@1f
    .line 40
    const/high16 v3, 0x110000

    #@21
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@23
    .line 41
    iput v5, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    #@25
    .line 42
    iput-boolean v5, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@27
    .line 51
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    #@2a
    .line 52
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@2c
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@2e
    aput v4, v3, v0

    #@30
    .line 51
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 54
    :cond_0
    :goto_1
    if-ge v0, v6, :cond_1

    #@35
    .line 55
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@37
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@39
    aput v4, v3, v0

    #@3b
    .line 54
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 57
    :cond_1
    const/16 v0, 0xc0

    #@40
    :goto_2
    if-ge v0, v7, :cond_2

    #@42
    .line 58
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@44
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@46
    aput v4, v3, v0

    #@48
    .line 57
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 60
    :cond_2
    iput v6, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@4d
    .line 61
    iput v7, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@4f
    .line 64
    const/4 v0, 0x0

    #@50
    const/4 v2, 0x0

    #@51
    .local v2, "j":I
    :goto_3
    if-ge v2, v9, :cond_b

    #@53
    .line 65
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@55
    aput v2, v3, v0

    #@57
    .line 66
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@59
    const/4 v4, 0x1

    #@5a
    aput v4, v3, v0

    #@5c
    .line 64
    add-int/lit8 v0, v0, 0x1

    #@5e
    add-int/lit8 v2, v2, 0x20

    #@60
    goto :goto_3

    #@61
    .line 70
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_4
    if-ge v2, v6, :cond_3

    #@63
    .line 71
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@65
    aput v5, v3, v1

    #@67
    .line 70
    add-int/lit8 v0, v1, 0x1

    #@69
    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v2, v2, 0x20

    #@6b
    move v1, v0

    #@6c
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    #@6d
    .line 80
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@6f
    add-int/lit8 v0, v1, 0x1

    #@71
    .line 81
    .end local v1    # "i":I
    .restart local v0    # "i":I
    const v4, 0x881d

    #@74
    .line 80
    aput v4, v3, v1

    #@76
    .line 85
    add-int/lit8 v2, v2, 0x20

    #@78
    .line 86
    :goto_5
    if-ge v2, v7, :cond_4

    #@7a
    .line 87
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@7c
    aput v5, v3, v0

    #@7e
    .line 86
    add-int/lit8 v0, v0, 0x1

    #@80
    add-int/lit8 v2, v2, 0x20

    #@82
    goto :goto_5

    #@83
    .line 94
    :cond_4
    const/4 v0, 0x4

    #@84
    :goto_6
    const/16 v3, 0x820

    #@86
    if-ge v0, v3, :cond_5

    #@88
    .line 95
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@8a
    aput v6, v3, v0

    #@8c
    .line 94
    add-int/lit8 v0, v0, 0x1

    #@8e
    goto :goto_6

    #@8f
    .line 102
    :cond_5
    const/4 v0, 0x0

    #@90
    :goto_7
    const/16 v3, 0x240

    #@92
    if-ge v0, v3, :cond_6

    #@94
    .line 103
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@96
    add-int/lit16 v4, v0, 0x820

    #@98
    const/4 v5, -0x1

    #@99
    aput v5, v3, v4

    #@9b
    .line 102
    add-int/lit8 v0, v0, 0x1

    #@9d
    goto :goto_7

    #@9e
    .line 107
    :cond_6
    const/4 v0, 0x0

    #@9f
    :goto_8
    const/16 v3, 0x40

    #@a1
    if-ge v0, v3, :cond_7

    #@a3
    .line 108
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@a5
    add-int/lit16 v4, v0, 0xa60

    #@a7
    aput v6, v3, v4

    #@a9
    .line 107
    add-int/lit8 v0, v0, 0x1

    #@ab
    goto :goto_8

    #@ac
    .line 110
    :cond_7
    iput v8, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@ae
    .line 111
    const/16 v3, 0xaa0

    #@b0
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@b2
    .line 114
    const/4 v0, 0x0

    #@b3
    const/4 v2, 0x0

    #@b4
    .line 115
    :goto_9
    const/16 v3, 0x20

    #@b6
    .line 114
    if-ge v0, v3, :cond_8

    #@b8
    .line 118
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@ba
    aput v2, v3, v0

    #@bc
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@be
    add-int/lit8 v2, v2, 0x40

    #@c0
    goto :goto_9

    #@c1
    .line 122
    :cond_8
    :goto_a
    const/16 v3, 0x220

    #@c3
    if-ge v0, v3, :cond_9

    #@c5
    .line 123
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@c7
    aput v8, v3, v0

    #@c9
    .line 122
    add-int/lit8 v0, v0, 0x1

    #@cb
    goto :goto_a

    #@cc
    .line 131
    :cond_9
    const/16 v0, 0x80

    #@ce
    :goto_b
    const/16 v3, 0x800

    #@d0
    if-ge v0, v3, :cond_a

    #@d2
    .line 132
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@d4
    invoke-virtual {p0, v0, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@d7
    .line 131
    add-int/lit8 v0, v0, 0x20

    #@d9
    goto :goto_b

    #@da
    .line 31
    :cond_a
    return-void

    #@db
    :cond_b
    move v1, v0

    #@dc
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_4
.end method

.method private isInNullBlock(IZ)Z
    .locals 4
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z

    #@0
    .prologue
    .line 155
    int-to-char v2, p1

    #@1
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 157
    shr-int/lit8 v2, p1, 0x5

    #@b
    .line 156
    add-int/lit16 v1, v2, 0x140

    #@d
    .line 162
    .local v1, "i2":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@f
    aget v0, v2, v1

    #@11
    .line 163
    .local v0, "block":I
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@13
    if-ne v0, v2, :cond_1

    #@15
    const/4 v2, 0x1

    #@16
    :goto_1
    return v2

    #@17
    .line 159
    .end local v0    # "block":I
    .end local v1    # "i2":I
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@19
    shr-int/lit8 v3, p1, 0xb

    #@1b
    aget v2, v2, v3

    #@1d
    .line 160
    shr-int/lit8 v3, p1, 0x5

    #@1f
    and-int/lit8 v3, v3, 0x3f

    #@21
    .line 159
    add-int v1, v2, v3

    #@23
    .restart local v1    # "i2":I
    goto :goto_0

    #@24
    .line 163
    .restart local v0    # "block":I
    :cond_1
    const/4 v2, 0x0

    #@25
    goto :goto_1
.end method

.method private isWritableBlock(I)Z
    .locals 4
    .param p1, "block"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 250
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@4
    if-eq p1, v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@8
    shr-int/lit8 v3, p1, 0x5

    #@a
    aget v2, v2, v3

    #@c
    if-ne v0, v2, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private releaseDataBlock(I)V
    .locals 3
    .param p1, "block"    # I

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@2
    shr-int/lit8 v1, p1, 0x5

    #@4
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    #@6
    neg-int v2, v2

    #@7
    aput v2, v0, v1

    #@9
    .line 245
    iput p1, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    #@b
    .line 242
    return-void
.end method

.method private set(IZI)Landroid/icu/impl/Trie2Writable;
    .locals 3
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z
    .param p3, "value"    # I

    #@0
    .prologue
    .line 302
    iget-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 303
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->uncompact()V

    #@7
    .line 305
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    #@a
    move-result v0

    #@b
    .line 306
    .local v0, "block":I
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@d
    and-int/lit8 v2, p1, 0x1f

    #@f
    add-int/2addr v2, v0

    #@10
    aput p3, v1, v2

    #@12
    .line 307
    return-object p0
.end method

.method private setIndex2Entry(II)V
    .locals 4
    .param p1, "i2"    # I
    .param p2, "block"    # I

    #@0
    .prologue
    .line 255
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@2
    shr-int/lit8 v2, p2, 0x5

    #@4
    aget v3, v1, v2

    #@6
    add-int/lit8 v3, v3, 0x1

    #@8
    aput v3, v1, v2

    #@a
    .line 256
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@c
    aget v0, v1, p1

    #@e
    .line 257
    .local v0, "oldBlock":I
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    #@10
    shr-int/lit8 v2, v0, 0x5

    #@12
    aget v3, v1, v2

    #@14
    add-int/lit8 v3, v3, -0x1

    #@16
    aput v3, v1, v2

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 258
    invoke-direct {p0, v0}, Landroid/icu/impl/Trie2Writable;->releaseDataBlock(I)V

    #@1d
    .line 260
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@1f
    aput p2, v1, p1

    #@21
    .line 253
    return-void
.end method

.method private uncompact()V
    .locals 2

    #@0
    .prologue
    .line 323
    new-instance v0, Landroid/icu/impl/Trie2Writable;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/Trie2Writable;-><init>(Landroid/icu/impl/Trie2;)V

    #@5
    .line 326
    .local v0, "tempTrie":Landroid/icu/impl/Trie2Writable;
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@7
    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    #@9
    .line 327
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@b
    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@d
    .line 328
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@f
    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@11
    .line 329
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@13
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    #@15
    .line 330
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@17
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    #@19
    .line 331
    iget-boolean v1, v0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@1b
    iput-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@1d
    .line 334
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@1f
    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@21
    .line 335
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index:[C

    #@23
    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index:[C

    #@25
    .line 336
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->data16:I

    #@27
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->data16:I

    #@29
    .line 337
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->data32:[I

    #@2b
    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->data32:[I

    #@2d
    .line 338
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->indexLength:I

    #@2f
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->indexLength:I

    #@31
    .line 339
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@33
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    #@35
    .line 340
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@37
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    #@39
    .line 341
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@3b
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@3d
    .line 342
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@3f
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@41
    .line 343
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@43
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    #@45
    .line 344
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->highValueIndex:I

    #@47
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->highValueIndex:I

    #@49
    .line 345
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@4b
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@4d
    .line 322
    return-void
.end method

.method private writeBlock(II)V
    .locals 3
    .param p1, "block"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 350
    add-int/lit8 v1, p1, 0x20

    #@2
    .local v1, "limit":I
    move v0, p1

    #@3
    .line 351
    .end local p1    # "block":I
    .local v0, "block":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@5
    .line 352
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@7
    add-int/lit8 p1, v0, 0x1

    #@9
    .end local v0    # "block":I
    .restart local p1    # "block":I
    aput p2, v2, v0

    #@b
    move v0, p1

    #@c
    .end local p1    # "block":I
    .restart local v0    # "block":I
    goto :goto_0

    #@d
    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 569
    if-ltz p1, :cond_0

    #@2
    const v0, 0x10ffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 570
    :cond_0
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    #@9
    return v0

    #@a
    .line 572
    :cond_1
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Trie2Writable;->get(IZ)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getFromU16SingleLead(C)I
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 610
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Trie2Writable;->get(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public set(II)Landroid/icu/impl/Trie2Writable;
    .locals 2
    .param p1, "c"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 292
    if-ltz p1, :cond_0

    #@3
    const v0, 0x10ffff

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid code point."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 295
    :cond_1
    const/4 v0, 0x1

    #@12
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/Trie2Writable;->set(IZI)Landroid/icu/impl/Trie2Writable;

    #@15
    .line 296
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    #@17
    .line 297
    return-object p0
.end method

.method public setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;
    .locals 1
    .param p1, "codeUnit"    # C
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 555
    iput v0, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    #@3
    .line 556
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/Trie2Writable;->set(IZI)Landroid/icu/impl/Trie2Writable;

    #@6
    .line 557
    return-object p0
.end method

.method public setRange(IIIZ)Landroid/icu/impl/Trie2Writable;
    .locals 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I
    .param p4, "overwrite"    # Z

    #@0
    .prologue
    .line 397
    const v1, 0x10ffff

    #@3
    if-gt p1, v1, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 398
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "Invalid code point range."

    #@c
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 397
    :cond_1
    const v1, 0x10ffff

    #@13
    move/from16 v0, p2

    #@15
    if-gt v0, v1, :cond_0

    #@17
    if-ltz p2, :cond_0

    #@19
    move/from16 v0, p2

    #@1b
    if-gt p1, v0, :cond_0

    #@1d
    .line 400
    if-nez p4, :cond_2

    #@1f
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@21
    move/from16 v0, p3

    #@23
    if-ne v0, v1, :cond_2

    #@25
    .line 401
    return-object p0

    #@26
    .line 403
    :cond_2
    const/4 v1, 0x0

    #@27
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    #@29
    .line 404
    iget-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 405
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->uncompact()V

    #@30
    .line 408
    :cond_3
    add-int/lit8 v9, p2, 0x1

    #@32
    .line 409
    .local v9, "limit":I
    and-int/lit8 v1, p1, 0x1f

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 413
    const/4 v1, 0x1

    #@37
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    #@3a
    move-result v2

    #@3b
    .line 415
    .local v2, "block":I
    add-int/lit8 v1, p1, 0x20

    #@3d
    and-int/lit8 v10, v1, -0x20

    #@3f
    .line 416
    .local v10, "nextStart":I
    if-gt v10, v9, :cond_5

    #@41
    .line 417
    and-int/lit8 v3, p1, 0x1f

    #@43
    .line 418
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@45
    .line 417
    const/16 v4, 0x20

    #@47
    move-object v1, p0

    #@48
    move/from16 v5, p3

    #@4a
    move/from16 v7, p4

    #@4c
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    #@4f
    .line 419
    move p1, v10

    #@50
    .line 428
    .end local v2    # "block":I
    .end local v10    # "nextStart":I
    :cond_4
    and-int/lit8 v12, v9, 0x1f

    #@52
    .line 431
    .local v12, "rest":I
    and-int/lit8 v9, v9, -0x20

    #@54
    .line 434
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@56
    move/from16 v0, p3

    #@58
    if-ne v0, v1, :cond_6

    #@5a
    .line 435
    iget v11, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@5c
    .line 440
    .local v11, "repeatBlock":I
    :goto_0
    if-ge p1, v9, :cond_e

    #@5e
    .line 442
    const/4 v13, 0x0

    #@5f
    .line 444
    .local v13, "setRepeatBlock":Z
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@61
    move/from16 v0, p3

    #@63
    if-ne v0, v1, :cond_7

    #@65
    const/4 v1, 0x1

    #@66
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->isInNullBlock(IZ)Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_7

    #@6c
    .line 445
    add-int/lit8 p1, p1, 0x20

    #@6e
    .line 446
    goto :goto_0

    #@6f
    .line 421
    .end local v11    # "repeatBlock":I
    .end local v12    # "rest":I
    .end local v13    # "setRepeatBlock":Z
    .restart local v2    # "block":I
    .restart local v10    # "nextStart":I
    :cond_5
    and-int/lit8 v3, p1, 0x1f

    #@71
    and-int/lit8 v4, v9, 0x1f

    #@73
    .line 422
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@75
    move-object v1, p0

    #@76
    move/from16 v5, p3

    #@78
    move/from16 v7, p4

    #@7a
    .line 421
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    #@7d
    .line 423
    return-object p0

    #@7e
    .line 437
    .end local v2    # "block":I
    .end local v10    # "nextStart":I
    .restart local v12    # "rest":I
    :cond_6
    const/4 v11, -0x1

    #@7f
    .restart local v11    # "repeatBlock":I
    goto :goto_0

    #@80
    .line 450
    .restart local v13    # "setRepeatBlock":Z
    :cond_7
    const/4 v1, 0x1

    #@81
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    #@84
    move-result v8

    #@85
    .line 451
    .local v8, "i2":I
    shr-int/lit8 v1, p1, 0x5

    #@87
    and-int/lit8 v1, v1, 0x3f

    #@89
    add-int/2addr v8, v1

    #@8a
    .line 452
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    #@8c
    aget v2, v1, v8

    #@8e
    .line 453
    .restart local v2    # "block":I
    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    #@91
    move-result v1

    #@92
    if-eqz v1, :cond_b

    #@94
    .line 455
    if-eqz p4, :cond_a

    #@96
    const/16 v1, 0x880

    #@98
    if-lt v2, v1, :cond_a

    #@9a
    .line 461
    const/4 v13, 0x1

    #@9b
    .line 487
    :cond_8
    :goto_1
    if-eqz v13, :cond_9

    #@9d
    .line 488
    if-ltz v11, :cond_d

    #@9f
    .line 489
    invoke-direct {p0, v8, v11}, Landroid/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    #@a2
    .line 497
    :cond_9
    :goto_2
    add-int/lit8 p1, p1, 0x20

    #@a4
    goto :goto_0

    #@a5
    .line 466
    :cond_a
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@a7
    .line 465
    const/4 v3, 0x0

    #@a8
    const/16 v4, 0x20

    #@aa
    move-object v1, p0

    #@ab
    move/from16 v5, p3

    #@ad
    move/from16 v7, p4

    #@af
    .line 464
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    #@b2
    goto :goto_1

    #@b3
    .line 468
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    #@b5
    aget v1, v1, v2

    #@b7
    move/from16 v0, p3

    #@b9
    if-eq v1, v0, :cond_8

    #@bb
    if-nez p4, :cond_c

    #@bd
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    #@bf
    if-ne v2, v1, :cond_8

    #@c1
    .line 485
    :cond_c
    const/4 v13, 0x1

    #@c2
    goto :goto_1

    #@c3
    .line 492
    :cond_d
    const/4 v1, 0x1

    #@c4
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    #@c7
    move-result v11

    #@c8
    .line 493
    move/from16 v0, p3

    #@ca
    invoke-direct {p0, v11, v0}, Landroid/icu/impl/Trie2Writable;->writeBlock(II)V

    #@cd
    goto :goto_2

    #@ce
    .line 500
    .end local v2    # "block":I
    .end local v8    # "i2":I
    .end local v13    # "setRepeatBlock":Z
    :cond_e
    if-lez v12, :cond_f

    #@d0
    .line 502
    const/4 v1, 0x1

    #@d1
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    #@d4
    move-result v2

    #@d5
    .line 503
    .restart local v2    # "block":I
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@d7
    const/4 v3, 0x0

    #@d8
    move-object v1, p0

    #@d9
    move v4, v12

    #@da
    move/from16 v5, p3

    #@dc
    move/from16 v7, p4

    #@de
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    #@e1
    .line 506
    .end local v2    # "block":I
    :cond_f
    return-object p0
.end method

.method public setRange(Landroid/icu/impl/Trie2$Range;Z)Landroid/icu/impl/Trie2Writable;
    .locals 4
    .param p1, "range"    # Landroid/icu/impl/Trie2$Range;
    .param p2, "overwrite"    # Z

    #@0
    .prologue
    .line 525
    const/4 v1, 0x0

    #@1
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    #@3
    .line 526
    iget-boolean v1, p1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@5
    if-eqz v1, :cond_2

    #@7
    .line 527
    iget v0, p1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@9
    .local v0, "c":I
    :goto_0
    iget v1, p1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@b
    if-gt v0, v1, :cond_3

    #@d
    .line 528
    if-nez p2, :cond_0

    #@f
    int-to-char v1, v0

    #@10
    invoke-virtual {p0, v1}, Landroid/icu/impl/Trie2Writable;->getFromU16SingleLead(C)I

    #@13
    move-result v1

    #@14
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 529
    :cond_0
    int-to-char v1, v0

    #@19
    iget v2, p1, Landroid/icu/impl/Trie2$Range;->value:I

    #@1b
    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    #@1e
    .line 527
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 533
    .end local v0    # "c":I
    :cond_2
    iget v1, p1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@23
    iget v2, p1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@25
    iget v3, p1, Landroid/icu/impl/Trie2$Range;->value:I

    #@27
    invoke-virtual {p0, v1, v2, v3, p2}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@2a
    .line 535
    :cond_3
    return-object p0
.end method

.method public toTrie2_16()Landroid/icu/impl/Trie2_16;
    .locals 2

    #@0
    .prologue
    .line 983
    new-instance v0, Landroid/icu/impl/Trie2_16;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/Trie2_16;-><init>()V

    #@5
    .line 984
    .local v0, "frozenTrie":Landroid/icu/impl/Trie2_16;
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@7
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V

    #@a
    .line 985
    return-object v0
.end method

.method public toTrie2_32()Landroid/icu/impl/Trie2_32;
    .locals 2

    #@0
    .prologue
    .line 994
    new-instance v0, Landroid/icu/impl/Trie2_32;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/Trie2_32;-><init>()V

    #@5
    .line 995
    .local v0, "frozenTrie":Landroid/icu/impl/Trie2_32;
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    #@7
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V

    #@a
    .line 996
    return-object v0
.end method
