.class public Landroid/icu/impl/PropsVectors;
.super Ljava/lang/Object;
.source "PropsVectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/PropsVectors$CompactHandler;,
        Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;,
        Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field public static final ERROR_VALUE_CP:I = 0x110001

.field public static final FIRST_SPECIAL_CP:I = 0x110000

.field public static final INITIAL_ROWS:I = 0x1000

.field public static final INITIAL_VALUE_CP:I = 0x110000

.field public static final MAX_CP:I = 0x110001

.field public static final MAX_ROWS:I = 0x110002

.field public static final MEDIUM_ROWS:I = 0x10000


# instance fields
.field private columns:I

.field private isCompacted:Z

.field private maxRows:I

.field private prevRow:I

.field private rows:I

.field private v:[I


# direct methods
.method static synthetic -get0(Landroid/icu/impl/PropsVectors;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/icu/impl/PropsVectors;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@2
    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "numOfColumns"    # I

    #@0
    .prologue
    const/16 v5, 0x1000

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 145
    if-ge p1, v4, :cond_0

    #@9
    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "numOfColumns need to be no less than 1; but it is "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 149
    :cond_0
    add-int/lit8 v2, p1, 0x2

    #@25
    iput v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@27
    .line 150
    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@29
    mul-int/lit16 v2, v2, 0x1000

    #@2b
    new-array v2, v2, [I

    #@2d
    iput-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@2f
    .line 151
    iput v5, p0, Landroid/icu/impl/PropsVectors;->maxRows:I

    #@31
    .line 152
    const/4 v2, 0x3

    #@32
    iput v2, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@34
    .line 153
    iput v3, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@36
    .line 154
    iput-boolean v3, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@38
    .line 155
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@3a
    aput v3, v2, v3

    #@3c
    .line 156
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@3e
    const/high16 v3, 0x110000

    #@40
    aput v3, v2, v4

    #@42
    .line 157
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@44
    .line 158
    .local v1, "index":I
    const/high16 v0, 0x110000

    #@46
    .local v0, "cp":I
    :goto_0
    const v2, 0x110001

    #@49
    if-gt v0, v2, :cond_1

    #@4b
    .line 159
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@4d
    aput v0, v2, v1

    #@4f
    .line 160
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@51
    add-int/lit8 v3, v1, 0x1

    #@53
    add-int/lit8 v4, v0, 0x1

    #@55
    aput v4, v2, v3

    #@57
    .line 161
    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@59
    add-int/2addr v1, v2

    #@5a
    .line 158
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 144
    :cond_1
    return-void
.end method

.method private areElementsSame(I[III)Z
    .locals 3
    .param p1, "index1"    # I
    .param p2, "target"    # [I
    .param p3, "index2"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    #@3
    .line 54
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@5
    add-int v2, p1, v0

    #@7
    aget v1, v1, v2

    #@9
    add-int v2, p3, v0

    #@b
    aget v2, p2, v2

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 55
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 58
    :cond_1
    const/4 v1, 0x1

    #@15
    return v1
.end method

.method private findRow(I)I
    .locals 7
    .param p1, "rangeStart"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 66
    const/4 v0, 0x0

    #@2
    .line 71
    .local v0, "index":I
    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@4
    iget v5, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@6
    mul-int v0, v4, v5

    #@8
    .line 72
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@a
    aget v4, v4, v0

    #@c
    if-lt p1, v4, :cond_4

    #@e
    .line 73
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@10
    add-int/lit8 v5, v0, 0x1

    #@12
    aget v4, v4, v5

    #@14
    if-ge p1, v4, :cond_0

    #@16
    .line 75
    return v0

    #@17
    .line 77
    :cond_0
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@19
    add-int/2addr v0, v4

    #@1a
    .line 78
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@1c
    add-int/lit8 v5, v0, 0x1

    #@1e
    aget v4, v4, v5

    #@20
    if-ge p1, v4, :cond_1

    #@22
    .line 79
    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@24
    add-int/lit8 v4, v4, 0x1

    #@26
    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@28
    .line 80
    return v0

    #@29
    .line 82
    :cond_1
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@2b
    add-int/2addr v0, v4

    #@2c
    .line 83
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@2e
    add-int/lit8 v5, v0, 0x1

    #@30
    aget v4, v4, v5

    #@32
    if-ge p1, v4, :cond_2

    #@34
    .line 84
    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@36
    add-int/lit8 v4, v4, 0x2

    #@38
    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@3a
    .line 85
    return v0

    #@3b
    .line 86
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@3d
    add-int/lit8 v5, v0, 0x1

    #@3f
    aget v4, v4, v5

    #@41
    sub-int v4, p1, v4

    #@43
    const/16 v5, 0xa

    #@45
    if-ge v4, v5, :cond_5

    #@47
    .line 88
    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@49
    add-int/lit8 v4, v4, 0x2

    #@4b
    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@4d
    .line 90
    :cond_3
    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@4f
    add-int/lit8 v4, v4, 0x1

    #@51
    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@53
    .line 91
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@55
    add-int/2addr v0, v4

    #@56
    .line 92
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@58
    add-int/lit8 v5, v0, 0x1

    #@5a
    aget v4, v4, v5

    #@5c
    if-ge p1, v4, :cond_3

    #@5e
    .line 93
    return v0

    #@5f
    .line 97
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@61
    const/4 v5, 0x1

    #@62
    aget v4, v4, v5

    #@64
    if-ge p1, v4, :cond_5

    #@66
    .line 99
    iput v6, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@68
    .line 100
    return v6

    #@69
    .line 104
    :cond_5
    const/4 v3, 0x0

    #@6a
    .line 105
    .local v3, "start":I
    const/4 v2, 0x0

    #@6b
    .line 106
    .local v2, "mid":I
    iget v1, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@6d
    .line 107
    .local v1, "limit":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    #@6f
    if-ge v3, v4, :cond_8

    #@71
    .line 108
    add-int v4, v3, v1

    #@73
    div-int/lit8 v2, v4, 0x2

    #@75
    .line 109
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@77
    mul-int v0, v4, v2

    #@79
    .line 110
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@7b
    aget v4, v4, v0

    #@7d
    if-ge p1, v4, :cond_6

    #@7f
    .line 111
    move v1, v2

    #@80
    goto :goto_0

    #@81
    .line 112
    :cond_6
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@83
    add-int/lit8 v5, v0, 0x1

    #@85
    aget v4, v4, v5

    #@87
    if-ge p1, v4, :cond_7

    #@89
    .line 113
    iput v2, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@8b
    .line 114
    return v0

    #@8c
    .line 116
    :cond_7
    move v3, v2

    #@8d
    goto :goto_0

    #@8e
    .line 122
    :cond_8
    iput v3, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@90
    .line 123
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@92
    mul-int v0, v3, v4

    #@94
    .line 124
    return v0
.end method


# virtual methods
.method public compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
    .locals 11
    .param p1, "compactor"    # Landroid/icu/impl/PropsVectors$CompactHandler;

    #@0
    .prologue
    const/high16 v10, 0x110000

    #@2
    .line 369
    iget-boolean v7, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 370
    return-void

    #@7
    .line 375
    :cond_0
    const/4 v7, 0x1

    #@8
    iput-boolean v7, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@a
    .line 376
    iget v7, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@c
    add-int/lit8 v6, v7, -0x2

    #@e
    .line 379
    .local v6, "valueColumns":I
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@10
    new-array v2, v7, [Ljava/lang/Integer;

    #@12
    .line 380
    .local v2, "indexArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@15
    if-ge v1, v7, :cond_1

    #@17
    .line 381
    iget v7, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@19
    mul-int/2addr v7, v1

    #@1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v7

    #@1e
    aput-object v7, v2, v1

    #@20
    .line 380
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 384
    :cond_1
    new-instance v7, Landroid/icu/impl/PropsVectors$1;

    #@25
    invoke-direct {v7, p0}, Landroid/icu/impl/PropsVectors$1;-><init>(Landroid/icu/impl/PropsVectors;)V

    #@28
    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@2b
    .line 412
    neg-int v0, v6

    #@2c
    .line 413
    .local v0, "count":I
    const/4 v1, 0x0

    #@2d
    :goto_1
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@2f
    if-ge v1, v7, :cond_5

    #@31
    .line 414
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@33
    aget-object v8, v2, v1

    #@35
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@38
    move-result v8

    #@39
    aget v4, v7, v8

    #@3b
    .line 418
    .local v4, "start":I
    if-ltz v0, :cond_3

    #@3d
    aget-object v7, v2, v1

    #@3f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@42
    move-result v7

    #@43
    add-int/lit8 v7, v7, 0x2

    #@45
    iget-object v8, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@47
    .line 419
    add-int/lit8 v9, v1, -0x1

    #@49
    aget-object v9, v2, v9

    #@4b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@4e
    move-result v9

    #@4f
    add-int/lit8 v9, v9, 0x2

    #@51
    .line 418
    invoke-direct {p0, v7, v8, v9, v6}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_3

    #@57
    .line 423
    :goto_2
    if-ne v4, v10, :cond_4

    #@59
    .line 424
    invoke-interface {p1, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForInitialValue(I)V

    #@5c
    .line 413
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 420
    :cond_3
    add-int/2addr v0, v6

    #@60
    goto :goto_2

    #@61
    .line 425
    :cond_4
    const v7, 0x110001

    #@64
    if-ne v4, v7, :cond_2

    #@66
    .line 426
    invoke-interface {p1, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForErrorValue(I)V

    #@69
    goto :goto_3

    #@6a
    .line 432
    .end local v4    # "start":I
    :cond_5
    add-int/2addr v0, v6

    #@6b
    .line 436
    invoke-interface {p1, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->startRealValues(I)V

    #@6e
    .line 445
    new-array v5, v0, [I

    #@70
    .line 446
    .local v5, "temp":[I
    neg-int v0, v6

    #@71
    .line 447
    const/4 v1, 0x0

    #@72
    :goto_4
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@74
    if-ge v1, v7, :cond_8

    #@76
    .line 448
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@78
    aget-object v8, v2, v1

    #@7a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@7d
    move-result v8

    #@7e
    aget v4, v7, v8

    #@80
    .line 449
    .restart local v4    # "start":I
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@82
    aget-object v8, v2, v1

    #@84
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@87
    move-result v8

    #@88
    add-int/lit8 v8, v8, 0x1

    #@8a
    aget v3, v7, v8

    #@8c
    .line 453
    .local v3, "limit":I
    if-ltz v0, :cond_7

    #@8e
    aget-object v7, v2, v1

    #@90
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@93
    move-result v7

    #@94
    add-int/lit8 v7, v7, 0x2

    #@96
    invoke-direct {p0, v7, v5, v0, v6}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    #@99
    move-result v7

    #@9a
    if-eqz v7, :cond_7

    #@9c
    .line 460
    :goto_5
    if-ge v4, v10, :cond_6

    #@9e
    .line 461
    add-int/lit8 v7, v3, -0x1

    #@a0
    invoke-interface {p1, v4, v7, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForRange(III)V

    #@a3
    .line 447
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@a5
    goto :goto_4

    #@a6
    .line 455
    :cond_7
    add-int/2addr v0, v6

    #@a7
    .line 456
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@a9
    aget-object v8, v2, v1

    #@ab
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@ae
    move-result v8

    #@af
    add-int/lit8 v8, v8, 0x2

    #@b1
    invoke-static {v7, v8, v5, v0, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@b4
    goto :goto_5

    #@b5
    .line 464
    .end local v3    # "limit":I
    .end local v4    # "start":I
    :cond_8
    iput-object v5, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@b7
    .line 468
    div-int v7, v0, v6

    #@b9
    add-int/lit8 v7, v7, 0x1

    #@bb
    iput v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@bd
    .line 368
    return-void
.end method

.method public compactToTrieWithRowIndexes()Landroid/icu/impl/IntTrie;
    .locals 5

    #@0
    .prologue
    .line 515
    new-instance v0, Landroid/icu/impl/PVecToTrieCompactHandler;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/PVecToTrieCompactHandler;-><init>()V

    #@5
    .line 516
    .local v0, "compactor":Landroid/icu/impl/PVecToTrieCompactHandler;
    invoke-virtual {p0, v0}, Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V

    #@8
    .line 517
    iget-object v1, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@a
    new-instance v2, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;

    #@c
    .line 518
    iget-object v3, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    #@e
    .line 517
    invoke-direct {v2, v3}, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;-><init>(Landroid/icu/impl/IntTrieBuilder;)V

    #@11
    .line 518
    new-instance v3, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v3, v4}, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;)V

    #@17
    .line 517
    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/IntTrieBuilder;->serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public getCompactedArray()[I
    .locals 2

    #@0
    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 479
    const-string/jumbo v1, "Illegal Invocation of the method before compact()"

    #@9
    .line 478
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 481
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@f
    return-object v0
.end method

.method public getCompactedColumns()I
    .locals 2

    #@0
    .prologue
    .line 503
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 505
    const-string/jumbo v1, "Illegal Invocation of the method before compact()"

    #@9
    .line 504
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 507
    :cond_0
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@f
    add-int/lit8 v0, v0, -0x2

    #@11
    return v0
.end method

.method public getCompactedRows()I
    .locals 2

    #@0
    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 492
    const-string/jumbo v1, "Illegal Invocation of the method before compact()"

    #@9
    .line 491
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 494
    :cond_0
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@f
    return v0
.end method

.method public getRow(I)[I
    .locals 5
    .param p1, "rowIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 299
    iget-boolean v1, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 300
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    .line 301
    const-string/jumbo v2, "Illegal Invocation of the method after compact()"

    #@a
    .line 300
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 303
    :cond_0
    if-ltz p1, :cond_1

    #@10
    iget v1, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@12
    if-le p1, v1, :cond_2

    #@14
    .line 304
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "rowIndex out of bound!"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 306
    :cond_2
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@1f
    add-int/lit8 v1, v1, -0x2

    #@21
    new-array v0, v1, [I

    #@23
    .line 307
    .local v0, "rowToReturn":[I
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@25
    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@27
    mul-int/2addr v2, p1

    #@28
    add-int/lit8 v2, v2, 0x2

    #@2a
    .line 308
    iget v3, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@2c
    add-int/lit8 v3, v3, -0x2

    #@2e
    .line 307
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@31
    .line 309
    return-object v0
.end method

.method public getRowEnd(I)I
    .locals 2
    .param p1, "rowIndex"    # I

    #@0
    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 342
    const-string/jumbo v1, "Illegal Invocation of the method after compact()"

    #@9
    .line 341
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 344
    :cond_0
    if-ltz p1, :cond_1

    #@f
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@11
    if-le p1, v0, :cond_2

    #@13
    .line 345
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "rowIndex out of bound!"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 347
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@1e
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@20
    mul-int/2addr v1, p1

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    aget v0, v0, v1

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    return v0
.end method

.method public getRowStart(I)I
    .locals 2
    .param p1, "rowIndex"    # I

    #@0
    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 323
    const-string/jumbo v1, "Illegal Invocation of the method after compact()"

    #@9
    .line 322
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 325
    :cond_0
    if-ltz p1, :cond_1

    #@f
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    #@11
    if-le p1, v0, :cond_2

    #@13
    .line 326
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "rowIndex out of bound!"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 328
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@1e
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@20
    mul-int/2addr v1, p1

    #@21
    aget v0, v0, v1

    #@23
    return v0
.end method

.method public getValue(II)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 283
    iget-boolean v1, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@3
    if-nez v1, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 285
    :cond_0
    return v2

    #@8
    .line 283
    :cond_1
    const v1, 0x110001

    #@b
    if-gt p1, v1, :cond_0

    #@d
    if-ltz p2, :cond_0

    #@f
    .line 284
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    #@11
    add-int/lit8 v1, v1, -0x2

    #@13
    if-ge p2, v1, :cond_0

    #@15
    .line 287
    invoke-direct {p0, p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    #@18
    move-result v0

    #@19
    .line 288
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    #@1b
    add-int/lit8 v2, v0, 0x2

    #@1d
    add-int/2addr v2, p2

    #@1e
    aget v1, v1, v2

    #@20
    return v1
.end method

.method public setValue(IIIII)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "column"    # I
    .param p4, "value"    # I
    .param p5, "mask"    # I

    #@0
    .prologue
    .line 176
    if-ltz p1, :cond_0

    #@2
    move/from16 v0, p1

    #@4
    move/from16 v1, p2

    #@6
    if-le v0, v1, :cond_1

    #@8
    .line 178
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v11

    #@e
    .line 176
    :cond_1
    const v11, 0x110001

    #@11
    move/from16 v0, p2

    #@13
    if-gt v0, v11, :cond_0

    #@15
    if-ltz p3, :cond_0

    #@17
    .line 177
    move-object/from16 v0, p0

    #@19
    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@1b
    add-int/lit8 v11, v11, -0x2

    #@1d
    move/from16 v0, p3

    #@1f
    if-ge v0, v11, :cond_0

    #@21
    .line 180
    move-object/from16 v0, p0

    #@23
    iget-boolean v11, v0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    #@25
    if-eqz v11, :cond_2

    #@27
    .line 181
    new-instance v11, Ljava/lang/IllegalStateException;

    #@29
    const-string/jumbo v12, "Shouldn\'t be called aftercompact()!"

    #@2c
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v11

    #@30
    .line 186
    :cond_2
    add-int/lit8 v5, p2, 0x1

    #@32
    .line 189
    .local v5, "limit":I
    add-int/lit8 p3, p3, 0x2

    #@34
    .line 190
    and-int p4, p4, p5

    #@36
    .line 194
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    #@39
    move-result v3

    #@3a
    .line 195
    .local v3, "firstRow":I
    move-object/from16 v0, p0

    #@3c
    move/from16 v1, p2

    #@3e
    invoke-direct {v0, v1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    #@41
    move-result v4

    #@42
    .line 202
    .local v4, "lastRow":I
    move-object/from16 v0, p0

    #@44
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@46
    aget v11, v11, v3

    #@48
    move/from16 v0, p1

    #@4a
    if-eq v0, v11, :cond_a

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@50
    add-int v12, v3, p3

    #@52
    aget v11, v11, v12

    #@54
    and-int v11, v11, p5

    #@56
    move/from16 v0, p4

    #@58
    if-eq v0, v11, :cond_a

    #@5a
    const/4 v8, 0x1

    #@5b
    .line 203
    .local v8, "splitFirstRow":Z
    :goto_0
    move-object/from16 v0, p0

    #@5d
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@5f
    add-int/lit8 v12, v4, 0x1

    #@61
    aget v11, v11, v12

    #@63
    if-eq v5, v11, :cond_b

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@69
    add-int v12, v4, p3

    #@6b
    aget v11, v11, v12

    #@6d
    and-int v11, v11, p5

    #@6f
    move/from16 v0, p4

    #@71
    if-eq v0, v11, :cond_b

    #@73
    const/4 v9, 0x1

    #@74
    .line 206
    .local v9, "splitLastRow":Z
    :goto_1
    if-nez v8, :cond_3

    #@76
    if-eqz v9, :cond_9

    #@78
    .line 207
    :cond_3
    const/4 v7, 0x0

    #@79
    .line 208
    .local v7, "rowsToExpand":I
    if-eqz v8, :cond_4

    #@7b
    .line 209
    const/4 v7, 0x1

    #@7c
    .line 211
    :cond_4
    if-eqz v9, :cond_5

    #@7e
    .line 212
    add-int/lit8 v7, v7, 0x1

    #@80
    .line 214
    :cond_5
    const/4 v6, 0x0

    #@81
    .line 215
    .local v6, "newMaxRows":I
    move-object/from16 v0, p0

    #@83
    iget v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    #@85
    add-int/2addr v11, v7

    #@86
    move-object/from16 v0, p0

    #@88
    iget v12, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    #@8a
    if-le v11, v12, :cond_6

    #@8c
    .line 216
    move-object/from16 v0, p0

    #@8e
    iget v11, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    #@90
    const/high16 v12, 0x10000

    #@92
    if-ge v11, v12, :cond_c

    #@94
    .line 217
    const/high16 v6, 0x10000

    #@96
    .line 225
    :goto_2
    move-object/from16 v0, p0

    #@98
    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@9a
    mul-int/2addr v11, v6

    #@9b
    new-array v10, v11, [I

    #@9d
    .line 226
    .local v10, "temp":[I
    move-object/from16 v0, p0

    #@9f
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget v12, v0, Landroid/icu/impl/PropsVectors;->rows:I

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@a9
    mul-int/2addr v12, v13

    #@aa
    const/4 v13, 0x0

    #@ab
    const/4 v14, 0x0

    #@ac
    invoke-static {v11, v13, v10, v14, v12}, Ljava/lang/System;->arraycopy([II[III)V

    #@af
    .line 227
    move-object/from16 v0, p0

    #@b1
    iput-object v10, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@b3
    .line 228
    move-object/from16 v0, p0

    #@b5
    iput v6, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    #@b7
    .line 233
    .end local v10    # "temp":[I
    :cond_6
    move-object/from16 v0, p0

    #@b9
    iget v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    #@bb
    move-object/from16 v0, p0

    #@bd
    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@bf
    mul-int/2addr v11, v12

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@c4
    add-int/2addr v12, v4

    #@c5
    sub-int v2, v11, v12

    #@c7
    .line 234
    .local v2, "count":I
    if-lez v2, :cond_7

    #@c9
    .line 235
    move-object/from16 v0, p0

    #@cb
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@d1
    add-int/2addr v12, v4

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v13, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@d6
    .line 236
    add-int/lit8 v14, v7, 0x1

    #@d8
    move-object/from16 v0, p0

    #@da
    iget v15, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@dc
    mul-int/2addr v14, v15

    #@dd
    .line 235
    add-int/2addr v14, v4

    #@de
    invoke-static {v11, v12, v13, v14, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@e1
    .line 238
    :cond_7
    move-object/from16 v0, p0

    #@e3
    iget v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    #@e5
    add-int/2addr v11, v7

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    #@ea
    .line 242
    if-eqz v8, :cond_8

    #@ec
    .line 244
    sub-int v11, v4, v3

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@f2
    add-int v2, v11, v12

    #@f4
    .line 245
    move-object/from16 v0, p0

    #@f6
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@100
    add-int/2addr v13, v3

    #@101
    invoke-static {v11, v3, v12, v13, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@104
    .line 246
    move-object/from16 v0, p0

    #@106
    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@108
    add-int/2addr v4, v11

    #@109
    .line 249
    move-object/from16 v0, p0

    #@10b
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@10d
    add-int/lit8 v12, v3, 0x1

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-object v13, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@113
    move-object/from16 v0, p0

    #@115
    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@117
    add-int/2addr v14, v3

    #@118
    aput p1, v13, v14

    #@11a
    aput p1, v11, v12

    #@11c
    .line 250
    move-object/from16 v0, p0

    #@11e
    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@120
    add-int/2addr v3, v11

    #@121
    .line 254
    :cond_8
    if-eqz v9, :cond_9

    #@123
    .line 256
    move-object/from16 v0, p0

    #@125
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@127
    move-object/from16 v0, p0

    #@129
    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@12f
    add-int/2addr v13, v4

    #@130
    move-object/from16 v0, p0

    #@132
    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@134
    invoke-static {v11, v4, v12, v13, v14}, Ljava/lang/System;->arraycopy([II[III)V

    #@137
    .line 259
    move-object/from16 v0, p0

    #@139
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@13b
    add-int/lit8 v12, v4, 0x1

    #@13d
    move-object/from16 v0, p0

    #@13f
    iget-object v13, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@141
    move-object/from16 v0, p0

    #@143
    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@145
    add-int/2addr v14, v4

    #@146
    aput v5, v13, v14

    #@148
    aput v5, v11, v12

    #@14a
    .line 264
    .end local v2    # "count":I
    .end local v6    # "newMaxRows":I
    .end local v7    # "rowsToExpand":I
    :cond_9
    move-object/from16 v0, p0

    #@14c
    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@14e
    div-int v11, v4, v11

    #@150
    move-object/from16 v0, p0

    #@152
    iput v11, v0, Landroid/icu/impl/PropsVectors;->prevRow:I

    #@154
    .line 267
    add-int v3, v3, p3

    #@156
    .line 268
    add-int v4, v4, p3

    #@158
    .line 269
    move/from16 v0, p5

    #@15a
    not-int v0, v0

    #@15b
    move/from16 p5, v0

    #@15d
    .line 271
    :goto_3
    move-object/from16 v0, p0

    #@15f
    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    #@165
    aget v12, v12, v3

    #@167
    and-int v12, v12, p5

    #@169
    or-int v12, v12, p4

    #@16b
    aput v12, v11, v3

    #@16d
    .line 272
    if-ne v3, v4, :cond_e

    #@16f
    .line 175
    return-void

    #@170
    .line 202
    .end local v8    # "splitFirstRow":Z
    .end local v9    # "splitLastRow":Z
    :cond_a
    const/4 v8, 0x0

    #@171
    .restart local v8    # "splitFirstRow":Z
    goto/16 :goto_0

    #@173
    .line 203
    :cond_b
    const/4 v9, 0x0

    #@174
    .restart local v9    # "splitLastRow":Z
    goto/16 :goto_1

    #@176
    .line 218
    .restart local v6    # "newMaxRows":I
    .restart local v7    # "rowsToExpand":I
    :cond_c
    move-object/from16 v0, p0

    #@178
    iget v11, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    #@17a
    const v12, 0x110002

    #@17d
    if-ge v11, v12, :cond_d

    #@17f
    .line 219
    const v6, 0x110002

    #@182
    goto/16 :goto_2

    #@184
    .line 221
    :cond_d
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    #@186
    .line 222
    const-string/jumbo v12, "MAX_ROWS exceeded! Increase it to a higher valuein the implementation"

    #@189
    .line 221
    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@18c
    throw v11

    #@18d
    .line 275
    .end local v6    # "newMaxRows":I
    .end local v7    # "rowsToExpand":I
    :cond_e
    move-object/from16 v0, p0

    #@18f
    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    #@191
    add-int/2addr v3, v11

    #@192
    goto :goto_3
.end method
