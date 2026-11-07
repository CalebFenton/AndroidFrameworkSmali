.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/DualPivotQuicksort$Sorter;,
        Ljava/util/DualPivotQuicksort$RunMerger;,
        Ljava/util/DualPivotQuicksort$Merger;
    }
.end annotation


# static fields
.field private static final blacklist DELTA:I = 0x6

.field private static final blacklist MAX_BYTE_INDEX:I = 0x180

.field private static final blacklist MAX_INSERTION_SORT_SIZE:I = 0x2c

.field private static final blacklist MAX_MIXED_INSERTION_SORT_SIZE:I = 0x41

.field private static final blacklist MAX_RECURSION_DEPTH:I = 0x180

.field private static final blacklist MAX_RUN_CAPACITY:I = 0x1400

.field private static final blacklist MAX_SHORT_INDEX:I = 0x18000

.field private static final blacklist MIN_BYTE_COUNTING_SORT_SIZE:I = 0x40

.field private static final blacklist MIN_FIRST_RUNS_FACTOR:I = 0x7

.field private static final blacklist MIN_FIRST_RUN_SIZE:I = 0x10

.field private static final blacklist MIN_PARALLEL_MERGE_PARTS_SIZE:I = 0x1000

.field private static final blacklist MIN_PARALLEL_SORT_SIZE:I = 0x1000

.field private static final blacklist MIN_RUN_COUNT:I = 0x4

.field private static final blacklist MIN_SHORT_OR_CHAR_COUNTING_SORT_SIZE:I = 0x6d6

.field private static final blacklist MIN_TRY_MERGE_SIZE:I = 0x1000

.field private static final blacklist NUM_BYTE_VALUES:I = 0x100

.field private static final blacklist NUM_CHAR_VALUES:I = 0x10000

