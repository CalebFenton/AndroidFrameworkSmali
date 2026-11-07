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
.field public static final blacklist ERROR_VALUE_CP:I = 0x110001

.field public static final blacklist FIRST_SPECIAL_CP:I = 0x110000

.field public static final blacklist INITIAL_ROWS:I = 0x1000

.field public static final blacklist INITIAL_VALUE_CP:I = 0x110000

.field public static final blacklist MAX_CP:I = 0x110001

.field public static final blacklist MAX_ROWS:I = 0x110002

.field public static final blacklist MEDIUM_ROWS:I = 0x10000


# instance fields
.field private blacklist columns:I

.field private blacklist isCompacted:Z

.field private blacklist maxRows:I

.field private blacklist prevRow:I

.field private blacklist rows:I

.field private blacklist v:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcolumns(Landroid/icu/impl/PropsVectors;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetv(Landroid/icu/impl/PropsVectors;)[I
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 7
    .param p1, "numOfColumns"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x1

    if-lt p1, v0, :cond_43

    .line 151
    add-int/lit8 v1, p1, 0x2

    iput v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    .line 152
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    const/16 v2, 0x1000

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    .line 153
    iput v2, p0, Landroid/icu/impl/PropsVectors;->maxRows:I

    .line 154
    const/4 v1, 0x3

    iput v1, p0, Landroid/icu/impl/PropsVectors;->rows:I

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 156
    iput-boolean v1, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    .line 157
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aput v1, v2, v1

    .line 158
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    const/high16 v2, 0x110000

    aput v2, v1, v0

    .line 159
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    .line 160
    .local v0, "index":I
    const/high16 v1, 0x110000

    .local v1, "cp":I
    :goto_2b
    const v2, 0x110001

    if-gt v1, v2, :cond_42

    .line 161
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aput v1, v2, v0

    .line 162
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v3

    .line 163
    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v0, v2

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 165
    .end local v1    # "cp":I
    :cond_42
    return-void

    .line 148
    .end local v0    # "index":I
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numOfColumns need to be no less than 1; but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist areElementsSame(I[III)Z
    .registers 8
    .param p1, "index1"    # I
    .param p2, "target"    # [I
    .param p3, "index2"    # I
    .param p4, "length"    # I

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_14

    .line 56
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v2, p1, v0

    aget v1, v1, v2

    add-int v2, p3, v0

    aget v2, p2, v2

    if-eq v1, v2, :cond_11

    .line 57
    const/4 v1, 0x0

    return v1

    .line 55
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist findRow(I)I
    .registers 8
    .param p1, "rangeStart"    # I

    .line 68
    const/4 v0, 0x0

    .line 73
    .local v0, "index":I
    iget v1, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v1, v2

    .line 74
    .end local v0    # "index":I
    .local v1, "index":I
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v0, v0, v1

    const/4 v2, 0x1

    if-lt p1, v0, :cond_5c

    .line 75
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-ge p1, v0, :cond_16

    .line 77
    return v1

    .line 79
    :cond_16
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v1, v0

    .line 80
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-ge p1, v0, :cond_27

    .line 81
    iget v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 82
    return v1

    .line 84
    :cond_27
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v1, v0

    .line 85
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-ge p1, v0, :cond_39

    .line 86
    iget v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 87
    return v1

    .line 88
    :cond_39
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    sub-int v0, p1, v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_66

    .line 90
    iget v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 92
    :cond_4b
    iget v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 93
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v1, v0

    .line 94
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-ge p1, v0, :cond_4b

    .line 95
    return v1

    .line 99
    :cond_5c
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v0, v0, v2

    if-ge p1, v0, :cond_66

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 102
    return v0

    .line 106
    :cond_66
    const/4 v0, 0x0

    .line 107
    .local v0, "start":I
    const/4 v2, 0x0

    .line 108
    .local v2, "mid":I
    iget v3, p0, Landroid/icu/impl/PropsVectors;->rows:I

    .line 109
    .local v3, "limit":I
    :goto_6a
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_8b

    .line 110
    add-int v4, v0, v3

    div-int/lit8 v2, v4, 0x2

    .line 111
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v1, v4, v2

    .line 112
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v4, v1

    if-ge p1, v4, :cond_7e

    .line 113
    move v3, v2

    goto :goto_6a

    .line 114
    :cond_7e
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_89

    .line 115
    iput v2, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 116
    return v1

    .line 118
    :cond_89
    move v0, v2

    goto :goto_6a

    .line 124
    :cond_8b
    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 125
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v4, v0

    .line 126
    .end local v1    # "index":I
    .local v4, "index":I
    return v4
.end method


# virtual methods
.method public blacklist compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
    .registers 13
    .param p1, "compactor"    # Landroid/icu/impl/PropsVectors$CompactHandler;

    .line 371
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_5

    .line 372
    return-void

    .line 377
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    .line 378
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v1, -0x2

    .line 381
    .local v1, "valueColumns":I
    iget v2, p0, Landroid/icu/impl/PropsVectors;->rows:I

    new-array v2, v2, [Ljava/lang/Integer;

    .line 382
    .local v2, "indexArray":[Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    iget v4, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v3, v4, :cond_21

    .line 383
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 386
    .end local v3    # "i":I
    :cond_21
    new-instance v3, Landroid/icu/impl/PropsVectors$1;

    invoke-direct {v3, p0}, Landroid/icu/impl/PropsVectors$1;-><init>(Landroid/icu/impl/PropsVectors;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 415
    neg-int v3, v1

    .line 416
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    iget v5, p0, Landroid/icu/impl/PropsVectors;->rows:I

    const/high16 v6, 0x110000

    if-ge v4, v5, :cond_69

    .line 417
    iget-object v5, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v5, v5, v7

    .line 421
    .local v5, "start":I
    if-ltz v3, :cond_57

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v9, v4, -0x1

    aget-object v9, v2, v9

    .line 422
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    .line 421
    invoke-direct {p0, v7, v8, v9, v1}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v7

    if-nez v7, :cond_58

    .line 423
    :cond_57
    add-int/2addr v3, v1

    .line 426
    :cond_58
    if-ne v5, v6, :cond_5e

    .line 427
    invoke-interface {p1, v3}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForInitialValue(I)V

    goto :goto_66

    .line 428
    :cond_5e
    const v6, 0x110001

    if-ne v5, v6, :cond_66

    .line 429
    invoke-interface {p1, v3}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForErrorValue(I)V

    .line 416
    .end local v5    # "start":I
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 435
    .end local v4    # "i":I
    :cond_69
    add-int/2addr v3, v1

    .line 439
    invoke-interface {p1, v3}, Landroid/icu/impl/PropsVectors$CompactHandler;->startRealValues(I)V

    .line 448
    new-array v4, v3, [I

    .line 449
    .local v4, "temp":[I
    neg-int v3, v1

    .line 450
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_71
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v5, v7, :cond_b2

    .line 451
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v7, v7, v8

    .line 452
    .local v7, "start":I
    iget-object v8, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v0

    aget v8, v8, v9

    .line 456
    .local v8, "limit":I
    if-ltz v3, :cond_9a

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-direct {p0, v9, v4, v3, v1}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v9

    if-nez v9, :cond_a8

    .line 458
    :cond_9a
    add-int/2addr v3, v1

    .line 459
    iget-object v9, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v10, v2, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    :cond_a8
    if-ge v7, v6, :cond_af

    .line 464
    add-int/lit8 v9, v8, -0x1

    invoke-interface {p1, v7, v9, v3}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForRange(III)V

    .line 450
    .end local v7    # "start":I
    .end local v8    # "limit":I
    :cond_af
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 467
    .end local v5    # "i":I
    :cond_b2
    iput-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    .line 471
    div-int v5, v3, v1

    add-int/2addr v5, v0

    iput v5, p0, Landroid/icu/impl/PropsVectors;->rows:I

    .line 472
    return-void
.end method

.method public blacklist compactToTrieWithRowIndexes()Landroid/icu/impl/IntTrie;
    .registers 6

    .line 518
    new-instance v0, Landroid/icu/impl/PVecToTrieCompactHandler;

    invoke-direct {v0}, Landroid/icu/impl/PVecToTrieCompactHandler;-><init>()V

    .line 519
    .local v0, "compactor":Landroid/icu/impl/PVecToTrieCompactHandler;
    invoke-virtual {p0, v0}, Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V

    .line 520
    iget-object v1, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    new-instance v2, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;

    iget-object v3, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    invoke-direct {v2, v3}, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;-><init>(Landroid/icu/impl/IntTrieBuilder;)V

    new-instance v3, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/PropsVectors-IA;)V

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/IntTrieBuilder;->serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCompactedArray()[I
    .registers 3

    .line 480
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_7

    .line 484
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    return-object v0

    .line 481
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCompactedColumns()I
    .registers 3

    .line 506
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_9

    .line 510
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 507
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCompactedRows()I
    .registers 3

    .line 493
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_7

    .line 497
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    return v0

    .line 494
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRow(I)[I
    .registers 7
    .param p1, "rowIndex"    # I

    .line 301
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_28

    .line 305
    if-ltz p1, :cond_20

    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_20

    .line 308
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [I

    .line 309
    .local v0, "rowToReturn":[I
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    return-object v0

    .line 306
    .end local v0    # "rowToReturn":[I
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rowIndex out of bound!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method after compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRowEnd(I)I
    .registers 4
    .param p1, "rowIndex"    # I

    .line 342
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1e

    .line 346
    if-ltz p1, :cond_16

    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_16

    .line 349
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 347
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rowIndex out of bound!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method after compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRowStart(I)I
    .registers 4
    .param p1, "rowIndex"    # I

    .line 323
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1a

    .line 327
    if-ltz p1, :cond_12

    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_12

    .line 330
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v1, p1

    aget v0, v0, v1

    return v0

    .line 328
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rowIndex out of bound!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method after compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getValue(II)I
    .registers 6
    .param p1, "c"    # I
    .param p2, "column"    # I

    .line 285
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_20

    if-ltz p1, :cond_20

    const v0, 0x110001

    if-gt p1, v0, :cond_20

    if-ltz p2, :cond_20

    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_14

    goto :goto_20

    .line 289
    :cond_14
    invoke-direct {p0, p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v0

    .line 290
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    aget v1, v1, v2

    return v1

    .line 287
    .end local v0    # "index":I
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setValue(IIIII)V
    .registers 23
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "column"    # I
    .param p4, "value"    # I
    .param p5, "mask"    # I

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    if-ltz v1, :cond_11d

    if-gt v1, v2, :cond_11d

    const v5, 0x110001

    if-gt v2, v5, :cond_11d

    if-ltz v3, :cond_11d

    iget v5, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_11d

    .line 182
    iget-boolean v5, v0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v5, :cond_115

    .line 188
    add-int/lit8 v5, v2, 0x1

    .line 191
    .local v5, "limit":I
    add-int/lit8 v6, v3, 0x2

    .line 192
    .end local p3    # "column":I
    .local v6, "column":I
    and-int v7, p4, v4

    .line 196
    .end local p4    # "value":I
    .local v7, "value":I
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v3

    .line 197
    .local v3, "firstRow":I
    invoke-direct {v0, v2}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v8

    .line 204
    .local v8, "lastRow":I
    iget-object v9, v0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v9, v9, v3

    const/4 v11, 0x1

    if-eq v1, v9, :cond_3f

    iget-object v9, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v12, v3, v6

    aget v9, v9, v12

    and-int/2addr v9, v4

    if-eq v7, v9, :cond_3f

    move v9, v11

    goto :goto_40

    :cond_3f
    const/4 v9, 0x0

    .line 205
    .local v9, "splitFirstRow":Z
    :goto_40
    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v13, v8, 0x1

    aget v12, v12, v13

    if-eq v5, v12, :cond_52

    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v13, v8, v6

    aget v12, v12, v13

    and-int/2addr v12, v4

    if-eq v7, v12, :cond_52

    goto :goto_53

    :cond_52
    const/4 v11, 0x0

    .line 208
    .local v11, "splitLastRow":Z
    :goto_53
    if-nez v9, :cond_57

    if-eqz v11, :cond_fa

    .line 209
    :cond_57
    const/4 v12, 0x0

    .line 210
    .local v12, "rowsToExpand":I
    if-eqz v9, :cond_5c

    .line 211
    add-int/lit8 v12, v12, 0x1

    .line 213
    :cond_5c
    if-eqz v11, :cond_60

    .line 214
    add-int/lit8 v12, v12, 0x1

    .line 216
    :cond_60
    const/4 v13, 0x0

    .line 217
    .local v13, "newMaxRows":I
    iget v14, v0, Landroid/icu/impl/PropsVectors;->rows:I

    add-int/2addr v14, v12

    iget v15, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    if-le v14, v15, :cond_98

    .line 218
    iget v14, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    const/high16 v15, 0x10000

    if-ge v14, v15, :cond_71

    .line 219
    const/high16 v13, 0x10000

    goto :goto_7b

    .line 220
    :cond_71
    iget v14, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    const v15, 0x110002

    if-ge v14, v15, :cond_90

    .line 221
    const v13, 0x110002

    .line 227
    :goto_7b
    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v14, v13

    new-array v14, v14, [I

    .line 228
    .local v14, "temp":[I
    iget-object v15, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v10, v0, Landroid/icu/impl/PropsVectors;->rows:I

    iget v1, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v10, v1

    const/4 v1, 0x0

    invoke-static {v15, v1, v14, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v14, v0, Landroid/icu/impl/PropsVectors;->v:[I

    .line 230
    iput v13, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    goto :goto_98

    .line 223
    .end local v14    # "temp":[I
    :cond_90
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v10, "MAX_ROWS exceeded! Increase it to a higher valuein the implementation"

    invoke-direct {v1, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_98
    :goto_98
    iget v1, v0, Landroid/icu/impl/PropsVectors;->rows:I

    iget v10, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v1, v10

    iget v10, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v10, v8

    sub-int/2addr v1, v10

    .line 236
    .local v1, "count":I
    if-lez v1, :cond_b5

    .line 237
    iget-object v10, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v14, v8

    iget-object v15, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v16, v12, 0x1

    iget v2, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v16, v16, v2

    add-int v2, v8, v16

    invoke-static {v10, v14, v15, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_b5
    iget v2, v0, Landroid/icu/impl/PropsVectors;->rows:I

    add-int/2addr v2, v12

    iput v2, v0, Landroid/icu/impl/PropsVectors;->rows:I

    .line 244
    if-eqz v9, :cond_df

    .line 246
    sub-int v2, v8, v3

    iget v10, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int v1, v2, v10

    .line 247
    iget-object v2, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget-object v10, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v14, v3

    invoke-static {v2, v3, v10, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget v2, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v8, v2

    .line 251
    iget-object v2, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v10, v3, 0x1

    iget-object v14, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v15, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v15, v3

    aput p1, v14, v15

    aput p1, v2, v10

    .line 252
    iget v2, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v3, v2

    .line 256
    :cond_df
    if-eqz v11, :cond_fa

    .line 258
    iget-object v2, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget-object v10, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v14, v8

    iget v15, v0, Landroid/icu/impl/PropsVectors;->columns:I

    invoke-static {v2, v8, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v2, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v10, v8, 0x1

    iget-object v14, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v15, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v15, v8

    aput v5, v14, v15

    aput v5, v2, v10

    .line 266
    .end local v1    # "count":I
    .end local v12    # "rowsToExpand":I
    .end local v13    # "newMaxRows":I
    :cond_fa
    iget v1, v0, Landroid/icu/impl/PropsVectors;->columns:I

    div-int v1, v8, v1

    iput v1, v0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 269
    add-int/2addr v3, v6

    .line 270
    add-int/2addr v8, v6

    .line 271
    not-int v1, v4

    .line 273
    .end local p5    # "mask":I
    .local v1, "mask":I
    :goto_103
    iget-object v2, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget-object v4, v0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v4, v3

    and-int/2addr v4, v1

    or-int/2addr v4, v7

    aput v4, v2, v3

    .line 274
    if-ne v3, v8, :cond_111

    .line 275
    nop

    .line 279
    return-void

    .line 277
    :cond_111
    iget v2, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v3, v2

    goto :goto_103

    .line 183
    .end local v1    # "mask":I
    .end local v3    # "firstRow":I
    .end local v5    # "limit":I
    .end local v6    # "column":I
    .end local v7    # "value":I
    .end local v8    # "lastRow":I
    .end local v9    # "splitFirstRow":Z
    .end local v11    # "splitLastRow":Z
    .restart local p3    # "column":I
    .restart local p4    # "value":I
    .restart local p5    # "mask":I
    :cond_115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Shouldn\'t be called aftercompact()!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_11d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
