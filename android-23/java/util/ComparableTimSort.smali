.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v3, 0x7

    #@4
    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    #@6
    .line 92
    const/4 v3, 0x0

    #@7
    iput v3, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@9
    .line 109
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@b
    .line 112
    array-length v0, p1

    #@c
    .line 114
    .local v0, "len":I
    const/16 v3, 0x200

    #@e
    if-ge v0, v3, :cond_0

    #@10
    .line 115
    ushr-int/lit8 v3, v0, 0x1

    #@12
    .line 114
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    #@14
    .line 116
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@16
    .line 128
    const/16 v3, 0x78

    #@18
    if-ge v0, v3, :cond_1

    #@1a
    const/4 v2, 0x5

    #@1b
    .line 131
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    #@1d
    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@1f
    .line 132
    new-array v3, v2, [I

    #@21
    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@23
    .line 108
    return-void

    #@24
    .line 115
    .end local v1    # "newArray":[Ljava/lang/Object;
    .end local v2    # "stackLen":I
    :cond_0
    const/16 v3, 0x100

    #@26
    goto :goto_0

    #@27
    .line 129
    .restart local v1    # "newArray":[Ljava/lang/Object;
    :cond_1
    const/16 v3, 0x606

    #@29
    if-ge v0, v3, :cond_2

    #@2b
    const/16 v2, 0xa

    #@2d
    .restart local v2    # "stackLen":I
    goto :goto_1

    #@2e
    .line 130
    .end local v2    # "stackLen":I
    :cond_2
    const v3, 0x1d16f

    #@31
    if-ge v0, v3, :cond_3

    #@33
    const/16 v2, 0x13

    #@35
    .restart local v2    # "stackLen":I
    goto :goto_1

    #@36
    .end local v2    # "stackLen":I
    :cond_3
    const/16 v2, 0x28

    #@38
    .restart local v2    # "stackLen":I
    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    #@0
    .prologue
    .line 211
    if-ne p3, p1, :cond_0

    #@2
    .line 212
    add-int/lit8 p3, p3, 0x1

    #@4
    .line 213
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    #@6
    .line 215
    aget-object v3, p0, p3

    #@8
    check-cast v3, Ljava/lang/Comparable;

    #@a
    .line 218
    .local v3, "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move v0, p1

    #@b
    .line 219
    .local v0, "left":I
    move v4, p3

    #@c
    .line 226
    .local v4, "right":I
    :goto_1
    if-ge v0, v4, :cond_2

    #@e
    .line 227
    add-int v5, v0, v4

    #@10
    ushr-int/lit8 v1, v5, 0x1

    #@12
    .line 228
    .local v1, "mid":I
    aget-object v5, p0, v1

    #@14
    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@17
    move-result v5

    #@18
    if-gez v5, :cond_1

    #@1a
    .line 229
    move v4, v1

    #@1b
    goto :goto_1

    #@1c
    .line 231
    :cond_1
    add-int/lit8 v0, v1, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 242
    .end local v1    # "mid":I
    :cond_2
    sub-int v2, p3, v0

    #@21
    .line 244
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    #@24
    .line 248
    add-int/lit8 v5, v0, 0x1

    #@26
    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    .line 250
    :goto_2
    aput-object v3, p0, v0

    #@2b
    .line 213
    add-int/lit8 p3, p3, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 245
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    #@30
    add-int/lit8 v6, v0, 0x1

    #@32
    aget-object v6, p0, v6

    #@34
    aput-object v6, p0, v5

    #@36
    .line 246
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    #@38
    aget-object v6, p0, v0

    #@3a
    aput-object v6, p0, v5

    #@3c
    goto :goto_2

    #@3d
    .line 209
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v4    # "right":I
    :cond_3
    return-void

    #@3e
    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 281
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 282
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    #@4
    .line 283
    const/4 v2, 0x1

    #@5
    return v2

    #@6
    .line 286
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@8
    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    #@a
    check-cast v2, Ljava/lang/Comparable;

    #@c
    aget-object v3, p0, p1

    #@e
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    if-gez v2, :cond_3

    #@14
    move v0, v1

    #@15
    .line 287
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@17
    aget-object v2, p0, v0

    #@19
    check-cast v2, Ljava/lang/Comparable;

    #@1b
    add-int/lit8 v3, v0, -0x1

    #@1d
    aget-object v3, p0, v3

    #@1f
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@22
    move-result v2

    #@23
    if-gez v2, :cond_1

    #@25
    .line 288
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 289
    :cond_1
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    #@2b
    .line 295
    :cond_2
    sub-int v2, v0, p1

    #@2d
    return v2

    #@2e
    .line 291
    :goto_1
    if-ge v0, p2, :cond_2

    #@30
    aget-object v2, p0, v0

    #@32
    check-cast v2, Ljava/lang/Comparable;

    #@34
    add-int/lit8 v3, v0, -0x1

    #@36
    aget-object v3, p0, v3

    #@38
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@3b
    move-result v2

    #@3c
    if-ltz v2, :cond_2

    #@3e
    .line 292
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_1

    #@41
    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_3
    move v0, v1

    #@42
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 866
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@2
    array-length v2, v2

    #@3
    if-ge v2, p1, :cond_0

    #@5
    .line 868
    move v1, p1

    #@6
    .line 869
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    #@8
    or-int/2addr v1, v2

    #@9
    .line 870
    shr-int/lit8 v2, v1, 0x2

    #@b
    or-int/2addr v1, v2

    #@c
    .line 871
    shr-int/lit8 v2, v1, 0x4

    #@e
    or-int/2addr v1, v2

    #@f
    .line 872
    shr-int/lit8 v2, v1, 0x8

    #@11
    or-int/2addr v1, v2

    #@12
    .line 873
    shr-int/lit8 v2, v1, 0x10

    #@14
    or-int/2addr v1, v2

    #@15
    .line 874
    add-int/lit8 v1, v1, 0x1

    #@17
    .line 876
    if-gez v1, :cond_1

    #@19
    .line 877
    move v1, p1

    #@1a
    .line 882
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    #@1c
    .line 883
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@1e
    .line 885
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@20
    return-object v2

    #@21
    .line 879
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@23
    array-length v2, v2

    #@24
    ushr-int/lit8 v2, v2, 0x1

    #@26
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v1

    #@2a
    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #@1
    .line 491
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    #@2
    .line 492
    .local v3, "ofs":I
    add-int v5, p2, p4

    #@4
    aget-object v5, p1, v5

    #@6
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@9
    move-result v5

    #@a
    if-lez v5, :cond_3

    #@c
    .line 494
    sub-int v2, p3, p4

    #@e
    .line 495
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    #@10
    add-int v5, p2, p4

    #@12
    add-int/2addr v5, v3

    #@13
    aget-object v5, p1, v5

    #@15
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@18
    move-result v5

    #@19
    if-lez v5, :cond_1

    #@1b
    .line 496
    move v0, v3

    #@1c
    .line 497
    shl-int/lit8 v5, v3, 0x1

    #@1e
    add-int/lit8 v3, v5, 0x1

    #@20
    .line 498
    if-gtz v3, :cond_0

    #@22
    .line 499
    move v3, v2

    #@23
    goto :goto_0

    #@24
    .line 501
    :cond_1
    if-le v3, v2, :cond_2

    #@26
    .line 502
    move v3, v2

    #@27
    .line 505
    :cond_2
    add-int/2addr v0, p4

    #@28
    .line 506
    add-int/2addr v3, p4

    #@29
    .line 531
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    .line 532
    :goto_2
    if-ge v0, v3, :cond_8

    #@2d
    .line 533
    sub-int v5, v3, v0

    #@2f
    ushr-int/lit8 v5, v5, 0x1

    #@31
    add-int v1, v0, v5

    #@33
    .line 535
    .local v1, "m":I
    add-int v5, p2, v1

    #@35
    aget-object v5, p1, v5

    #@37
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@3a
    move-result v5

    #@3b
    if-lez v5, :cond_7

    #@3d
    .line 536
    add-int/lit8 v0, v1, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 509
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    add-int/lit8 v2, p4, 0x1

    #@42
    .line 510
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    #@44
    add-int v5, p2, p4

    #@46
    sub-int/2addr v5, v3

    #@47
    aget-object v5, p1, v5

    #@49
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@4c
    move-result v5

    #@4d
    if-gtz v5, :cond_5

    #@4f
    .line 511
    move v0, v3

    #@50
    .line 512
    shl-int/lit8 v5, v3, 0x1

    #@52
    add-int/lit8 v3, v5, 0x1

    #@54
    .line 513
    if-gtz v3, :cond_4

    #@56
    .line 514
    move v3, v2

    #@57
    goto :goto_3

    #@58
    .line 516
    :cond_5
    if-le v3, v2, :cond_6

    #@5a
    .line 517
    move v3, v2

    #@5b
    .line 520
    :cond_6
    move v4, v0

    #@5c
    .line 521
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@5e
    .line 522
    sub-int v3, p4, v4

    #@60
    goto :goto_1

    #@61
    .line 538
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_7
    move v3, v1

    #@62
    goto :goto_2

    #@63
    .line 541
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    #@0
    .prologue
    .line 560
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    #@1
    .line 561
    .local v3, "ofs":I
    const/4 v0, 0x0

    #@2
    .line 562
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    #@4
    aget-object v5, p1, v5

    #@6
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@9
    move-result v5

    #@a
    if-gez v5, :cond_3

    #@c
    .line 564
    add-int/lit8 v2, p4, 0x1

    #@e
    .line 565
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    #@10
    add-int v5, p2, p4

    #@12
    sub-int/2addr v5, v3

    #@13
    aget-object v5, p1, v5

    #@15
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@18
    move-result v5

    #@19
    if-gez v5, :cond_1

    #@1b
    .line 566
    move v0, v3

    #@1c
    .line 567
    shl-int/lit8 v5, v3, 0x1

    #@1e
    add-int/lit8 v3, v5, 0x1

    #@20
    .line 568
    if-gtz v3, :cond_0

    #@22
    .line 569
    move v3, v2

    #@23
    goto :goto_0

    #@24
    .line 571
    :cond_1
    if-le v3, v2, :cond_2

    #@26
    .line 572
    move v3, v2

    #@27
    .line 575
    :cond_2
    move v4, v0

    #@28
    .line 576
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@2a
    .line 577
    sub-int v3, p4, v4

    #@2c
    .line 601
    .end local v4    # "tmp":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    .line 602
    :goto_2
    if-ge v0, v3, :cond_8

    #@30
    .line 603
    sub-int v5, v3, v0

    #@32
    ushr-int/lit8 v5, v5, 0x1

    #@34
    add-int v1, v0, v5

    #@36
    .line 605
    .local v1, "m":I
    add-int v5, p2, v1

    #@38
    aget-object v5, p1, v5

    #@3a
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@3d
    move-result v5

    #@3e
    if-gez v5, :cond_7

    #@40
    .line 606
    move v3, v1

    #@41
    goto :goto_2

    #@42
    .line 580
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    sub-int v2, p3, p4

    #@44
    .line 581
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    #@46
    add-int v5, p2, p4

    #@48
    add-int/2addr v5, v3

    #@49
    aget-object v5, p1, v5

    #@4b
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@4e
    move-result v5

    #@4f
    if-ltz v5, :cond_5

    #@51
    .line 582
    move v0, v3

    #@52
    .line 583
    shl-int/lit8 v5, v3, 0x1

    #@54
    add-int/lit8 v3, v5, 0x1

    #@56
    .line 584
    if-gtz v3, :cond_4

    #@58
    .line 585
    move v3, v2

    #@59
    goto :goto_3

    #@5a
    .line 587
    :cond_5
    if-le v3, v2, :cond_6

    #@5c
    .line 588
    move v3, v2

    #@5d
    .line 591
    :cond_6
    add-int/2addr v0, p4

    #@5e
    .line 592
    add-int/2addr v3, p4

    #@5f
    goto :goto_1

    #@60
    .line 608
    .restart local v1    # "m":I
    :cond_7
    add-int/lit8 v0, v1, 0x1

    #@62
    goto :goto_2

    #@63
    .line 611
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private mergeAt(I)V
    .locals 10
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 422
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@3
    aget v0, v5, p1

    #@5
    .line 423
    .local v0, "base1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@7
    aget v3, v5, p1

    #@9
    .line 424
    .local v3, "len1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@b
    add-int/lit8 v6, p1, 0x1

    #@d
    aget v1, v5, v6

    #@f
    .line 425
    .local v1, "base2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@11
    add-int/lit8 v6, p1, 0x1

    #@13
    aget v4, v5, v6

    #@15
    .line 434
    .local v4, "len2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@17
    add-int v6, v3, v4

    #@19
    aput v6, v5, p1

    #@1b
    .line 435
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@1d
    add-int/lit8 v5, v5, -0x3

    #@1f
    if-ne p1, v5, :cond_0

    #@21
    .line 436
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@23
    add-int/lit8 v6, p1, 0x1

    #@25
    iget-object v7, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@27
    add-int/lit8 v8, p1, 0x2

    #@29
    aget v7, v7, v8

    #@2b
    aput v7, v5, v6

    #@2d
    .line 437
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@2f
    add-int/lit8 v6, p1, 0x1

    #@31
    iget-object v7, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@33
    add-int/lit8 v8, p1, 0x2

    #@35
    aget v7, v7, v8

    #@37
    aput v7, v5, v6

    #@39
    .line 439
    :cond_0
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@3b
    add-int/lit8 v5, v5, -0x1

    #@3d
    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@3f
    .line 445
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@41
    aget-object v5, v5, v1

    #@43
    check-cast v5, Ljava/lang/Comparable;

    #@45
    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@47
    invoke-static {v5, v6, v0, v3, v9}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@4a
    move-result v2

    #@4b
    .line 447
    .local v2, "k":I
    add-int/2addr v0, v2

    #@4c
    .line 448
    sub-int/2addr v3, v2

    #@4d
    .line 449
    if-nez v3, :cond_1

    #@4f
    .line 450
    return-void

    #@50
    .line 456
    :cond_1
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@52
    add-int v6, v0, v3

    #@54
    add-int/lit8 v6, v6, -0x1

    #@56
    aget-object v5, v5, v6

    #@58
    check-cast v5, Ljava/lang/Comparable;

    #@5a
    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@5c
    .line 457
    add-int/lit8 v7, v4, -0x1

    #@5e
    .line 456
    invoke-static {v5, v6, v1, v4, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@61
    move-result v4

    #@62
    .line 459
    if-nez v4, :cond_2

    #@64
    .line 460
    return-void

    #@65
    .line 463
    :cond_2
    if-gt v3, v4, :cond_3

    #@67
    .line 464
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    #@6a
    .line 417
    :goto_0
    return-void

    #@6b
    .line 466
    :cond_3
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    #@6e
    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    #@0
    .prologue
    .line 365
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_3

    #@5
    .line 366
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 367
    .local v0, "n":I
    if-lez v0, :cond_2

    #@b
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@d
    add-int/lit8 v2, v0, -0x1

    #@f
    aget v1, v1, v2

    #@11
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@13
    aget v2, v2, v0

    #@15
    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@17
    add-int/lit8 v4, v0, 0x1

    #@19
    aget v3, v3, v4

    #@1b
    add-int/2addr v2, v3

    #@1c
    if-gt v1, v2, :cond_2

    #@1e
    .line 369
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@20
    add-int/lit8 v2, v0, -0x1

    #@22
    aget v1, v1, v2

    #@24
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@26
    add-int/lit8 v3, v0, 0x1

    #@28
    aget v2, v2, v3

    #@2a
    if-ge v1, v2, :cond_1

    #@2c
    .line 372
    add-int/lit8 v1, v0, -0x1

    #@2e
    invoke-direct {p0, v1}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@31
    .line 377
    const/4 v1, 0x2

    #@32
    if-le v0, v1, :cond_0

    #@34
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@36
    add-int/lit8 v2, v0, -0x3

    #@38
    aget v1, v1, v2

    #@3a
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@3c
    add-int/lit8 v3, v0, -0x2

    #@3e
    aget v2, v2, v3

    #@40
    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@42
    add-int/lit8 v4, v0, -0x1

    #@44
    aget v3, v3, v4

    #@46
    add-int/2addr v2, v3

    #@47
    if-gt v1, v2, :cond_0

    #@49
    .line 380
    add-int/lit8 v1, v0, -0x1

    #@4b
    invoke-direct {p0, v1}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 386
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@52
    goto :goto_0

    #@53
    .line 388
    :cond_2
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@55
    aget v1, v1, v0

    #@57
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@59
    add-int/lit8 v3, v0, 0x1

    #@5b
    aget v2, v2, v3

    #@5d
    if-gt v1, v2, :cond_3

    #@5f
    .line 389
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@62
    goto :goto_0

    #@63
    .line 364
    .end local v0    # "n":I
    :cond_3
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    #@0
    .prologue
    .line 401
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_1

    #@5
    .line 402
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 403
    .local v0, "n":I
    if-lez v0, :cond_0

    #@b
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@d
    add-int/lit8 v2, v0, -0x1

    #@f
    aget v1, v1, v2

    #@11
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    aget v2, v2, v3

    #@17
    if-ge v1, v2, :cond_0

    #@19
    .line 404
    add-int/lit8 v0, v0, -0x1

    #@1b
    .line 405
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 400
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    #@0
    .prologue
    .line 752
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@4
    .line 753
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@6
    move/from16 v1, p4

    #@8
    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@b
    move-result-object v12

    #@c
    .line 754
    .local v12, "tmp":[Ljava/lang/Object;
    const/4 v13, 0x0

    #@d
    move/from16 v0, p3

    #@f
    move/from16 v1, p4

    #@11
    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 756
    add-int v13, p1, p2

    #@16
    add-int/lit8 v5, v13, -0x1

    #@18
    .line 757
    .local v5, "cursor1":I
    add-int/lit8 v7, p4, -0x1

    #@1a
    .line 758
    .local v7, "cursor2":I
    add-int v13, p3, p4

    #@1c
    add-int/lit8 v9, v13, -0x1

    #@1e
    .line 761
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    #@20
    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    #@22
    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v13, v2, v5

    #@24
    aput-object v13, v2, v9

    #@26
    .line 762
    add-int/lit8 p2, p2, -0x1

    #@28
    if-nez p2, :cond_0

    #@2a
    .line 763
    add-int/lit8 v13, p4, -0x1

    #@2c
    sub-int v13, v10, v13

    #@2e
    const/4 v14, 0x0

    #@2f
    move/from16 v0, p4

    #@31
    invoke-static {v12, v14, v2, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    .line 764
    return-void

    #@35
    .line 766
    :cond_0
    const/4 v13, 0x1

    #@36
    move/from16 v0, p4

    #@38
    if-ne v0, v13, :cond_1

    #@3a
    .line 767
    sub-int v9, v10, p2

    #@3c
    .line 768
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    #@3e
    .line 769
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v13, v5, 0x1

    #@40
    add-int/lit8 v14, v9, 0x1

    #@42
    move/from16 v0, p2

    #@44
    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    .line 770
    aget-object v13, v12, v7

    #@49
    aput-object v13, v2, v9

    #@4b
    .line 771
    return-void

    #@4c
    .line 774
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_1
    move-object/from16 v0, p0

    #@4e
    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    #@50
    .local v11, "minGallop":I
    move v9, v10

    #@51
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@52
    .line 777
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_0
    const/4 v3, 0x0

    #@53
    .line 778
    .local v3, "count1":I
    const/4 v4, 0x0

    #@54
    .line 786
    .local v4, "count2":I
    :cond_2
    aget-object v13, v12, v7

    #@56
    check-cast v13, Ljava/lang/Comparable;

    #@58
    aget-object v14, v2, v5

    #@5a
    invoke-interface {v13, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@5d
    move-result v13

    #@5e
    if-gez v13, :cond_5

    #@60
    .line 787
    add-int/lit8 v10, v9, -0x1

    #@62
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    #@64
    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    #@66
    aput-object v13, v2, v9

    #@68
    .line 788
    add-int/lit8 v3, v3, 0x1

    #@6a
    .line 789
    const/4 v4, 0x0

    #@6b
    .line 790
    add-int/lit8 p2, p2, -0x1

    #@6d
    if-nez p2, :cond_11

    #@6f
    move v9, v10

    #@70
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@71
    .line 839
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_3
    :goto_1
    const/4 v13, 0x1

    #@72
    if-ge v11, v13, :cond_4

    #@74
    const/4 v11, 0x1

    #@75
    .end local v11    # "minGallop":I
    :cond_4
    move-object/from16 v0, p0

    #@77
    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    #@79
    .line 841
    const/4 v13, 0x1

    #@7a
    move/from16 v0, p4

    #@7c
    if-ne v0, v13, :cond_e

    #@7e
    .line 843
    sub-int v9, v9, p2

    #@80
    .line 844
    sub-int v5, v5, p2

    #@82
    .line 845
    add-int/lit8 v13, v5, 0x1

    #@84
    add-int/lit8 v14, v9, 0x1

    #@86
    move/from16 v0, p2

    #@88
    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8b
    .line 846
    aget-object v13, v12, v7

    #@8d
    aput-object v13, v2, v9

    #@8f
    .line 748
    :goto_2
    return-void

    #@90
    .line 793
    .restart local v11    # "minGallop":I
    :cond_5
    add-int/lit8 v10, v9, -0x1

    #@92
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    #@94
    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v13, v12, v7

    #@96
    aput-object v13, v2, v9

    #@98
    .line 794
    add-int/lit8 v4, v4, 0x1

    #@9a
    .line 795
    const/4 v3, 0x0

    #@9b
    .line 796
    add-int/lit8 p4, p4, -0x1

    #@9d
    const/4 v13, 0x1

    #@9e
    move/from16 v0, p4

    #@a0
    if-ne v0, v13, :cond_6

    #@a2
    move v9, v10

    #@a3
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@a4
    .line 797
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_1

    #@a5
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_6
    move v9, v10

    #@a6
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@a7
    .line 799
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_3
    or-int v13, v3, v4

    #@a9
    if-lt v13, v11, :cond_2

    #@ab
    .line 808
    :goto_4
    aget-object v13, v12, v7

    #@ad
    check-cast v13, Ljava/lang/Comparable;

    #@af
    add-int/lit8 v14, p2, -0x1

    #@b1
    move/from16 v0, p1

    #@b3
    move/from16 v1, p2

    #@b5
    invoke-static {v13, v2, v0, v1, v14}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@b8
    move-result v13

    #@b9
    sub-int v3, p2, v13

    #@bb
    .line 809
    if-eqz v3, :cond_7

    #@bd
    .line 810
    sub-int/2addr v9, v3

    #@be
    .line 811
    sub-int/2addr v5, v3

    #@bf
    .line 812
    sub-int p2, p2, v3

    #@c1
    .line 813
    add-int/lit8 v13, v5, 0x1

    #@c3
    add-int/lit8 v14, v9, 0x1

    #@c5
    invoke-static {v2, v13, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c8
    .line 814
    if-eqz p2, :cond_3

    #@ca
    .line 817
    :cond_7
    add-int/lit8 v10, v9, -0x1

    #@cc
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    #@ce
    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v13, v12, v7

    #@d0
    aput-object v13, v2, v9

    #@d2
    .line 818
    add-int/lit8 p4, p4, -0x1

    #@d4
    const/4 v13, 0x1

    #@d5
    move/from16 v0, p4

    #@d7
    if-ne v0, v13, :cond_8

    #@d9
    move v9, v10

    #@da
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@db
    .line 819
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_1

    #@dc
    .line 821
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_8
    aget-object v13, v2, v5

    #@de
    check-cast v13, Ljava/lang/Comparable;

    #@e0
    add-int/lit8 v14, p4, -0x1

    #@e2
    const/4 v15, 0x0

    #@e3
    move/from16 v0, p4

    #@e5
    invoke-static {v13, v12, v15, v0, v14}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@e8
    move-result v13

    #@e9
    sub-int v4, p4, v13

    #@eb
    .line 822
    if-eqz v4, :cond_10

    #@ed
    .line 823
    sub-int v9, v10, v4

    #@ef
    .line 824
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    #@f1
    .line 825
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    #@f3
    .line 826
    add-int/lit8 v13, v7, 0x1

    #@f5
    add-int/lit8 v14, v9, 0x1

    #@f7
    invoke-static {v12, v13, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@fa
    .line 827
    const/4 v13, 0x1

    #@fb
    move/from16 v0, p4

    #@fd
    if-le v0, v13, :cond_3

    #@ff
    .line 830
    :goto_5
    add-int/lit8 v10, v9, -0x1

    #@101
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    #@103
    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    #@105
    aput-object v13, v2, v9

    #@107
    .line 831
    add-int/lit8 p2, p2, -0x1

    #@109
    if-nez p2, :cond_9

    #@10b
    move v9, v10

    #@10c
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@10d
    .line 832
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    #@10f
    .line 833
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_9
    add-int/lit8 v11, v11, -0x1

    #@111
    .line 834
    const/4 v13, 0x7

    #@112
    if-lt v3, v13, :cond_a

    #@114
    const/4 v13, 0x1

    #@115
    move v14, v13

    #@116
    :goto_6
    const/4 v13, 0x7

    #@117
    if-lt v4, v13, :cond_b

    #@119
    const/4 v13, 0x1

    #@11a
    :goto_7
    or-int/2addr v13, v14

    #@11b
    if-eqz v13, :cond_c

    #@11d
    move v9, v10

    #@11e
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@11f
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto :goto_4

    #@120
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_a
    const/4 v13, 0x0

    #@121
    move v14, v13

    #@122
    goto :goto_6

    #@123
    :cond_b
    const/4 v13, 0x0

    #@124
    goto :goto_7

    #@125
    .line 835
    :cond_c
    if-gez v11, :cond_d

    #@127
    .line 836
    const/4 v11, 0x0

    #@128
    .line 837
    :cond_d
    add-int/lit8 v11, v11, 0x2

    #@12a
    move v9, v10

    #@12b
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@12c
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_0

    #@12e
    .line 847
    .end local v11    # "minGallop":I
    :cond_e
    if-nez p4, :cond_f

    #@130
    .line 848
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@132
    .line 849
    const-string/jumbo v14, "Comparison method violates its general contract!"

    #@135
    .line 848
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@138
    throw v13

    #@139
    .line 853
    :cond_f
    add-int/lit8 v13, p4, -0x1

    #@13b
    sub-int v13, v9, v13

    #@13d
    const/4 v14, 0x0

    #@13e
    move/from16 v0, p4

    #@140
    invoke-static {v12, v14, v2, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@143
    goto/16 :goto_2

    #@145
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_10
    move v9, v10

    #@146
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@147
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_5

    #@148
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_11
    move v9, v10

    #@149
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@14a
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 14
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    #@0
    .prologue
    .line 635
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@2
    .line 636
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    #@4
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@7
    move-result-object v11

    #@8
    .line 637
    .local v11, "tmp":[Ljava/lang/Object;
    const/4 v12, 0x0

    #@9
    move/from16 v0, p2

    #@b
    invoke-static {v1, p1, v11, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e
    .line 639
    const/4 v4, 0x0

    #@f
    .line 640
    .local v4, "cursor1":I
    move/from16 v6, p3

    #@11
    .line 641
    .local v6, "cursor2":I
    move v8, p1

    #@12
    .line 644
    .local v8, "dest":I
    add-int/lit8 v9, v8, 0x1

    #@14
    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    #@16
    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    #@18
    aput-object v12, v1, v8

    #@1a
    .line 645
    add-int/lit8 p4, p4, -0x1

    #@1c
    if-nez p4, :cond_0

    #@1e
    .line 646
    move/from16 v0, p2

    #@20
    invoke-static {v11, v4, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 647
    return-void

    #@24
    .line 649
    :cond_0
    const/4 v12, 0x1

    #@25
    move/from16 v0, p2

    #@27
    if-ne v0, v12, :cond_1

    #@29
    .line 650
    move/from16 v0, p4

    #@2b
    invoke-static {v1, v7, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 651
    add-int v12, v9, p4

    #@30
    aget-object v13, v11, v4

    #@32
    aput-object v13, v1, v12

    #@34
    .line 652
    return-void

    #@35
    .line 655
    :cond_1
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    #@37
    .local v10, "minGallop":I
    move v8, v9

    #@38
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@39
    .line 658
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_0
    const/4 v2, 0x0

    #@3a
    .line 659
    .local v2, "count1":I
    const/4 v3, 0x0

    #@3b
    .line 667
    .local v3, "count2":I
    :cond_2
    aget-object v12, v1, v6

    #@3d
    check-cast v12, Ljava/lang/Comparable;

    #@3f
    aget-object v13, v11, v4

    #@41
    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@44
    move-result v12

    #@45
    if-gez v12, :cond_5

    #@47
    .line 668
    add-int/lit8 v9, v8, 0x1

    #@49
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    #@4b
    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    #@4d
    aput-object v12, v1, v8

    #@4f
    .line 669
    add-int/lit8 v3, v3, 0x1

    #@51
    .line 670
    const/4 v2, 0x0

    #@52
    .line 671
    add-int/lit8 p4, p4, -0x1

    #@54
    if-nez p4, :cond_11

    #@56
    move v8, v9

    #@57
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@58
    .line 720
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_3
    :goto_1
    const/4 v12, 0x1

    #@59
    if-ge v10, v12, :cond_4

    #@5b
    const/4 v10, 0x1

    #@5c
    .end local v10    # "minGallop":I
    :cond_4
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    #@5e
    .line 722
    const/4 v12, 0x1

    #@5f
    move/from16 v0, p2

    #@61
    if-ne v0, v12, :cond_e

    #@63
    .line 724
    move/from16 v0, p4

    #@65
    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@68
    .line 725
    add-int v12, v8, p4

    #@6a
    aget-object v13, v11, v4

    #@6c
    aput-object v13, v1, v12

    #@6e
    .line 631
    :goto_2
    return-void

    #@6f
    .line 674
    .restart local v10    # "minGallop":I
    :cond_5
    add-int/lit8 v9, v8, 0x1

    #@71
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    #@73
    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    #@75
    aput-object v12, v1, v8

    #@77
    .line 675
    add-int/lit8 v2, v2, 0x1

    #@79
    .line 676
    const/4 v3, 0x0

    #@7a
    .line 677
    add-int/lit8 p2, p2, -0x1

    #@7c
    const/4 v12, 0x1

    #@7d
    move/from16 v0, p2

    #@7f
    if-ne v0, v12, :cond_6

    #@81
    move v8, v9

    #@82
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@83
    .line 678
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_1

    #@84
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_6
    move v8, v9

    #@85
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@86
    .line 680
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_3
    or-int v12, v2, v3

    #@88
    if-lt v12, v10, :cond_2

    #@8a
    .line 689
    :goto_4
    aget-object v12, v1, v6

    #@8c
    check-cast v12, Ljava/lang/Comparable;

    #@8e
    const/4 v13, 0x0

    #@8f
    move/from16 v0, p2

    #@91
    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@94
    move-result v2

    #@95
    .line 690
    if-eqz v2, :cond_7

    #@97
    .line 691
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9a
    .line 692
    add-int/2addr v8, v2

    #@9b
    .line 693
    add-int/2addr v4, v2

    #@9c
    .line 694
    sub-int p2, p2, v2

    #@9e
    .line 695
    const/4 v12, 0x1

    #@9f
    move/from16 v0, p2

    #@a1
    if-le v0, v12, :cond_3

    #@a3
    .line 698
    :cond_7
    add-int/lit8 v9, v8, 0x1

    #@a5
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    #@a7
    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    #@a9
    aput-object v12, v1, v8

    #@ab
    .line 699
    add-int/lit8 p4, p4, -0x1

    #@ad
    if-nez p4, :cond_8

    #@af
    move v8, v9

    #@b0
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@b1
    .line 700
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_1

    #@b2
    .line 702
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_8
    aget-object v12, v11, v4

    #@b4
    check-cast v12, Ljava/lang/Comparable;

    #@b6
    const/4 v13, 0x0

    #@b7
    move/from16 v0, p4

    #@b9
    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@bc
    move-result v3

    #@bd
    .line 703
    if-eqz v3, :cond_10

    #@bf
    .line 704
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c2
    .line 705
    add-int v8, v9, v3

    #@c4
    .line 706
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    #@c6
    .line 707
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    #@c8
    .line 708
    if-eqz p4, :cond_3

    #@ca
    .line 711
    :goto_5
    add-int/lit8 v9, v8, 0x1

    #@cc
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    #@ce
    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    #@d0
    aput-object v12, v1, v8

    #@d2
    .line 712
    add-int/lit8 p2, p2, -0x1

    #@d4
    const/4 v12, 0x1

    #@d5
    move/from16 v0, p2

    #@d7
    if-ne v0, v12, :cond_9

    #@d9
    move v8, v9

    #@da
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@db
    .line 713
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    #@dd
    .line 714
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_9
    add-int/lit8 v10, v10, -0x1

    #@df
    .line 715
    const/4 v12, 0x7

    #@e0
    if-lt v2, v12, :cond_a

    #@e2
    const/4 v12, 0x1

    #@e3
    move v13, v12

    #@e4
    :goto_6
    const/4 v12, 0x7

    #@e5
    if-lt v3, v12, :cond_b

    #@e7
    const/4 v12, 0x1

    #@e8
    :goto_7
    or-int/2addr v12, v13

    #@e9
    if-eqz v12, :cond_c

    #@eb
    move v8, v9

    #@ec
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@ed
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_4

    #@ee
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_a
    const/4 v12, 0x0

    #@ef
    move v13, v12

    #@f0
    goto :goto_6

    #@f1
    :cond_b
    const/4 v12, 0x0

    #@f2
    goto :goto_7

    #@f3
    .line 716
    :cond_c
    if-gez v10, :cond_d

    #@f5
    .line 717
    const/4 v10, 0x0

    #@f6
    .line 718
    :cond_d
    add-int/lit8 v10, v10, 0x2

    #@f8
    move v8, v9

    #@f9
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@fa
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_0

    #@fc
    .line 726
    .end local v10    # "minGallop":I
    :cond_e
    if-nez p2, :cond_f

    #@fe
    .line 727
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@100
    .line 728
    const-string/jumbo v13, "Comparison method violates its general contract!"

    #@103
    .line 727
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@106
    throw v12

    #@107
    .line 732
    :cond_f
    move/from16 v0, p2

    #@109
    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10c
    goto/16 :goto_2

    #@10e
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_10
    move v8, v9

    #@10f
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@110
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_5

    #@111
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_11
    move v8, v9

    #@112
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@113
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 333
    const/4 v0, 0x0

    #@1
    .line 334
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 335
    and-int/lit8 v1, p0, 0x1

    #@7
    or-int/2addr v0, v1

    #@8
    .line 336
    shr-int/lit8 p0, p0, 0x1

    #@a
    goto :goto_0

    #@b
    .line 338
    :cond_0
    add-int v1, p0, v0

    #@d
    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@2
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@4
    aput p1, v0, v1

    #@6
    .line 349
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@8
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@a
    aput p2, v0, v1

    #@c
    .line 350
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@12
    .line 347
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 306
    add-int/lit8 p2, p2, -0x1

    #@2
    move v0, p2

    #@3
    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    #@4
    .line 307
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 308
    aget-object v2, p0, v1

    #@8
    .line 309
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    #@a
    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    #@c
    aput-object v3, p0, v1

    #@e
    .line 310
    add-int/lit8 p2, v0, -0x1

    #@10
    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    #@12
    move v0, p2

    #@13
    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    #@14
    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_0

    #@15
    .line 305
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 142
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    #@5
    .line 141
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 146
    array-length v6, p0

    #@1
    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@4
    .line 147
    sub-int v3, p2, p1

    #@6
    .line 148
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    #@7
    if-ge v3, v6, :cond_0

    #@9
    .line 149
    return-void

    #@a
    .line 152
    :cond_0
    const/16 v6, 0x20

    #@c
    if-ge v3, v6, :cond_1

    #@e
    .line 153
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    #@11
    move-result v1

    #@12
    .line 154
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    #@14
    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    #@17
    .line 155
    return-void

    #@18
    .line 163
    .end local v1    # "initRunLen":I
    :cond_1
    new-instance v5, Ljava/util/ComparableTimSort;

    #@1a
    invoke-direct {v5, p0}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    #@1d
    .line 164
    .local v5, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    #@20
    move-result v2

    #@21
    .line 167
    .local v2, "minRun":I
    :cond_2
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    #@24
    move-result v4

    #@25
    .line 170
    .local v4, "runLen":I
    if-ge v4, v2, :cond_3

    #@27
    .line 171
    if-gt v3, v2, :cond_4

    #@29
    move v0, v3

    #@2a
    .line 172
    .local v0, "force":I
    :goto_0
    add-int v6, p1, v0

    #@2c
    add-int v7, p1, v4

    #@2e
    invoke-static {p0, p1, v6, v7}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    #@31
    .line 173
    move v4, v0

    #@32
    .line 177
    .end local v0    # "force":I
    :cond_3
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    #@35
    .line 178
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    #@38
    .line 181
    add-int/2addr p1, v4

    #@39
    .line 182
    sub-int/2addr v3, v4

    #@3a
    .line 183
    if-nez v3, :cond_2

    #@3c
    .line 187
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    #@3f
    .line 145
    return-void

    #@40
    .line 171
    :cond_4
    move v0, v2

    #@41
    .restart local v0    # "force":I
    goto :goto_0
.end method
