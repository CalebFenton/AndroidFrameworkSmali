.class public Landroid/icu/impl/Trie2Writable;
.super Landroid/icu/impl/Trie2;
.source "Trie2Writable.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o UNEWTRIE2_DATA_0800_OFFSET:I = 0x880

.field private static final greylist-max-o UNEWTRIE2_DATA_NULL_OFFSET:I = 0xc0

.field private static final greylist-max-o UNEWTRIE2_DATA_START_OFFSET:I = 0x100

.field private static final greylist-max-o UNEWTRIE2_INDEX_2_NULL_OFFSET:I = 0xa60

.field private static final greylist-max-o UNEWTRIE2_INDEX_2_START_OFFSET:I = 0xaa0

.field private static final greylist-max-o UNEWTRIE2_INITIAL_DATA_LENGTH:I = 0x4000

.field private static final greylist-max-o UNEWTRIE2_MEDIUM_DATA_LENGTH:I = 0x20000

.field private static final greylist-max-o UTRIE2_MAX_DATA_LENGTH:I = 0x3fffc

.field private static final greylist-max-o UTRIE2_MAX_INDEX_LENGTH:I = 0xffff


# instance fields
.field private greylist-max-o UTRIE2_DEBUG:Z

.field private greylist-max-o data:[I

.field private greylist-max-o dataCapacity:I

.field private greylist-max-o firstFreeBlock:I

.field private greylist-max-o index1:[I

.field private greylist-max-o index2:[I

.field private greylist-max-o index2Length:I

.field private greylist-max-o index2NullOffset:I

.field private greylist-max-o isCompacted:Z

.field private greylist-max-o map:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "initialValueP"    # I
    .param p2, "errorValueP"    # I

    .line 29
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    .line 1190
    const/16 v0, 0x220

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    .line 1191
    const v0, 0x8aa0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    .line 1216
    const v0, 0x8824

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->init(II)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/Trie2;)V
    .registers 5
    .param p1, "source"    # Landroid/icu/impl/Trie2;

    .line 147
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    .line 1190
    const/16 v0, 0x220

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    .line 1191
    const v0, 0x8aa0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    .line 1216
    const v0, 0x8824

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    .line 148
    iget v0, p1, Landroid/icu/impl/Trie2;->initialValue:I

    iget v1, p1, Landroid/icu/impl/Trie2;->errorValue:I

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->init(II)V

    .line 150
    invoke-virtual {p1}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    .line 151
    .local v1, "r":Landroid/icu/impl/Trie2$Range;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/Trie2Writable;->setRange(Landroid/icu/impl/Trie2$Range;Z)Landroid/icu/impl/Trie2Writable;

    .line 152
    .end local v1    # "r":Landroid/icu/impl/Trie2$Range;
    goto :goto_25

    .line 153
    :cond_36
    return-void
.end method

.method private greylist-max-o allocDataBlock(I)I
    .registers 9
    .param p1, "copyBlock"    # I

    .line 207
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 209
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 210
    .local v0, "newBlock":I
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v3, v0, 0x5

    aget v2, v2, v3

    neg-int v2, v2

    iput v2, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    goto :goto_44

    .line 213
    .end local v0    # "newBlock":I
    :cond_11
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    .line 214
    .restart local v0    # "newBlock":I
    add-int/lit8 v2, v0, 0x20

    .line 215
    .local v2, "newTop":I
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    if-le v2, v3, :cond_42

    .line 220
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_22

    .line 221
    const/high16 v3, 0x20000

    .local v3, "capacity":I
    goto :goto_2c

    .line 222
    .end local v3    # "capacity":I
    :cond_22
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    const v4, 0x110480

    if-ge v3, v4, :cond_3a

    .line 223
    const v3, 0x110480

    .line 232
    .restart local v3    # "capacity":I
    :goto_2c
    new-array v4, v3, [I

    .line 233
    .local v4, "newData":[I
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v6, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    invoke-static {v5, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    .line 235
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    goto :goto_42

    .line 230
    .end local v3    # "capacity":I
    .end local v4    # "newData":[I
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Internal error in Trie2 creation."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_42
    :goto_42
    iput v2, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    .line 239
    .end local v2    # "newTop":I
    :goto_44
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    const/16 v4, 0x20

    invoke-static {v2, p1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v3, v0, 0x5

    aput v1, v2, v3

    .line 241
    return v0
.end method

.method private greylist-max-o allocIndex2Block()I
    .registers 7

    .line 173
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 174
    .local v0, "newBlock":I
    add-int/lit8 v1, v0, 0x40

    .line 175
    .local v1, "newTop":I
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    array-length v2, v2

    if-gt v1, v2, :cond_17

    .line 183
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 184
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    iget v3, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return v0

    .line 176
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Internal error in Trie2 creation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o compactData()V
    .registers 13

    .line 747
    const/16 v0, 0xc0

    .line 748
    .local v0, "newStart":I
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v1, v0, :cond_f

    .line 749
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v1, v3, v2

    .line 748
    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 756
    :cond_f
    const/16 v3, 0x40

    .line 757
    .local v3, "blockLength":I
    shr-int/lit8 v4, v3, 0x5

    .line 758
    .local v4, "blockCount":I
    move v1, v0

    :cond_14
    :goto_14
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    if-ge v1, v5, :cond_94

    .line 764
    const/16 v5, 0x880

    if-ne v1, v5, :cond_1f

    .line 765
    const/16 v3, 0x20

    .line 766
    const/4 v4, 0x1

    .line 770
    :cond_1f
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v6, v1, 0x5

    aget v5, v5, v6

    if-gtz v5, :cond_29

    .line 772
    add-int/2addr v1, v3

    .line 775
    goto :goto_14

    .line 779
    :cond_29
    invoke-direct {p0, v0, v1, v3}, Landroid/icu/impl/Trie2Writable;->findSameDataBlock(III)I

    move-result v5

    .line 780
    .local v5, "movedStart":I
    if-ltz v5, :cond_42

    .line 782
    move v2, v4

    shr-int/lit8 v6, v1, 0x5

    .local v6, "mapIndex":I
    :goto_32
    if-lez v2, :cond_40

    .line 783
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "mapIndex":I
    .local v8, "mapIndex":I
    aput v5, v7, v6

    .line 784
    add-int/lit8 v5, v5, 0x20

    .line 782
    add-int/lit8 v2, v2, -0x1

    move v6, v8

    goto :goto_32

    .line 788
    .end local v8    # "mapIndex":I
    .restart local v6    # "mapIndex":I
    :cond_40
    add-int/2addr v1, v3

    .line 791
    goto :goto_14

    .line 796
    .end local v6    # "mapIndex":I
    :cond_42
    add-int/lit8 v6, v3, -0x4

    .line 797
    .local v6, "overlap":I
    :goto_44
    if-lez v6, :cond_53

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    sub-int v8, v0, v6

    invoke-direct {p0, v7, v8, v1, v6}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v7

    if-nez v7, :cond_53

    .line 798
    add-int/lit8 v6, v6, -0x4

    goto :goto_44

    .line 800
    :cond_53
    if-gtz v6, :cond_6b

    if-ge v0, v1, :cond_58

    goto :goto_6b

    .line 814
    :cond_58
    move v2, v4

    shr-int/lit8 v7, v1, 0x5

    .local v7, "mapIndex":I
    :goto_5b
    if-lez v2, :cond_69

    .line 815
    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "mapIndex":I
    .local v9, "mapIndex":I
    aput v1, v8, v7

    .line 816
    add-int/lit8 v1, v1, 0x20

    .line 814
    add-int/lit8 v2, v2, -0x1

    move v7, v9

    goto :goto_5b

    .line 818
    .end local v9    # "mapIndex":I
    .restart local v7    # "mapIndex":I
    :cond_69
    move v0, v1

    goto :goto_14

    .line 802
    .end local v7    # "mapIndex":I
    :cond_6b
    :goto_6b
    sub-int v5, v0, v6

    .line 803
    move v2, v4

    shr-int/lit8 v7, v1, 0x5

    .restart local v7    # "mapIndex":I
    :goto_70
    if-lez v2, :cond_7e

    .line 804
    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "mapIndex":I
    .restart local v9    # "mapIndex":I
    aput v5, v8, v7

    .line 805
    add-int/lit8 v5, v5, 0x20

    .line 803
    add-int/lit8 v2, v2, -0x1

    move v7, v9

    goto :goto_70

    .line 809
    .end local v9    # "mapIndex":I
    .restart local v7    # "mapIndex":I
    :cond_7e
    add-int/2addr v1, v6

    .line 810
    sub-int v2, v3, v6

    :goto_81
    if-lez v2, :cond_14

    .line 811
    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "newStart":I
    .local v9, "newStart":I
    iget-object v10, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "start":I
    .local v11, "start":I
    aget v1, v10, v1

    aput v1, v8, v0

    .line 810
    add-int/lit8 v2, v2, -0x1

    move v0, v9

    move v1, v11

    goto :goto_81

    .line 823
    .end local v5    # "movedStart":I
    .end local v6    # "overlap":I
    .end local v7    # "mapIndex":I
    .end local v9    # "newStart":I
    .end local v11    # "start":I
    .restart local v0    # "newStart":I
    .restart local v1    # "start":I
    :cond_94
    const/4 v2, 0x0

    :goto_95
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    if-ge v2, v5, :cond_b0

    .line 824
    const/16 v5, 0x820

    if-ne v2, v5, :cond_9f

    .line 826
    add-int/lit16 v2, v2, 0x240

    .line 828
    :cond_9f
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    iget-object v6, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v7, v7, v2

    shr-int/lit8 v7, v7, 0x5

    aget v6, v6, v7

    aput v6, v5, v2

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 830
    :cond_b0
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    iget v6, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    shr-int/lit8 v6, v6, 0x5

    aget v5, v5, v6

    iput v5, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 833
    :goto_ba
    and-int/lit8 v5, v0, 0x3

    if-eqz v5, :cond_c8

    .line 834
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "newStart":I
    .local v6, "newStart":I
    iget v7, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    aput v7, v5, v0

    move v0, v6

    goto :goto_ba

    .line 837
    .end local v6    # "newStart":I
    .restart local v0    # "newStart":I
    :cond_c8
    iget-boolean v5, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v5, :cond_e1

    .line 839
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v6, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    .line 840
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 839
    const-string v7, "compacting UTrie2: count of 32-bit data words %d->%d%n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 843
    :cond_e1
    iput v0, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    .line 844
    return-void
.end method

.method private greylist-max-o compactIndex2()V
    .registers 10

    .line 850
    const/16 v0, 0x820

    .line 851
    .local v0, "newStart":I
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v1, v0, :cond_f

    .line 852
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v1, v3, v2

    .line 851
    add-int/lit8 v1, v1, 0x40

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 856
    :cond_f
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    const/high16 v4, 0x10000

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0xb

    add-int/lit8 v3, v3, 0x20

    add-int/2addr v0, v3

    .line 858
    const/16 v1, 0xa60

    :cond_1b
    :goto_1b
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    if-ge v1, v3, :cond_6d

    .line 866
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->findSameIndex2Block(II)I

    move-result v3

    move v4, v3

    .local v4, "movedStart":I
    if-ltz v3, :cond_2f

    .line 870
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v5, v1, 0x6

    aput v4, v3, v5

    .line 873
    add-int/lit8 v1, v1, 0x40

    .line 876
    goto :goto_1b

    .line 881
    :cond_2f
    const/16 v3, 0x3f

    .line 882
    .local v3, "overlap":I
    :goto_31
    if-lez v3, :cond_40

    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    sub-int v6, v0, v3

    invoke-direct {p0, v5, v6, v1, v3}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v5

    if-nez v5, :cond_40

    .line 883
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 885
    :cond_40
    if-gtz v3, :cond_4f

    if-ge v0, v1, :cond_45

    goto :goto_4f

    .line 895
    :cond_45
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v6, v1, 0x6

    aput v1, v5, v6

    .line 896
    add-int/lit8 v1, v1, 0x40

    .line 897
    move v0, v1

    goto :goto_1b

    .line 887
    :cond_4f
    :goto_4f
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v3

    aput v7, v5, v6

    .line 890
    add-int/2addr v1, v3

    .line 891
    rsub-int/lit8 v2, v3, 0x40

    :goto_5a
    if-lez v2, :cond_1b

    .line 892
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "newStart":I
    .local v6, "newStart":I
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "start":I
    .local v8, "start":I
    aget v1, v7, v1

    aput v1, v5, v0

    .line 891
    add-int/lit8 v2, v2, -0x1

    move v0, v6

    move v1, v8

    goto :goto_5a

    .line 902
    .end local v3    # "overlap":I
    .end local v4    # "movedStart":I
    .end local v6    # "newStart":I
    .end local v8    # "start":I
    .restart local v0    # "newStart":I
    .restart local v1    # "start":I
    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    const/16 v3, 0x220

    if-ge v2, v3, :cond_83

    .line 903
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aget v5, v5, v2

    shr-int/lit8 v5, v5, 0x6

    aget v4, v4, v5

    aput v4, v3, v2

    .line 902
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 905
    :cond_83
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    shr-int/lit8 v4, v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 913
    :goto_8d
    and-int/lit8 v3, v0, 0x3

    if-eqz v3, :cond_9c

    .line 915
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "newStart":I
    .local v4, "newStart":I
    const v5, 0x3fffc

    aput v5, v3, v0

    move v0, v4

    goto :goto_8d

    .line 918
    .end local v4    # "newStart":I
    .restart local v0    # "newStart":I
    :cond_9c
    iget-boolean v3, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v3, :cond_b5

    .line 920
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 921
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 920
    const-string v5, "compacting UTrie2: count of 16-bit index-2 words %d->%d%n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 924
    :cond_b5
    iput v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 925
    return-void
.end method

.method private greylist-max-o compactTrie()V
    .registers 9

    .line 933
    const v0, 0x10ffff

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    .line 934
    .local v1, "highValue":I
    invoke-direct {p0, v1}, Landroid/icu/impl/Trie2Writable;->findHighStart(I)I

    move-result v2

    .line 935
    .local v2, "localHighStart":I
    add-int/lit16 v3, v2, 0x7ff

    and-int/lit16 v2, v3, -0x800

    .line 936
    const/high16 v3, 0x110000

    if-ne v2, v3, :cond_15

    .line 937
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    .line 944
    :cond_15
    iput v2, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 946
    iget-boolean v4, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v4, :cond_36

    .line 947
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v5, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 948
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 947
    const-string v6, "UTrie2: highStart U+%04x  highValue 0x%x  initialValue 0x%x%n"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 951
    :cond_36
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    const/high16 v5, 0x10000

    const/4 v6, 0x1

    if-ge v4, v3, :cond_4a

    .line 953
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    if-gt v3, v5, :cond_43

    move v3, v5

    goto :goto_45

    :cond_43
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 954
    .local v3, "suppHighStart":I
    :goto_45
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    invoke-virtual {p0, v3, v0, v4, v6}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 957
    .end local v3    # "suppHighStart":I
    :cond_4a
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactData()V

    .line 958
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    if-le v0, v5, :cond_55

    .line 959
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactIndex2()V

    goto :goto_76

    .line 961
    :cond_55
    iget-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v0, :cond_76

    .line 962
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 963
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x840

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 962
    const-string v4, "UTrie2: highStart U+%04x  count of 16-bit index-2 words %d->%d%n"

    invoke-virtual {v0, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 972
    :cond_76
    :goto_76
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    aput v1, v0, v3

    .line 973
    :goto_80
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_93

    .line 974
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    aput v4, v0, v3

    goto :goto_80

    .line 977
    :cond_93
    iput-boolean v6, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    .line 978
    return-void
.end method

.method private greylist-max-o equal_int([IIII)Z
    .registers 8
    .param p1, "a"    # [I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "length"    # I

    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_12

    .line 621
    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p3, v0

    aget v2, p1, v2

    if-eq v1, v2, :cond_f

    .line 622
    const/4 v1, 0x0

    return v1

    .line 620
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    .end local v0    # "i":I
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o fillBlock(IIIIIZ)V
    .registers 10
    .param p1, "block"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I
    .param p5, "initialValue"    # I
    .param p6, "overwrite"    # Z

    .line 367
    add-int v0, p1, p3

    .line 368
    .local v0, "pLimit":I
    if-eqz p6, :cond_f

    .line 369
    add-int v1, p1, p2

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_20

    .line 370
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aput p4, v2, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 373
    .end local v1    # "i":I
    :cond_f
    add-int v1, p1, p2

    .restart local v1    # "i":I
    :goto_11
    if-ge v1, v0, :cond_20

    .line 374
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v2, v2, v1

    if-ne v2, p5, :cond_1d

    .line 375
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aput p4, v2, v1

    .line 373
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 379
    :cond_20
    return-void
.end method

.method private greylist-max-o findHighStart(I)I
    .registers 13
    .param p1, "highValue"    # I

    .line 670
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-ne p1, v0, :cond_9

    .line 671
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 672
    .local v0, "prevI2Block":I
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    .local v1, "prevBlock":I
    goto :goto_b

    .line 674
    .end local v0    # "prevI2Block":I
    .end local v1    # "prevBlock":I
    :cond_9
    const/4 v0, -0x1

    .line 675
    .restart local v0    # "prevI2Block":I
    const/4 v1, -0x1

    .line 677
    .restart local v1    # "prevBlock":I
    :goto_b
    const/high16 v2, 0x110000

    .line 680
    .local v2, "prev":I
    const/16 v3, 0x220

    .line 681
    .local v3, "i1":I
    move v4, v2

    .line 682
    .local v4, "c":I
    :cond_10
    :goto_10
    if-lez v4, :cond_5a

    .line 683
    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v5, v3

    .line 684
    .local v5, "i2Block":I
    if-ne v5, v0, :cond_1d

    .line 686
    add-int/lit16 v4, v4, -0x800

    .line 687
    goto :goto_10

    .line 689
    :cond_1d
    move v0, v5

    .line 690
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    if-ne v5, v6, :cond_2a

    .line 692
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-eq p1, v6, :cond_27

    .line 693
    return v4

    .line 695
    :cond_27
    add-int/lit16 v4, v4, -0x800

    goto :goto_10

    .line 698
    :cond_2a
    const/16 v6, 0x40

    .local v6, "i2":I
    :cond_2c
    :goto_2c
    if-lez v6, :cond_10

    .line 699
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v6, v6, -0x1

    add-int v8, v5, v6

    aget v7, v7, v8

    .line 700
    .local v7, "block":I
    if-ne v7, v1, :cond_3b

    .line 702
    add-int/lit8 v4, v4, -0x20

    .line 703
    goto :goto_2c

    .line 705
    :cond_3b
    move v1, v7

    .line 706
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    if-ne v7, v8, :cond_48

    .line 708
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-eq p1, v8, :cond_45

    .line 709
    return v4

    .line 711
    :cond_45
    add-int/lit8 v4, v4, -0x20

    goto :goto_2c

    .line 713
    :cond_48
    const/16 v8, 0x20

    .local v8, "j":I
    :goto_4a
    if-lez v8, :cond_2c

    .line 714
    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v8, v8, -0x1

    add-int v10, v7, v8

    aget v9, v9, v10

    .line 715
    .local v9, "value":I
    if-eq v9, p1, :cond_57

    .line 716
    return v4

    .line 718
    :cond_57
    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    .line 726
    .end local v5    # "i2Block":I
    .end local v6    # "i2":I
    .end local v7    # "block":I
    .end local v8    # "j":I
    .end local v9    # "value":I
    :cond_5a
    const/4 v5, 0x0

    return v5
.end method

.method private greylist-max-o findSameDataBlock(III)I
    .registers 6
    .param p1, "dataLength"    # I
    .param p2, "otherBlock"    # I
    .param p3, "blockLength"    # I

    .line 648
    sub-int/2addr p1, p3

    .line 650
    const/4 v0, 0x0

    .local v0, "block":I
    :goto_2
    if-gt v0, p1, :cond_10

    .line 651
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 652
    return v0

    .line 650
    :cond_d
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 655
    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method private greylist-max-o findSameIndex2Block(II)I
    .registers 6
    .param p1, "index2Length"    # I
    .param p2, "otherBlock"    # I

    .line 633
    add-int/lit8 p1, p1, -0x40

    .line 635
    const/4 v0, 0x0

    .local v0, "block":I
    :goto_3
    if-gt v0, p1, :cond_13

    .line 636
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    const/16 v2, 0x40

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 637
    return v0

    .line 635
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 640
    :cond_13
    const/4 v1, -0x1

    return v1
.end method

.method private greylist-max-o freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V
    .registers 16
    .param p1, "dest"    # Landroid/icu/impl/Trie2;
    .param p2, "valueBits"    # Landroid/icu/impl/Trie2$ValueWidth;

    .line 1027
    iget-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    if-nez v0, :cond_7

    .line 1028
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactTrie()V

    .line 1031
    :cond_7
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_10

    .line 1032
    const/16 v0, 0x840

    .local v0, "allIndexesLength":I
    goto :goto_12

    .line 1034
    .end local v0    # "allIndexesLength":I
    :cond_10
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 1036
    .restart local v0    # "allIndexesLength":I
    :goto_12
    sget-object v2, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne p2, v2, :cond_18

    .line 1037
    move v2, v0

    .local v2, "dataMove":I
    goto :goto_19

    .line 1039
    .end local v2    # "dataMove":I
    :cond_18
    const/4 v2, 0x0

    .line 1043
    .restart local v2    # "dataMove":I
    :goto_19
    const v3, 0xffff

    if-gt v0, v3, :cond_1d4

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    add-int/2addr v4, v2

    if-gt v4, v3, :cond_1d4

    add-int/lit16 v4, v2, 0x880

    if-gt v4, v3, :cond_1d4

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    add-int/2addr v4, v2

    const v5, 0x3fffc

    if-gt v4, v5, :cond_1d4

    .line 1055
    move v4, v0

    .line 1056
    .local v4, "indexLength":I
    sget-object v5, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne p2, v5, :cond_38

    .line 1057
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    add-int/2addr v4, v5

    goto :goto_3e

    .line 1059
    :cond_38
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    new-array v5, v5, [I

    iput-object v5, p1, Landroid/icu/impl/Trie2;->data32:[I

    .line 1061
    :goto_3e
    new-array v5, v4, [C

    iput-object v5, p1, Landroid/icu/impl/Trie2;->index:[C

    .line 1063
    iput v0, p1, Landroid/icu/impl/Trie2;->indexLength:I

    .line 1064
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    iput v5, p1, Landroid/icu/impl/Trie2;->dataLength:I

    .line 1065
    iget v5, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    const/4 v6, 0x0

    if-gt v5, v1, :cond_50

    .line 1066
    iput v3, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    goto :goto_55

    .line 1068
    :cond_50
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    add-int/2addr v3, v6

    iput v3, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    .line 1070
    :goto_55
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    iput v3, p1, Landroid/icu/impl/Trie2;->initialValue:I

    .line 1071
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    iput v3, p1, Landroid/icu/impl/Trie2;->errorValue:I

    .line 1072
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    iput v3, p1, Landroid/icu/impl/Trie2;->highStart:I

    .line 1073
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x4

    iput v3, p1, Landroid/icu/impl/Trie2;->highValueIndex:I

    .line 1074
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/icu/impl/Trie2;->dataNullOffset:I

    .line 1079
    new-instance v3, Landroid/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v3}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    iput-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    .line 1080
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    const v5, 0x54726932

    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 1081
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    sget-object v5, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne p2, v5, :cond_83

    move v5, v6

    goto :goto_84

    :cond_83
    const/4 v5, 0x1

    :goto_84
    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    .line 1082
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v5, p1, Landroid/icu/impl/Trie2;->indexLength:I

    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    .line 1083
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v5, p1, Landroid/icu/impl/Trie2;->dataLength:I

    const/4 v7, 0x2

    shr-int/2addr v5, v7

    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    .line 1084
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v5, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    .line 1085
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v5, p1, Landroid/icu/impl/Trie2;->dataNullOffset:I

    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    .line 1086
    iget-object v3, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v5, p1, Landroid/icu/impl/Trie2;->highStart:I

    shr-int/lit8 v5, v5, 0xb

    iput v5, v3, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    .line 1091
    const/4 v3, 0x0

    .line 1092
    .local v3, "destIdx":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_aa
    const/16 v8, 0x820

    if-ge v5, v8, :cond_bf

    .line 1093
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "destIdx":I
    .local v9, "destIdx":I
    iget-object v10, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v10, v10, v5

    add-int/2addr v10, v2

    shr-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v8, v3

    .line 1092
    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_aa

    .line 1095
    .end local v9    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_bf
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v8, :cond_df

    .line 1096
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\nIndex2 for BMP limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1100
    :cond_df
    const/4 v5, 0x0

    :goto_e0
    if-ge v5, v7, :cond_ef

    .line 1101
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "destIdx":I
    .restart local v9    # "destIdx":I
    add-int/lit16 v10, v2, 0x80

    int-to-char v10, v10

    aput-char v10, v8, v3

    .line 1100
    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_e0

    .line 1103
    .end local v9    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_ef
    :goto_ef
    const/16 v8, 0x20

    if-ge v5, v8, :cond_105

    .line 1104
    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "destIdx":I
    .restart local v9    # "destIdx":I
    iget-object v10, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    shl-int/lit8 v11, v5, 0x1

    aget v10, v10, v11

    add-int/2addr v10, v2

    int-to-char v10, v10

    aput-char v10, v8, v3

    .line 1103
    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_ef

    .line 1106
    .end local v9    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_105
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v8, :cond_125

    .line 1107
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Index2 for UTF-8 2byte values limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    :cond_125
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    if-le v8, v1, :cond_19e

    .line 1111
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    sub-int/2addr v8, v1

    shr-int/lit8 v1, v8, 0xb

    .line 1112
    .local v1, "index1Length":I
    add-int/lit16 v8, v1, 0x840

    .line 1116
    .local v8, "index2Offset":I
    const/4 v5, 0x0

    :goto_131
    if-ge v5, v1, :cond_145

    .line 1118
    iget-object v9, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "destIdx":I
    .local v10, "destIdx":I
    iget-object v11, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    add-int/lit8 v12, v5, 0x20

    aget v11, v11, v12

    add-int/2addr v11, v6

    int-to-char v11, v11

    aput-char v11, v9, v3

    .line 1116
    add-int/lit8 v5, v5, 0x1

    move v3, v10

    goto :goto_131

    .line 1120
    .end local v10    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_145
    iget-boolean v6, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v6, :cond_165

    .line 1121
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Index 1 for supplementals, limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1128
    :cond_165
    const/4 v5, 0x0

    :goto_166
    iget v6, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_17e

    .line 1129
    iget-object v6, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "destIdx":I
    .restart local v9    # "destIdx":I
    iget-object v10, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int v11, v8, v5

    aget v10, v10, v11

    add-int/2addr v10, v2

    shr-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v6, v3

    .line 1128
    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_166

    .line 1131
    .end local v9    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_17e
    iget-boolean v6, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v6, :cond_19e

    .line 1132
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index 2 for supplementals, limit is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1137
    .end local v1    # "index1Length":I
    .end local v8    # "index2Offset":I
    :cond_19e
    sget-object v1, Landroid/icu/impl/Trie2Writable$1;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    invoke-virtual {p2}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_1dc

    goto :goto_1d3

    .line 1148
    :pswitch_1aa
    const/4 v1, 0x0

    move v5, v1

    :goto_1ac
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    if-ge v5, v1, :cond_1d3

    .line 1149
    iget-object v1, p1, Landroid/icu/impl/Trie2;->data32:[I

    iget-object v6, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v6, v6, v5

    aput v6, v1, v5

    .line 1148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ac

    .line 1140
    :pswitch_1bb
    nop

    .line 1141
    iput v3, p1, Landroid/icu/impl/Trie2;->data16:I

    .line 1142
    const/4 v1, 0x0

    move v5, v1

    :goto_1c0
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    if-ge v5, v1, :cond_1d3

    .line 1143
    iget-object v1, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "destIdx":I
    .local v6, "destIdx":I
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v7, v7, v5

    int-to-char v7, v7

    aput-char v7, v1, v3

    .line 1142
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1c0

    .line 1154
    .end local v6    # "destIdx":I
    .restart local v3    # "destIdx":I
    :cond_1d3
    :goto_1d3
    return-void

    .line 1051
    .end local v3    # "destIdx":I
    .end local v4    # "indexLength":I
    .end local v5    # "i":I
    :cond_1d4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Trie2 data is too large."

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_1bb
        :pswitch_1aa
    .end packed-switch
.end method

.method private greylist-max-o get(IZ)I
    .registers 7
    .param p1, "c"    # I
    .param p2, "fromLSCP"    # Z

    .line 584
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    const v1, 0xdc00

    const v2, 0xd800

    if-lt p1, v0, :cond_19

    if-lt p1, v2, :cond_10

    if-ge p1, v1, :cond_10

    if-eqz p2, :cond_19

    .line 585
    :cond_10
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v1, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    add-int/lit8 v1, v1, -0x4

    aget v0, v0, v1

    return v0

    .line 588
    :cond_19
    if-lt p1, v2, :cond_24

    if-ge p1, v1, :cond_24

    if-eqz p2, :cond_24

    .line 589
    shr-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, 0x140

    .local v0, "i2":I
    goto :goto_2f

    .line 592
    .end local v0    # "i2":I
    :cond_24
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    shr-int/lit8 v1, p1, 0xb

    aget v0, v0, v1

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 595
    .restart local v0    # "i2":I
    :goto_2f
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v1, v1, v0

    .line 596
    .local v1, "block":I
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    and-int/lit8 v3, p1, 0x1f

    add-int/2addr v3, v1

    aget v2, v2, v3

    return v2
.end method

.method private greylist-max-o getDataBlock(IZ)I
    .registers 6
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    move-result v0

    .line 278
    .local v0, "i2":I
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 279
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v1, v1, v0

    .line 280
    .local v1, "oldBlock":I
    invoke-direct {p0, v1}, Landroid/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 281
    return v1

    .line 285
    :cond_14
    invoke-direct {p0, v1}, Landroid/icu/impl/Trie2Writable;->allocDataBlock(I)I

    move-result v2

    .line 286
    .local v2, "newBlock":I
    invoke-direct {p0, v0, v2}, Landroid/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    .line 287
    return v2
.end method

.method private greylist-max-o getIndex2Block(IZ)I
    .registers 6
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z

    .line 191
    const v0, 0xd800

    if-lt p1, v0, :cond_f

    const v0, 0xdc00

    if-ge p1, v0, :cond_f

    if-eqz p2, :cond_f

    .line 192
    const/16 v0, 0x800

    return v0

    .line 195
    :cond_f
    shr-int/lit8 v0, p1, 0xb

    .line 196
    .local v0, "i1":I
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aget v1, v1, v0

    .line 197
    .local v1, "i2":I
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    if-ne v1, v2, :cond_21

    .line 198
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->allocIndex2Block()I

    move-result v1

    .line 199
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aput v1, v2, v0

    .line 201
    :cond_21
    return v1
.end method

.method private greylist-max-o init(II)V
    .registers 11
    .param p1, "initialValueP"    # I
    .param p2, "errorValueP"    # I

    .line 36
    iput p1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    .line 37
    iput p2, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    .line 38
    const/high16 v0, 0x110000

    iput v0, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 40
    const/16 v1, 0x4000

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    .line 41
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    .line 42
    iput p1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    .line 43
    iput p2, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    .line 44
    iput v0, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 46
    iput-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    const/16 v2, 0x80

    if-ge v1, v2, :cond_29

    .line 56
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v3, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    aput v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 58
    :cond_29
    :goto_29
    const/16 v3, 0xc0

    if-ge v1, v3, :cond_36

    .line 59
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    aput v4, v3, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 61
    :cond_36
    const/16 v1, 0xc0

    :goto_38
    const/16 v4, 0x100

    if-ge v1, v4, :cond_45

    .line 62
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v5, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    aput v5, v4, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 64
    :cond_45
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 65
    iput v4, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    .line 68
    const/4 v1, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4b
    if-ge v5, v2, :cond_5b

    .line 69
    iget-object v6, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aput v5, v6, v1

    .line 70
    iget-object v6, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    const/4 v7, 0x1

    aput v7, v6, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x20

    goto :goto_4b

    .line 74
    :cond_5b
    :goto_5b
    if-ge v5, v3, :cond_66

    .line 75
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v0, v2, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x20

    goto :goto_5b

    .line 84
    :cond_66
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    const v7, 0x881d

    aput v7, v2, v1

    .line 89
    const/16 v1, 0x20

    add-int/2addr v5, v1

    .line 90
    :goto_72
    if-ge v5, v4, :cond_7d

    .line 91
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v0, v2, v6

    .line 90
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x20

    goto :goto_72

    .line 98
    :cond_7d
    const/4 v0, 0x4

    .end local v6    # "i":I
    .local v0, "i":I
    :goto_7e
    const/16 v2, 0x820

    if-ge v0, v2, :cond_89

    .line 99
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aput v3, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 106
    :cond_89
    const/4 v0, 0x0

    :goto_8a
    const/16 v2, 0x240

    if-ge v0, v2, :cond_98

    .line 107
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit16 v4, v0, 0x820

    const/4 v6, -0x1

    aput v6, v2, v4

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 111
    :cond_98
    const/4 v0, 0x0

    :goto_99
    const/16 v2, 0x40

    if-ge v0, v2, :cond_a6

    .line 112
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit16 v4, v0, 0xa60

    aput v3, v2, v4

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 114
    :cond_a6
    const/16 v2, 0xa60

    iput v2, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 115
    const/16 v3, 0xaa0

    iput v3, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 118
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 119
    .end local v5    # "j":I
    .local v3, "j":I
    :goto_b0
    if-ge v0, v1, :cond_bb

    .line 122
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aput v3, v4, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x40

    goto :goto_b0

    .line 126
    :cond_bb
    :goto_bb
    const/16 v1, 0x220

    if-ge v0, v1, :cond_c6

    .line 127
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aput v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 135
    :cond_c6
    const/16 v0, 0x80

    :goto_c8
    const/16 v1, 0x800

    if-ge v0, v1, :cond_d4

    .line 136
    iget v1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 135
    add-int/lit8 v0, v0, 0x20

    goto :goto_c8

    .line 139
    :cond_d4
    return-void
.end method

.method private greylist-max-o isInNullBlock(IZ)Z
    .registers 6
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z

    .line 159
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 160
    shr-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, 0x140

    .local v0, "i2":I
    goto :goto_19

    .line 163
    .end local v0    # "i2":I
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    shr-int/lit8 v1, p1, 0xb

    aget v0, v0, v1

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 166
    .restart local v0    # "i2":I
    :goto_19
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v1, v1, v0

    .line 167
    .local v1, "block":I
    iget v2, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    if-ne v1, v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    return v2
.end method

.method private greylist-max-o isWritableBlock(I)Z
    .registers 4
    .param p1, "block"    # I

    .line 254
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private greylist-max-o releaseDataBlock(I)V
    .registers 5
    .param p1, "block"    # I

    .line 248
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v1, p1, 0x5

    iget v2, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    neg-int v2, v2

    aput v2, v0, v1

    .line 249
    iput p1, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    .line 250
    return-void
.end method

.method private greylist-max-o set(IZI)Landroid/icu/impl/Trie2Writable;
    .registers 7
    .param p1, "c"    # I
    .param p2, "forLSCP"    # Z
    .param p3, "value"    # I

    .line 306
    iget-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    if-eqz v0, :cond_7

    .line 307
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->uncompact()V

    .line 309
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v0

    .line 310
    .local v0, "block":I
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v2, v0

    aput p3, v1, v2

    .line 311
    return-object p0
.end method

.method private greylist-max-o setIndex2Entry(II)V
    .registers 7
    .param p1, "i2"    # I
    .param p2, "block"    # I

    .line 259
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v1, p2, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 260
    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v0, v0, p1

    .line 261
    .local v0, "oldBlock":I
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, v0, 0x5

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    if-nez v3, :cond_1d

    .line 262
    invoke-direct {p0, v0}, Landroid/icu/impl/Trie2Writable;->releaseDataBlock(I)V

    .line 264
    :cond_1d
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aput p2, v1, p1

    .line 265
    return-void
.end method

.method private greylist-max-o uncompact()V
    .registers 3

    .line 327
    new-instance v0, Landroid/icu/impl/Trie2Writable;

    invoke-direct {v0, p0}, Landroid/icu/impl/Trie2Writable;-><init>(Landroid/icu/impl/Trie2;)V

    .line 330
    .local v0, "tempTrie":Landroid/icu/impl/Trie2Writable;
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index1:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    .line 331
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    .line 332
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    .line 333
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    .line 334
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    .line 335
    iget-boolean v1, v0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    iput-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    .line 338
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    .line 339
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index:[C

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index:[C

    .line 340
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->data16:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->data16:I

    .line 341
    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->data32:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->data32:[I

    .line 342
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->indexLength:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->indexLength:I

    .line 343
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataLength:I

    .line 344
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    .line 345
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    .line 346
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    .line 347
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->highStart:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->highStart:I

    .line 348
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->highValueIndex:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->highValueIndex:I

    .line 349
    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    .line 350
    return-void
.end method

.method private greylist-max-o writeBlock(II)V
    .registers 6
    .param p1, "block"    # I
    .param p2, "value"    # I

    .line 354
    add-int/lit8 v0, p1, 0x20

    .line 355
    .local v0, "limit":I
    :goto_2
    if-ge p1, v0, :cond_c

    .line 356
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "block":I
    .local v2, "block":I
    aput p2, v1, p1

    move p1, v2

    goto :goto_2

    .line 358
    .end local v2    # "block":I
    .restart local p1    # "block":I
    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist get(I)I
    .registers 3
    .param p1, "codePoint"    # I

    .line 573
    if-ltz p1, :cond_e

    const v0, 0x10ffff

    if-le p1, v0, :cond_8

    goto :goto_e

    .line 576
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Trie2Writable;->get(IZ)I

    move-result v0

    return v0

    .line 574
    :cond_e
    :goto_e
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->errorValue:I

    return v0
.end method

.method public blacklist getFromU16SingleLead(C)I
    .registers 3
    .param p1, "c"    # C

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Trie2Writable;->get(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist set(II)Landroid/icu/impl/Trie2Writable;
    .registers 5
    .param p1, "c"    # I
    .param p2, "value"    # I

    .line 296
    if-ltz p1, :cond_f

    const v0, 0x10ffff

    if-gt p1, v0, :cond_f

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/Trie2Writable;->set(IZI)Landroid/icu/impl/Trie2Writable;

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    .line 301
    return-object p0

    .line 297
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid code point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;
    .registers 4
    .param p1, "codeUnit"    # C
    .param p2, "value"    # I

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    .line 560
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/Trie2Writable;->set(IZI)Landroid/icu/impl/Trie2Writable;

    .line 561
    return-object p0
.end method

.method public blacklist setRange(IIIZ)Landroid/icu/impl/Trie2Writable;
    .registers 20
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I
    .param p4, "overwrite"    # Z

    .line 401
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v6, p3

    const v2, 0x10ffff

    if-gt v0, v2, :cond_ce

    if-ltz v0, :cond_ce

    if-gt v1, v2, :cond_ce

    if-ltz v1, :cond_ce

    if-gt v0, v1, :cond_ce

    .line 404
    if-nez p4, :cond_1a

    iget v2, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-ne v6, v2, :cond_1a

    .line 405
    return-object p0

    .line 407
    :cond_1a
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    .line 408
    iget-boolean v2, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    if-eqz v2, :cond_24

    .line 409
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->uncompact()V

    .line 412
    :cond_24
    add-int/lit8 v9, v1, 0x1

    .line 413
    .local v9, "limit":I
    and-int/lit8 v2, v0, 0x1f

    const/4 v10, 0x1

    if-eqz v2, :cond_54

    .line 417
    invoke-direct {p0, v0, v10}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v3

    .line 419
    .local v3, "block":I
    add-int/lit8 v2, v0, 0x20

    and-int/lit8 v11, v2, -0x20

    .line 420
    .local v11, "nextStart":I
    if-gt v11, v9, :cond_45

    .line 421
    and-int/lit8 v4, v0, 0x1f

    const/16 v5, 0x20

    iget v7, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    move-object v2, p0

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    .line 423
    move v0, v11

    move/from16 v6, p3

    .end local p1    # "start":I
    .local v0, "start":I
    goto :goto_54

    .line 425
    .end local v0    # "start":I
    .restart local p1    # "start":I
    :cond_45
    and-int/lit8 v4, v0, 0x1f

    and-int/lit8 v5, v9, 0x1f

    iget v7, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    move-object v2, p0

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    .line 427
    return-object p0

    .line 432
    .end local v3    # "block":I
    .end local v11    # "nextStart":I
    .end local p1    # "start":I
    .restart local v0    # "start":I
    :cond_54
    :goto_54
    and-int/lit8 v11, v9, 0x1f

    .line 435
    .local v11, "rest":I
    and-int/lit8 v9, v9, -0x20

    .line 438
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-ne v6, v3, :cond_60

    .line 439
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    move v12, v3

    .local v3, "repeatBlock":I
    goto :goto_62

    .line 441
    .end local v3    # "repeatBlock":I
    :cond_60
    const/4 v3, -0x1

    move v12, v3

    .line 444
    .local v12, "repeatBlock":I
    :goto_62
    if-ge v0, v9, :cond_bb

    .line 446
    const/4 v13, 0x0

    .line 448
    .local v13, "setRepeatBlock":Z
    iget v3, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-ne v6, v3, :cond_72

    invoke-direct {p0, v0, v10}, Landroid/icu/impl/Trie2Writable;->isInNullBlock(IZ)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 449
    add-int/lit8 v0, v0, 0x20

    .line 450
    goto :goto_62

    .line 454
    :cond_72
    invoke-direct {p0, v0, v10}, Landroid/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    move-result v3

    .line 455
    .local v3, "i2":I
    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x3f

    add-int v14, v3, v4

    .line 456
    .end local v3    # "i2":I
    .local v14, "i2":I
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v3, v3, v14

    .line 457
    .local v3, "block":I
    invoke-direct {p0, v3}, Landroid/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 459
    if-eqz p4, :cond_8e

    const/16 v4, 0x880

    if-lt v3, v4, :cond_8e

    .line 465
    const/4 v13, 0x1

    goto :goto_a7

    .line 468
    :cond_8e
    const/16 v5, 0x20

    iget v7, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    goto :goto_a7

    .line 472
    :cond_9a
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_a7

    if-nez p4, :cond_a6

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataNullOffset:I

    if-ne v3, v4, :cond_a7

    .line 489
    :cond_a6
    const/4 v13, 0x1

    .line 491
    :cond_a7
    :goto_a7
    if-eqz v13, :cond_b7

    .line 492
    if-ltz v12, :cond_af

    .line 493
    invoke-direct {p0, v14, v12}, Landroid/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    goto :goto_b7

    .line 496
    :cond_af
    invoke-direct {p0, v0, v10}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v4

    .line 497
    .end local v12    # "repeatBlock":I
    .local v4, "repeatBlock":I
    invoke-direct {p0, v4, v6}, Landroid/icu/impl/Trie2Writable;->writeBlock(II)V

    move v12, v4

    .line 501
    .end local v4    # "repeatBlock":I
    .restart local v12    # "repeatBlock":I
    :cond_b7
    :goto_b7
    nop

    .end local v13    # "setRepeatBlock":Z
    .end local v14    # "i2":I
    add-int/lit8 v0, v0, 0x20

    .line 502
    goto :goto_62

    .line 504
    .end local v3    # "block":I
    :cond_bb
    if-lez v11, :cond_cc

    .line 506
    invoke-direct {p0, v0, v10}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v3

    .line 507
    .restart local v3    # "block":I
    const/4 v4, 0x0

    iget v7, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    move-object v2, p0

    move/from16 v8, p4

    move v5, v11

    .end local v11    # "rest":I
    .local v5, "rest":I
    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    goto :goto_cd

    .line 504
    .end local v3    # "block":I
    .end local v5    # "rest":I
    .restart local v11    # "rest":I
    :cond_cc
    move v5, v11

    .line 510
    .end local v11    # "rest":I
    .restart local v5    # "rest":I
    :goto_cd
    return-object p0

    .line 402
    .end local v0    # "start":I
    .end local v5    # "rest":I
    .end local v9    # "limit":I
    .end local v12    # "repeatBlock":I
    .restart local p1    # "start":I
    :cond_ce
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid code point range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist setRange(Landroid/icu/impl/Trie2$Range;Z)Landroid/icu/impl/Trie2Writable;
    .registers 6
    .param p1, "range"    # Landroid/icu/impl/Trie2$Range;
    .param p2, "overwrite"    # Z

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Trie2Writable;->fHash:I

    .line 530
    iget-boolean v0, p1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v0, :cond_22

    .line 531
    iget v0, p1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    .local v0, "c":I
    :goto_9
    iget v1, p1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v0, v1, :cond_21

    .line 532
    if-nez p2, :cond_18

    int-to-char v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/impl/Trie2Writable;->getFromU16SingleLead(C)I

    move-result v1

    iget v2, p0, Landroid/icu/impl/Trie2Writable;->initialValue:I

    if-ne v1, v2, :cond_1e

    .line 533
    :cond_18
    int-to-char v1, v0

    iget v2, p1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    .line 531
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "c":I
    :cond_21
    goto :goto_2b

    .line 537
    :cond_22
    iget v0, p1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v1, p1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v2, p1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 539
    :goto_2b
    return-object p0
.end method

.method public blacklist toTrie2_16()Landroid/icu/impl/Trie2_16;
    .registers 3

    .line 987
    new-instance v0, Landroid/icu/impl/Trie2_16;

    invoke-direct {v0}, Landroid/icu/impl/Trie2_16;-><init>()V

    .line 988
    .local v0, "frozenTrie":Landroid/icu/impl/Trie2_16;
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V

    .line 989
    return-object v0
.end method

.method public blacklist toTrie2_32()Landroid/icu/impl/Trie2_32;
    .registers 3

    .line 998
    new-instance v0, Landroid/icu/impl/Trie2_32;

    invoke-direct {v0}, Landroid/icu/impl/Trie2_32;-><init>()V

    .line 999
    .local v0, "frozenTrie":Landroid/icu/impl/Trie2_32;
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V

    .line 1000
    return-object v0
.end method