.field private static final blacklist NUM_SHORT_VALUES:I = 0x10000


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[DI[DII[DII)V
    .registers 9

    invoke-static/range {p0 .. p8}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[DI[DII[DII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[FI[FII[FII)V
    .registers 9

    invoke-static/range {p0 .. p8}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[FI[FII[FII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[II[III[III)V
    .registers 9

    invoke-static/range {p0 .. p8}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[II[III[III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[JI[JII[JII)V
    .registers 9

    invoke-static/range {p0 .. p8}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[JI[JII[JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeRuns([D[DIIZ[III)[D
    .registers 8

    invoke-static/range {p0 .. p7}, Ljava/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeRuns([F[FIIZ[III)[F
    .registers 8

    invoke-static/range {p0 .. p7}, Ljava/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeRuns([I[IIIZ[III)[I
    .registers 8

    invoke-static/range {p0 .. p7}, Ljava/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeRuns([J[JIIZ[III)[J
    .registers 8

    invoke-static/range {p0 .. p7}, Ljava/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist countingSort([BII)V
    .registers 8
    .param p0, "a"    # [B
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1702
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 1707
    .local v1, "count":[I
    move v2, p2

    .local v2, "i":I
    :goto_5
    if-le v2, p1, :cond_14

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_5

    .line 1712
    .end local v2    # "i":I
    :cond_14
    sub-int v2, p2, p1

    if-le v2, v0, :cond_30

    .line 1713
    const/16 v0, 0x180

    .local v0, "i":I
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x7f

    if-le v0, v2, :cond_2f

    .line 1714
    and-int/lit16 v2, v0, 0xff

    .line 1716
    .local v2, "value":I
    aget v3, v1, v2

    sub-int p1, p2, v3

    :goto_26
    if-le p2, p1, :cond_2e

    .line 1717
    add-int/lit8 p2, p2, -0x1

    int-to-byte v3, v2

    aput-byte v3, p0, p2

    goto :goto_26

    .line 1719
    .end local v2    # "value":I
    :cond_2e
    goto :goto_1a

    .end local v0    # "i":I
    :cond_2f
    goto :goto_4d

    .line 1721
    :cond_30
    const/16 v0, 0x180

    .restart local v0    # "i":I
    :goto_32
    if-le p2, p1, :cond_4d

    .line 1722
    :goto_34
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    and-int/lit16 v0, v2, 0xff

    aget v0, v1, v0

    if-nez v0, :cond_3e

    move v0, v2

    goto :goto_34

    .line 1724
    :cond_3e
    and-int/lit16 v3, v2, 0xff

    .line 1725
    .local v3, "value":I
    aget v0, v1, v3

    .line 1728
    .local v0, "c":I
    :cond_42
    add-int/lit8 p2, p2, -0x1

    int-to-byte v4, v3

    aput-byte v4, p0, p2

    .line 1729
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_42

    .line 1730
    .end local v0    # "c":I
    .end local v3    # "value":I
    move v0, v2

    goto :goto_32

    .line 1732
    .end local v2    # "i":I
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static blacklist countingSort([CII)V
    .registers 8
    .param p0, "a"    # [C
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2025
    const/high16 v0, 0x10000

    new-array v1, v0, [I

    .line 2030
    .local v1, "count":[I
    move v2, p2

    .local v2, "i":I
    :goto_5
    if-le v2, p1, :cond_12

    add-int/lit8 v2, v2, -0x1

    aget-char v3, p0, v2

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_5

    .line 2035
    .end local v2    # "i":I
    :cond_12
    sub-int v2, p2, p1

    if-le v2, v0, :cond_29

    .line 2036
    const/high16 v0, 0x10000

    .local v0, "i":I
    :cond_18
    if-lez v0, :cond_28

    .line 2037
    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    sub-int p1, p2, v2

    :goto_20
    if-le p2, p1, :cond_18

    .line 2038
    add-int/lit8 p2, p2, -0x1

    int-to-char v2, v0

    aput-char v2, p0, p2

    goto :goto_20

    .end local v0    # "i":I
    :cond_28
    goto :goto_42

    .line 2042
    :cond_29
    const/high16 v0, 0x10000

    .restart local v0    # "i":I
    :goto_2b
    if-le p2, p1, :cond_42

    .line 2043
    :goto_2d
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget v0, v1, v2

    if-nez v0, :cond_35

    move v0, v2

    goto :goto_2d

    .line 2044
    :cond_35
    aget v0, v1, v2

    .line 2047
    .local v0, "c":I
    :cond_37
    add-int/lit8 p2, p2, -0x1

    int-to-char v3, v2

    aput-char v3, p0, p2

    .line 2048
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_37

    .line 2049
    .end local v0    # "c":I
    move v0, v2

    goto :goto_2b

    .line 2051
    .end local v2    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private static blacklist countingSort([SII)V
    .registers 9
    .param p0, "a"    # [S
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2349
    const/high16 v0, 0x10000

    new-array v1, v0, [I

    .line 2354
    .local v1, "count":[I
    move v2, p2

    .local v2, "i":I
    :goto_5
    const v3, 0xffff

    if-le v2, p1, :cond_16

    add-int/lit8 v2, v2, -0x1

    aget-short v4, p0, v2

    and-int/2addr v3, v4

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_5

    .line 2359
    .end local v2    # "i":I
    :cond_16
    sub-int v2, p2, p1

    if-le v2, v0, :cond_33

    .line 2360
    const v0, 0x18000

    .local v0, "i":I
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_32

    .line 2361
    and-int v2, v0, v3

    .line 2363
    .local v2, "value":I
    aget v4, v1, v2

    sub-int p1, p2, v4

    :goto_29
    if-le p2, p1, :cond_31

    .line 2364
    add-int/lit8 p2, p2, -0x1

    int-to-short v4, v2

    aput-short v4, p0, p2

    goto :goto_29

    .line 2366
    .end local v2    # "value":I
    :cond_31
    goto :goto_1d

    .end local v0    # "i":I
    :cond_32
    goto :goto_51

    .line 2368
    :cond_33
    const v0, 0x18000

    .restart local v0    # "i":I
    :goto_36
    if-le p2, p1, :cond_51

    .line 2369
    :goto_38
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    and-int v0, v2, v3

    aget v0, v1, v0

    if-nez v0, :cond_42

    move v0, v2

    goto :goto_38

    .line 2371
    :cond_42
    and-int v4, v2, v3

    .line 2372
    .local v4, "value":I
    aget v0, v1, v4

    .line 2375
    .local v0, "c":I
    :cond_46
    add-int/lit8 p2, p2, -0x1

    int-to-short v5, v4

    aput-short v5, p0, p2

    .line 2376
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_46

    .line 2377
    .end local v0    # "c":I
    .end local v4    # "value":I
    move v0, v2

    goto :goto_36

    .line 2379
    .end local v2    # "i":I
    :cond_51
    :goto_51
    return-void
.end method

.method private static blacklist getDepth(II)I
    .registers 4
    .param p0, "parallelism"    # I
    .param p1, "size"    # I

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "depth":I
    :goto_1
    shr-int/lit8 v1, p0, 0x3

    move p0, v1

    if-lez v1, :cond_e

    shr-int/lit8 v1, p1, 0x2

    move p1, v1

    if-lez v1, :cond_e

    .line 135
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 137
    :cond_e
    return v0
.end method

.method private static blacklist heapSort([DII)V
    .registers 12
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 3686
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_4
    if-le v0, p1, :cond_12

    .line 3687
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "k":I
    .local v2, "k":I
    aget-wide v3, p0, v2

    move-object v1, p0

    move v5, p1

    move v6, p2

    .end local p0    # "a":[D
    .end local p1    # "low":I
    .end local p2    # "high":I
    .local v1, "a":[D
    .local v5, "low":I
    .local v6, "high":I
    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->pushDown([DIDII)V

    move v0, v2

    .end local v5    # "low":I
    .local v4, "low":I
    goto :goto_4

    .line 3686
    .end local v1    # "a":[D
    .end local v2    # "k":I
    .end local v4    # "low":I
    .end local v6    # "high":I
    .restart local v0    # "k":I
    .restart local p0    # "a":[D
    .restart local p1    # "low":I
    .restart local p2    # "high":I
    :cond_12
    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 3689
    .end local v0    # "k":I
    .end local p0    # "a":[D
    .end local p1    # "low":I
    .restart local v1    # "a":[D
    .restart local v4    # "low":I
    :goto_15
    add-int/lit8 v8, p2, -0x1

    .end local p2    # "high":I
    .local v8, "high":I
    if-le v8, v4, :cond_26

    .line 3690
    aget-wide p0, v1, v4

    .line 3691
    .local p0, "max":D
    aget-wide v5, v1, v8

    move v7, v4

    move-object v3, v1

    .end local v1    # "a":[D
    .local v3, "a":[D
    invoke-static/range {v3 .. v8}, Ljava/util/DualPivotQuicksort;->pushDown([DIDII)V

    .line 3692
    .end local v3    # "a":[D
    .restart local v1    # "a":[D
    aput-wide p0, v1, v8

    .line 3693
    .end local p0    # "max":D
    move p2, v8

    goto :goto_15

    .line 3694
    :cond_26
    return-void
.end method

.method private static blacklist heapSort([FII)V
    .registers 5
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2880
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_4
    if-le v0, p1, :cond_e

    .line 2881
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/DualPivotQuicksort;->pushDown([FIFII)V

    goto :goto_4

    .line 2883
    .end local v0    # "k":I
    :cond_e
    :goto_e
    add-int/lit8 p2, p2, -0x1

    if-le p2, p1, :cond_1c

    .line 2884
    aget v0, p0, p1

    .line 2885
    .local v0, "max":F
    aget v1, p0, p2

    invoke-static {p0, p1, v1, p1, p2}, Ljava/util/DualPivotQuicksort;->pushDown([FIFII)V

    .line 2886
    aput v0, p0, p2

    .line 2887
    .end local v0    # "max":F
    goto :goto_e

    .line 2888
    :cond_1c
    return-void
.end method

.method private static blacklist heapSort([III)V
    .registers 5
    .param p0, "a"    # [I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 585
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_4
    if-le v0, p1, :cond_e

    .line 586
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/DualPivotQuicksort;->pushDown([IIIII)V

    goto :goto_4

    .line 588
    .end local v0    # "k":I
    :cond_e
    :goto_e
    add-int/lit8 p2, p2, -0x1

    if-le p2, p1, :cond_1c

    .line 589
    aget v0, p0, p1

    .line 590
    .local v0, "max":I
    aget v1, p0, p2

    invoke-static {p0, p1, v1, p1, p2}, Ljava/util/DualPivotQuicksort;->pushDown([IIIII)V

    .line 591
    aput v0, p0, p2

    .line 592
    .end local v0    # "max":I
    goto :goto_e

    .line 593
    :cond_1c
    return-void
.end method

.method private static blacklist heapSort([JII)V
    .registers 12
    .param p0, "a"    # [J
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1339
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .local v0, "k":I
    :goto_4
    if-le v0, p1, :cond_12

    .line 1340
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "k":I
    .local v2, "k":I
    aget-wide v3, p0, v2

    move-object v1, p0

    move v5, p1

    move v6, p2

    .end local p0    # "a":[J
    .end local p1    # "low":I
    .end local p2    # "high":I
    .local v1, "a":[J
    .local v5, "low":I
    .local v6, "high":I
    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->pushDown([JIJII)V

    move v0, v2

    .end local v5    # "low":I
    .local v4, "low":I
    goto :goto_4

    .line 1339
    .end local v1    # "a":[J
    .end local v2    # "k":I
    .end local v4    # "low":I
    .end local v6    # "high":I
    .restart local v0    # "k":I
    .restart local p0    # "a":[J
    .restart local p1    # "low":I
    .restart local p2    # "high":I
    :cond_12
    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 1342
    .end local v0    # "k":I
    .end local p0    # "a":[J
    .end local p1    # "low":I
    .restart local v1    # "a":[J
    .restart local v4    # "low":I
    :goto_15
    add-int/lit8 v8, p2, -0x1

    .end local p2    # "high":I
    .local v8, "high":I
    if-le v8, v4, :cond_26

    .line 1343
    aget-wide p0, v1, v4

    .line 1344
    .local p0, "max":J
    aget-wide v5, v1, v8

    move v7, v4

    move-object v3, v1

    .end local v1    # "a":[J
    .local v3, "a":[J
    invoke-static/range {v3 .. v8}, Ljava/util/DualPivotQuicksort;->pushDown([JIJII)V

    .line 1345
    .end local v3    # "a":[J
    .restart local v1    # "a":[J
    aput-wide p0, v1, v8

    .line 1346
    .end local p0    # "max":J
    move p2, v8

    goto :goto_15

    .line 1347
    :cond_26
    return-void
.end method

.method private static blacklist insertionSort([BII)V
    .registers 8
    .param p0, "a"    # [B
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1672
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_22

    .line 1673
    move v1, v0

    .local v1, "i":I
    aget-byte v2, p0, v0

    .line 1675
    .local v2, "ai":B
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    if-ge v2, v3, :cond_21

    .line 1676
    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_1d

    aget-byte v3, p0, v1

    if-ge v2, v3, :cond_1d

    .line 1677
    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v1

    aput-byte v4, p0, v3

    goto :goto_e

    .line 1679
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 1681
    .end local v2    # "ai":B
    :cond_21
    goto :goto_1

    .line 1682
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private static blacklist insertionSort([CII)V
    .registers 8
    .param p0, "a"    # [C
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2000
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_22

    .line 2001
    move v1, v0

    .local v1, "i":I
    aget-char v2, p0, v0

    .line 2003
    .local v2, "ai":C
    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    if-ge v2, v3, :cond_21

    .line 2004
    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_1d

    aget-char v3, p0, v1

    if-ge v2, v3, :cond_1d

    .line 2005
    add-int/lit8 v3, v1, 0x1

    aget-char v4, p0, v1

    aput-char v4, p0, v3

    goto :goto_e

    .line 2007
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    aput-char v2, p0, v3

    .line 2009
    .end local v2    # "ai":C
    :cond_21
    goto :goto_1

    .line 2010
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private static blacklist insertionSort([DII)V
    .registers 10
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 3666
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_26

    .line 3667
    move v1, v0

    .local v1, "i":I
    aget-wide v2, p0, v0

    .line 3669
    .local v2, "ai":D
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p0, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_25

    .line 3670
    :goto_10
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_21

    aget-wide v4, p0, v1

    cmpg-double v4, v2, v4

    if-gez v4, :cond_21

    .line 3671
    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p0, v1

    aput-wide v5, p0, v4

    goto :goto_10

    .line 3673
    :cond_21
    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p0, v4

    .line 3675
    .end local v2    # "ai":D
    :cond_25
    goto :goto_1

    .line 3676
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method private static blacklist insertionSort([FII)V
    .registers 8
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2860
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_26

    .line 2861
    move v1, v0

    .local v1, "i":I
    aget v2, p0, v0

    .line 2863
    .local v2, "ai":F
    add-int/lit8 v3, v1, -0x1

    aget v3, p0, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_25

    .line 2864
    :goto_10
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_21

    aget v3, p0, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_21

    .line 2865
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v1

    aput v4, p0, v3

    goto :goto_10

    .line 2867
    :cond_21
    add-int/lit8 v3, v1, 0x1

    aput v2, p0, v3

    .line 2869
    .end local v2    # "ai":F
    :cond_25
    goto :goto_1

    .line 2870
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method private static blacklist insertionSort([III)V
    .registers 8
    .param p0, "a"    # [I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 565
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_22

    .line 566
    move v1, v0

    .local v1, "i":I
    aget v2, p0, v0

    .line 568
    .local v2, "ai":I
    add-int/lit8 v3, v1, -0x1

    aget v3, p0, v3

    if-ge v2, v3, :cond_21

    .line 569
    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_1d

    aget v3, p0, v1

    if-ge v2, v3, :cond_1d

    .line 570
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v1

    aput v4, p0, v3

    goto :goto_e

    .line 572
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    aput v2, p0, v3

    .line 574
    .end local v2    # "ai":I
    :cond_21
    goto :goto_1

    .line 575
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private static blacklist insertionSort([JII)V
    .registers 10
    .param p0, "a"    # [J
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1319
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_26

    .line 1320
    move v1, v0

    .local v1, "i":I
    aget-wide v2, p0, v0

    .line 1322
    .local v2, "ai":J
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p0, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_25

    .line 1323
    :goto_10
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_21

    aget-wide v4, p0, v1

    cmp-long v4, v2, v4

    if-gez v4, :cond_21

    .line 1324
    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p0, v1

    aput-wide v5, p0, v4

    goto :goto_10

    .line 1326
    :cond_21
    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p0, v4

    .line 1328
    .end local v2    # "ai":J
    :cond_25
    goto :goto_1

    .line 1329
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method private static blacklist insertionSort([SII)V
    .registers 8
    .param p0, "a"    # [S
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2319
    move v0, p1

    .local v0, "k":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_22

    .line 2320
    move v1, v0

    .local v1, "i":I
    aget-short v2, p0, v0

    .line 2322
    .local v2, "ai":S
    add-int/lit8 v3, v1, -0x1

    aget-short v3, p0, v3

    if-ge v2, v3, :cond_21

    .line 2323
    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_1d

    aget-short v3, p0, v1

    if-ge v2, v3, :cond_1d

    .line 2324
    add-int/lit8 v3, v1, 0x1

    aget-short v4, p0, v1

    aput-short v4, p0, v3

    goto :goto_e

    .line 2326
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    aput-short v2, p0, v3

    .line 2328
    .end local v2    # "ai":S
    :cond_21
    goto :goto_1

    .line 2329
    .end local v0    # "k":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private static blacklist mergeParts(Ljava/util/DualPivotQuicksort$Merger;[DI[DII[DII)V
    .registers 24
    .param p0, "merger"    # Ljava/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [D
    .param p2, "k"    # I
    .param p3, "a1"    # [D
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [D
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 3921
    move-object/from16 v3, p3

    move-object/from16 v6, p6

    if-eqz p0, :cond_5e

    if-ne v3, v6, :cond_5e

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v4, p8

    .line 3928
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v4, "hi2":I
    :goto_10
    sub-int v5, v1, v0

    sub-int v7, v4, v2

    if-ge v5, v7, :cond_21

    .line 3929
    move v5, v0

    .local v5, "lo":I
    move v0, v2

    move v2, v5

    .line 3930
    move v7, v1

    .local v7, "hi":I
    move v1, v4

    move v4, v7

    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    goto :goto_25

    .line 3928
    .end local v5    # "lo":I
    .end local v7    # "hi":I
    :cond_21
    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    .line 3936
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v4    # "hi2":I
    .local v5, "hi1":I
    .local v8, "hi2":I
    .local v9, "lo1":I
    .local v10, "lo2":I
    :goto_25
    sub-int v0, v5, v9

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_30

    .line 3937
    move-object/from16 v1, p1

    move/from16 v0, p2

    goto :goto_6a

    .line 3943
    :cond_30
    add-int v0, v9, v5

    ushr-int/lit8 v4, v0, 0x1

    .line 3944
    .local v4, "mi1":I
    aget-wide v11, v3, v4

    .line 3945
    .local v11, "key":D
    move v0, v8

    .line 3950
    .local v0, "mi2":I
    move v1, v10

    move v7, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v7, "mi2":I
    :goto_39
    if-ge v1, v7, :cond_4b

    .line 3951
    add-int v0, v1, v7

    ushr-int/lit8 v0, v0, 0x1

    .line 3953
    .local v0, "t":I
    aget-wide v13, v6, v0

    cmpl-double v2, v11, v13

    if-lez v2, :cond_48

    .line 3954
    add-int/lit8 v1, v0, 0x1

    goto :goto_4a

    .line 3956
    :cond_48
    move v2, v0

    move v7, v2

    .line 3958
    .end local v0    # "t":I
    :goto_4a
    goto :goto_39

    .line 3960
    .end local v1    # "loo":I
    :cond_4b
    sub-int v0, v7, v10

    add-int/2addr v0, v4

    sub-int v13, v0, v9

    .line 3965
    .local v13, "d":I
    add-int v2, p2, v13

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Merger;->-$$Nest$mforkMerger(Ljava/util/DualPivotQuicksort$Merger;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 3970
    move v0, v4

    .line 3971
    .end local v5    # "hi1":I
    .local v0, "hi1":I
    move v4, v7

    .line 3972
    .end local v7    # "mi2":I
    .end local v8    # "hi2":I
    .end local v11    # "key":D
    .end local v13    # "d":I
    .local v4, "hi2":I
    move v1, v0

    move v0, v9

    move v2, v10

    goto :goto_10

    .line 3921
    .end local v0    # "hi1":I
    .end local v4    # "hi2":I
    .end local v9    # "lo1":I
    .end local v10    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_5e
    move-object/from16 v1, p1

    .line 3978
    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v5, p5

    move/from16 v10, p7

    move/from16 v8, p8

    .end local p2    # "k":I
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "k":I
    .restart local v5    # "hi1":I
    .restart local v8    # "hi2":I
    .restart local v9    # "lo1":I
    .restart local v10    # "lo2":I
    :goto_6a
    if-ge v9, v5, :cond_87

    if-ge v10, v8, :cond_87

    .line 3979
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .local v2, "k":I
    aget-wide v11, v3, v9

    aget-wide v13, v6, v10

    cmpg-double v4, v11, v13

    if-gez v4, :cond_7e

    add-int/lit8 v4, v9, 0x1

    .end local v9    # "lo1":I
    .local v4, "lo1":I
    aget-wide v11, v3, v9

    move v9, v4

    goto :goto_83

    .end local v4    # "lo1":I
    .restart local v9    # "lo1":I
    :cond_7e
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "lo2":I
    .local v4, "lo2":I
    aget-wide v11, v6, v10

    move v10, v4

    .end local v4    # "lo2":I
    .restart local v10    # "lo2":I
    :goto_83
    aput-wide v11, v1, v0

    move v0, v2

    goto :goto_6a

    .line 3981
    .end local v2    # "k":I
    .restart local v0    # "k":I
    :cond_87
    if-ne v1, v3, :cond_8b

    if-ge v0, v9, :cond_98

    .line 3982
    :cond_8b
    :goto_8b
    if-ge v9, v5, :cond_98

    .line 3983
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .restart local v2    # "k":I
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "lo1":I
    .local v4, "lo1":I
    aget-wide v11, v3, v9

    aput-wide v11, v1, v0

    move v0, v2

    move v9, v4

    goto :goto_8b

    .line 3986
    .end local v2    # "k":I
    .end local v4    # "lo1":I
    .restart local v0    # "k":I
    .restart local v9    # "lo1":I
    :cond_98
    if-ne v1, v6, :cond_9c

    if-ge v0, v10, :cond_a9

    .line 3987
    :cond_9c
    :goto_9c
    if-ge v10, v8, :cond_a9

    .line 3988
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .restart local v2    # "k":I
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "lo2":I
    .local v4, "lo2":I
    aget-wide v10, v6, v10

    aput-wide v10, v1, v0

    move v0, v2

    move v10, v4

    goto :goto_9c

    .line 3991
    .end local v2    # "k":I
    .end local v4    # "lo2":I
    .restart local v0    # "k":I
    .restart local v10    # "lo2":I
    :cond_a9
    return-void
.end method

.method private static blacklist mergeParts(Ljava/util/DualPivotQuicksort$Merger;[FI[FII[FII)V
    .registers 22
    .param p0, "merger"    # Ljava/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [F
    .param p2, "k"    # I
    .param p3, "a1"    # [F
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [F
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 3115
    move-object/from16 v3, p3

    move-object/from16 v6, p6

    if-eqz p0, :cond_59

    if-ne v3, v6, :cond_59

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v4, p8

    .line 3122
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v4, "hi2":I
    :goto_10
    sub-int v5, v1, v0

    sub-int v7, v4, v2

    if-ge v5, v7, :cond_21

    .line 3123
    move v5, v0

    .local v5, "lo":I
    move v0, v2

    move v2, v5

    .line 3124
    move v7, v1

    .local v7, "hi":I
    move v1, v4

    move v4, v7

    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    goto :goto_25

    .line 3122
    .end local v5    # "lo":I
    .end local v7    # "hi":I
    :cond_21
    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    .line 3130
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v4    # "hi2":I
    .local v5, "hi1":I
    .local v8, "hi2":I
    .local v9, "lo1":I
    .local v10, "lo2":I
    :goto_25
    sub-int v0, v5, v9

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_2c

    .line 3131
    goto :goto_61

    .line 3137
    :cond_2c
    add-int v0, v9, v5

    ushr-int/lit8 v4, v0, 0x1

    .line 3138
    .local v4, "mi1":I
    aget v11, v3, v4

    .line 3139
    .local v11, "key":F
    move v0, v8

    .line 3144
    .local v0, "mi2":I
    move v1, v10

    move v7, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v7, "mi2":I
    :goto_35
    if-ge v1, v7, :cond_47

    .line 3145
    add-int v0, v1, v7

    ushr-int/lit8 v0, v0, 0x1

    .line 3147
    .local v0, "t":I
    aget v2, v6, v0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_44

    .line 3148
    add-int/lit8 v1, v0, 0x1

    goto :goto_46

    .line 3150
    :cond_44
    move v2, v0

    move v7, v2

    .line 3152
    .end local v0    # "t":I
    :goto_46
    goto :goto_35

    .line 3154
    .end local v1    # "loo":I
    :cond_47
    sub-int v0, v7, v10

    add-int/2addr v0, v4

    sub-int v12, v0, v9

    .line 3159
    .local v12, "d":I
    add-int v2, p2, v12

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Merger;->-$$Nest$mforkMerger(Ljava/util/DualPivotQuicksort$Merger;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 3164
    move v0, v4

    .line 3165
    .end local v5    # "hi1":I
    .local v0, "hi1":I
    move v4, v7

    .line 3166
    .end local v7    # "mi2":I
    .end local v8    # "hi2":I
    .end local v11    # "key":F
    .end local v12    # "d":I
    .local v4, "hi2":I
    move v1, v0

    move v0, v9

    move v2, v10

    goto :goto_10

    .line 3172
    .end local v0    # "hi1":I
    .end local v4    # "hi2":I
    .end local v9    # "lo1":I
    .end local v10    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_59
    move/from16 v9, p4

    move/from16 v5, p5

    move/from16 v10, p7

    move/from16 v8, p8

    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .restart local v5    # "hi1":I
    .restart local v8    # "hi2":I
    .restart local v9    # "lo1":I
    .restart local v10    # "lo2":I
    :goto_61
    if-ge v9, v5, :cond_7e

    if-ge v10, v8, :cond_7e

    .line 3173
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "k":I
    .local v0, "k":I
    aget v2, v3, v9

    aget v4, v6, v10

    cmpg-float v2, v2, v4

    if-gez v2, :cond_75

    add-int/lit8 v2, v9, 0x1

    .end local v9    # "lo1":I
    .local v2, "lo1":I
    aget v4, v3, v9

    move v9, v2

    goto :goto_7a

    .end local v2    # "lo1":I
    .restart local v9    # "lo1":I
    :cond_75
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "lo2":I
    .local v2, "lo2":I
    aget v4, v6, v10

    move v10, v2

    .end local v2    # "lo2":I
    .restart local v10    # "lo2":I
    :goto_7a
    aput v4, p1, p2

    move p2, v0

    goto :goto_61

    .line 3175
    .end local v0    # "k":I
    .restart local p2    # "k":I
    :cond_7e
    if-ne p1, v3, :cond_82

    if-ge p2, v9, :cond_8f

    .line 3176
    :cond_82
    :goto_82
    if-ge v9, v5, :cond_8f

    .line 3177
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "k":I
    .restart local v0    # "k":I
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "lo1":I
    .local v2, "lo1":I
    aget v4, v3, v9

    aput v4, p1, p2

    move p2, v0

    move v9, v2

    goto :goto_82

    .line 3180
    .end local v0    # "k":I
    .end local v2    # "lo1":I
    .restart local v9    # "lo1":I
    .restart local p2    # "k":I
    :cond_8f
    if-ne p1, v6, :cond_93

    if-ge p2, v10, :cond_a0

    .line 3181
    :cond_93
    :goto_93
    if-ge v10, v8, :cond_a0

    .line 3182
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "k":I
    .restart local v0    # "k":I
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "lo2":I
    .local v2, "lo2":I
    aget v4, v6, v10

    aput v4, p1, p2

    move p2, v0

    move v10, v2

    goto :goto_93

    .line 3185
    .end local v0    # "k":I
    .end local v2    # "lo2":I
    .restart local v10    # "lo2":I
    .restart local p2    # "k":I
    :cond_a0
    return-void
.end method

.method private static blacklist mergeParts(Ljava/util/DualPivotQuicksort$Merger;[II[III[III)V
    .registers 22
    .param p0, "merger"    # Ljava/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [I
    .param p2, "k"    # I
    .param p3, "a1"    # [I
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [I
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 820
    move-object/from16 v3, p3

    move-object/from16 v6, p6

    if-eqz p0, :cond_57

    if-ne v3, v6, :cond_57

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v4, p8

    .line 827
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v4, "hi2":I
    :goto_10
    sub-int v5, v1, v0

    sub-int v7, v4, v2

    if-ge v5, v7, :cond_21

    .line 828
    move v5, v0

    .local v5, "lo":I
    move v0, v2

    move v2, v5

    .line 829
    move v7, v1

    .local v7, "hi":I
    move v1, v4

    move v4, v7

    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    goto :goto_25

    .line 827
    .end local v5    # "lo":I
    .end local v7    # "hi":I
    :cond_21
    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    .line 835
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v4    # "hi2":I
    .local v5, "hi1":I
    .local v8, "hi2":I
    .local v9, "lo1":I
    .local v10, "lo2":I
    :goto_25
    sub-int v0, v5, v9

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_2c

    .line 836
    goto :goto_5f

    .line 842
    :cond_2c
    add-int v0, v9, v5

    ushr-int/lit8 v4, v0, 0x1

    .line 843
    .local v4, "mi1":I
    aget v11, v3, v4

    .line 844
    .local v11, "key":I
    move v0, v8

    .line 849
    .local v0, "mi2":I
    move v1, v10

    move v7, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v7, "mi2":I
    :goto_35
    if-ge v1, v7, :cond_45

    .line 850
    add-int v0, v1, v7

    ushr-int/lit8 v0, v0, 0x1

    .line 852
    .local v0, "t":I
    aget v2, v6, v0

    if-le v11, v2, :cond_42

    .line 853
    add-int/lit8 v1, v0, 0x1

    goto :goto_44

    .line 855
    :cond_42
    move v2, v0

    move v7, v2

    .line 857
    .end local v0    # "t":I
    :goto_44
    goto :goto_35

    .line 859
    .end local v1    # "loo":I
    :cond_45
    sub-int v0, v7, v10

    add-int/2addr v0, v4

    sub-int v12, v0, v9

    .line 864
    .local v12, "d":I
    add-int v2, p2, v12

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Merger;->-$$Nest$mforkMerger(Ljava/util/DualPivotQuicksort$Merger;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 869
    move v0, v4

    .line 870
    .end local v5    # "hi1":I
    .local v0, "hi1":I
    move v4, v7

    .line 871
    .end local v7    # "mi2":I
    .end local v8    # "hi2":I
    .end local v11    # "key":I
    .end local v12    # "d":I
    .local v4, "hi2":I
    move v1, v0

    move v0, v9

    move v2, v10

    goto :goto_10

    .line 877
    .end local v0    # "hi1":I
    .end local v4    # "hi2":I
    .end local v9    # "lo1":I
    .end local v10    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_57
    move/from16 v9, p4

    move/from16 v5, p5

    move/from16 v10, p7

    move/from16 v8, p8

    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .restart local v5    # "hi1":I
    .restart local v8    # "hi2":I
    .restart local v9    # "lo1":I
    .restart local v10    # "lo2":I
    :goto_5f
    if-ge v9, v5, :cond_7a

    if-ge v10, v8, :cond_7a

    .line 878
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "k":I
    .local v0, "k":I
    aget v2, v3, v9

    aget v4, v6, v10

    if-ge v2, v4, :cond_71

    add-int/lit8 v2, v9, 0x1

    .end local v9    # "lo1":I
    .local v2, "lo1":I
    aget v4, v3, v9

    move v9, v2

    goto :goto_76

    .end local v2    # "lo1":I
    .restart local v9    # "lo1":I
    :cond_71
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "lo2":I
    .local v2, "lo2":I
    aget v4, v6, v10

    move v10, v2

    .end local v2    # "lo2":I
    .restart local v10    # "lo2":I
    :goto_76
    aput v4, p1, p2

    move p2, v0

    goto :goto_5f

    .line 880
    .end local v0    # "k":I
    .restart local p2    # "k":I
    :cond_7a
    if-ne p1, v3, :cond_7e

    if-ge p2, v9, :cond_8b

    .line 881
    :cond_7e
    :goto_7e
    if-ge v9, v5, :cond_8b

    .line 882
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "k":I
    .restart local v0    # "k":I
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "lo1":I
    .local v2, "lo1":I
    aget v4, v3, v9

    aput v4, p1, p2

    move p2, v0

    move v9, v2

    goto :goto_7e

    .line 885
    .end local v0    # "k":I
    .end local v2    # "lo1":I
    .restart local v9    # "lo1":I
    .restart local p2    # "k":I
    :cond_8b
    if-ne p1, v6, :cond_8f

    if-ge p2, v10, :cond_9c

    .line 886
    :cond_8f
    :goto_8f
    if-ge v10, v8, :cond_9c

    .line 887
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "k":I
    .restart local v0    # "k":I
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "lo2":I
    .local v2, "lo2":I
    aget v4, v6, v10

    aput v4, p1, p2

    move p2, v0

    move v10, v2

    goto :goto_8f

    .line 890
    .end local v0    # "k":I
    .end local v2    # "lo2":I
    .restart local v10    # "lo2":I
    .restart local p2    # "k":I
    :cond_9c
    return-void
.end method

.method private static blacklist mergeParts(Ljava/util/DualPivotQuicksort$Merger;[JI[JII[JII)V
    .registers 24
    .param p0, "merger"    # Ljava/util/DualPivotQuicksort$Merger;
    .param p1, "dst"    # [J
    .param p2, "k"    # I
    .param p3, "a1"    # [J
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # [J
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 1574
    move-object/from16 v3, p3

    move-object/from16 v6, p6

    if-eqz p0, :cond_5e

    if-ne v3, v6, :cond_5e

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v4, p8

    .line 1581
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "lo1":I
    .local v1, "hi1":I
    .local v2, "lo2":I
    .local v4, "hi2":I
    :goto_10
    sub-int v5, v1, v0

    sub-int v7, v4, v2

    if-ge v5, v7, :cond_21

    .line 1582
    move v5, v0

    .local v5, "lo":I
    move v0, v2

    move v2, v5

    .line 1583
    move v7, v1

    .local v7, "hi":I
    move v1, v4

    move v4, v7

    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    goto :goto_25

    .line 1581
    .end local v5    # "lo":I
    .end local v7    # "hi":I
    :cond_21
    move v9, v0

    move v5, v1

    move v10, v2

    move v8, v4

    .line 1589
    .end local v0    # "lo1":I
    .end local v1    # "hi1":I
    .end local v2    # "lo2":I
    .end local v4    # "hi2":I
    .local v5, "hi1":I
    .local v8, "hi2":I
    .local v9, "lo1":I
    .local v10, "lo2":I
    :goto_25
    sub-int v0, v5, v9

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_30

    .line 1590
    move-object/from16 v1, p1

    move/from16 v0, p2

    goto :goto_6a

    .line 1596
    :cond_30
    add-int v0, v9, v5

    ushr-int/lit8 v4, v0, 0x1

    .line 1597
    .local v4, "mi1":I
    aget-wide v11, v3, v4

    .line 1598
    .local v11, "key":J
    move v0, v8

    .line 1603
    .local v0, "mi2":I
    move v1, v10

    move v7, v0

    .end local v0    # "mi2":I
    .local v1, "loo":I
    .local v7, "mi2":I
    :goto_39
    if-ge v1, v7, :cond_4b

    .line 1604
    add-int v0, v1, v7

    ushr-int/lit8 v0, v0, 0x1

    .line 1606
    .local v0, "t":I
    aget-wide v13, v6, v0

    cmp-long v2, v11, v13

    if-lez v2, :cond_48

    .line 1607
    add-int/lit8 v1, v0, 0x1

    goto :goto_4a

    .line 1609
    :cond_48
    move v2, v0

    move v7, v2

    .line 1611
    .end local v0    # "t":I
    :goto_4a
    goto :goto_39

    .line 1613
    .end local v1    # "loo":I
    :cond_4b
    sub-int v0, v7, v10

    add-int/2addr v0, v4

    sub-int v13, v0, v9

    .line 1618
    .local v13, "d":I
    add-int v2, p2, v13

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Merger;->-$$Nest$mforkMerger(Ljava/util/DualPivotQuicksort$Merger;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 1623
    move v0, v4

    .line 1624
    .end local v5    # "hi1":I
    .local v0, "hi1":I
    move v4, v7

    .line 1625
    .end local v7    # "mi2":I
    .end local v8    # "hi2":I
    .end local v11    # "key":J
    .end local v13    # "d":I
    .local v4, "hi2":I
    move v1, v0

    move v0, v9

    move v2, v10

    goto :goto_10

    .line 1574
    .end local v0    # "hi1":I
    .end local v4    # "hi2":I
    .end local v9    # "lo1":I
    .end local v10    # "lo2":I
    .restart local p4    # "lo1":I
    .restart local p5    # "hi1":I
    .restart local p7    # "lo2":I
    .restart local p8    # "hi2":I
    :cond_5e
    move-object/from16 v1, p1

    .line 1631
    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v5, p5

    move/from16 v10, p7

    move/from16 v8, p8

    .end local p2    # "k":I
    .end local p4    # "lo1":I
    .end local p5    # "hi1":I
    .end local p7    # "lo2":I
    .end local p8    # "hi2":I
    .local v0, "k":I
    .restart local v5    # "hi1":I
    .restart local v8    # "hi2":I
    .restart local v9    # "lo1":I
    .restart local v10    # "lo2":I
    :goto_6a
    if-ge v9, v5, :cond_87

    if-ge v10, v8, :cond_87

    .line 1632
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .local v2, "k":I
    aget-wide v11, v3, v9

    aget-wide v13, v6, v10

    cmp-long v4, v11, v13

    if-gez v4, :cond_7e

    add-int/lit8 v4, v9, 0x1

    .end local v9    # "lo1":I
    .local v4, "lo1":I
    aget-wide v11, v3, v9

    move v9, v4

    goto :goto_83

    .end local v4    # "lo1":I
    .restart local v9    # "lo1":I
    :cond_7e
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "lo2":I
    .local v4, "lo2":I
    aget-wide v11, v6, v10

    move v10, v4

    .end local v4    # "lo2":I
    .restart local v10    # "lo2":I
    :goto_83
    aput-wide v11, v1, v0

    move v0, v2

    goto :goto_6a

    .line 1634
    .end local v2    # "k":I
    .restart local v0    # "k":I
    :cond_87
    if-ne v1, v3, :cond_8b

    if-ge v0, v9, :cond_98

    .line 1635
    :cond_8b
    :goto_8b
    if-ge v9, v5, :cond_98

    .line 1636
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .restart local v2    # "k":I
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "lo1":I
    .local v4, "lo1":I
    aget-wide v11, v3, v9

    aput-wide v11, v1, v0

    move v0, v2

    move v9, v4

    goto :goto_8b

    .line 1639
    .end local v2    # "k":I
    .end local v4    # "lo1":I
    .restart local v0    # "k":I
    .restart local v9    # "lo1":I
    :cond_98
    if-ne v1, v6, :cond_9c

    if-ge v0, v10, :cond_a9

    .line 1640
    :cond_9c
    :goto_9c
    if-ge v10, v8, :cond_a9

    .line 1641
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .restart local v2    # "k":I
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "lo2":I
    .local v4, "lo2":I
    aget-wide v10, v6, v10

    aput-wide v10, v1, v0

    move v0, v2

    move v10, v4

    goto :goto_9c

    .line 1644
    .end local v2    # "k":I
    .end local v4    # "lo2":I
    .restart local v0    # "k":I
    .restart local v10    # "lo2":I
    :cond_a9
    return-void
.end method

.method private static blacklist mergeRuns([D[DIIZ[III)[D
    .registers 30
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 3859
    move/from16 v9, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 3860
    if-ltz v9, :cond_a

    .line 3861
    return-object p0

    .line 3863
    :cond_a
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_10
    if-le v0, v2, :cond_1b

    .line 3864
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    aput-wide v3, p1, v1

    goto :goto_10

    .line 3866
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1b
    return-object p1

    .line 3872
    :cond_1c
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v10, v2, 0x1

    .line 3873
    .local v10, "rmi":I
    :goto_25
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "mi":I
    .local v6, "mi":I
    add-int/lit8 v0, v6, 0x1

    aget v0, p5, v0

    if-gt v0, v10, :cond_2f

    move v0, v6

    goto :goto_25

    .line 3880
    :cond_2f
    if-eqz p4, :cond_66

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_66

    .line 3881
    new-instance v0, Ljava/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[IIILjava/util/DualPivotQuicksort-IA;)V

    invoke-static {v0}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mforkMe(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/util/DualPivotQuicksort$RunMerger;

    move-result-object v8

    .line 3882
    .local v8, "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v9

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .local v7, "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v3

    .line 3883
    move v6, v7

    .end local v7    # "mi":I
    .local v3, "a1":[D
    .restart local v6    # "mi":I
    invoke-static {v8}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mgetDestination(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 3884
    .end local v8    # "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    .local v0, "a2":[D
    move-object v14, v3

    move-object v3, v0

    move-object/from16 v0, p0

    goto :goto_80

    .line 3885
    .end local v0    # "a2":[D
    .end local v3    # "a1":[D
    :cond_66
    neg-int v3, v9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .restart local v7    # "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v8

    .line 3886
    move v6, v7

    .end local v7    # "mi":I
    .restart local v6    # "mi":I
    .local v8, "a1":[D
    const/4 v3, 0x0

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v3

    move-object v14, v8

    .line 3889
    .end local v8    # "a1":[D
    .local v3, "a2":[D
    .local v14, "a1":[D
    :goto_80
    if-ne v14, v0, :cond_84

    move-object v12, v1

    goto :goto_85

    :cond_84
    move-object v12, v0

    .line 3891
    .local v12, "dst":[D
    :goto_85
    if-ne v14, v0, :cond_8c

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_8e

    :cond_8c
    aget v2, p5, p6

    :goto_8e
    move v13, v2

    .line 3892
    .local v13, "k":I
    if-ne v14, v1, :cond_96

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_98

    :cond_96
    aget v2, p5, p6

    :goto_98
    move v15, v2

    .line 3893
    .local v15, "lo1":I
    if-ne v14, v1, :cond_a0

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_a2

    :cond_a0
    aget v2, p5, v6

    :goto_a2
    move/from16 v16, v2

    .line 3894
    .local v16, "hi1":I
    if-ne v3, v1, :cond_ab

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_ad

    :cond_ab
    aget v2, p5, v6

    :goto_ad
    move/from16 v18, v2

    .line 3895
    .local v18, "lo2":I
    if-ne v3, v1, :cond_b6

    aget v2, p5, p7

    sub-int v2, v2, p2

    goto :goto_b8

    :cond_b6
    aget v2, p5, p7

    :goto_b8
    move/from16 v19, v2

    .line 3897
    .local v19, "hi2":I
    if-eqz p4, :cond_d5

    .line 3898
    new-instance v11, Ljava/util/DualPivotQuicksort$Merger;

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v12    # "dst":[D
    .local v13, "dst":[D
    .local v14, "k":I
    .local v15, "a1":[D
    .local v16, "lo1":I
    .local v17, "hi1":I
    const/4 v12, 0x0

    const/16 v21, 0x0

    move/from16 v20, v19

    move/from16 v19, v18

    move-object/from16 v18, v3

    .end local v3    # "a2":[D
    .local v18, "a2":[D
    .local v19, "lo2":I
    .local v20, "hi2":I
    invoke-direct/range {v11 .. v21}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;IILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v11}, Ljava/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_fd

    .line 3900
    .end local v17    # "hi1":I
    .end local v20    # "hi2":I
    .restart local v3    # "a2":[D
    .restart local v12    # "dst":[D
    .local v13, "k":I
    .local v14, "a1":[D
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v18, "lo2":I
    .local v19, "hi2":I
    :cond_d5
    move/from16 v17, v16

    move/from16 v20, v19

    move/from16 v16, v15

    move/from16 v19, v18

    move-object/from16 v18, v3

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v3    # "a2":[D
    .end local v12    # "dst":[D
    .local v13, "dst":[D
    .local v14, "k":I
    .local v15, "a1":[D
    .local v16, "lo1":I
    .restart local v17    # "hi1":I
    .local v18, "a2":[D
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    const/4 v11, 0x0

    move v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .end local v20    # "hi2":I
    .restart local v12    # "dst":[D
    .local v13, "k":I
    .local v14, "a1":[D
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v17, "a2":[D
    .local v18, "lo2":I
    .local v19, "hi2":I
    invoke-static/range {v11 .. v19}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[DI[DII[DII)V

    move/from16 v19, v18

    move-object/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .line 3902
    .end local v12    # "dst":[D
    .local v13, "dst":[D
    .local v14, "k":I
    .local v15, "a1":[D
    .local v16, "lo1":I
    .local v17, "hi1":I
    .local v18, "a2":[D
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    :goto_fd
    return-object v13
.end method

.method private static blacklist mergeRuns([F[FIIZ[III)[F
    .registers 30
    .param p0, "a"    # [F
    .param p1, "b"    # [F
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 3053
    move/from16 v9, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 3054
    if-ltz v9, :cond_a

    .line 3055
    return-object p0

    .line 3057
    :cond_a
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_10
    if-le v0, v2, :cond_1b

    .line 3058
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget v3, p0, v0

    aput v3, p1, v1

    goto :goto_10

    .line 3060
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1b
    return-object p1

    .line 3066
    :cond_1c
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v10, v2, 0x1

    .line 3067
    .local v10, "rmi":I
    :goto_25
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "mi":I
    .local v6, "mi":I
    add-int/lit8 v0, v6, 0x1

    aget v0, p5, v0

    if-gt v0, v10, :cond_2f

    move v0, v6

    goto :goto_25

    .line 3074
    :cond_2f
    if-eqz p4, :cond_66

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_66

    .line 3075
    new-instance v0, Ljava/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[IIILjava/util/DualPivotQuicksort-IA;)V

    invoke-static {v0}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mforkMe(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/util/DualPivotQuicksort$RunMerger;

    move-result-object v8

    .line 3076
    .local v8, "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v9

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .local v7, "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v3

    .line 3077
    move v6, v7

    .end local v7    # "mi":I
    .local v3, "a1":[F
    .restart local v6    # "mi":I
    invoke-static {v8}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mgetDestination(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 3078
    .end local v8    # "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    .local v0, "a2":[F
    move-object v14, v3

    move-object v3, v0

    move-object/from16 v0, p0

    goto :goto_80

    .line 3079
    .end local v0    # "a2":[F
    .end local v3    # "a1":[F
    :cond_66
    neg-int v3, v9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .restart local v7    # "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v8

    .line 3080
    move v6, v7

    .end local v7    # "mi":I
    .restart local v6    # "mi":I
    .local v8, "a1":[F
    const/4 v3, 0x0

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v3

    move-object v14, v8

    .line 3083
    .end local v8    # "a1":[F
    .local v3, "a2":[F
    .local v14, "a1":[F
    :goto_80
    if-ne v14, v0, :cond_84

    move-object v12, v1

    goto :goto_85

    :cond_84
    move-object v12, v0

    .line 3085
    .local v12, "dst":[F
    :goto_85
    if-ne v14, v0, :cond_8c

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_8e

    :cond_8c
    aget v2, p5, p6

    :goto_8e
    move v13, v2

    .line 3086
    .local v13, "k":I
    if-ne v14, v1, :cond_96

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_98

    :cond_96
    aget v2, p5, p6

    :goto_98
    move v15, v2

    .line 3087
    .local v15, "lo1":I
    if-ne v14, v1, :cond_a0

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_a2

    :cond_a0
    aget v2, p5, v6

    :goto_a2
    move/from16 v16, v2

    .line 3088
    .local v16, "hi1":I
    if-ne v3, v1, :cond_ab

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_ad

    :cond_ab
    aget v2, p5, v6

    :goto_ad
    move/from16 v18, v2

    .line 3089
    .local v18, "lo2":I
    if-ne v3, v1, :cond_b6

    aget v2, p5, p7

    sub-int v2, v2, p2

    goto :goto_b8

    :cond_b6
    aget v2, p5, p7

    :goto_b8
    move/from16 v19, v2

    .line 3091
    .local v19, "hi2":I
    if-eqz p4, :cond_d5

    .line 3092
    new-instance v11, Ljava/util/DualPivotQuicksort$Merger;

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v12    # "dst":[F
    .local v13, "dst":[F
    .local v14, "k":I
    .local v15, "a1":[F
    .local v16, "lo1":I
    .local v17, "hi1":I
    const/4 v12, 0x0

    const/16 v21, 0x0

    move/from16 v20, v19

    move/from16 v19, v18

    move-object/from16 v18, v3

    .end local v3    # "a2":[F
    .local v18, "a2":[F
    .local v19, "lo2":I
    .local v20, "hi2":I
    invoke-direct/range {v11 .. v21}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;IILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v11}, Ljava/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_fd

    .line 3094
    .end local v17    # "hi1":I
    .end local v20    # "hi2":I
    .restart local v3    # "a2":[F
    .restart local v12    # "dst":[F
    .local v13, "k":I
    .local v14, "a1":[F
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v18, "lo2":I
    .local v19, "hi2":I
    :cond_d5
    move/from16 v17, v16

    move/from16 v20, v19

    move/from16 v16, v15

    move/from16 v19, v18

    move-object/from16 v18, v3

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v3    # "a2":[F
    .end local v12    # "dst":[F
    .local v13, "dst":[F
    .local v14, "k":I
    .local v15, "a1":[F
    .local v16, "lo1":I
    .restart local v17    # "hi1":I
    .local v18, "a2":[F
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    const/4 v11, 0x0

    move v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .end local v20    # "hi2":I
    .restart local v12    # "dst":[F
    .local v13, "k":I
    .local v14, "a1":[F
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v17, "a2":[F
    .local v18, "lo2":I
    .local v19, "hi2":I
    invoke-static/range {v11 .. v19}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[FI[FII[FII)V

    move/from16 v19, v18

    move-object/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .line 3096
    .end local v12    # "dst":[F
    .local v13, "dst":[F
    .local v14, "k":I
    .local v15, "a1":[F
    .local v16, "lo1":I
    .local v17, "hi1":I
    .local v18, "a2":[F
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    :goto_fd
    return-object v13
.end method

.method private static blacklist mergeRuns([I[IIIZ[III)[I
    .registers 30
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 758
    move/from16 v9, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 759
    if-ltz v9, :cond_a

    .line 760
    return-object p0

    .line 762
    :cond_a
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_10
    if-le v0, v2, :cond_1b

    .line 763
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget v3, p0, v0

    aput v3, p1, v1

    goto :goto_10

    .line 765
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1b
    return-object p1

    .line 771
    :cond_1c
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v10, v2, 0x1

    .line 772
    .local v10, "rmi":I
    :goto_25
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "mi":I
    .local v6, "mi":I
    add-int/lit8 v0, v6, 0x1

    aget v0, p5, v0

    if-gt v0, v10, :cond_2f

    move v0, v6

    goto :goto_25

    .line 779
    :cond_2f
    if-eqz p4, :cond_66

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_66

    .line 780
    new-instance v0, Ljava/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[IIILjava/util/DualPivotQuicksort-IA;)V

    invoke-static {v0}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mforkMe(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/util/DualPivotQuicksort$RunMerger;

    move-result-object v8

    .line 781
    .local v8, "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v9

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .local v7, "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v3

    .line 782
    move v6, v7

    .end local v7    # "mi":I
    .local v3, "a1":[I
    .restart local v6    # "mi":I
    invoke-static {v8}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mgetDestination(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 783
    .end local v8    # "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    .local v0, "a2":[I
    move-object v14, v3

    move-object v3, v0

    move-object/from16 v0, p0

    goto :goto_80

    .line 784
    .end local v0    # "a2":[I
    .end local v3    # "a1":[I
    :cond_66
    neg-int v3, v9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .restart local v7    # "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v8

    .line 785
    move v6, v7

    .end local v7    # "mi":I
    .restart local v6    # "mi":I
    .local v8, "a1":[I
    const/4 v3, 0x0

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v3

    move-object v14, v8

    .line 788
    .end local v8    # "a1":[I
    .local v3, "a2":[I
    .local v14, "a1":[I
    :goto_80
    if-ne v14, v0, :cond_84

    move-object v12, v1

    goto :goto_85

    :cond_84
    move-object v12, v0

    .line 790
    .local v12, "dst":[I
    :goto_85
    if-ne v14, v0, :cond_8c

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_8e

    :cond_8c
    aget v2, p5, p6

    :goto_8e
    move v13, v2

    .line 791
    .local v13, "k":I
    if-ne v14, v1, :cond_96

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_98

    :cond_96
    aget v2, p5, p6

    :goto_98
    move v15, v2

    .line 792
    .local v15, "lo1":I
    if-ne v14, v1, :cond_a0

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_a2

    :cond_a0
    aget v2, p5, v6

    :goto_a2
    move/from16 v16, v2

    .line 793
    .local v16, "hi1":I
    if-ne v3, v1, :cond_ab

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_ad

    :cond_ab
    aget v2, p5, v6

    :goto_ad
    move/from16 v18, v2

    .line 794
    .local v18, "lo2":I
    if-ne v3, v1, :cond_b6

    aget v2, p5, p7

    sub-int v2, v2, p2

    goto :goto_b8

    :cond_b6
    aget v2, p5, p7

    :goto_b8
    move/from16 v19, v2

    .line 796
    .local v19, "hi2":I
    if-eqz p4, :cond_d5

    .line 797
    new-instance v11, Ljava/util/DualPivotQuicksort$Merger;

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v12    # "dst":[I
    .local v13, "dst":[I
    .local v14, "k":I
    .local v15, "a1":[I
    .local v16, "lo1":I
    .local v17, "hi1":I
    const/4 v12, 0x0

    const/16 v21, 0x0

    move/from16 v20, v19

    move/from16 v19, v18

    move-object/from16 v18, v3

    .end local v3    # "a2":[I
    .local v18, "a2":[I
    .local v19, "lo2":I
    .local v20, "hi2":I
    invoke-direct/range {v11 .. v21}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;IILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v11}, Ljava/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_fd

    .line 799
    .end local v17    # "hi1":I
    .end local v20    # "hi2":I
    .restart local v3    # "a2":[I
    .restart local v12    # "dst":[I
    .local v13, "k":I
    .local v14, "a1":[I
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v18, "lo2":I
    .local v19, "hi2":I
    :cond_d5
    move/from16 v17, v16

    move/from16 v20, v19

    move/from16 v16, v15

    move/from16 v19, v18

    move-object/from16 v18, v3

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v3    # "a2":[I
    .end local v12    # "dst":[I
    .local v13, "dst":[I
    .local v14, "k":I
    .local v15, "a1":[I
    .local v16, "lo1":I
    .restart local v17    # "hi1":I
    .local v18, "a2":[I
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    const/4 v11, 0x0

    move v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .end local v20    # "hi2":I
    .restart local v12    # "dst":[I
    .local v13, "k":I
    .local v14, "a1":[I
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v17, "a2":[I
    .local v18, "lo2":I
    .local v19, "hi2":I
    invoke-static/range {v11 .. v19}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[II[III[III)V

    move/from16 v19, v18

    move-object/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .line 801
    .end local v12    # "dst":[I
    .local v13, "dst":[I
    .local v14, "k":I
    .local v15, "a1":[I
    .local v16, "lo1":I
    .local v17, "hi1":I
    .local v18, "a2":[I
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    :goto_fd
    return-object v13
.end method

.method private static blacklist mergeRuns([J[JIIZ[III)[J
    .registers 30
    .param p0, "a"    # [J
    .param p1, "b"    # [J
    .param p2, "offset"    # I
    .param p3, "aim"    # I
    .param p4, "parallel"    # Z
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 1512
    move/from16 v9, p3

    sub-int v0, p7, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1513
    if-ltz v9, :cond_a

    .line 1514
    return-object p0

    .line 1516
    :cond_a
    aget v0, p5, p7

    .local v0, "i":I
    sub-int v1, v0, p2

    .local v1, "j":I
    aget v2, p5, p6

    .local v2, "low":I
    :goto_10
    if-le v0, v2, :cond_1b

    .line 1517
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    aput-wide v3, p1, v1

    goto :goto_10

    .line 1519
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "low":I
    :cond_1b
    return-object p1

    .line 1525
    :cond_1c
    move/from16 v0, p6

    .local v0, "mi":I
    aget v2, p5, p6

    aget v3, p5, p7

    add-int/2addr v2, v3

    ushr-int/lit8 v10, v2, 0x1

    .line 1526
    .local v10, "rmi":I
    :goto_25
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "mi":I
    .local v6, "mi":I
    add-int/lit8 v0, v6, 0x1

    aget v0, p5, v0

    if-gt v0, v10, :cond_2f

    move v0, v6

    goto :goto_25

    .line 1533
    :cond_2f
    if-eqz p4, :cond_66

    sub-int v0, p7, p6

    const/4 v1, 0x4

    if-le v0, v1, :cond_66

    .line 1534
    new-instance v0, Ljava/util/DualPivotQuicksort$RunMerger;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[IIILjava/util/DualPivotQuicksort-IA;)V

    invoke-static {v0}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mforkMe(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/util/DualPivotQuicksort$RunMerger;

    move-result-object v8

    .line 1535
    .local v8, "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    neg-int v3, v9

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .local v7, "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v3

    .line 1536
    move v6, v7

    .end local v7    # "mi":I
    .local v3, "a1":[J
    .restart local v6    # "mi":I
    invoke-static {v8}, Ljava/util/DualPivotQuicksort$RunMerger;->-$$Nest$mgetDestination(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1537
    .end local v8    # "merger":Ljava/util/DualPivotQuicksort$RunMerger;
    .local v0, "a2":[J
    move-object v14, v3

    move-object v3, v0

    move-object/from16 v0, p0

    goto :goto_80

    .line 1538
    .end local v0    # "a2":[J
    .end local v3    # "a1":[J
    :cond_66
    neg-int v3, v9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move v7, v6

    move/from16 v6, p6

    .end local v6    # "mi":I
    .restart local v7    # "mi":I
    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v8

    .line 1539
    move v6, v7

    .end local v7    # "mi":I
    .restart local v6    # "mi":I
    .local v8, "a1":[J
    const/4 v3, 0x0

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Ljava/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v3

    move-object v14, v8

    .line 1542
    .end local v8    # "a1":[J
    .local v3, "a2":[J
    .local v14, "a1":[J
    :goto_80
    if-ne v14, v0, :cond_84

    move-object v12, v1

    goto :goto_85

    :cond_84
    move-object v12, v0

    .line 1544
    .local v12, "dst":[J
    :goto_85
    if-ne v14, v0, :cond_8c

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_8e

    :cond_8c
    aget v2, p5, p6

    :goto_8e
    move v13, v2

    .line 1545
    .local v13, "k":I
    if-ne v14, v1, :cond_96

    aget v2, p5, p6

    sub-int v2, v2, p2

    goto :goto_98

    :cond_96
    aget v2, p5, p6

    :goto_98
    move v15, v2

    .line 1546
    .local v15, "lo1":I
    if-ne v14, v1, :cond_a0

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_a2

    :cond_a0
    aget v2, p5, v6

    :goto_a2
    move/from16 v16, v2

    .line 1547
    .local v16, "hi1":I
    if-ne v3, v1, :cond_ab

    aget v2, p5, v6

    sub-int v2, v2, p2

    goto :goto_ad

    :cond_ab
    aget v2, p5, v6

    :goto_ad
    move/from16 v18, v2

    .line 1548
    .local v18, "lo2":I
    if-ne v3, v1, :cond_b6

    aget v2, p5, p7

    sub-int v2, v2, p2

    goto :goto_b8

    :cond_b6
    aget v2, p5, p7

    :goto_b8
    move/from16 v19, v2

    .line 1550
    .local v19, "hi2":I
    if-eqz p4, :cond_d5

    .line 1551
    new-instance v11, Ljava/util/DualPivotQuicksort$Merger;

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v12    # "dst":[J
    .local v13, "dst":[J
    .local v14, "k":I
    .local v15, "a1":[J
    .local v16, "lo1":I
    .local v17, "hi1":I
    const/4 v12, 0x0

    const/16 v21, 0x0

    move/from16 v20, v19

    move/from16 v19, v18

    move-object/from16 v18, v3

    .end local v3    # "a2":[J
    .local v18, "a2":[J
    .local v19, "lo2":I
    .local v20, "hi2":I
    invoke-direct/range {v11 .. v21}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;IILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v11}, Ljava/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    goto :goto_fd

    .line 1553
    .end local v17    # "hi1":I
    .end local v20    # "hi2":I
    .restart local v3    # "a2":[J
    .restart local v12    # "dst":[J
    .local v13, "k":I
    .local v14, "a1":[J
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v18, "lo2":I
    .local v19, "hi2":I
    :cond_d5
    move/from16 v17, v16

    move/from16 v20, v19

    move/from16 v16, v15

    move/from16 v19, v18

    move-object/from16 v18, v3

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .end local v3    # "a2":[J
    .end local v12    # "dst":[J
    .local v13, "dst":[J
    .local v14, "k":I
    .local v15, "a1":[J
    .local v16, "lo1":I
    .restart local v17    # "hi1":I
    .local v18, "a2":[J
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    const/4 v11, 0x0

    move v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .end local v20    # "hi2":I
    .restart local v12    # "dst":[J
    .local v13, "k":I
    .local v14, "a1":[J
    .local v15, "lo1":I
    .local v16, "hi1":I
    .local v17, "a2":[J
    .local v18, "lo2":I
    .local v19, "hi2":I
    invoke-static/range {v11 .. v19}, Ljava/util/DualPivotQuicksort;->mergeParts(Ljava/util/DualPivotQuicksort$Merger;[JI[JII[JII)V

    move/from16 v19, v18

    move-object/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    .line 1555
    .end local v12    # "dst":[J
    .local v13, "dst":[J
    .local v14, "k":I
    .local v15, "a1":[J
    .local v16, "lo1":I
    .local v17, "hi1":I
    .local v18, "a2":[J
    .local v19, "lo2":I
    .restart local v20    # "hi2":I
    :goto_fd
    return-object v13
.end method

.method private static blacklist mixedInsertionSort([DIII)V
    .registers 14
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 3553
    if-ne p2, p3, :cond_1f

    .line 3558
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1d

    .line 3559
    move v0, p1

    .local v0, "i":I
    aget-wide v1, p0, p1

    .line 3561
    .local v1, "ai":D
    :goto_9
    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_18

    .line 3562
    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    goto :goto_9

    .line 3564
    :cond_18
    add-int/lit8 v3, v0, 0x1

    aput-wide v1, p0, v3

    .line 3565
    .end local v1    # "ai":D
    goto :goto_2

    .end local v0    # "i":I
    :cond_1d
    goto/16 :goto_e0

    .line 3577
    :cond_1f
    aget-wide v0, p0, p2

    .line 3579
    .local v0, "pin":D
    move v2, p3

    .local v2, "p":I
    :goto_22
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_77

    .line 3580
    move v3, p1

    .local v3, "i":I
    aget-wide v4, p0, p1

    .line 3582
    .local v4, "ai":D
    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4c

    .line 3587
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    .line 3589
    :goto_37
    add-int/lit8 v6, v6, -0x1

    aget-wide v7, p0, v6

    cmpg-double v3, v4, v7

    if-gez v3, :cond_46

    .line 3590
    add-int/lit8 v3, v6, 0x1

    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    goto :goto_37

    .line 3592
    :cond_46
    add-int/lit8 v3, v6, 0x1

    aput-wide v4, p0, v3

    move v3, v6

    goto :goto_76

    .line 3594
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_4c
    if-le v2, v3, :cond_76

    cmpl-double v6, v4, v0

    if-lez v6, :cond_76

    .line 3599
    :goto_52
    add-int/lit8 v2, v2, -0x1

    aget-wide v6, p0, v2

    cmpl-double v6, v6, v0

    if-lez v6, :cond_5b

    goto :goto_52

    .line 3604
    :cond_5b
    if-le v2, v3, :cond_63

    .line 3605
    aget-wide v4, p0, v2

    .line 3606
    aget-wide v6, p0, v3

    aput-wide v6, p0, v2

    .line 3612
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, -0x1

    aget-wide v6, p0, v3

    cmpg-double v6, v4, v6

    if-gez v6, :cond_72

    .line 3613
    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p0, v3

    aput-wide v7, p0, v6

    goto :goto_63

    .line 3615
    :cond_72
    add-int/lit8 v6, v3, 0x1

    aput-wide v4, p0, v6

    .line 3617
    .end local v4    # "ai":D
    :cond_76
    :goto_76
    goto :goto_22

    .line 3622
    .end local v2    # "p":I
    .end local v3    # "i":I
    :cond_77
    :goto_77
    if-ge p1, p3, :cond_e0

    .line 3623
    move v2, p1

    .local v2, "i":I
    aget-wide v3, p0, p1

    .local v3, "a1":D
    add-int/lit8 p1, p1, 0x1

    aget-wide v5, p0, p1

    .line 3630
    .local v5, "a2":D
    cmpl-double v7, v3, v5

    if-lez v7, :cond_ad

    .line 3632
    :goto_84
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v3, v7

    if-gez v7, :cond_93

    .line 3633
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_84

    .line 3635
    :cond_93
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 3637
    :goto_99
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v5, v7

    if-gez v7, :cond_a8

    .line 3638
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_99

    .line 3640
    :cond_a8
    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    goto :goto_dd

    .line 3642
    :cond_ad
    add-int/lit8 v7, v2, -0x1

    aget-wide v7, p0, v7

    cmpg-double v7, v3, v7

    if-gez v7, :cond_dd

    .line 3644
    :goto_b5
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v5, v7

    if-gez v7, :cond_c4

    .line 3645
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_b5

    .line 3647
    :cond_c4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    .line 3649
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmpg-double v7, v3, v7

    if-gez v7, :cond_d9

    .line 3650
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_ca

    .line 3652
    :cond_d9
    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 3622
    .end local v3    # "a1":D
    .end local v5    # "a2":D
    :cond_dd
    :goto_dd
    add-int/lit8 p1, p1, 0x1

    goto :goto_77

    .line 3656
    .end local v0    # "pin":D
    .end local v2    # "i":I
    :cond_e0
    :goto_e0
    return-void
.end method

.method private static blacklist mixedInsertionSort([FIII)V
    .registers 10
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 2747
    if-ne p2, p3, :cond_1f

    .line 2752
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1d

    .line 2753
    move v0, p1

    .local v0, "i":I
    aget v1, p0, p1

    .line 2755
    .local v1, "ai":F
    :goto_9
    add-int/lit8 v0, v0, -0x1

    aget v2, p0, v0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_18

    .line 2756
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v0

    aput v3, p0, v2

    goto :goto_9

    .line 2758
    :cond_18
    add-int/lit8 v2, v0, 0x1

    aput v1, p0, v2

    .line 2759
    .end local v1    # "ai":F
    goto :goto_2

    .end local v0    # "i":I
    :cond_1d
    goto/16 :goto_e0

    .line 2771
    :cond_1f
    aget v0, p0, p2

    .line 2773
    .local v0, "pin":F
    move v1, p3

    .local v1, "p":I
    :goto_22
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_77

    .line 2774
    move v2, p1

    .local v2, "i":I
    aget v3, p0, p1

    .line 2776
    .local v3, "ai":F
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4c

    .line 2781
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v5, p0, v4

    aput v5, p0, v2

    .line 2783
    :goto_37
    add-int/lit8 v4, v4, -0x1

    aget v2, p0, v4

    cmpg-float v2, v3, v2

    if-gez v2, :cond_46

    .line 2784
    add-int/lit8 v2, v4, 0x1

    aget v5, p0, v4

    aput v5, p0, v2

    goto :goto_37

    .line 2786
    :cond_46
    add-int/lit8 v2, v4, 0x1

    aput v3, p0, v2

    move v2, v4

    goto :goto_76

    .line 2788
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_4c
    if-le v1, v2, :cond_76

    cmpl-float v4, v3, v0

    if-lez v4, :cond_76

    .line 2793
    :goto_52
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5b

    goto :goto_52

    .line 2798
    :cond_5b
    if-le v1, v2, :cond_63

    .line 2799
    aget v3, p0, v1

    .line 2800
    aget v4, p0, v2

    aput v4, p0, v1

    .line 2806
    :cond_63
    :goto_63
    add-int/lit8 v2, v2, -0x1

    aget v4, p0, v2

    cmpg-float v4, v3, v4

    if-gez v4, :cond_72

    .line 2807
    add-int/lit8 v4, v2, 0x1

    aget v5, p0, v2

    aput v5, p0, v4

    goto :goto_63

    .line 2809
    :cond_72
    add-int/lit8 v4, v2, 0x1

    aput v3, p0, v4

    .line 2811
    .end local v3    # "ai":F
    :cond_76
    :goto_76
    goto :goto_22

    .line 2816
    .end local v1    # "p":I
    .end local v2    # "i":I
    :cond_77
    :goto_77
    if-ge p1, p3, :cond_e0

    .line 2817
    move v1, p1

    .local v1, "i":I
    aget v2, p0, p1

    .local v2, "a1":F
    add-int/lit8 p1, p1, 0x1

    aget v3, p0, p1

    .line 2824
    .local v3, "a2":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_ad

    .line 2826
    :goto_84
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_93

    .line 2827
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_84

    .line 2829
    :cond_93
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 2831
    :goto_99
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_a8

    .line 2832
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_99

    .line 2834
    :cond_a8
    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    goto :goto_dd

    .line 2836
    :cond_ad
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_dd

    .line 2838
    :goto_b5
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_c4

    .line 2839
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_b5

    .line 2841
    :cond_c4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    .line 2843
    :goto_ca
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_d9

    .line 2844
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_ca

    .line 2846
    :cond_d9
    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 2816
    .end local v2    # "a1":F
    .end local v3    # "a2":F
    :cond_dd
    :goto_dd
    add-int/lit8 p1, p1, 0x1

    goto :goto_77

    .line 2850
    .end local v0    # "pin":F
    .end local v1    # "i":I
    :cond_e0
    :goto_e0
    return-void
.end method

.method private static blacklist mixedInsertionSort([IIII)V
    .registers 10
    .param p0, "a"    # [I
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 452
    if-ne p2, p3, :cond_1d

    .line 457
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1b

    .line 458
    move v0, p1

    .local v0, "i":I
    aget v1, p0, p1

    .line 460
    .local v1, "ai":I
    :goto_9
    add-int/lit8 v0, v0, -0x1

    aget v2, p0, v0

    if-ge v1, v2, :cond_16

    .line 461
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v0

    aput v3, p0, v2

    goto :goto_9

    .line 463
    :cond_16
    add-int/lit8 v2, v0, 0x1

    aput v1, p0, v2

    .line 464
    .end local v1    # "ai":I
    goto :goto_2

    .end local v0    # "i":I
    :cond_1b
    goto/16 :goto_c8

    .line 476
    :cond_1d
    aget v0, p0, p2

    .line 478
    .local v0, "pin":I
    move v1, p3

    .local v1, "p":I
    :goto_20
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_6b

    .line 479
    move v2, p1

    .local v2, "i":I
    aget v3, p0, p1

    .line 481
    .local v3, "ai":I
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    if-ge v3, v4, :cond_46

    .line 486
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v5, p0, v4

    aput v5, p0, v2

    .line 488
    :goto_33
    add-int/lit8 v4, v4, -0x1

    aget v2, p0, v4

    if-ge v3, v2, :cond_40

    .line 489
    add-int/lit8 v2, v4, 0x1

    aget v5, p0, v4

    aput v5, p0, v2

    goto :goto_33

    .line 491
    :cond_40
    add-int/lit8 v2, v4, 0x1

    aput v3, p0, v2

    move v2, v4

    goto :goto_6a

    .line 493
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_46
    if-le v1, v2, :cond_6a

    if-le v3, v0, :cond_6a

    .line 498
    :goto_4a
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-le v4, v0, :cond_51

    goto :goto_4a

    .line 503
    :cond_51
    if-le v1, v2, :cond_59

    .line 504
    aget v3, p0, v1

    .line 505
    aget v4, p0, v2

    aput v4, p0, v1

    .line 511
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, -0x1

    aget v4, p0, v2

    if-ge v3, v4, :cond_66

    .line 512
    add-int/lit8 v4, v2, 0x1

    aget v5, p0, v2

    aput v5, p0, v4

    goto :goto_59

    .line 514
    :cond_66
    add-int/lit8 v4, v2, 0x1

    aput v3, p0, v4

    .line 516
    .end local v3    # "ai":I
    :cond_6a
    :goto_6a
    goto :goto_20

    .line 521
    .end local v1    # "p":I
    .end local v2    # "i":I
    :cond_6b
    :goto_6b
    if-ge p1, p3, :cond_c8

    .line 522
    move v1, p1

    .local v1, "i":I
    aget v2, p0, p1

    .local v2, "a1":I
    add-int/lit8 p1, p1, 0x1

    aget v3, p0, p1

    .line 529
    .local v3, "a2":I
    if-le v2, v3, :cond_9b

    .line 531
    :goto_76
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v2, v4, :cond_83

    .line 532
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_76

    .line 534
    :cond_83
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 536
    :goto_89
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v3, v4, :cond_96

    .line 537
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_89

    .line 539
    :cond_96
    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    goto :goto_c5

    .line 541
    :cond_9b
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    if-ge v2, v4, :cond_c5

    .line 543
    :goto_a1
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v3, v4, :cond_ae

    .line 544
    add-int/lit8 v4, v1, 0x2

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_a1

    .line 546
    :cond_ae
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aput v3, p0, v4

    .line 548
    :goto_b4
    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    if-ge v2, v4, :cond_c1

    .line 549
    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    aput v5, p0, v4

    goto :goto_b4

    .line 551
    :cond_c1
    add-int/lit8 v4, v1, 0x1

    aput v2, p0, v4

    .line 521
    .end local v2    # "a1":I
    .end local v3    # "a2":I
    :cond_c5
    :goto_c5
    add-int/lit8 p1, p1, 0x1

    goto :goto_6b

    .line 555
    .end local v0    # "pin":I
    .end local v1    # "i":I
    :cond_c8
    :goto_c8
    return-void
.end method

.method private static blacklist mixedInsertionSort([JIII)V
    .registers 14
    .param p0, "a"    # [J
    .param p1, "low"    # I
    .param p2, "end"    # I
    .param p3, "high"    # I

    .line 1206
    if-ne p2, p3, :cond_1f

    .line 1211
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1d

    .line 1212
    move v0, p1

    .local v0, "i":I
    aget-wide v1, p0, p1

    .line 1214
    .local v1, "ai":J
    :goto_9
    add-int/lit8 v0, v0, -0x1

    aget-wide v3, p0, v0

    cmp-long v3, v1, v3

    if-gez v3, :cond_18

    .line 1215
    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    goto :goto_9

    .line 1217
    :cond_18
    add-int/lit8 v3, v0, 0x1

    aput-wide v1, p0, v3

    .line 1218
    .end local v1    # "ai":J
    goto :goto_2

    .end local v0    # "i":I
    :cond_1d
    goto/16 :goto_e0

    .line 1230
    :cond_1f
    aget-wide v0, p0, p2

    .line 1232
    .local v0, "pin":J
    move v2, p3

    .local v2, "p":I
    :goto_22
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_77

    .line 1233
    move v3, p1

    .local v3, "i":I
    aget-wide v4, p0, p1

    .line 1235
    .local v4, "ai":J
    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_4c

    .line 1240
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    .line 1242
    :goto_37
    add-int/lit8 v6, v6, -0x1

    aget-wide v7, p0, v6

    cmp-long v3, v4, v7

    if-gez v3, :cond_46

    .line 1243
    add-int/lit8 v3, v6, 0x1

    aget-wide v7, p0, v6

    aput-wide v7, p0, v3

    goto :goto_37

    .line 1245
    :cond_46
    add-int/lit8 v3, v6, 0x1

    aput-wide v4, p0, v3

    move v3, v6

    goto :goto_76

    .line 1247
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_4c
    if-le v2, v3, :cond_76

    cmp-long v6, v4, v0

    if-lez v6, :cond_76

    .line 1252
    :goto_52
    add-int/lit8 v2, v2, -0x1

    aget-wide v6, p0, v2

    cmp-long v6, v6, v0

    if-lez v6, :cond_5b

    goto :goto_52

    .line 1257
    :cond_5b
    if-le v2, v3, :cond_63

    .line 1258
    aget-wide v4, p0, v2

    .line 1259
    aget-wide v6, p0, v3

    aput-wide v6, p0, v2

    .line 1265
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, -0x1

    aget-wide v6, p0, v3

    cmp-long v6, v4, v6

    if-gez v6, :cond_72

    .line 1266
    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p0, v3

    aput-wide v7, p0, v6

    goto :goto_63

    .line 1268
    :cond_72
    add-int/lit8 v6, v3, 0x1

    aput-wide v4, p0, v6

    .line 1270
    .end local v4    # "ai":J
    :cond_76
    :goto_76
    goto :goto_22

    .line 1275
    .end local v2    # "p":I
    .end local v3    # "i":I
    :cond_77
    :goto_77
    if-ge p1, p3, :cond_e0

    .line 1276
    move v2, p1

    .local v2, "i":I
    aget-wide v3, p0, p1

    .local v3, "a1":J
    add-int/lit8 p1, p1, 0x1

    aget-wide v5, p0, p1

    .line 1283
    .local v5, "a2":J
    cmp-long v7, v3, v5

    if-lez v7, :cond_ad

    .line 1285
    :goto_84
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v3, v7

    if-gez v7, :cond_93

    .line 1286
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_84

    .line 1288
    :cond_93
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 1290
    :goto_99
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v5, v7

    if-gez v7, :cond_a8

    .line 1291
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_99

    .line 1293
    :cond_a8
    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    goto :goto_dd

    .line 1295
    :cond_ad
    add-int/lit8 v7, v2, -0x1

    aget-wide v7, p0, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_dd

    .line 1297
    :goto_b5
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v5, v7

    if-gez v7, :cond_c4

    .line 1298
    add-int/lit8 v7, v2, 0x2

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_b5

    .line 1300
    :cond_c4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    aput-wide v5, p0, v7

    .line 1302
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    aget-wide v7, p0, v2

    cmp-long v7, v3, v7

    if-gez v7, :cond_d9

    .line 1303
    add-int/lit8 v7, v2, 0x1

    aget-wide v8, p0, v2

    aput-wide v8, p0, v7

    goto :goto_ca

    .line 1305
    :cond_d9
    add-int/lit8 v7, v2, 0x1

    aput-wide v3, p0, v7

    .line 1275
    .end local v3    # "a1":J
    .end local v5    # "a2":J
    :cond_dd
    :goto_dd
    add-int/lit8 p1, p1, 0x1

    goto :goto_77

    .line 1309
    .end local v0    # "pin":J
    .end local v2    # "i":I
    :cond_e0
    :goto_e0
    return-void
.end method

.method private static blacklist pushDown([DIDII)V
    .registers 11
    .param p0, "a"    # [D
    .param p1, "p"    # I
    .param p2, "value"    # D
    .param p4, "low"    # I
    .param p5, "high"    # I

    .line 3707
    nop

    :goto_1
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    .line 3709
    .local v0, "k":I
    if-le v0, p5, :cond_9

    .line 3710
    goto :goto_1e

    .line 3712
    :cond_9
    if-eq v0, p5, :cond_15

    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p0, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_17

    .line 3713
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 3715
    :cond_17
    aget-wide v1, p0, v0

    cmpg-double v1, v1, p2

    if-gtz v1, :cond_21

    .line 3716
    nop

    .line 3719
    .end local v0    # "k":I
    :goto_1e
    aput-wide p2, p0, p1

    .line 3720
    return-void

    .line 3706
    .restart local v0    # "k":I
    :cond_21
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget-wide v2, p0, v0

    aput-wide v2, p0, p1

    move p1, v1

    goto :goto_1
.end method

.method private static blacklist pushDown([FIFII)V
    .registers 8
    .param p0, "a"    # [F
    .param p1, "p"    # I
    .param p2, "value"    # F
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 2901
    nop

    :goto_1
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 2903
    .local v0, "k":I
    if-le v0, p4, :cond_9

    .line 2904
    goto :goto_1e

    .line 2906
    :cond_9
    if-eq v0, p4, :cond_15

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    .line 2907
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 2909
    :cond_17
    aget v1, p0, v0

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_21

    .line 2910
    nop

    .line 2913
    .end local v0    # "k":I
    :goto_1e
    aput p2, p0, p1

    .line 2914
    return-void

    .line 2900
    .restart local v0    # "k":I
    :cond_21
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget v2, p0, v0

    aput v2, p0, p1

    move p1, v1

    goto :goto_1
.end method

.method private static blacklist pushDown([IIIII)V
    .registers 8
    .param p0, "a"    # [I
    .param p1, "p"    # I
    .param p2, "value"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 606
    nop

    :goto_1
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 608
    .local v0, "k":I
    if-le v0, p4, :cond_9

    .line 609
    goto :goto_1a

    .line 611
    :cond_9
    if-eq v0, p4, :cond_13

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-ge v1, v2, :cond_15

    .line 612
    :cond_13
    add-int/lit8 v0, v0, -0x1

    .line 614
    :cond_15
    aget v1, p0, v0

    if-gt v1, p2, :cond_1d

    .line 615
    nop

    .line 618
    .end local v0    # "k":I
    :goto_1a
    aput p2, p0, p1

    .line 619
    return-void

    .line 605
    .restart local v0    # "k":I
    :cond_1d
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget v2, p0, v0

    aput v2, p0, p1

    move p1, v1

    goto :goto_1
.end method

.method private static blacklist pushDown([JIJII)V
    .registers 11
    .param p0, "a"    # [J
    .param p1, "p"    # I
    .param p2, "value"    # J
    .param p4, "low"    # I
    .param p5, "high"    # I

    .line 1360
    nop

    :goto_1
    shl-int/lit8 v0, p1, 0x1

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    .line 1362
    .local v0, "k":I
    if-le v0, p5, :cond_9

    .line 1363
    goto :goto_1e

    .line 1365
    :cond_9
    if-eq v0, p5, :cond_15

    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p0, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_17

    .line 1366
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 1368
    :cond_17
    aget-wide v1, p0, v0

    cmp-long v1, v1, p2

    if-gtz v1, :cond_21

    .line 1369
    nop

    .line 1372
    .end local v0    # "k":I
    :goto_1e
    aput-wide p2, p0, p1

    .line 1373
    return-void

    .line 1359
    .restart local v0    # "k":I
    :cond_21
    move v1, v0

    .end local p1    # "p":I
    .local v1, "p":I
    aget-wide v2, p0, v0

    aput-wide v2, p0, p1

    move p1, v1

    goto :goto_1
.end method

.method static blacklist sort(Ljava/util/DualPivotQuicksort$Sorter;[DIII)V
    .registers 32
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [D
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 3281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_a
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 3286
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_22

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_22

    .line 3287
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava/util/DualPivotQuicksort;->mixedInsertionSort([DIII)V

    .line 3288
    return-void

    .line 3294
    :cond_22
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_2a

    .line 3295
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->insertionSort([DII)V

    .line 3296
    return-void

    .line 3303
    :cond_2a
    const/16 v7, 0x1000

    if-eqz v3, :cond_34

    if-le v6, v7, :cond_3b

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3b

    .line 3304
    :cond_34
    invoke-static {v0, v1, v2, v6}, Ljava/util/DualPivotQuicksort;->tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[DII)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 3305
    return-void

    .line 3312
    :cond_3b
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_45

    .line 3313
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->heapSort([DII)V

    .line 3314
    return-void

    .line 3321
    :cond_45
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 3329
    .local v8, "step":I
    add-int v9, v2, v8

    .line 3330
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 3331
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 3332
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 3333
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 3334
    .local v13, "e4":I
    aget-wide v14, v1, v11

    .line 3348
    .local v14, "a3":D
    aget-wide v16, v1, v10

    aget-wide v18, v1, v12

    cmpg-double v16, v16, v18

    if-gez v16, :cond_6d

    aget-wide v16, v1, v10

    .local v16, "t":D
    aget-wide v18, v1, v12

    aput-wide v18, v1, v10

    aput-wide v16, v1, v12

    .line 3349
    .end local v16    # "t":D
    :cond_6d
    aget-wide v16, v1, v13

    aget-wide v18, v1, v9

    cmpg-double v16, v16, v18

    if-gez v16, :cond_7d

    aget-wide v16, v1, v13

    .restart local v16    # "t":D
    aget-wide v18, v1, v9

    aput-wide v18, v1, v13

    aput-wide v16, v1, v9

    .line 3350
    .end local v16    # "t":D
    :cond_7d
    aget-wide v16, v1, v10

    aget-wide v18, v1, v13

    cmpg-double v16, v16, v18

    if-gez v16, :cond_8d

    aget-wide v16, v1, v10

    .restart local v16    # "t":D
    aget-wide v18, v1, v13

    aput-wide v18, v1, v10

    aput-wide v16, v1, v13

    .line 3351
    .end local v16    # "t":D
    :cond_8d
    aget-wide v16, v1, v12

    aget-wide v18, v1, v9

    cmpg-double v16, v16, v18

    if-gez v16, :cond_9d

    aget-wide v16, v1, v12

    .restart local v16    # "t":D
    aget-wide v18, v1, v9

    aput-wide v18, v1, v12

    aput-wide v16, v1, v9

    .line 3352
    .end local v16    # "t":D
    :cond_9d
    aget-wide v16, v1, v13

    aget-wide v18, v1, v12

    cmpg-double v16, v16, v18

    if-gez v16, :cond_ad

    aget-wide v16, v1, v13

    .restart local v16    # "t":D
    aget-wide v18, v1, v12

    aput-wide v18, v1, v13

    aput-wide v16, v1, v12

    .line 3354
    .end local v16    # "t":D
    :cond_ad
    aget-wide v16, v1, v12

    cmpg-double v16, v14, v16

    if-gez v16, :cond_cb

    .line 3355
    aget-wide v16, v1, v9

    cmpg-double v16, v14, v16

    if-gez v16, :cond_c4

    .line 3356
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aget-wide v16, v1, v9

    aput-wide v16, v1, v12

    aput-wide v14, v1, v9

    goto :goto_e8

    .line 3358
    :cond_c4
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aput-wide v14, v1, v12

    goto :goto_e8

    .line 3360
    :cond_cb
    aget-wide v16, v1, v13

    cmpl-double v16, v14, v16

    if-lez v16, :cond_e8

    .line 3361
    aget-wide v16, v1, v10

    cmpl-double v16, v14, v16

    if-lez v16, :cond_e2

    .line 3362
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aget-wide v16, v1, v10

    aput-wide v16, v1, v13

    aput-wide v14, v1, v10

    goto :goto_e8

    .line 3364
    :cond_e2
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aput-wide v14, v1, v13

    .line 3369
    :cond_e8
    :goto_e8
    move/from16 v16, p3

    .line 3370
    .local v16, "lower":I
    move/from16 v17, v5

    .line 3375
    .local v17, "upper":I
    aget-wide v18, v1, v9

    aget-wide v20, v1, v12

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1a9

    aget-wide v18, v1, v12

    aget-wide v20, v1, v11

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1a9

    aget-wide v18, v1, v11

    aget-wide v20, v1, v13

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1a9

    aget-wide v18, v1, v13

    aget-wide v20, v1, v10

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1a9

    .line 3382
    aget-wide v18, v1, v9

    .line 3383
    .local v18, "pivot1":D
    aget-wide v20, v1, v10

    .line 3392
    .local v20, "pivot2":D
    aget-wide v22, v1, v16

    aput-wide v22, v1, v9

    .line 3393
    aget-wide v22, v1, v17

    aput-wide v22, v1, v10

    .line 3398
    :goto_118
    add-int/lit8 v16, v16, 0x1

    aget-wide v22, v1, v16

    cmpg-double v22, v22, v18

    if-gez v22, :cond_121

    goto :goto_118

    .line 3399
    :cond_121
    :goto_121
    add-int/lit8 v17, v17, -0x1

    aget-wide v22, v1, v17

    cmpl-double v22, v22, v20

    if-lez v22, :cond_12a

    goto :goto_121

    .line 3420
    :cond_12a
    add-int/lit8 v16, v16, -0x1

    move/from16 v22, v16

    .local v22, "unused":I
    add-int/lit8 v17, v17, 0x1

    move/from16 v23, v17

    move/from16 v7, v16

    move/from16 v2, v17

    .end local v16    # "lower":I
    .end local v17    # "upper":I
    .local v2, "upper":I
    .local v7, "lower":I
    .local v23, "k":I
    :goto_136
    move/from16 p4, v3

    .end local v3    # "bits":I
    .local p4, "bits":I
    add-int/lit8 v3, v23, -0x1

    .end local v23    # "k":I
    .local v3, "k":I
    if-le v3, v7, :cond_175

    .line 3421
    aget-wide v16, v1, v3

    .line 3423
    .local v16, "ak":D
    cmpg-double v23, v16, v18

    if-gez v23, :cond_164

    .line 3424
    :cond_142
    if-ge v7, v3, :cond_170

    .line 3425
    add-int/lit8 v7, v7, 0x1

    aget-wide v23, v1, v7

    cmpl-double v23, v23, v18

    if-ltz v23, :cond_142

    .line 3426
    aget-wide v23, v1, v7

    cmpl-double v23, v23, v20

    if-lez v23, :cond_15d

    .line 3427
    add-int/lit8 v2, v2, -0x1

    aget-wide v23, v1, v2

    aput-wide v23, v1, v3

    .line 3428
    aget-wide v23, v1, v7

    aput-wide v23, v1, v2

    goto :goto_161

    .line 3430
    :cond_15d
    aget-wide v23, v1, v7

    aput-wide v23, v1, v3

    .line 3432
    :goto_161
    aput-wide v16, v1, v7

    .line 3433
    goto :goto_170

    .line 3436
    :cond_164
    cmpl-double v23, v16, v20

    if-lez v23, :cond_170

    .line 3437
    add-int/lit8 v2, v2, -0x1

    aget-wide v23, v1, v2

    aput-wide v23, v1, v3

    .line 3438
    aput-wide v16, v1, v2

    .line 3440
    .end local v16    # "ak":D
    :cond_170
    :goto_170
    move/from16 v23, v3

    move/from16 v3, p4

    goto :goto_136

    .line 3445
    .end local v3    # "k":I
    .end local v22    # "unused":I
    :cond_175
    aget-wide v16, v1, v7

    aput-wide v16, v1, p3

    aput-wide v18, v1, v7

    .line 3446
    aget-wide v16, v1, v2

    aput-wide v16, v1, v5

    aput-wide v20, v1, v2

    .line 3452
    const/16 v3, 0x1000

    if-le v6, v3, :cond_198

    if-eqz v0, :cond_198

    .line 3453
    or-int/lit8 v3, p4, 0x1

    move/from16 v22, v5

    .end local v5    # "end":I
    .local v22, "end":I
    add-int/lit8 v5, v7, 0x1

    invoke-static {v0, v3, v5, v2}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    .line 3454
    or-int/lit8 v3, p4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v0, v3, v5, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_1a8

    .line 3452
    .end local v22    # "end":I
    .restart local v5    # "end":I
    :cond_198
    move/from16 v22, v5

    .line 3456
    .end local v5    # "end":I
    .restart local v22    # "end":I
    or-int/lit8 v3, p4, 0x1

    add-int/lit8 v5, v7, 0x1

    invoke-static {v0, v1, v3, v5, v2}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3457
    or-int/lit8 v3, p4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3460
    .end local v18    # "pivot1":D
    .end local v20    # "pivot2":D
    :goto_1a8
    goto :goto_204

    .line 3375
    .end local v2    # "upper":I
    .end local v7    # "lower":I
    .end local v22    # "end":I
    .end local p4    # "bits":I
    .local v3, "bits":I
    .restart local v5    # "end":I
    .local v16, "lower":I
    .restart local v17    # "upper":I
    :cond_1a9
    move/from16 p4, v3

    move/from16 v22, v5

    .line 3466
    .end local v3    # "bits":I
    .end local v5    # "end":I
    .restart local v22    # "end":I
    .restart local p4    # "bits":I
    aget-wide v2, v1, v11

    .line 3475
    .local v2, "pivot":D
    aget-wide v18, v1, v16

    aput-wide v18, v1, v11

    .line 3496
    add-int/lit8 v17, v17, 0x1

    move/from16 v5, v17

    move v7, v5

    move-wide/from16 v25, v2

    move/from16 v2, v16

    move-wide/from16 v16, v25

    .end local v17    # "upper":I
    .local v2, "lower":I
    .local v5, "upper":I
    .local v7, "k":I
    .local v16, "pivot":D
    :goto_1be
    add-int/lit8 v7, v7, -0x1

    if-le v7, v2, :cond_1eb

    .line 3497
    aget-wide v18, v1, v7

    .line 3499
    .local v18, "ak":D
    cmpl-double v3, v18, v16

    if-eqz v3, :cond_1ea

    .line 3500
    aput-wide v16, v1, v7

    .line 3502
    cmpg-double v3, v18, v16

    if-gez v3, :cond_1e6

    .line 3503
    :goto_1ce
    add-int/lit8 v2, v2, 0x1

    aget-wide v20, v1, v2

    cmpg-double v3, v20, v16

    if-gez v3, :cond_1d7

    goto :goto_1ce

    .line 3505
    :cond_1d7
    aget-wide v20, v1, v2

    cmpl-double v3, v20, v16

    if-lez v3, :cond_1e3

    .line 3506
    add-int/lit8 v5, v5, -0x1

    aget-wide v20, v1, v2

    aput-wide v20, v1, v5

    .line 3508
    :cond_1e3
    aput-wide v18, v1, v2

    goto :goto_1ea

    .line 3510
    :cond_1e6
    add-int/lit8 v5, v5, -0x1

    aput-wide v18, v1, v5

    .line 3513
    .end local v18    # "ak":D
    :cond_1ea
    :goto_1ea
    goto :goto_1be

    .line 3518
    .end local v7    # "k":I
    :cond_1eb
    aget-wide v18, v1, v2

    aput-wide v18, v1, p3

    aput-wide v16, v1, v2

    .line 3525
    const/16 v3, 0x1000

    if-le v6, v3, :cond_1fd

    if-eqz v0, :cond_1fd

    .line 3526
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v3, v5, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_202

    .line 3528
    :cond_1fd
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3531
    .end local v16    # "pivot":D
    :goto_202
    move v7, v2

    move v2, v5

    .end local v5    # "upper":I
    .local v2, "upper":I
    .local v7, "lower":I
    :goto_204
    move v4, v7

    .line 3532
    .end local v2    # "upper":I
    .end local v6    # "size":I
    .end local v7    # "lower":I
    .end local v8    # "step":I
    .end local v9    # "e1":I
    .end local v10    # "e5":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":D
    .end local v22    # "end":I
    move/from16 v2, p3

    move/from16 v3, p4

    goto/16 :goto_a
.end method

.method static blacklist sort(Ljava/util/DualPivotQuicksort$Sorter;[FIII)V
    .registers 26
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [F
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 2475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_a
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 2480
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_22

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_22

    .line 2481
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava/util/DualPivotQuicksort;->mixedInsertionSort([FIII)V

    .line 2482
    return-void

    .line 2488
    :cond_22
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_2a

    .line 2489
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->insertionSort([FII)V

    .line 2490
    return-void

    .line 2497
    :cond_2a
    const/16 v7, 0x1000

    if-eqz v3, :cond_34

    if-le v6, v7, :cond_3b

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3b

    .line 2498
    :cond_34
    invoke-static {v0, v1, v2, v6}, Ljava/util/DualPivotQuicksort;->tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[FII)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 2499
    return-void

    .line 2506
    :cond_3b
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_45

    .line 2507
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->heapSort([FII)V

    .line 2508
    return-void

    .line 2515
    :cond_45
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 2523
    .local v8, "step":I
    add-int v9, v2, v8

    .line 2524
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 2525
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 2526
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 2527
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 2528
    .local v13, "e4":I
    aget v14, v1, v11

    .line 2542
    .local v14, "a3":F
    aget v15, v1, v10

    aget v16, v1, v12

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6d

    aget v15, v1, v10

    .local v15, "t":F
    aget v16, v1, v12

    aput v16, v1, v10

    aput v15, v1, v12

    .line 2543
    .end local v15    # "t":F
    :cond_6d
    aget v15, v1, v13

    aget v16, v1, v9

    cmpg-float v15, v15, v16

    if-gez v15, :cond_7d

    aget v15, v1, v13

    .restart local v15    # "t":F
    aget v16, v1, v9

    aput v16, v1, v13

    aput v15, v1, v9

    .line 2544
    .end local v15    # "t":F
    :cond_7d
    aget v15, v1, v10

    aget v16, v1, v13

    cmpg-float v15, v15, v16

    if-gez v15, :cond_8d

    aget v15, v1, v10

    .restart local v15    # "t":F
    aget v16, v1, v13

    aput v16, v1, v10

    aput v15, v1, v13

    .line 2545
    .end local v15    # "t":F
    :cond_8d
    aget v15, v1, v12

    aget v16, v1, v9

    cmpg-float v15, v15, v16

    if-gez v15, :cond_9d

    aget v15, v1, v12

    .restart local v15    # "t":F
    aget v16, v1, v9

    aput v16, v1, v12

    aput v15, v1, v9

    .line 2546
    .end local v15    # "t":F
    :cond_9d
    aget v15, v1, v13

    aget v16, v1, v12

    cmpg-float v15, v15, v16

    if-gez v15, :cond_ad

    aget v15, v1, v13

    .restart local v15    # "t":F
    aget v16, v1, v12

    aput v16, v1, v13

    aput v15, v1, v12

    .line 2548
    .end local v15    # "t":F
    :cond_ad
    aget v15, v1, v12

    cmpg-float v15, v14, v15

    if-gez v15, :cond_cb

    .line 2549
    aget v15, v1, v9

    cmpg-float v15, v14, v15

    if-gez v15, :cond_c4

    .line 2550
    aget v15, v1, v12

    aput v15, v1, v11

    aget v15, v1, v9

    aput v15, v1, v12

    aput v14, v1, v9

    goto :goto_e8

    .line 2552
    :cond_c4
    aget v15, v1, v12

    aput v15, v1, v11

    aput v14, v1, v12

    goto :goto_e8

    .line 2554
    :cond_cb
    aget v15, v1, v13

    cmpl-float v15, v14, v15

    if-lez v15, :cond_e8

    .line 2555
    aget v15, v1, v10

    cmpl-float v15, v14, v15

    if-lez v15, :cond_e2

    .line 2556
    aget v15, v1, v13

    aput v15, v1, v11

    aget v15, v1, v10

    aput v15, v1, v13

    aput v14, v1, v10

    goto :goto_e8

    .line 2558
    :cond_e2
    aget v15, v1, v13

    aput v15, v1, v11

    aput v14, v1, v13

    .line 2563
    :cond_e8
    :goto_e8
    move/from16 v15, p3

    .line 2564
    .local v15, "lower":I
    move/from16 v16, v5

    .line 2569
    .local v16, "upper":I
    aget v17, v1, v9

    aget v18, v1, v12

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1a5

    aget v17, v1, v12

    aget v18, v1, v11

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1a5

    aget v17, v1, v11

    aget v18, v1, v13

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1a5

    aget v17, v1, v13

    aget v18, v1, v10

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1a5

    .line 2576
    aget v17, v1, v9

    .line 2577
    .local v17, "pivot1":F
    aget v18, v1, v10

    .line 2586
    .local v18, "pivot2":F
    aget v19, v1, v15

    aput v19, v1, v9

    .line 2587
    aget v19, v1, v16

    aput v19, v1, v10

    .line 2592
    :goto_118
    add-int/lit8 v15, v15, 0x1

    aget v19, v1, v15

    cmpg-float v19, v19, v17

    if-gez v19, :cond_121

    goto :goto_118

    .line 2593
    :cond_121
    :goto_121
    add-int/lit8 v16, v16, -0x1

    aget v19, v1, v16

    cmpl-float v19, v19, v18

    if-lez v19, :cond_12a

    goto :goto_121

    .line 2614
    :cond_12a
    add-int/lit8 v15, v15, -0x1

    move/from16 v19, v15

    .local v19, "unused":I
    add-int/lit8 v16, v16, 0x1

    move/from16 v20, v16

    move/from16 v7, v16

    .end local v16    # "upper":I
    .local v7, "upper":I
    .local v20, "k":I
    :goto_134
    add-int/lit8 v2, v20, -0x1

    .end local v20    # "k":I
    .local v2, "k":I
    if-le v2, v15, :cond_171

    .line 2615
    aget v16, v1, v2

    .line 2617
    .local v16, "ak":F
    cmpg-float v20, v16, v17

    if-gez v20, :cond_160

    .line 2618
    :cond_13e
    if-ge v15, v2, :cond_16c

    .line 2619
    add-int/lit8 v15, v15, 0x1

    aget v20, v1, v15

    cmpl-float v20, v20, v17

    if-ltz v20, :cond_13e

    .line 2620
    aget v20, v1, v15

    cmpl-float v20, v20, v18

    if-lez v20, :cond_159

    .line 2621
    add-int/lit8 v7, v7, -0x1

    aget v20, v1, v7

    aput v20, v1, v2

    .line 2622
    aget v20, v1, v15

    aput v20, v1, v7

    goto :goto_15d

    .line 2624
    :cond_159
    aget v20, v1, v15

    aput v20, v1, v2

    .line 2626
    :goto_15d
    aput v16, v1, v15

    .line 2627
    goto :goto_16c

    .line 2630
    :cond_160
    cmpl-float v20, v16, v18

    if-lez v20, :cond_16c

    .line 2631
    add-int/lit8 v7, v7, -0x1

    aget v20, v1, v7

    aput v20, v1, v2

    .line 2632
    aput v16, v1, v7

    .line 2634
    .end local v16    # "ak":F
    :cond_16c
    :goto_16c
    move/from16 v20, v2

    move/from16 v2, p3

    goto :goto_134

    .line 2639
    .end local v2    # "k":I
    .end local v19    # "unused":I
    :cond_171
    aget v2, v1, v15

    aput v2, v1, p3

    aput v17, v1, v15

    .line 2640
    aget v2, v1, v7

    aput v2, v1, v5

    aput v18, v1, v7

    .line 2646
    const/16 v2, 0x1000

    if-le v6, v2, :cond_194

    if-eqz v0, :cond_194

    .line 2647
    or-int/lit8 v2, v3, 0x1

    move/from16 p4, v3

    .end local v3    # "bits":I
    .local p4, "bits":I
    add-int/lit8 v3, v15, 0x1

    invoke-static {v0, v2, v3, v7}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    .line 2648
    or-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, v7, 0x1

    invoke-static {v0, v2, v3, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_1a4

    .line 2646
    .end local p4    # "bits":I
    .restart local v3    # "bits":I
    :cond_194
    move/from16 p4, v3

    .line 2650
    .end local v3    # "bits":I
    .restart local p4    # "bits":I
    or-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, v15, 0x1

    invoke-static {v0, v1, v2, v3, v7}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2651
    or-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, v7, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2654
    .end local v17    # "pivot1":F
    .end local v18    # "pivot2":F
    :goto_1a4
    goto :goto_1f7

    .line 2569
    .end local v7    # "upper":I
    .end local p4    # "bits":I
    .restart local v3    # "bits":I
    .local v16, "upper":I
    :cond_1a5
    move/from16 p4, v3

    .line 2660
    .end local v3    # "bits":I
    .restart local p4    # "bits":I
    aget v2, v1, v11

    .line 2669
    .local v2, "pivot":F
    aget v3, v1, v15

    aput v3, v1, v11

    .line 2690
    add-int/lit8 v16, v16, 0x1

    move/from16 v3, v16

    move/from16 v7, v16

    .end local v16    # "upper":I
    .local v3, "k":I
    .restart local v7    # "upper":I
    :goto_1b3
    add-int/lit8 v3, v3, -0x1

    if-le v3, v15, :cond_1e0

    .line 2691
    aget v16, v1, v3

    .line 2693
    .local v16, "ak":F
    cmpl-float v17, v16, v2

    if-eqz v17, :cond_1df

    .line 2694
    aput v2, v1, v3

    .line 2696
    cmpg-float v17, v16, v2

    if-gez v17, :cond_1db

    .line 2697
    :goto_1c3
    add-int/lit8 v15, v15, 0x1

    aget v17, v1, v15

    cmpg-float v17, v17, v2

    if-gez v17, :cond_1cc

    goto :goto_1c3

    .line 2699
    :cond_1cc
    aget v17, v1, v15

    cmpl-float v17, v17, v2

    if-lez v17, :cond_1d8

    .line 2700
    add-int/lit8 v7, v7, -0x1

    aget v17, v1, v15

    aput v17, v1, v7

    .line 2702
    :cond_1d8
    aput v16, v1, v15

    goto :goto_1df

    .line 2704
    :cond_1db
    add-int/lit8 v7, v7, -0x1

    aput v16, v1, v7

    .line 2707
    .end local v16    # "ak":F
    :cond_1df
    :goto_1df
    goto :goto_1b3

    .line 2712
    .end local v3    # "k":I
    :cond_1e0
    aget v3, v1, v15

    aput v3, v1, p3

    aput v2, v1, v15

    .line 2719
    const/16 v3, 0x1000

    if-le v6, v3, :cond_1f2

    if-eqz v0, :cond_1f2

    .line 2720
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v3, v7, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_1f7

    .line 2722
    :cond_1f2
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v1, v3, v7, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2725
    .end local v2    # "pivot":F
    :goto_1f7
    move v4, v15

    .line 2726
    .end local v5    # "end":I
    .end local v6    # "size":I
    .end local v7    # "upper":I
    .end local v8    # "step":I
    .end local v9    # "e1":I
    .end local v10    # "e5":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":F
    .end local v15    # "lower":I
    move/from16 v2, p3

    move/from16 v3, p4

    goto/16 :goto_a
.end method

.method static blacklist sort(Ljava/util/DualPivotQuicksort$Sorter;[IIII)V
    .registers 26
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [I
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_a
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 185
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_22

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_22

    .line 186
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava/util/DualPivotQuicksort;->mixedInsertionSort([IIII)V

    .line 187
    return-void

    .line 193
    :cond_22
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_2a

    .line 194
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->insertionSort([III)V

    .line 195
    return-void

    .line 202
    :cond_2a
    const/16 v7, 0x1000

    if-eqz v3, :cond_34

    if-le v6, v7, :cond_3b

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3b

    .line 203
    :cond_34
    invoke-static {v0, v1, v2, v6}, Ljava/util/DualPivotQuicksort;->tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[III)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 204
    return-void

    .line 211
    :cond_3b
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_45

    .line 212
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->heapSort([III)V

    .line 213
    return-void

    .line 220
    :cond_45
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 228
    .local v8, "step":I
    add-int v9, v2, v8

    .line 229
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 230
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 231
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 232
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 233
    .local v13, "e4":I
    aget v14, v1, v11

    .line 247
    .local v14, "a3":I
    aget v15, v1, v10

    aget v7, v1, v12

    if-ge v15, v7, :cond_6b

    aget v7, v1, v10

    .local v7, "t":I
    aget v15, v1, v12

    aput v15, v1, v10

    aput v7, v1, v12

    .line 248
    .end local v7    # "t":I
    :cond_6b
    aget v7, v1, v13

    aget v15, v1, v9

    if-ge v7, v15, :cond_79

    aget v7, v1, v13

    .restart local v7    # "t":I
    aget v15, v1, v9

    aput v15, v1, v13

    aput v7, v1, v9

    .line 249
    .end local v7    # "t":I
    :cond_79
    aget v7, v1, v10

    aget v15, v1, v13

    if-ge v7, v15, :cond_87

    aget v7, v1, v10

    .restart local v7    # "t":I
    aget v15, v1, v13

    aput v15, v1, v10

    aput v7, v1, v13

    .line 250
    .end local v7    # "t":I
    :cond_87
    aget v7, v1, v12

    aget v15, v1, v9

    if-ge v7, v15, :cond_95

    aget v7, v1, v12

    .restart local v7    # "t":I
    aget v15, v1, v9

    aput v15, v1, v12

    aput v7, v1, v9

    .line 251
    .end local v7    # "t":I
    :cond_95
    aget v7, v1, v13

    aget v15, v1, v12

    if-ge v7, v15, :cond_a3

    aget v7, v1, v13

    .restart local v7    # "t":I
    aget v15, v1, v12

    aput v15, v1, v13

    aput v7, v1, v12

    .line 253
    .end local v7    # "t":I
    :cond_a3
    aget v7, v1, v12

    if-ge v14, v7, :cond_bd

    .line 254
    aget v7, v1, v9

    if-ge v14, v7, :cond_b6

    .line 255
    aget v7, v1, v12

    aput v7, v1, v11

    aget v7, v1, v9

    aput v7, v1, v12

    aput v14, v1, v9

    goto :goto_d6

    .line 257
    :cond_b6
    aget v7, v1, v12

    aput v7, v1, v11

    aput v14, v1, v12

    goto :goto_d6

    .line 259
    :cond_bd
    aget v7, v1, v13

    if-le v14, v7, :cond_d6

    .line 260
    aget v7, v1, v10

    if-le v14, v7, :cond_d0

    .line 261
    aget v7, v1, v13

    aput v7, v1, v11

    aget v7, v1, v10

    aput v7, v1, v13

    aput v14, v1, v10

    goto :goto_d6

    .line 263
    :cond_d0
    aget v7, v1, v13

    aput v7, v1, v11

    aput v14, v1, v13

    .line 268
    :cond_d6
    :goto_d6
    move/from16 v7, p3

    .line 269
    .local v7, "lower":I
    move v15, v5

    .line 274
    .local v15, "upper":I
    aget v2, v1, v9

    move/from16 p4, v3

    .end local v3    # "bits":I
    .local p4, "bits":I
    aget v3, v1, v12

    if-ge v2, v3, :cond_1a2

    aget v2, v1, v12

    aget v3, v1, v11

    if-ge v2, v3, :cond_1a2

    aget v2, v1, v11

    aget v3, v1, v13

    if-ge v2, v3, :cond_1a2

    aget v2, v1, v13

    aget v3, v1, v10

    if-ge v2, v3, :cond_1a2

    .line 281
    aget v2, v1, v9

    .line 282
    .local v2, "pivot1":I
    aget v3, v1, v10

    .line 291
    .local v3, "pivot2":I
    aget v16, v1, v7

    aput v16, v1, v9

    .line 292
    aget v16, v1, v15

    aput v16, v1, v10

    .line 297
    :goto_ff
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v5

    .end local v5    # "end":I
    .local v16, "end":I
    aget v5, v1, v7

    if-ge v5, v2, :cond_10a

    move/from16 v5, v16

    goto :goto_ff

    .line 298
    :cond_10a
    :goto_10a
    add-int/lit8 v15, v15, -0x1

    aget v5, v1, v15

    if-le v5, v3, :cond_111

    goto :goto_10a

    .line 319
    :cond_111
    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "unused":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v15

    .local v17, "k":I
    :goto_118
    move/from16 v18, v5

    .end local v5    # "unused":I
    .local v18, "unused":I
    add-int/lit8 v5, v17, -0x1

    .end local v17    # "k":I
    .local v5, "k":I
    if-le v5, v7, :cond_16a

    .line 320
    move/from16 v17, v7

    .end local v7    # "lower":I
    .local v17, "lower":I
    aget v7, v1, v5

    .line 322
    .local v7, "ak":I
    if-ge v7, v2, :cond_150

    move/from16 v19, v8

    move/from16 v8, v17

    .line 323
    .end local v17    # "lower":I
    .local v8, "lower":I
    .local v19, "step":I
    :goto_128
    if-ge v8, v5, :cond_14c

    .line 324
    add-int/lit8 v8, v8, 0x1

    move/from16 v20, v5

    .end local v5    # "k":I
    .local v20, "k":I
    aget v5, v1, v8

    if-lt v5, v2, :cond_149

    .line 325
    aget v5, v1, v8

    if-le v5, v3, :cond_141

    .line 326
    add-int/lit8 v15, v15, -0x1

    aget v5, v1, v15

    aput v5, v1, v20

    .line 327
    aget v5, v1, v8

    aput v5, v1, v15

    goto :goto_145

    .line 329
    :cond_141
    aget v5, v1, v8

    aput v5, v1, v20

    .line 331
    :goto_145
    aput v7, v1, v8

    .line 332
    move v7, v8

    goto :goto_163

    .line 324
    :cond_149
    move/from16 v5, v20

    goto :goto_128

    .line 323
    .end local v20    # "k":I
    .restart local v5    # "k":I
    :cond_14c
    move/from16 v20, v5

    .end local v5    # "k":I
    .restart local v20    # "k":I
    move v7, v8

    goto :goto_163

    .line 335
    .end local v19    # "step":I
    .end local v20    # "k":I
    .restart local v5    # "k":I
    .local v8, "step":I
    .restart local v17    # "lower":I
    :cond_150
    move/from16 v20, v5

    move/from16 v19, v8

    .end local v5    # "k":I
    .end local v8    # "step":I
    .restart local v19    # "step":I
    .restart local v20    # "k":I
    if-le v7, v3, :cond_161

    .line 336
    add-int/lit8 v15, v15, -0x1

    aget v5, v1, v15

    aput v5, v1, v20

    .line 337
    aput v7, v1, v15

    move/from16 v7, v17

    goto :goto_163

    .line 335
    :cond_161
    move/from16 v7, v17

    .line 339
    .end local v17    # "lower":I
    .local v7, "lower":I
    :goto_163
    move/from16 v5, v18

    move/from16 v8, v19

    move/from16 v17, v20

    goto :goto_118

    .line 319
    .end local v19    # "step":I
    .end local v20    # "k":I
    .restart local v5    # "k":I
    .restart local v8    # "step":I
    :cond_16a
    move/from16 v20, v5

    move/from16 v17, v7

    move/from16 v19, v8

    .line 344
    .end local v5    # "k":I
    .end local v7    # "lower":I
    .end local v8    # "step":I
    .end local v18    # "unused":I
    .restart local v17    # "lower":I
    .restart local v19    # "step":I
    aget v5, v1, v17

    aput v5, v1, p3

    aput v2, v1, v17

    .line 345
    aget v5, v1, v15

    aput v5, v1, v16

    aput v3, v1, v15

    .line 351
    const/16 v5, 0x1000

    if-le v6, v5, :cond_191

    if-eqz v0, :cond_191

    .line 352
    or-int/lit8 v5, p4, 0x1

    add-int/lit8 v7, v17, 0x1

    invoke-static {v0, v5, v7, v15}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    .line 353
    or-int/lit8 v5, p4, 0x1

    add-int/lit8 v7, v15, 0x1

    invoke-static {v0, v5, v7, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_19f

    .line 355
    :cond_191
    or-int/lit8 v5, p4, 0x1

    add-int/lit8 v7, v17, 0x1

    invoke-static {v0, v1, v5, v7, v15}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 356
    or-int/lit8 v5, p4, 0x1

    add-int/lit8 v7, v15, 0x1

    invoke-static {v0, v1, v5, v7, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 359
    .end local v2    # "pivot1":I
    .end local v3    # "pivot2":I
    :goto_19f
    move/from16 v7, v17

    goto :goto_1eb

    .line 274
    .end local v16    # "end":I
    .end local v17    # "lower":I
    .end local v19    # "step":I
    .local v5, "end":I
    .restart local v7    # "lower":I
    .restart local v8    # "step":I
    :cond_1a2
    move/from16 v16, v5

    move/from16 v19, v8

    .line 365
    .end local v5    # "end":I
    .end local v8    # "step":I
    .restart local v16    # "end":I
    .restart local v19    # "step":I
    aget v2, v1, v11

    .line 374
    .local v2, "pivot":I
    aget v3, v1, v7

    aput v3, v1, v11

    .line 395
    add-int/lit8 v15, v15, 0x1

    move v3, v15

    .local v3, "k":I
    :goto_1af
    add-int/lit8 v3, v3, -0x1

    if-le v3, v7, :cond_1d4

    .line 396
    aget v5, v1, v3

    .line 398
    .local v5, "ak":I
    if-eq v5, v2, :cond_1d3

    .line 399
    aput v2, v1, v3

    .line 401
    if-ge v5, v2, :cond_1cf

    .line 402
    :goto_1bb
    add-int/lit8 v7, v7, 0x1

    aget v8, v1, v7

    if-ge v8, v2, :cond_1c2

    goto :goto_1bb

    .line 404
    :cond_1c2
    aget v8, v1, v7

    if-le v8, v2, :cond_1cc

    .line 405
    add-int/lit8 v15, v15, -0x1

    aget v8, v1, v7

    aput v8, v1, v15

    .line 407
    :cond_1cc
    aput v5, v1, v7

    goto :goto_1d3

    .line 409
    :cond_1cf
    add-int/lit8 v15, v15, -0x1

    aput v5, v1, v15

    .line 412
    .end local v5    # "ak":I
    :cond_1d3
    :goto_1d3
    goto :goto_1af

    .line 417
    .end local v3    # "k":I
    :cond_1d4
    aget v3, v1, v7

    aput v3, v1, p3

    aput v2, v1, v7

    .line 424
    const/16 v5, 0x1000

    if-le v6, v5, :cond_1e6

    if-eqz v0, :cond_1e6

    .line 425
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v3, v15, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_1eb

    .line 427
    :cond_1e6
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v1, v3, v15, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 430
    .end local v2    # "pivot":I
    :goto_1eb
    move v4, v7

    .line 431
    .end local v6    # "size":I
    .end local v7    # "lower":I
    .end local v9    # "e1":I
    .end local v10    # "e5":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":I
    .end local v15    # "upper":I
    .end local v16    # "end":I
    .end local v19    # "step":I
    move/from16 v2, p3

    move/from16 v3, p4

    goto/16 :goto_a
.end method

.method static blacklist sort(Ljava/util/DualPivotQuicksort$Sorter;[JIII)V
    .registers 32
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [J
    .param p2, "bits"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I

    .line 934
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    .end local p2    # "bits":I
    .end local p4    # "high":I
    .local v3, "bits":I
    .local v4, "high":I
    :goto_a
    add-int/lit8 v5, v4, -0x1

    .local v5, "end":I
    sub-int v6, v4, v2

    .line 939
    .local v6, "size":I
    add-int/lit8 v7, v3, 0x41

    if-ge v6, v7, :cond_22

    and-int/lit8 v7, v3, 0x1

    if-lez v7, :cond_22

    .line 940
    shr-int/lit8 v7, v6, 0x5

    shl-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    sub-int v7, v4, v7

    invoke-static {v1, v2, v7, v4}, Ljava/util/DualPivotQuicksort;->mixedInsertionSort([JIII)V

    .line 941
    return-void

    .line 947
    :cond_22
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_2a

    .line 948
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->insertionSort([JII)V

    .line 949
    return-void

    .line 956
    :cond_2a
    const/16 v7, 0x1000

    if-eqz v3, :cond_34

    if-le v6, v7, :cond_3b

    and-int/lit8 v8, v3, 0x1

    if-lez v8, :cond_3b

    .line 957
    :cond_34
    invoke-static {v0, v1, v2, v6}, Ljava/util/DualPivotQuicksort;->tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[JII)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 958
    return-void

    .line 965
    :cond_3b
    add-int/lit8 v3, v3, 0x6

    const/16 v8, 0x180

    if-le v3, v8, :cond_45

    .line 966
    invoke-static {v1, v2, v4}, Ljava/util/DualPivotQuicksort;->heapSort([JII)V

    .line 967
    return-void

    .line 974
    :cond_45
    shr-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    .line 982
    .local v8, "step":I
    add-int v9, v2, v8

    .line 983
    .local v9, "e1":I
    sub-int v10, v5, v8

    .line 984
    .local v10, "e5":I
    add-int v11, v9, v10

    ushr-int/lit8 v11, v11, 0x1

    .line 985
    .local v11, "e3":I
    add-int v12, v9, v11

    ushr-int/lit8 v12, v12, 0x1

    .line 986
    .local v12, "e2":I
    add-int v13, v11, v10

    ushr-int/lit8 v13, v13, 0x1

    .line 987
    .local v13, "e4":I
    aget-wide v14, v1, v11

    .line 1001
    .local v14, "a3":J
    aget-wide v16, v1, v10

    aget-wide v18, v1, v12

    cmp-long v16, v16, v18

    if-gez v16, :cond_6d

    aget-wide v16, v1, v10

    .local v16, "t":J
    aget-wide v18, v1, v12

    aput-wide v18, v1, v10

    aput-wide v16, v1, v12

    .line 1002
    .end local v16    # "t":J
    :cond_6d
    aget-wide v16, v1, v13

    aget-wide v18, v1, v9

    cmp-long v16, v16, v18

    if-gez v16, :cond_7d

    aget-wide v16, v1, v13

    .restart local v16    # "t":J
    aget-wide v18, v1, v9

    aput-wide v18, v1, v13

    aput-wide v16, v1, v9

    .line 1003
    .end local v16    # "t":J
    :cond_7d
    aget-wide v16, v1, v10

    aget-wide v18, v1, v13

    cmp-long v16, v16, v18

    if-gez v16, :cond_8d

    aget-wide v16, v1, v10

    .restart local v16    # "t":J
    aget-wide v18, v1, v13

    aput-wide v18, v1, v10

    aput-wide v16, v1, v13

    .line 1004
    .end local v16    # "t":J
    :cond_8d
    aget-wide v16, v1, v12

    aget-wide v18, v1, v9

    cmp-long v16, v16, v18

    if-gez v16, :cond_9d

    aget-wide v16, v1, v12

    .restart local v16    # "t":J
    aget-wide v18, v1, v9

    aput-wide v18, v1, v12

    aput-wide v16, v1, v9

    .line 1005
    .end local v16    # "t":J
    :cond_9d
    aget-wide v16, v1, v13

    aget-wide v18, v1, v12

    cmp-long v16, v16, v18

    if-gez v16, :cond_ad

    aget-wide v16, v1, v13

    .restart local v16    # "t":J
    aget-wide v18, v1, v12

    aput-wide v18, v1, v13

    aput-wide v16, v1, v12

    .line 1007
    .end local v16    # "t":J
    :cond_ad
    aget-wide v16, v1, v12

    cmp-long v16, v14, v16

    if-gez v16, :cond_cb

    .line 1008
    aget-wide v16, v1, v9

    cmp-long v16, v14, v16

    if-gez v16, :cond_c4

    .line 1009
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aget-wide v16, v1, v9

    aput-wide v16, v1, v12

    aput-wide v14, v1, v9

    goto :goto_e8

    .line 1011
    :cond_c4
    aget-wide v16, v1, v12

    aput-wide v16, v1, v11

    aput-wide v14, v1, v12

    goto :goto_e8

    .line 1013
    :cond_cb
    aget-wide v16, v1, v13

    cmp-long v16, v14, v16

    if-lez v16, :cond_e8

    .line 1014
    aget-wide v16, v1, v10

    cmp-long v16, v14, v16

    if-lez v16, :cond_e2

    .line 1015
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aget-wide v16, v1, v10

    aput-wide v16, v1, v13

    aput-wide v14, v1, v10

    goto :goto_e8

    .line 1017
    :cond_e2
    aget-wide v16, v1, v13

    aput-wide v16, v1, v11

    aput-wide v14, v1, v13

    .line 1022
    :cond_e8
    :goto_e8
    move/from16 v16, p3

    .line 1023
    .local v16, "lower":I
    move/from16 v17, v5

    .line 1028
    .local v17, "upper":I
    aget-wide v18, v1, v9

    aget-wide v20, v1, v12

    cmp-long v18, v18, v20

    if-gez v18, :cond_1a9

    aget-wide v18, v1, v12

    aget-wide v20, v1, v11

    cmp-long v18, v18, v20

    if-gez v18, :cond_1a9

    aget-wide v18, v1, v11

    aget-wide v20, v1, v13

    cmp-long v18, v18, v20

    if-gez v18, :cond_1a9

    aget-wide v18, v1, v13

    aget-wide v20, v1, v10

    cmp-long v18, v18, v20

    if-gez v18, :cond_1a9

    .line 1035
    aget-wide v18, v1, v9

    .line 1036
    .local v18, "pivot1":J
    aget-wide v20, v1, v10

    .line 1045
    .local v20, "pivot2":J
    aget-wide v22, v1, v16

    aput-wide v22, v1, v9

    .line 1046
    aget-wide v22, v1, v17

    aput-wide v22, v1, v10

    .line 1051
    :goto_118
    add-int/lit8 v16, v16, 0x1

    aget-wide v22, v1, v16

    cmp-long v22, v22, v18

    if-gez v22, :cond_121

    goto :goto_118

    .line 1052
    :cond_121
    :goto_121
    add-int/lit8 v17, v17, -0x1

    aget-wide v22, v1, v17

    cmp-long v22, v22, v20

    if-lez v22, :cond_12a

    goto :goto_121

    .line 1073
    :cond_12a
    add-int/lit8 v16, v16, -0x1

    move/from16 v22, v16

    .local v22, "unused":I
    add-int/lit8 v17, v17, 0x1

    move/from16 v23, v17

    move/from16 v7, v16

    move/from16 v2, v17

    .end local v16    # "lower":I
    .end local v17    # "upper":I
    .local v2, "upper":I
    .local v7, "lower":I
    .local v23, "k":I
    :goto_136
    move/from16 p4, v3

    .end local v3    # "bits":I
    .local p4, "bits":I
    add-int/lit8 v3, v23, -0x1

    .end local v23    # "k":I
    .local v3, "k":I
    if-le v3, v7, :cond_175

    .line 1074
    aget-wide v16, v1, v3

    .line 1076
    .local v16, "ak":J
    cmp-long v23, v16, v18

    if-gez v23, :cond_164

    .line 1077
    :cond_142
    if-ge v7, v3, :cond_170

    .line 1078
    add-int/lit8 v7, v7, 0x1

    aget-wide v23, v1, v7

    cmp-long v23, v23, v18

    if-ltz v23, :cond_142

    .line 1079
    aget-wide v23, v1, v7

    cmp-long v23, v23, v20

    if-lez v23, :cond_15d

    .line 1080
    add-int/lit8 v2, v2, -0x1

    aget-wide v23, v1, v2

    aput-wide v23, v1, v3

    .line 1081
    aget-wide v23, v1, v7

    aput-wide v23, v1, v2

    goto :goto_161

    .line 1083
    :cond_15d
    aget-wide v23, v1, v7

    aput-wide v23, v1, v3

    .line 1085
    :goto_161
    aput-wide v16, v1, v7

    .line 1086
    goto :goto_170

    .line 1089
    :cond_164
    cmp-long v23, v16, v20

    if-lez v23, :cond_170

    .line 1090
    add-int/lit8 v2, v2, -0x1

    aget-wide v23, v1, v2

    aput-wide v23, v1, v3

    .line 1091
    aput-wide v16, v1, v2

    .line 1093
    .end local v16    # "ak":J
    :cond_170
    :goto_170
    move/from16 v23, v3

    move/from16 v3, p4

    goto :goto_136

    .line 1098
    .end local v3    # "k":I
    .end local v22    # "unused":I
    :cond_175
    aget-wide v16, v1, v7

    aput-wide v16, v1, p3

    aput-wide v18, v1, v7

    .line 1099
    aget-wide v16, v1, v2

    aput-wide v16, v1, v5

    aput-wide v20, v1, v2

    .line 1105
    const/16 v3, 0x1000

    if-le v6, v3, :cond_198

    if-eqz v0, :cond_198

    .line 1106
    or-int/lit8 v3, p4, 0x1

    move/from16 v22, v5

    .end local v5    # "end":I
    .local v22, "end":I
    add-int/lit8 v5, v7, 0x1

    invoke-static {v0, v3, v5, v2}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    .line 1107
    or-int/lit8 v3, p4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v0, v3, v5, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_1a8

    .line 1105
    .end local v22    # "end":I
    .restart local v5    # "end":I
    :cond_198
    move/from16 v22, v5

    .line 1109
    .end local v5    # "end":I
    .restart local v22    # "end":I
    or-int/lit8 v3, p4, 0x1

    add-int/lit8 v5, v7, 0x1

    invoke-static {v0, v1, v3, v5, v2}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 1110
    or-int/lit8 v3, p4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 1113
    .end local v18    # "pivot1":J
    .end local v20    # "pivot2":J
    :goto_1a8
    goto :goto_204

    .line 1028
    .end local v2    # "upper":I
    .end local v7    # "lower":I
    .end local v22    # "end":I
    .end local p4    # "bits":I
    .local v3, "bits":I
    .restart local v5    # "end":I
    .local v16, "lower":I
    .restart local v17    # "upper":I
    :cond_1a9
    move/from16 p4, v3

    move/from16 v22, v5

    .line 1119
    .end local v3    # "bits":I
    .end local v5    # "end":I
    .restart local v22    # "end":I
    .restart local p4    # "bits":I
    aget-wide v2, v1, v11

    .line 1128
    .local v2, "pivot":J
    aget-wide v18, v1, v16

    aput-wide v18, v1, v11

    .line 1149
    add-int/lit8 v17, v17, 0x1

    move/from16 v5, v17

    move v7, v5

    move-wide/from16 v25, v2

    move/from16 v2, v16

    move-wide/from16 v16, v25

    .end local v17    # "upper":I
    .local v2, "lower":I
    .local v5, "upper":I
    .local v7, "k":I
    .local v16, "pivot":J
    :goto_1be
    add-int/lit8 v7, v7, -0x1

    if-le v7, v2, :cond_1eb

    .line 1150
    aget-wide v18, v1, v7

    .line 1152
    .local v18, "ak":J
    cmp-long v3, v18, v16

    if-eqz v3, :cond_1ea

    .line 1153
    aput-wide v16, v1, v7

    .line 1155
    cmp-long v3, v18, v16

    if-gez v3, :cond_1e6

    .line 1156
    :goto_1ce
    add-int/lit8 v2, v2, 0x1

    aget-wide v20, v1, v2

    cmp-long v3, v20, v16

    if-gez v3, :cond_1d7

    goto :goto_1ce

    .line 1158
    :cond_1d7
    aget-wide v20, v1, v2

    cmp-long v3, v20, v16

    if-lez v3, :cond_1e3

    .line 1159
    add-int/lit8 v5, v5, -0x1

    aget-wide v20, v1, v2

    aput-wide v20, v1, v5

    .line 1161
    :cond_1e3
    aput-wide v18, v1, v2

    goto :goto_1ea

    .line 1163
    :cond_1e6
    add-int/lit8 v5, v5, -0x1

    aput-wide v18, v1, v5

    .line 1166
    .end local v18    # "ak":J
    :cond_1ea
    :goto_1ea
    goto :goto_1be

    .line 1171
    .end local v7    # "k":I
    :cond_1eb
    aget-wide v18, v1, v2

    aput-wide v18, v1, p3

    aput-wide v16, v1, v2

    .line 1178
    const/16 v3, 0x1000

    if-le v6, v3, :cond_1fd

    if-eqz v0, :cond_1fd

    .line 1179
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v3, v5, v4}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V

    goto :goto_202

    .line 1181
    :cond_1fd
    or-int/lit8 v3, p4, 0x1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 1184
    .end local v16    # "pivot":J
    :goto_202
    move v7, v2

    move v2, v5

    .end local v5    # "upper":I
    .local v2, "upper":I
    .local v7, "lower":I
    :goto_204
    move v4, v7

    .line 1185
    .end local v2    # "upper":I
    .end local v6    # "size":I
    .end local v7    # "lower":I
    .end local v8    # "step":I
    .end local v9    # "e1":I
    .end local v10    # "e5":I
    .end local v11    # "e3":I
    .end local v12    # "e2":I
    .end local v13    # "e4":I
    .end local v14    # "a3":J
    .end local v22    # "end":I
    move/from16 v2, p3

    move/from16 v3, p4

    goto/16 :goto_a
.end method

.method static blacklist sort([BII)V
    .registers 5
    .param p0, "a"    # [B
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1657
    sub-int v0, p2, p1

    const/16 v1, 0x40

    if-le v0, v1, :cond_a

    .line 1658
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->countingSort([BII)V

    goto :goto_d

    .line 1660
    :cond_a
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->insertionSort([BII)V

    .line 1662
    :goto_d
    return-void
.end method

.method static blacklist sort([CII)V
    .registers 5
    .param p0, "a"    # [C
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 1745
    sub-int v0, p2, p1

    const/16 v1, 0x6d6

    if-le v0, v1, :cond_a

    .line 1746
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->countingSort([CII)V

    goto :goto_e

    .line 1748
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CIII)V

    .line 1750
    :goto_e
    return-void
.end method

.method static blacklist sort([CIII)V
    .registers 22
    .param p0, "a"    # [C
    .param p1, "bits"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 1764
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v3, p3

    move/from16 v2, p1

    .end local p1    # "bits":I
    .end local p3    # "high":I
    .local v2, "bits":I
    .local v3, "high":I
    :goto_8
    add-int/lit8 v4, v3, -0x1

    .local v4, "end":I
    sub-int v5, v3, v1

    .line 1769
    .local v5, "size":I
    const/16 v6, 0x2c

    if-ge v5, v6, :cond_14

    .line 1770
    invoke-static {v0, v1, v3}, Ljava/util/DualPivotQuicksort;->insertionSort([CII)V

    .line 1771
    return-void

    .line 1778
    :cond_14
    add-int/lit8 v2, v2, 0x6

    const/16 v6, 0x180

    if-le v2, v6, :cond_1e

    .line 1779
    invoke-static {v0, v1, v3}, Ljava/util/DualPivotQuicksort;->countingSort([CII)V

    .line 1780
    return-void

    .line 1787
    :cond_1e
    shr-int/lit8 v6, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x3

    .line 1795
    .local v6, "step":I
    add-int v7, v1, v6

    .line 1796
    .local v7, "e1":I
    sub-int v8, v4, v6

    .line 1797
    .local v8, "e5":I
    add-int v9, v7, v8

    ushr-int/lit8 v9, v9, 0x1

    .line 1798
    .local v9, "e3":I
    add-int v10, v7, v9

    ushr-int/lit8 v10, v10, 0x1

    .line 1799
    .local v10, "e2":I
    add-int v11, v9, v8

    ushr-int/lit8 v11, v11, 0x1

    .line 1800
    .local v11, "e4":I
    aget-char v12, v0, v9

    .line 1814
    .local v12, "a3":C
    aget-char v13, v0, v8

    aget-char v14, v0, v10

    if-ge v13, v14, :cond_44

    aget-char v13, v0, v8

    .local v13, "t":C
    aget-char v14, v0, v10

    aput-char v14, v0, v8

    aput-char v13, v0, v10

    .line 1815
    .end local v13    # "t":C
    :cond_44
    aget-char v13, v0, v11

    aget-char v14, v0, v7

    if-ge v13, v14, :cond_52

    aget-char v13, v0, v11

    .restart local v13    # "t":C
    aget-char v14, v0, v7

    aput-char v14, v0, v11

    aput-char v13, v0, v7

    .line 1816
    .end local v13    # "t":C
    :cond_52
    aget-char v13, v0, v8

    aget-char v14, v0, v11

    if-ge v13, v14, :cond_60

    aget-char v13, v0, v8

    .restart local v13    # "t":C
    aget-char v14, v0, v11

    aput-char v14, v0, v8

    aput-char v13, v0, v11

    .line 1817
    .end local v13    # "t":C
    :cond_60
    aget-char v13, v0, v10

    aget-char v14, v0, v7

    if-ge v13, v14, :cond_6e

    aget-char v13, v0, v10

    .restart local v13    # "t":C
    aget-char v14, v0, v7

    aput-char v14, v0, v10

    aput-char v13, v0, v7

    .line 1818
    .end local v13    # "t":C
    :cond_6e
    aget-char v13, v0, v11

    aget-char v14, v0, v10

    if-ge v13, v14, :cond_7c

    aget-char v13, v0, v11

    .restart local v13    # "t":C
    aget-char v14, v0, v10

    aput-char v14, v0, v11

    aput-char v13, v0, v10

    .line 1820
    .end local v13    # "t":C
    :cond_7c
    aget-char v13, v0, v10

    if-ge v12, v13, :cond_96

    .line 1821
    aget-char v13, v0, v7

    if-ge v12, v13, :cond_8f

    .line 1822
    aget-char v13, v0, v10

    aput-char v13, v0, v9

    aget-char v13, v0, v7

    aput-char v13, v0, v10

    aput-char v12, v0, v7

    goto :goto_af

    .line 1824
    :cond_8f
    aget-char v13, v0, v10

    aput-char v13, v0, v9

    aput-char v12, v0, v10

    goto :goto_af

    .line 1826
    :cond_96
    aget-char v13, v0, v11

    if-le v12, v13, :cond_af

    .line 1827
    aget-char v13, v0, v8

    if-le v12, v13, :cond_a9

    .line 1828
    aget-char v13, v0, v11

    aput-char v13, v0, v9

    aget-char v13, v0, v8

    aput-char v13, v0, v11

    aput-char v12, v0, v8

    goto :goto_af

    .line 1830
    :cond_a9
    aget-char v13, v0, v11

    aput-char v13, v0, v9

    aput-char v12, v0, v11

    .line 1835
    :cond_af
    :goto_af
    move/from16 v13, p2

    .line 1836
    .local v13, "lower":I
    move v14, v4

    .line 1841
    .local v14, "upper":I
    aget-char v15, v0, v7

    aget-char v1, v0, v10

    if-ge v15, v1, :cond_153

    aget-char v1, v0, v10

    aget-char v15, v0, v9

    if-ge v1, v15, :cond_153

    aget-char v1, v0, v9

    aget-char v15, v0, v11

    if-ge v1, v15, :cond_153

    aget-char v1, v0, v11

    aget-char v15, v0, v8

    if-ge v1, v15, :cond_153

    .line 1848
    aget-char v1, v0, v7

    .line 1849
    .local v1, "pivot1":C
    aget-char v15, v0, v8

    .line 1858
    .local v15, "pivot2":C
    aget-char v16, v0, v13

    aput-char v16, v0, v7

    .line 1859
    aget-char v16, v0, v14

    aput-char v16, v0, v8

    .line 1864
    :goto_d6
    add-int/lit8 v13, v13, 0x1

    move/from16 p1, v2

    .end local v2    # "bits":I
    .restart local p1    # "bits":I
    aget-char v2, v0, v13

    if-ge v2, v1, :cond_e1

    move/from16 v2, p1

    goto :goto_d6

    .line 1865
    :cond_e1
    :goto_e1
    add-int/lit8 v14, v14, -0x1

    aget-char v2, v0, v14

    if-le v2, v15, :cond_e8

    goto :goto_e1

    .line 1886
    :cond_e8
    add-int/lit8 v13, v13, -0x1

    move v2, v13

    .local v2, "unused":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v14

    .local v16, "k":I
    :goto_ef
    move/from16 p3, v2

    .end local v2    # "unused":I
    .local p3, "unused":I
    add-int/lit8 v2, v16, -0x1

    .end local v16    # "k":I
    .local v2, "k":I
    if-le v2, v13, :cond_134

    .line 1887
    move/from16 v16, v4

    .end local v4    # "end":I
    .local v16, "end":I
    aget-char v4, v0, v2

    .line 1889
    .local v4, "ak":C
    if-ge v4, v1, :cond_121

    .line 1890
    :goto_fb
    if-ge v13, v2, :cond_11e

    .line 1891
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v2

    .end local v2    # "k":I
    .local v17, "k":I
    aget-char v2, v0, v13

    if-lt v2, v1, :cond_11b

    .line 1892
    aget-char v2, v0, v13

    if-le v2, v15, :cond_114

    .line 1893
    add-int/lit8 v14, v14, -0x1

    aget-char v2, v0, v14

    aput-char v2, v0, v17

    .line 1894
    aget-char v2, v0, v13

    aput-char v2, v0, v14

    goto :goto_118

    .line 1896
    :cond_114
    aget-char v2, v0, v13

    aput-char v2, v0, v17

    .line 1898
    :goto_118
    aput-char v4, v0, v13

    .line 1899
    goto :goto_12d

    .line 1891
    :cond_11b
    move/from16 v2, v17

    goto :goto_fb

    .line 1890
    .end local v17    # "k":I
    .restart local v2    # "k":I
    :cond_11e
    move/from16 v17, v2

    .end local v2    # "k":I
    .restart local v17    # "k":I
    goto :goto_12d

    .line 1902
    .end local v17    # "k":I
    .restart local v2    # "k":I
    :cond_121
    move/from16 v17, v2

    .end local v2    # "k":I
    .restart local v17    # "k":I
    if-le v4, v15, :cond_12d

    .line 1903
    add-int/lit8 v14, v14, -0x1

    aget-char v2, v0, v14

    aput-char v2, v0, v17

    .line 1904
    aput-char v4, v0, v14

    .line 1906
    .end local v4    # "ak":C
    :cond_12d
    :goto_12d
    move/from16 v2, p3

    move/from16 v4, v16

    move/from16 v16, v17

    goto :goto_ef

    .line 1886
    .end local v16    # "end":I
    .end local v17    # "k":I
    .restart local v2    # "k":I
    .local v4, "end":I
    :cond_134
    move/from16 v17, v2

    move/from16 v16, v4

    .line 1911
    .end local v2    # "k":I
    .end local v4    # "end":I
    .end local p3    # "unused":I
    .restart local v16    # "end":I
    aget-char v2, v0, v13

    aput-char v2, v0, p2

    aput-char v1, v0, v13

    .line 1912
    aget-char v2, v0, v14

    aput-char v2, v0, v16

    aput-char v15, v0, v14

    .line 1918
    or-int/lit8 v2, p1, 0x1

    add-int/lit8 v4, v13, 0x1

    invoke-static {v0, v2, v4, v14}, Ljava/util/DualPivotQuicksort;->sort([CIII)V

    .line 1919
    or-int/lit8 v2, p1, 0x1

    add-int/lit8 v4, v14, 0x1

    invoke-static {v0, v2, v4, v3}, Ljava/util/DualPivotQuicksort;->sort([CIII)V

    .line 1921
    .end local v1    # "pivot1":C
    .end local v15    # "pivot2":C
    goto :goto_190

    .line 1841
    .end local v16    # "end":I
    .end local p1    # "bits":I
    .local v2, "bits":I
    .restart local v4    # "end":I
    :cond_153
    move/from16 p1, v2

    move/from16 v16, v4

    .line 1927
    .end local v2    # "bits":I
    .end local v4    # "end":I
    .restart local v16    # "end":I
    .restart local p1    # "bits":I
    aget-char v1, v0, v9

    .line 1936
    .local v1, "pivot":C
    aget-char v2, v0, v13

    aput-char v2, v0, v9

    .line 1957
    add-int/lit8 v14, v14, 0x1

    move v2, v14

    .local v2, "k":I
    :goto_160
    add-int/lit8 v2, v2, -0x1

    if-le v2, v13, :cond_185

    .line 1958
    aget-char v4, v0, v2

    .line 1960
    .local v4, "ak":C
    if-eq v4, v1, :cond_184

    .line 1961
    aput-char v1, v0, v2

    .line 1963
    if-ge v4, v1, :cond_180

    .line 1964
    :goto_16c
    add-int/lit8 v13, v13, 0x1

    aget-char v15, v0, v13

    if-ge v15, v1, :cond_173

    goto :goto_16c

    .line 1966
    :cond_173
    aget-char v15, v0, v13

    if-le v15, v1, :cond_17d

    .line 1967
    add-int/lit8 v14, v14, -0x1

    aget-char v15, v0, v13

    aput-char v15, v0, v14

    .line 1969
    :cond_17d
    aput-char v4, v0, v13

    goto :goto_184

    .line 1971
    :cond_180
    add-int/lit8 v14, v14, -0x1

    aput-char v4, v0, v14

    .line 1974
    .end local v4    # "ak":C
    :cond_184
    :goto_184
    goto :goto_160

    .line 1979
    .end local v2    # "k":I
    :cond_185
    aget-char v2, v0, v13

    aput-char v2, v0, p2

    aput-char v1, v0, v13

    .line 1986
    or-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2, v14, v3}, Ljava/util/DualPivotQuicksort;->sort([CIII)V

    .line 1988
    .end local v1    # "pivot":C
    :goto_190
    move v3, v13

    .line 1989
    .end local v5    # "size":I
    .end local v6    # "step":I
    .end local v7    # "e1":I
    .end local v8    # "e5":I
    .end local v9    # "e3":I
    .end local v10    # "e2":I
    .end local v11    # "e4":I
    .end local v12    # "a3":C
    .end local v13    # "lower":I
    .end local v14    # "upper":I
    .end local v16    # "end":I
    move/from16 v1, p2

    move/from16 v2, p1

    goto/16 :goto_8
.end method

.method static blacklist sort([DIII)V
    .registers 19
    .param p0, "a"    # [D
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 3210
    move/from16 v0, p1

    move/from16 v5, p2

    const/4 v1, 0x0

    .line 3212
    .local v1, "numNegativeZero":I
    move/from16 v2, p3

    move/from16 v10, p3

    move v11, v1

    .end local v1    # "numNegativeZero":I
    .end local p3    # "high":I
    .local v2, "k":I
    .local v10, "high":I
    .local v11, "numNegativeZero":I
    :goto_a
    const-wide/16 v12, 0x0

    if-le v2, v5, :cond_32

    .line 3213
    add-int/lit8 v2, v2, -0x1

    aget-wide v3, p0, v2

    .line 3215
    .local v3, "ak":D
    cmpl-double v1, v3, v12

    if-nez v1, :cond_25

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_25

    .line 3216
    add-int/lit8 v11, v11, 0x1

    .line 3217
    aput-wide v12, p0, v2

    goto :goto_31

    .line 3218
    :cond_25
    cmpl-double v1, v3, v3

    if-eqz v1, :cond_31

    .line 3219
    add-int/lit8 v10, v10, -0x1

    aget-wide v6, p0, v10

    aput-wide v6, p0, v2

    .line 3220
    aput-wide v3, p0, v10

    .line 3222
    .end local v3    # "ak":D
    :cond_31
    :goto_31
    goto :goto_a

    .line 3228
    .end local v2    # "k":I
    :cond_32
    sub-int v6, v10, v5

    .line 3230
    .local v6, "size":I
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-le v0, v14, :cond_56

    const/16 v2, 0x1000

    if-le v6, v2, :cond_56

    .line 3231
    shr-int/lit8 v2, v6, 0xc

    invoke-static {v0, v2}, Ljava/util/DualPivotQuicksort;->getDepth(II)I

    move-result v8

    .line 3232
    .local v8, "depth":I
    if-nez v8, :cond_45

    goto :goto_47

    :cond_45
    new-array v1, v6, [D

    :goto_47
    move-object v4, v1

    .line 3233
    .local v4, "b":[D
    new-instance v1, Ljava/util/DualPivotQuicksort$Sorter;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIIILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v1}, Ljava/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 3234
    .end local v4    # "b":[D
    .end local v8    # "depth":I
    goto :goto_5a

    .line 3235
    :cond_56
    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v5, v10}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 3242
    :goto_5a
    add-int/2addr v11, v14

    if-ne v11, v14, :cond_5e

    .line 3243
    return-void

    .line 3250
    .end local p2    # "low":I
    .local v5, "low":I
    :cond_5e
    :goto_5e
    if-gt v5, v10, :cond_71

    .line 3251
    add-int v1, v5, v10

    ushr-int/2addr v1, v14

    .line 3253
    .local v1, "middle":I
    aget-wide v7, p0, v1

    cmpg-double v2, v7, v12

    if-gez v2, :cond_6d

    .line 3254
    add-int/lit8 v2, v1, 0x1

    move v5, v2

    .end local v5    # "low":I
    .local v2, "low":I
    goto :goto_70

    .line 3256
    .end local v2    # "low":I
    .restart local v5    # "low":I
    :cond_6d
    add-int/lit8 v2, v1, -0x1

    move v10, v2

    .line 3258
    .end local v1    # "middle":I
    :goto_70
    goto :goto_5e

    .line 3263
    :cond_71
    :goto_71
    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_7c

    .line 3264
    add-int/lit8 v10, v10, 0x1

    const-wide/high16 v1, -0x8000000000000000L

    aput-wide v1, p0, v10

    goto :goto_71

    .line 3266
    :cond_7c
    return-void
.end method

.method static blacklist sort([FIII)V
    .registers 17
    .param p0, "a"    # [F
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 2404
    move v4, p2

    const/4 v0, 0x0

    .line 2406
    .local v0, "numNegativeZero":I
    move/from16 v1, p3

    move/from16 v9, p3

    move v10, v0

    .end local v0    # "numNegativeZero":I
    .end local p3    # "high":I
    .local v1, "k":I
    .local v9, "high":I
    .local v10, "numNegativeZero":I
    :goto_7
    const/4 v11, 0x0

    if-le v1, v4, :cond_2a

    .line 2407
    add-int/lit8 v1, v1, -0x1

    aget v0, p0, v1

    .line 2409
    .local v0, "ak":F
    cmpl-float v2, v0, v11

    if-nez v2, :cond_1d

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    if-gez v2, :cond_1d

    .line 2410
    add-int/lit8 v10, v10, 0x1

    .line 2411
    aput v11, p0, v1

    goto :goto_29

    .line 2412
    :cond_1d
    cmpl-float v2, v0, v0

    if-eqz v2, :cond_29

    .line 2413
    add-int/lit8 v9, v9, -0x1

    aget v2, p0, v9

    aput v2, p0, v1

    .line 2414
    aput v0, p0, v9

    .line 2416
    .end local v0    # "ak":F
    :cond_29
    :goto_29
    goto :goto_7

    .line 2422
    .end local v1    # "k":I
    :cond_2a
    sub-int v5, v9, v4

    .line 2424
    .local v5, "size":I
    const/4 v0, 0x0

    const/4 v12, 0x1

    if-le p1, v12, :cond_4d

    const/16 v1, 0x1000

    if-le v5, v1, :cond_4d

    .line 2425
    shr-int/lit8 v1, v5, 0xc

    invoke-static {p1, v1}, Ljava/util/DualPivotQuicksort;->getDepth(II)I

    move-result v7

    .line 2426
    .local v7, "depth":I
    if-nez v7, :cond_3d

    goto :goto_3f

    :cond_3d
    new-array v0, v5, [F

    :goto_3f
    move-object v3, v0

    .line 2427
    .local v3, "b":[F
    new-instance v0, Ljava/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    const/4 v8, 0x0

    move v6, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIIILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v0}, Ljava/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 2428
    .end local v3    # "b":[F
    .end local v7    # "depth":I
    goto :goto_51

    .line 2429
    :cond_4d
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p2, v9}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[FIII)V

    .line 2436
    :goto_51
    add-int/2addr v10, v12

    if-ne v10, v12, :cond_55

    .line 2437
    return-void

    .line 2444
    .end local p2    # "low":I
    .local v4, "low":I
    :cond_55
    :goto_55
    if-gt v4, v9, :cond_68

    .line 2445
    add-int v0, v4, v9

    ushr-int/2addr v0, v12

    .line 2447
    .local v0, "middle":I
    aget v1, p0, v0

    cmpg-float v1, v1, v11

    if-gez v1, :cond_64

    .line 2448
    add-int/lit8 v1, v0, 0x1

    move v4, v1

    .end local v4    # "low":I
    .local v1, "low":I
    goto :goto_67

    .line 2450
    .end local v1    # "low":I
    .restart local v4    # "low":I
    :cond_64
    add-int/lit8 v1, v0, -0x1

    move v9, v1

    .line 2452
    .end local v0    # "middle":I
    :goto_67
    goto :goto_55

    .line 2457
    :cond_68
    :goto_68
    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_73

    .line 2458
    add-int/lit8 v9, v9, 0x1

    const/high16 v0, -0x80000000

    aput v0, p0, v9

    goto :goto_68

    .line 2460
    :cond_73
    return-void
.end method

.method static blacklist sort([IIII)V
    .registers 13
    .param p0, "a"    # [I
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 156
    sub-int v5, p3, p2

    .line 158
    .local v5, "size":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_24

    const/16 v0, 0x1000

    if-le v5, v0, :cond_24

    .line 159
    shr-int/lit8 v0, v5, 0xc

    invoke-static {p1, v0}, Ljava/util/DualPivotQuicksort;->getDepth(II)I

    move-result v7

    .line 160
    .local v7, "depth":I
    if-nez v7, :cond_13

    goto :goto_15

    :cond_13
    new-array v1, v5, [I

    :goto_15
    move-object v3, v1

    .line 161
    .local v3, "b":[I
    new-instance v0, Ljava/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    const/4 v8, 0x0

    move v6, p2

    move-object v2, p0

    move v4, p2

    .end local p0    # "a":[I
    .end local p2    # "low":I
    .local v2, "a":[I
    .local v4, "low":I
    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIIILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v0}, Ljava/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 162
    .end local v3    # "b":[I
    .end local v7    # "depth":I
    goto :goto_2a

    .line 158
    .end local v2    # "a":[I
    .end local v4    # "low":I
    .restart local p0    # "a":[I
    .restart local p2    # "low":I
    :cond_24
    move-object v2, p0

    move v4, p2

    .line 163
    .end local p0    # "a":[I
    .end local p2    # "low":I
    .restart local v2    # "a":[I
    .restart local v4    # "low":I
    const/4 p0, 0x0

    invoke-static {v1, v2, p0, v4, p3}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[IIII)V

    .line 165
    :goto_2a
    return-void
.end method

.method static blacklist sort([JIII)V
    .registers 13
    .param p0, "a"    # [J
    .param p1, "parallelism"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 910
    sub-int v5, p3, p2

    .line 912
    .local v5, "size":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_24

    const/16 v0, 0x1000

    if-le v5, v0, :cond_24

    .line 913
    shr-int/lit8 v0, v5, 0xc

    invoke-static {p1, v0}, Ljava/util/DualPivotQuicksort;->getDepth(II)I

    move-result v7

    .line 914
    .local v7, "depth":I
    if-nez v7, :cond_13

    goto :goto_15

    :cond_13
    new-array v1, v5, [J

    :goto_15
    move-object v3, v1

    .line 915
    .local v3, "b":[J
    new-instance v0, Ljava/util/DualPivotQuicksort$Sorter;

    const/4 v1, 0x0

    const/4 v8, 0x0

    move v6, p2

    move-object v2, p0

    move v4, p2

    .end local p0    # "a":[J
    .end local p2    # "low":I
    .local v2, "a":[J
    .local v4, "low":I
    invoke-direct/range {v0 .. v8}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIIILjava/util/DualPivotQuicksort-IA;)V

    invoke-virtual {v0}, Ljava/util/DualPivotQuicksort$Sorter;->invoke()Ljava/lang/Object;

    .line 916
    .end local v3    # "b":[J
    .end local v7    # "depth":I
    goto :goto_2a

    .line 912
    .end local v2    # "a":[J
    .end local v4    # "low":I
    .restart local p0    # "a":[J
    .restart local p2    # "low":I
    :cond_24
    move-object v2, p0

    move v4, p2

    .line 917
    .end local p0    # "a":[J
    .end local p2    # "low":I
    .restart local v2    # "a":[J
    .restart local v4    # "low":I
    const/4 p0, 0x0

    invoke-static {v1, v2, p0, v4, p3}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[JIII)V

    .line 919
    :goto_2a
    return-void
.end method

.method static blacklist sort([SII)V
    .registers 5
    .param p0, "a"    # [S
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2064
    sub-int v0, p2, p1

    const/16 v1, 0x6d6

    if-le v0, v1, :cond_a

    .line 2065
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->countingSort([SII)V

    goto :goto_e

    .line 2067
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SIII)V

    .line 2069
    :goto_e
    return-void
.end method

.method static blacklist sort([SIII)V
    .registers 22
    .param p0, "a"    # [S
    .param p1, "bits"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 2083
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v3, p3

    move/from16 v2, p1

    .end local p1    # "bits":I
    .end local p3    # "high":I
    .local v2, "bits":I
    .local v3, "high":I
    :goto_8
    add-int/lit8 v4, v3, -0x1

    .local v4, "end":I
    sub-int v5, v3, v1

    .line 2088
    .local v5, "size":I
    const/16 v6, 0x2c

    if-ge v5, v6, :cond_14

    .line 2089
    invoke-static {v0, v1, v3}, Ljava/util/DualPivotQuicksort;->insertionSort([SII)V

    .line 2090
    return-void

    .line 2097
    :cond_14
    add-int/lit8 v2, v2, 0x6

    const/16 v6, 0x180

    if-le v2, v6, :cond_1e

    .line 2098
    invoke-static {v0, v1, v3}, Ljava/util/DualPivotQuicksort;->countingSort([SII)V

    .line 2099
    return-void

    .line 2106
    :cond_1e
    shr-int/lit8 v6, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x3

    .line 2114
    .local v6, "step":I
    add-int v7, v1, v6

    .line 2115
    .local v7, "e1":I
    sub-int v8, v4, v6

    .line 2116
    .local v8, "e5":I
    add-int v9, v7, v8

    ushr-int/lit8 v9, v9, 0x1

    .line 2117
    .local v9, "e3":I
    add-int v10, v7, v9

    ushr-int/lit8 v10, v10, 0x1

    .line 2118
    .local v10, "e2":I
    add-int v11, v9, v8

    ushr-int/lit8 v11, v11, 0x1

    .line 2119
    .local v11, "e4":I
    aget-short v12, v0, v9

    .line 2133
    .local v12, "a3":S
    aget-short v13, v0, v8

    aget-short v14, v0, v10

    if-ge v13, v14, :cond_44

    aget-short v13, v0, v8

    .local v13, "t":S
    aget-short v14, v0, v10

    aput-short v14, v0, v8

    aput-short v13, v0, v10

    .line 2134
    .end local v13    # "t":S
    :cond_44
    aget-short v13, v0, v11

    aget-short v14, v0, v7

    if-ge v13, v14, :cond_52

    aget-short v13, v0, v11

    .restart local v13    # "t":S
    aget-short v14, v0, v7

    aput-short v14, v0, v11

    aput-short v13, v0, v7

    .line 2135
    .end local v13    # "t":S
    :cond_52
    aget-short v13, v0, v8

    aget-short v14, v0, v11

    if-ge v13, v14, :cond_60

    aget-short v13, v0, v8

    .restart local v13    # "t":S
    aget-short v14, v0, v11

    aput-short v14, v0, v8

    aput-short v13, v0, v11

    .line 2136
    .end local v13    # "t":S
    :cond_60
    aget-short v13, v0, v10

    aget-short v14, v0, v7

    if-ge v13, v14, :cond_6e

    aget-short v13, v0, v10

    .restart local v13    # "t":S
    aget-short v14, v0, v7

    aput-short v14, v0, v10

    aput-short v13, v0, v7

    .line 2137
    .end local v13    # "t":S
    :cond_6e
    aget-short v13, v0, v11

    aget-short v14, v0, v10

    if-ge v13, v14, :cond_7c

    aget-short v13, v0, v11

    .restart local v13    # "t":S
    aget-short v14, v0, v10

    aput-short v14, v0, v11

    aput-short v13, v0, v10

    .line 2139
    .end local v13    # "t":S
    :cond_7c
    aget-short v13, v0, v10

    if-ge v12, v13, :cond_96

    .line 2140
    aget-short v13, v0, v7

    if-ge v12, v13, :cond_8f

    .line 2141
    aget-short v13, v0, v10

    aput-short v13, v0, v9

    aget-short v13, v0, v7

    aput-short v13, v0, v10

    aput-short v12, v0, v7

    goto :goto_af

    .line 2143
    :cond_8f
    aget-short v13, v0, v10

    aput-short v13, v0, v9

    aput-short v12, v0, v10

    goto :goto_af

    .line 2145
    :cond_96
    aget-short v13, v0, v11

    if-le v12, v13, :cond_af

    .line 2146
    aget-short v13, v0, v8

    if-le v12, v13, :cond_a9

    .line 2147
    aget-short v13, v0, v11

    aput-short v13, v0, v9

    aget-short v13, v0, v8

    aput-short v13, v0, v11

    aput-short v12, v0, v8

    goto :goto_af

    .line 2149
    :cond_a9
    aget-short v13, v0, v11

    aput-short v13, v0, v9

    aput-short v12, v0, v11

    .line 2154
    :cond_af
    :goto_af
    move/from16 v13, p2

    .line 2155
    .local v13, "lower":I
    move v14, v4

    .line 2160
    .local v14, "upper":I
    aget-short v15, v0, v7

    aget-short v1, v0, v10

    if-ge v15, v1, :cond_153

    aget-short v1, v0, v10

    aget-short v15, v0, v9

    if-ge v1, v15, :cond_153

    aget-short v1, v0, v9

    aget-short v15, v0, v11

    if-ge v1, v15, :cond_153

    aget-short v1, v0, v11

    aget-short v15, v0, v8

    if-ge v1, v15, :cond_153

    .line 2167
    aget-short v1, v0, v7

    .line 2168
    .local v1, "pivot1":S
    aget-short v15, v0, v8

    .line 2177
    .local v15, "pivot2":S
    aget-short v16, v0, v13

    aput-short v16, v0, v7

    .line 2178
    aget-short v16, v0, v14

    aput-short v16, v0, v8

    .line 2183
    :goto_d6
    add-int/lit8 v13, v13, 0x1

    move/from16 p1, v2

    .end local v2    # "bits":I
    .restart local p1    # "bits":I
    aget-short v2, v0, v13

    if-ge v2, v1, :cond_e1

    move/from16 v2, p1

    goto :goto_d6

    .line 2184
    :cond_e1
    :goto_e1
    add-int/lit8 v14, v14, -0x1

    aget-short v2, v0, v14

    if-le v2, v15, :cond_e8

    goto :goto_e1

    .line 2205
    :cond_e8
    add-int/lit8 v13, v13, -0x1

    move v2, v13

    .local v2, "unused":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v14

    .local v16, "k":I
    :goto_ef
    move/from16 p3, v2

    .end local v2    # "unused":I
    .local p3, "unused":I
    add-int/lit8 v2, v16, -0x1

    .end local v16    # "k":I
    .local v2, "k":I
    if-le v2, v13, :cond_134

    .line 2206
    move/from16 v16, v4

    .end local v4    # "end":I
    .local v16, "end":I
    aget-short v4, v0, v2

    .line 2208
    .local v4, "ak":S
    if-ge v4, v1, :cond_121

    .line 2209
    :goto_fb
    if-ge v13, v2, :cond_11e

    .line 2210
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v2

    .end local v2    # "k":I
    .local v17, "k":I
    aget-short v2, v0, v13

    if-lt v2, v1, :cond_11b

    .line 2211
    aget-short v2, v0, v13

    if-le v2, v15, :cond_114

    .line 2212
    add-int/lit8 v14, v14, -0x1

    aget-short v2, v0, v14

    aput-short v2, v0, v17

    .line 2213
    aget-short v2, v0, v13

    aput-short v2, v0, v14

    goto :goto_118

    .line 2215
    :cond_114
    aget-short v2, v0, v13

    aput-short v2, v0, v17

    .line 2217
    :goto_118
    aput-short v4, v0, v13

    .line 2218
    goto :goto_12d

    .line 2210
    :cond_11b
    move/from16 v2, v17

    goto :goto_fb

    .line 2209
    .end local v17    # "k":I
    .restart local v2    # "k":I
    :cond_11e
    move/from16 v17, v2

    .end local v2    # "k":I
    .restart local v17    # "k":I
    goto :goto_12d

    .line 2221
    .end local v17    # "k":I
    .restart local v2    # "k":I
    :cond_121
    move/from16 v17, v2

    .end local v2    # "k":I
    .restart local v17    # "k":I
    if-le v4, v15, :cond_12d

    .line 2222
    add-int/lit8 v14, v14, -0x1

    aget-short v2, v0, v14

    aput-short v2, v0, v17

    .line 2223
    aput-short v4, v0, v14

    .line 2225
    .end local v4    # "ak":S
    :cond_12d
    :goto_12d
    move/from16 v2, p3

    move/from16 v4, v16

    move/from16 v16, v17

    goto :goto_ef

    .line 2205
    .end local v16    # "end":I
    .end local v17    # "k":I
    .restart local v2    # "k":I
    .local v4, "end":I
    :cond_134
    move/from16 v17, v2

    move/from16 v16, v4

    .line 2230
    .end local v2    # "k":I
    .end local v4    # "end":I
    .end local p3    # "unused":I
    .restart local v16    # "end":I
    aget-short v2, v0, v13

    aput-short v2, v0, p2

    aput-short v1, v0, v13

    .line 2231
    aget-short v2, v0, v14

    aput-short v2, v0, v16

    aput-short v15, v0, v14

    .line 2237
    or-int/lit8 v2, p1, 0x1

    add-int/lit8 v4, v13, 0x1

    invoke-static {v0, v2, v4, v14}, Ljava/util/DualPivotQuicksort;->sort([SIII)V

    .line 2238
    or-int/lit8 v2, p1, 0x1

    add-int/lit8 v4, v14, 0x1

    invoke-static {v0, v2, v4, v3}, Ljava/util/DualPivotQuicksort;->sort([SIII)V

    .line 2240
    .end local v1    # "pivot1":S
    .end local v15    # "pivot2":S
    goto :goto_190

    .line 2160
    .end local v16    # "end":I
    .end local p1    # "bits":I
    .local v2, "bits":I
    .restart local v4    # "end":I
    :cond_153
    move/from16 p1, v2

    move/from16 v16, v4

    .line 2246
    .end local v2    # "bits":I
    .end local v4    # "end":I
    .restart local v16    # "end":I
    .restart local p1    # "bits":I
    aget-short v1, v0, v9

    .line 2255
    .local v1, "pivot":S
    aget-short v2, v0, v13

    aput-short v2, v0, v9

    .line 2276
    add-int/lit8 v14, v14, 0x1

    move v2, v14

    .local v2, "k":I
    :goto_160
    add-int/lit8 v2, v2, -0x1

    if-le v2, v13, :cond_185

    .line 2277
    aget-short v4, v0, v2

    .line 2279
    .local v4, "ak":S
    if-eq v4, v1, :cond_184

    .line 2280
    aput-short v1, v0, v2

    .line 2282
    if-ge v4, v1, :cond_180

    .line 2283
    :goto_16c
    add-int/lit8 v13, v13, 0x1

    aget-short v15, v0, v13

    if-ge v15, v1, :cond_173

    goto :goto_16c

    .line 2285
    :cond_173
    aget-short v15, v0, v13

    if-le v15, v1, :cond_17d

    .line 2286
    add-int/lit8 v14, v14, -0x1

    aget-short v15, v0, v13

    aput-short v15, v0, v14

    .line 2288
    :cond_17d
    aput-short v4, v0, v13

    goto :goto_184

    .line 2290
    :cond_180
    add-int/lit8 v14, v14, -0x1

    aput-short v4, v0, v14

    .line 2293
    .end local v4    # "ak":S
    :cond_184
    :goto_184
    goto :goto_160

    .line 2298
    .end local v2    # "k":I
    :cond_185
    aget-short v2, v0, v13

    aput-short v2, v0, p2

    aput-short v1, v0, v13

    .line 2305
    or-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2, v14, v3}, Ljava/util/DualPivotQuicksort;->sort([SIII)V

    .line 2307
    .end local v1    # "pivot":S
    :goto_190
    move v3, v13

    .line 2308
    .end local v5    # "size":I
    .end local v6    # "step":I
    .end local v7    # "e1":I
    .end local v8    # "e5":I
    .end local v9    # "e3":I
    .end local v10    # "e2":I
    .end local v11    # "e4":I
    .end local v12    # "a3":S
    .end local v13    # "lower":I
    .end local v14    # "upper":I
    .end local v16    # "end":I
    move/from16 v1, p2

    move/from16 v2, p1

    goto/16 :goto_8
.end method

.method private static blacklist tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[DII)Z
    .registers 20
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [D
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 3738
    move/from16 v0, p3

    const/4 v1, 0x0

    .line 3739
    .local v1, "run":[I
    add-int v2, p2, v0

    .line 3740
    .local v2, "high":I
    const/4 v3, 0x1

    .local v3, "count":I
    move/from16 v4, p2

    .line 3745
    .local v4, "last":I
    add-int/lit8 v5, p2, 0x1

    move-object v11, v1

    move v13, v3

    .end local v1    # "run":[I
    .end local v3    # "count":I
    .local v5, "k":I
    .local v11, "run":[I
    .local v13, "count":I
    :goto_c
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ge v5, v2, :cond_a8

    .line 3750
    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_28

    .line 3753
    :goto_1a
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_69

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_69

    goto :goto_1a

    .line 3755
    :cond_28
    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5a

    .line 3758
    :goto_32
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_40

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_40

    goto :goto_32

    .line 3761
    :cond_40
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    move v7, v5

    .local v7, "j":I
    :goto_43
    add-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_59

    aget-wide v8, p1, v6

    aget-wide v14, p1, v7

    cmpl-double v8, v8, v14

    if-lez v8, :cond_59

    .line 3762
    aget-wide v8, p1, v6

    .local v8, "ai":D
    aget-wide v14, p1, v7

    aput-wide v14, p1, v6

    aput-wide v8, p1, v7

    .line 3763
    .end local v8    # "ai":D
    goto :goto_43

    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_59
    goto :goto_69

    .line 3765
    :cond_5a
    aget-wide v6, p1, v5

    .local v6, "ak":D
    :goto_5c
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_66

    aget-wide v8, p1, v5

    cmpl-double v8, v6, v8

    if-nez v8, :cond_66

    goto :goto_5c

    .line 3767
    .end local v6    # "ak":D
    :cond_66
    if-ge v5, v2, :cond_69

    .line 3768
    goto :goto_c

    .line 3775
    :cond_69
    :goto_69
    if-nez v11, :cond_81

    .line 3776
    if-ne v5, v2, :cond_6e

    .line 3782
    return v3

    .line 3785
    :cond_6e
    sub-int v3, v5, p2

    const/16 v6, 0x10

    if-ge v3, v6, :cond_75

    .line 3791
    return v1

    .line 3794
    :cond_75
    shr-int/lit8 v3, v0, 0xa

    or-int/lit8 v3, v3, 0x7f

    and-int/lit16 v3, v3, 0x3ff

    new-array v3, v3, [I

    .line 3795
    .end local v11    # "run":[I
    .local v3, "run":[I
    aput p2, v3, v1

    move-object v11, v3

    goto :goto_a3

    .line 3797
    .end local v3    # "run":[I
    .restart local v11    # "run":[I
    :cond_81
    add-int/lit8 v3, v4, -0x1

    aget-wide v6, p1, v3

    aget-wide v8, p1, v4

    cmpl-double v3, v6, v8

    if-lez v3, :cond_a3

    .line 3799
    sub-int v3, v5, p2

    shr-int/lit8 v3, v3, 0x7

    if-le v13, v3, :cond_92

    .line 3805
    return v1

    .line 3808
    :cond_92
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x1400

    if-ne v13, v3, :cond_99

    .line 3813
    return v1

    .line 3816
    :cond_99
    array-length v1, v11

    if-ne v13, v1, :cond_a3

    .line 3821
    shl-int/lit8 v1, v13, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 3824
    :cond_a3
    :goto_a3
    move v4, v5

    aput v5, v11, v13

    goto/16 :goto_c

    .line 3830
    .end local v5    # "k":I
    :cond_a8
    if-le v13, v3, :cond_cd

    .line 3831
    move/from16 v5, p2

    .line 3833
    .local v5, "offset":I
    if-eqz p0, :cond_be

    invoke-static/range {p0 .. p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetb(Ljava/util/DualPivotQuicksort$Sorter;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    move-object v7, v6

    .local v7, "b":[D
    if-nez v6, :cond_b8

    goto :goto_be

    .line 3836
    :cond_b8
    invoke-static/range {p0 .. p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetoffset(Ljava/util/DualPivotQuicksort$Sorter;)I

    move-result v5

    move v8, v5

    goto :goto_c1

    .line 3834
    .end local v7    # "b":[D
    :cond_be
    :goto_be
    new-array v7, v0, [D

    move v8, v5

    .line 3838
    .end local v5    # "offset":I
    .restart local v7    # "b":[D
    .local v8, "offset":I
    :goto_c1
    if-eqz p0, :cond_c5

    move v10, v3

    goto :goto_c6

    :cond_c5
    move v10, v1

    :goto_c6
    const/4 v12, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v13}, Ljava/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    .line 3840
    .end local v7    # "b":[D
    .end local v8    # "offset":I
    :cond_cd
    return v3
.end method

.method private static blacklist tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[FII)Z
    .registers 18
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [F
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 2932
    move/from16 v0, p3

    const/4 v1, 0x0

    .line 2933
    .local v1, "run":[I
    add-int v2, p2, v0

    .line 2934
    .local v2, "high":I
    const/4 v3, 0x1

    .local v3, "count":I
    move/from16 v4, p2

    .line 2939
    .local v4, "last":I
    add-int/lit8 v5, p2, 0x1

    move-object v11, v1

    move v13, v3

    .end local v1    # "run":[I
    .end local v3    # "count":I
    .local v5, "k":I
    .local v11, "run":[I
    .local v13, "count":I
    :goto_c
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ge v5, v2, :cond_a8

    .line 2944
    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_28

    .line 2947
    :goto_1a
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_69

    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_69

    goto :goto_1a

    .line 2949
    :cond_28
    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5a

    .line 2952
    :goto_32
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_40

    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_40

    goto :goto_32

    .line 2955
    :cond_40
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    move v7, v5

    .local v7, "j":I
    :goto_43
    add-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_59

    aget v8, p1, v6

    aget v9, p1, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_59

    .line 2956
    aget v8, p1, v6

    .local v8, "ai":F
    aget v9, p1, v7

    aput v9, p1, v6

    aput v8, p1, v7

    .line 2957
    .end local v8    # "ai":F
    goto :goto_43

    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_59
    goto :goto_69

    .line 2959
    :cond_5a
    aget v6, p1, v5

    .local v6, "ak":F
    :goto_5c
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_66

    aget v7, p1, v5

    cmpl-float v7, v6, v7

    if-nez v7, :cond_66

    goto :goto_5c

    .line 2961
    .end local v6    # "ak":F
    :cond_66
    if-ge v5, v2, :cond_69

    .line 2962
    goto :goto_c

    .line 2969
    :cond_69
    :goto_69
    if-nez v11, :cond_81

    .line 2970
    if-ne v5, v2, :cond_6e

    .line 2976
    return v3

    .line 2979
    :cond_6e
    sub-int v3, v5, p2

    const/16 v6, 0x10

    if-ge v3, v6, :cond_75

    .line 2985
    return v1

    .line 2988
    :cond_75
    shr-int/lit8 v3, v0, 0xa

    or-int/lit8 v3, v3, 0x7f

    and-int/lit16 v3, v3, 0x3ff

    new-array v3, v3, [I

    .line 2989
    .end local v11    # "run":[I
    .local v3, "run":[I
    aput p2, v3, v1

    move-object v11, v3

    goto :goto_a3

    .line 2991
    .end local v3    # "run":[I
    .restart local v11    # "run":[I
    :cond_81
    add-int/lit8 v3, v4, -0x1

    aget v3, p1, v3

    aget v6, p1, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a3

    .line 2993
    sub-int v3, v5, p2

    shr-int/lit8 v3, v3, 0x7

    if-le v13, v3, :cond_92

    .line 2999
    return v1

    .line 3002
    :cond_92
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x1400

    if-ne v13, v3, :cond_99

    .line 3007
    return v1

    .line 3010
    :cond_99
    array-length v1, v11

    if-ne v13, v1, :cond_a3

    .line 3015
    shl-int/lit8 v1, v13, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 3018
    :cond_a3
    :goto_a3
    move v4, v5

    aput v5, v11, v13

    goto/16 :goto_c

    .line 3024
    .end local v5    # "k":I
    :cond_a8
    if-le v13, v3, :cond_cc

    .line 3025
    move/from16 v5, p2

    .line 3027
    .local v5, "offset":I
    if-eqz p0, :cond_be

    invoke-static {p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetb(Ljava/util/DualPivotQuicksort$Sorter;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    move-object v7, v6

    .local v7, "b":[F
    if-nez v6, :cond_b8

    goto :goto_be

    .line 3030
    :cond_b8
    invoke-static {p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetoffset(Ljava/util/DualPivotQuicksort$Sorter;)I

    move-result v5

    move v8, v5

    goto :goto_c1

    .line 3028
    .end local v7    # "b":[F
    :cond_be
    :goto_be
    new-array v7, v0, [F

    move v8, v5

    .line 3032
    .end local v5    # "offset":I
    .restart local v7    # "b":[F
    .local v8, "offset":I
    :goto_c1
    if-eqz p0, :cond_c5

    move v10, v3

    goto :goto_c6

    :cond_c5
    move v10, v1

    :goto_c6
    const/4 v12, 0x0

    const/4 v9, 0x1

    move-object v6, p1

    invoke-static/range {v6 .. v13}, Ljava/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    .line 3034
    .end local v7    # "b":[F
    .end local v8    # "offset":I
    :cond_cc
    return v3
.end method

.method private static blacklist tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[III)Z
    .registers 18
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [I
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 637
    move/from16 v0, p3

    const/4 v1, 0x0

    .line 638
    .local v1, "run":[I
    add-int v2, p2, v0

    .line 639
    .local v2, "high":I
    const/4 v3, 0x1

    .local v3, "count":I
    move/from16 v4, p2

    .line 644
    .local v4, "last":I
    add-int/lit8 v5, p2, 0x1

    move-object v11, v1

    move v13, v3

    .end local v1    # "run":[I
    .end local v3    # "count":I
    .local v5, "k":I
    .local v11, "run":[I
    .local v13, "count":I
    :goto_c
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ge v5, v2, :cond_9a

    .line 649
    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    if-ge v6, v7, :cond_24

    .line 652
    :goto_18
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_5d

    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    if-gt v6, v7, :cond_5d

    goto :goto_18

    .line 654
    :cond_24
    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    if-le v6, v7, :cond_50

    .line 657
    :goto_2c
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_38

    add-int/lit8 v6, v5, -0x1

    aget v6, p1, v6

    aget v7, p1, v5

    if-lt v6, v7, :cond_38

    goto :goto_2c

    .line 660
    :cond_38
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    move v7, v5

    .local v7, "j":I
    :goto_3b
    add-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_4f

    aget v8, p1, v6

    aget v9, p1, v7

    if-le v8, v9, :cond_4f

    .line 661
    aget v8, p1, v6

    .local v8, "ai":I
    aget v9, p1, v7

    aput v9, p1, v6

    aput v8, p1, v7

    .line 662
    .end local v8    # "ai":I
    goto :goto_3b

    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_4f
    goto :goto_5d

    .line 664
    :cond_50
    aget v6, p1, v5

    .local v6, "ak":I
    :goto_52
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_5a

    aget v7, p1, v5

    if-ne v6, v7, :cond_5a

    goto :goto_52

    .line 666
    .end local v6    # "ak":I
    :cond_5a
    if-ge v5, v2, :cond_5d

    .line 667
    goto :goto_c

    .line 674
    :cond_5d
    :goto_5d
    if-nez v11, :cond_75

    .line 675
    if-ne v5, v2, :cond_62

    .line 681
    return v3

    .line 684
    :cond_62
    sub-int v3, v5, p2

    const/16 v6, 0x10

    if-ge v3, v6, :cond_69

    .line 690
    return v1

    .line 693
    :cond_69
    shr-int/lit8 v3, v0, 0xa

    or-int/lit8 v3, v3, 0x7f

    and-int/lit16 v3, v3, 0x3ff

    new-array v3, v3, [I

    .line 694
    .end local v11    # "run":[I
    .local v3, "run":[I
    aput p2, v3, v1

    move-object v11, v3

    goto :goto_95

    .line 696
    .end local v3    # "run":[I
    .restart local v11    # "run":[I
    :cond_75
    add-int/lit8 v3, v4, -0x1

    aget v3, p1, v3

    aget v6, p1, v4

    if-le v3, v6, :cond_95

    .line 698
    sub-int v3, v5, p2

    shr-int/lit8 v3, v3, 0x7

    if-le v13, v3, :cond_84

    .line 704
    return v1

    .line 707
    :cond_84
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x1400

    if-ne v13, v3, :cond_8b

    .line 712
    return v1

    .line 715
    :cond_8b
    array-length v1, v11

    if-ne v13, v1, :cond_95

    .line 720
    shl-int/lit8 v1, v13, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 723
    :cond_95
    :goto_95
    move v4, v5

    aput v5, v11, v13

    goto/16 :goto_c

    .line 729
    .end local v5    # "k":I
    :cond_9a
    if-le v13, v3, :cond_be

    .line 730
    move/from16 v5, p2

    .line 732
    .local v5, "offset":I
    if-eqz p0, :cond_b0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetb(Ljava/util/DualPivotQuicksort$Sorter;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v7, v6

    .local v7, "b":[I
    if-nez v6, :cond_aa

    goto :goto_b0

    .line 735
    :cond_aa
    invoke-static {p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetoffset(Ljava/util/DualPivotQuicksort$Sorter;)I

    move-result v5

    move v8, v5

    goto :goto_b3

    .line 733
    .end local v7    # "b":[I
    :cond_b0
    :goto_b0
    new-array v7, v0, [I

    move v8, v5

    .line 737
    .end local v5    # "offset":I
    .restart local v7    # "b":[I
    .local v8, "offset":I
    :goto_b3
    if-eqz p0, :cond_b7

    move v10, v3

    goto :goto_b8

    :cond_b7
    move v10, v1

    :goto_b8
    const/4 v12, 0x0

    const/4 v9, 0x1

    move-object v6, p1

    invoke-static/range {v6 .. v13}, Ljava/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    .line 739
    .end local v7    # "b":[I
    .end local v8    # "offset":I
    :cond_be
    return v3
.end method

.method private static blacklist tryMergeRuns(Ljava/util/DualPivotQuicksort$Sorter;[JII)Z
    .registers 20
    .param p0, "sorter"    # Ljava/util/DualPivotQuicksort$Sorter;
    .param p1, "a"    # [J
    .param p2, "low"    # I
    .param p3, "size"    # I

    .line 1391
    move/from16 v0, p3

    const/4 v1, 0x0

    .line 1392
    .local v1, "run":[I
    add-int v2, p2, v0

    .line 1393
    .local v2, "high":I
    const/4 v3, 0x1

    .local v3, "count":I
    move/from16 v4, p2

    .line 1398
    .local v4, "last":I
    add-int/lit8 v5, p2, 0x1

    move-object v11, v1

    move v13, v3

    .end local v1    # "run":[I
    .end local v3    # "count":I
    .local v5, "k":I
    .local v11, "run":[I
    .local v13, "count":I
    :goto_c
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ge v5, v2, :cond_a8

    .line 1403
    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmp-long v6, v6, v8

    if-gez v6, :cond_28

    .line 1406
    :goto_1a
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_69

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmp-long v6, v6, v8

    if-gtz v6, :cond_69

    goto :goto_1a

    .line 1408
    :cond_28
    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmp-long v6, v6, v8

    if-lez v6, :cond_5a

    .line 1411
    :goto_32
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_40

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, p1, v6

    aget-wide v8, p1, v5

    cmp-long v6, v6, v8

    if-ltz v6, :cond_40

    goto :goto_32

    .line 1414
    :cond_40
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    move v7, v5

    .local v7, "j":I
    :goto_43
    add-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_59

    aget-wide v8, p1, v6

    aget-wide v14, p1, v7

    cmp-long v8, v8, v14

    if-lez v8, :cond_59

    .line 1415
    aget-wide v8, p1, v6

    .local v8, "ai":J
    aget-wide v14, p1, v7

    aput-wide v14, p1, v6

    aput-wide v8, p1, v7

    .line 1416
    .end local v8    # "ai":J
    goto :goto_43

    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_59
    goto :goto_69

    .line 1418
    :cond_5a
    aget-wide v6, p1, v5

    .local v6, "ak":J
    :goto_5c
    add-int/2addr v5, v3

    if-ge v5, v2, :cond_66

    aget-wide v8, p1, v5

    cmp-long v8, v6, v8

    if-nez v8, :cond_66

    goto :goto_5c

    .line 1420
    .end local v6    # "ak":J
    :cond_66
    if-ge v5, v2, :cond_69

    .line 1421
    goto :goto_c

    .line 1428
    :cond_69
    :goto_69
    if-nez v11, :cond_81

    .line 1429
    if-ne v5, v2, :cond_6e

    .line 1435
    return v3

    .line 1438
    :cond_6e
    sub-int v3, v5, p2

    const/16 v6, 0x10

    if-ge v3, v6, :cond_75

    .line 1444
    return v1

    .line 1447
    :cond_75
    shr-int/lit8 v3, v0, 0xa

    or-int/lit8 v3, v3, 0x7f

    and-int/lit16 v3, v3, 0x3ff

    new-array v3, v3, [I

    .line 1448
    .end local v11    # "run":[I
    .local v3, "run":[I
    aput p2, v3, v1

    move-object v11, v3

    goto :goto_a3

    .line 1450
    .end local v3    # "run":[I
    .restart local v11    # "run":[I
    :cond_81
    add-int/lit8 v3, v4, -0x1

    aget-wide v6, p1, v3

    aget-wide v8, p1, v4

    cmp-long v3, v6, v8

    if-lez v3, :cond_a3

    .line 1452
    sub-int v3, v5, p2

    shr-int/lit8 v3, v3, 0x7

    if-le v13, v3, :cond_92

    .line 1458
    return v1

    .line 1461
    :cond_92
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x1400

    if-ne v13, v3, :cond_99

    .line 1466
    return v1

    .line 1469
    :cond_99
    array-length v1, v11

    if-ne v13, v1, :cond_a3

    .line 1474
    shl-int/lit8 v1, v13, 0x1

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    .line 1477
    :cond_a3
    :goto_a3
    move v4, v5

    aput v5, v11, v13

    goto/16 :goto_c

    .line 1483
    .end local v5    # "k":I
    :cond_a8
    if-le v13, v3, :cond_cd

    .line 1484
    move/from16 v5, p2

    .line 1486
    .local v5, "offset":I
    if-eqz p0, :cond_be

    invoke-static/range {p0 .. p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetb(Ljava/util/DualPivotQuicksort$Sorter;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    move-object v7, v6

    .local v7, "b":[J
    if-nez v6, :cond_b8

    goto :goto_be

    .line 1489
    :cond_b8
    invoke-static/range {p0 .. p0}, Ljava/util/DualPivotQuicksort$Sorter;->-$$Nest$fgetoffset(Ljava/util/DualPivotQuicksort$Sorter;)I

    move-result v5

    move v8, v5

    goto :goto_c1

    .line 1487
    .end local v7    # "b":[J
    :cond_be
    :goto_be
    new-array v7, v0, [J

    move v8, v5

    .line 1491
    .end local v5    # "offset":I
    .restart local v7    # "b":[J
    .local v8, "offset":I
    :goto_c1
    if-eqz p0, :cond_c5

    move v10, v3

    goto :goto_c6

    :cond_c5
    move v10, v1

    :goto_c6
    const/4 v12, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v13}, Ljava/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    .line 1493
    .end local v7    # "b":[J
    .end local v8    # "offset":I
    :cond_cd
    return v3
.end method
