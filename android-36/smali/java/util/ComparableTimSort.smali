.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final blacklist MIN_GALLOP:I = 0x7

.field private static final blacklist MIN_MERGE:I = 0x20


# instance fields
.field private final blacklist a:[Ljava/lang/Object;

.field private blacklist minGallop:I

.field private final blacklist runBase:[I

.field private final blacklist runLen:[I

.field private blacklist stackSize:I

.field private blacklist tmp:[Ljava/lang/Object;

.field private blacklist tmpBase:I

.field private blacklist tmpLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;[Ljava/lang/Object;II)V
    .registers 10
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "work"    # [Ljava/lang/Object;
    .param p3, "workBase"    # I
    .param p4, "workLen"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x7

    iput v0, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 121
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 124
    array-length v1, p1

    .line 125
    .local v1, "len":I
    const/16 v2, 0x200

    if-ge v1, v2, :cond_13

    .line 126
    ushr-int/lit8 v2, v1, 0x1

    goto :goto_15

    :cond_13
    const/16 v2, 0x100

    .line 127
    .local v2, "tlen":I
    :goto_15
    if-eqz p2, :cond_26

    if-lt p4, v2, :cond_26

    add-int v3, p3, v2

    array-length v4, p2

    if-le v3, v4, :cond_1f

    goto :goto_26

    .line 133
    :cond_1f
    iput-object p2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 134
    iput p3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 135
    iput p4, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    goto :goto_2e

    .line 128
    :cond_26
    :goto_26
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 129
    iput v0, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 130
    iput v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    .line 152
    :goto_2e
    const/16 v0, 0x78

    if-ge v1, v0, :cond_34

    const/4 v0, 0x5

    goto :goto_45

    .line 153
    :cond_34
    const/16 v0, 0x606

    if-ge v1, v0, :cond_3b

    const/16 v0, 0xa

    goto :goto_45

    .line 154
    :cond_3b
    const v0, 0x1d16f

    if-ge v1, v0, :cond_43

    const/16 v0, 0x18

    goto :goto_45

    :cond_43
    const/16 v0, 0x31

    :goto_45
    nop

    .line 155
    .local v0, "stackLen":I
    new-array v3, v0, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    .line 156
    new-array v3, v0, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    .line 157
    return-void
.end method

.method private static blacklist binarySort([Ljava/lang/Object;III)V
    .registers 10
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .line 245
    nop

    .line 246
    if-ne p3, p1, :cond_5

    .line 247
    add-int/lit8 p3, p3, 0x1

    .line 248
    :cond_5
    :goto_5
    if-ge p3, p2, :cond_41

    .line 249
    aget-object v0, p0, p3

    check-cast v0, Ljava/lang/Comparable;

    .line 252
    .local v0, "pivot":Ljava/lang/Comparable;
    move v1, p1

    .line 253
    .local v1, "left":I
    move v2, p3

    .line 254
    .local v2, "right":I
    nop

    .line 260
    :goto_e
    if-ge v1, v2, :cond_21

    .line 261
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 262
    .local v3, "mid":I
    aget-object v4, p0, v3

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1e

    .line 263
    move v2, v3

    goto :goto_20

    .line 265
    :cond_1e
    add-int/lit8 v1, v3, 0x1

    .line 266
    .end local v3    # "mid":I
    :goto_20
    goto :goto_e

    .line 267
    :cond_21
    nop

    .line 276
    sub-int v3, p3, v1

    .line 278
    .local v3, "n":I
    packed-switch v3, :pswitch_data_42

    .line 282
    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v1, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3c

    .line 279
    :pswitch_2d
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, p0, v4

    .line 280
    :pswitch_35
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, p0, v4

    .line 281
    nop

    .line 284
    :goto_3c
    aput-object v0, p0, v1

    .line 248
    .end local v0    # "pivot":Ljava/lang/Comparable;
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "n":I
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 286
    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2d
    .end packed-switch
.end method

.method private static blacklist countRunAndMakeAscending([Ljava/lang/Object;II)I
    .registers 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 314
    nop

    .line 315
    add-int/lit8 v0, p1, 0x1

    .line 316
    .local v0, "runHi":I
    if-ne v0, p2, :cond_7

    .line 317
    const/4 v1, 0x1

    return v1

    .line 320
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v2, p0, p1

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2c

    .line 321
    :goto_15
    if-ge v1, p2, :cond_28

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_28

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 323
    :cond_28
    invoke-static {p0, p1, v1}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_3f

    .line 325
    :cond_2c
    :goto_2c
    if-ge v1, p2, :cond_3f

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3f

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 329
    :cond_3f
    :goto_3f
    sub-int v0, v1, p1

    return v0
.end method

.method private blacklist ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I

    .line 888
    iget v0, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    if-ge v0, p1, :cond_22

    .line 890
    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    ushr-int/2addr v0, v1

    .line 891
    .local v0, "newSize":I
    add-int/lit8 v0, v0, 0x1

    .line 893
    if-gez v0, :cond_10

    .line 894
    move v0, p1

    goto :goto_19

    .line 896
    :cond_10
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 899
    :goto_19
    new-array v1, v0, [Ljava/lang/Object;

    .line 900
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 901
    iput v0, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    .line 902
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 904
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[Ljava/lang/Object;
    :cond_22
    iget-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 9
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .line 509
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    nop

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "lastOfs":I
    const/4 v1, 0x1

    .line 513
    .local v1, "ofs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2b

    .line 515
    sub-int v2, p3, p4

    .line 516
    .local v2, "maxOfs":I
    :cond_f
    :goto_f
    if-ge v1, v2, :cond_25

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_25

    .line 517
    move v0, v1

    .line 518
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 519
    if-gtz v1, :cond_f

    .line 520
    move v1, v2

    goto :goto_f

    .line 522
    :cond_25
    if-le v1, v2, :cond_28

    .line 523
    move v1, v2

    .line 526
    :cond_28
    add-int/2addr v0, p4

    .line 527
    add-int/2addr v1, p4

    .line 528
    .end local v2    # "maxOfs":I
    goto :goto_4b

    .line 530
    :cond_2b
    add-int/lit8 v2, p4, 0x1

    .line 531
    .restart local v2    # "maxOfs":I
    :cond_2d
    :goto_2d
    if-ge v1, v2, :cond_43

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_43

    .line 532
    move v0, v1

    .line 533
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 534
    if-gtz v1, :cond_2d

    .line 535
    move v1, v2

    goto :goto_2d

    .line 537
    :cond_43
    if-le v1, v2, :cond_46

    .line 538
    move v1, v2

    .line 541
    :cond_46
    move v3, v0

    .line 542
    .local v3, "tmp":I
    sub-int v0, p4, v1

    .line 543
    sub-int v1, p4, v3

    .line 545
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    :goto_4b
    nop

    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 553
    :goto_4e
    if-ge v0, v1, :cond_64

    .line 554
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 556
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_62

    .line 557
    add-int/lit8 v0, v2, 0x1

    goto :goto_63

    .line 559
    :cond_62
    move v1, v2

    .line 560
    .end local v2    # "m":I
    :goto_63
    goto :goto_4e

    .line 561
    :cond_64
    nop

    .line 562
    return v1
.end method

.method private static blacklist gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 9
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .line 579
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    nop

    .line 581
    const/4 v0, 0x1

    .line 582
    .local v0, "ofs":I
    const/4 v1, 0x0

    .line 583
    .local v1, "lastOfs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2e

    .line 585
    add-int/lit8 v2, p4, 0x1

    .line 586
    .local v2, "maxOfs":I
    :cond_f
    :goto_f
    if-ge v0, v2, :cond_25

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_25

    .line 587
    move v1, v0

    .line 588
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 589
    if-gtz v0, :cond_f

    .line 590
    move v0, v2

    goto :goto_f

    .line 592
    :cond_25
    if-le v0, v2, :cond_28

    .line 593
    move v0, v2

    .line 596
    :cond_28
    move v3, v1

    .line 597
    .local v3, "tmp":I
    sub-int v1, p4, v0

    .line 598
    sub-int v0, p4, v3

    .line 599
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    goto :goto_4b

    .line 601
    :cond_2e
    sub-int v2, p3, p4

    .line 602
    .restart local v2    # "maxOfs":I
    :cond_30
    :goto_30
    if-ge v0, v2, :cond_46

    add-int v3, p2, p4

    add-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_46

    .line 603
    move v1, v0

    .line 604
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 605
    if-gtz v0, :cond_30

    .line 606
    move v0, v2

    goto :goto_30

    .line 608
    :cond_46
    if-le v0, v2, :cond_49

    .line 609
    move v0, v2

    .line 612
    :cond_49
    add-int/2addr v1, p4

    .line 613
    add-int/2addr v0, p4

    .line 615
    .end local v2    # "maxOfs":I
    :goto_4b
    nop

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 623
    :goto_4e
    if-ge v1, v0, :cond_64

    .line 624
    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 626
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_61

    .line 627
    move v0, v2

    goto :goto_63

    .line 629
    :cond_61
    add-int/lit8 v1, v2, 0x1

    .line 630
    .end local v2    # "m":I
    :goto_63
    goto :goto_4e

    .line 631
    :cond_64
    nop

    .line 632
    return v0
.end method

.method private blacklist mergeAt(I)V
    .registers 10
    .param p1, "i"    # I

    .line 439
    nop

    .line 440
    nop

    .line 441
    nop

    .line 443
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v0, p1

    .line 444
    .local v0, "base1":I
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, p1

    .line 445
    .local v1, "len1":I
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    .line 446
    .local v2, "base2":I
    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    .line 447
    .local v3, "len2":I
    nop

    .line 448
    nop

    .line 455
    iget-object v4, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v5, v1, v3

    aput v5, v4, p1

    .line 456
    iget v4, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v4, v4, -0x3

    if-ne p1, v4, :cond_3d

    .line 457
    iget-object v4, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 458
    iget-object v4, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 460
    :cond_3d
    iget v4, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 466
    iget-object v4, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/Comparable;

    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v1, v6}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 467
    .local v4, "k":I
    nop

    .line 468
    add-int/2addr v0, v4

    .line 469
    sub-int/2addr v1, v4

    .line 470
    if-nez v1, :cond_56

    .line 471
    return-void

    .line 477
    :cond_56
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v7, v3, -0x1

    invoke-static {v5, v6, v2, v3, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    .line 479
    nop

    .line 480
    if-nez v3, :cond_6c

    .line 481
    return-void

    .line 484
    :cond_6c
    if-gt v1, v3, :cond_72

    .line 485
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_75

    .line 487
    :cond_72
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    .line 488
    :goto_75
    return-void
.end method

.method private blacklist mergeCollapse()V
    .registers 7

    .line 404
    nop

    :goto_1
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_58

    .line 405
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 406
    .local v0, "n":I
    if-lez v0, :cond_1f

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v3, v0

    iget-object v4, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    if-le v2, v3, :cond_34

    :cond_1f
    if-le v0, v1, :cond_45

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_45

    .line 408
    :cond_34
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_54

    .line 409
    add-int/lit8 v0, v0, -0x1

    goto :goto_54

    .line 410
    :cond_45
    if-ltz v0, :cond_58

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-le v1, v2, :cond_54

    .line 411
    goto :goto_58

    .line 413
    :cond_54
    :goto_54
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    .line 414
    .end local v0    # "n":I
    goto :goto_1

    .line 415
    :cond_58
    :goto_58
    return-void
.end method

.method private blacklist mergeForceCollapse()V
    .registers 5

    .line 422
    nop

    :goto_1
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 423
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 424
    .local v0, "n":I
    if-lez v0, :cond_1c

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1c

    .line 425
    add-int/lit8 v0, v0, -0x1

    .line 426
    :cond_1c
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    .line 427
    .end local v0    # "n":I
    goto :goto_1

    .line 428
    :cond_20
    return-void
.end method

.method private blacklist mergeHi(IIII)V
    .registers 23
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 770
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 773
    iget-object v4, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 774
    .local v4, "a":[Ljava/lang/Object;
    invoke-direct {v0, v3}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v5

    .line 775
    .local v5, "tmp":[Ljava/lang/Object;
    iget v6, v0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 776
    .local v6, "tmpBase":I
    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    add-int v7, v1, p2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 779
    .local v7, "cursor1":I
    add-int v9, v6, v3

    sub-int/2addr v9, v8

    .line 780
    .local v9, "cursor2":I
    add-int v10, v2, v3

    sub-int/2addr v10, v8

    .line 783
    .local v10, "dest":I
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "dest":I
    .local v11, "dest":I
    add-int/lit8 v12, v7, -0x1

    .end local v7    # "cursor1":I
    .local v12, "cursor1":I
    aget-object v7, v4, v7

    aput-object v7, v4, v10

    .line 784
    add-int/lit8 v7, p2, -0x1

    .end local p2    # "len1":I
    .local v7, "len1":I
    if-nez v7, :cond_31

    .line 785
    add-int/lit8 v8, v3, -0x1

    sub-int v8, v11, v8

    invoke-static {v5, v6, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    return-void

    .line 788
    :cond_31
    if-ne v3, v8, :cond_41

    .line 789
    sub-int/2addr v11, v7

    .line 790
    sub-int/2addr v12, v7

    .line 791
    add-int/lit8 v8, v12, 0x1

    add-int/lit8 v10, v11, 0x1

    invoke-static {v4, v8, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    aget-object v8, v5, v9

    aput-object v8, v4, v11

    .line 793
    return-void

    .line 796
    :cond_41
    iget v10, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 799
    .end local p4    # "len2":I
    .local v3, "len2":I
    .local v10, "minGallop":I
    :goto_43
    const/4 v13, 0x0

    .line 800
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 807
    .local v14, "count2":I
    :goto_45
    nop

    .line 808
    aget-object v15, v5, v9

    check-cast v15, Ljava/lang/Comparable;

    aget-object v8, v4, v12

    invoke-interface {v15, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_68

    .line 809
    add-int/lit8 v8, v11, -0x1

    .end local v11    # "dest":I
    .local v8, "dest":I
    add-int/lit8 v15, v12, -0x1

    .end local v12    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v12, v4, v12

    aput-object v12, v4, v11

    .line 810
    add-int/lit8 v13, v13, 0x1

    .line 811
    const/4 v11, 0x0

    .line 812
    .end local v14    # "count2":I
    .local v11, "count2":I
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_64

    .line 813
    move v12, v15

    goto/16 :goto_db

    .line 812
    :cond_64
    move v14, v11

    move v12, v15

    move v11, v8

    goto :goto_7e

    .line 815
    .end local v8    # "dest":I
    .end local v15    # "cursor1":I
    .local v11, "dest":I
    .restart local v12    # "cursor1":I
    .restart local v14    # "count2":I
    :cond_68
    add-int/lit8 v8, v11, -0x1

    .end local v11    # "dest":I
    .restart local v8    # "dest":I
    add-int/lit8 v15, v9, -0x1

    .end local v9    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v9, v5, v9

    aput-object v9, v4, v11

    .line 816
    add-int/lit8 v14, v14, 0x1

    .line 817
    const/4 v9, 0x0

    .line 818
    .end local v13    # "count1":I
    .local v9, "count1":I
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_7b

    .line 819
    move v9, v15

    goto/16 :goto_db

    .line 818
    :cond_7b
    move v13, v9

    move v9, v15

    move v11, v8

    .line 821
    .end local v8    # "dest":I
    .end local v15    # "cursor2":I
    .local v9, "cursor2":I
    .restart local v11    # "dest":I
    .restart local v13    # "count1":I
    :goto_7e
    or-int v8, v13, v14

    if-lt v8, v10, :cond_12b

    .line 829
    :goto_82
    nop

    .line 830
    aget-object v8, v5, v9

    check-cast v8, Ljava/lang/Comparable;

    add-int/lit8 v15, v7, -0x1

    invoke-static {v8, v4, v1, v7, v15}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v8

    sub-int v13, v7, v8

    .line 831
    if-eqz v13, :cond_a0

    .line 832
    sub-int v8, v11, v13

    .line 833
    .end local v11    # "dest":I
    .restart local v8    # "dest":I
    sub-int/2addr v12, v13

    .line 834
    sub-int/2addr v7, v13

    .line 835
    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v15, v8, 0x1

    invoke-static {v4, v11, v4, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    if-nez v7, :cond_9f

    .line 837
    goto :goto_db

    .line 836
    :cond_9f
    move v11, v8

    .line 839
    .end local v8    # "dest":I
    .restart local v11    # "dest":I
    :cond_a0
    add-int/lit8 v8, v11, -0x1

    .end local v11    # "dest":I
    .restart local v8    # "dest":I
    add-int/lit8 v15, v9, -0x1

    .end local v9    # "cursor2":I
    .restart local v15    # "cursor2":I
    aget-object v9, v5, v9

    aput-object v9, v4, v11

    .line 840
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_af

    .line 841
    move v9, v15

    goto :goto_db

    .line 843
    :cond_af
    aget-object v9, v4, v12

    check-cast v9, Ljava/lang/Comparable;

    add-int/lit8 v11, v3, -0x1

    invoke-static {v9, v5, v6, v3, v11}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v9

    sub-int v14, v3, v9

    .line 844
    if-eqz v14, :cond_cc

    .line 845
    sub-int/2addr v8, v14

    .line 846
    sub-int v9, v15, v14

    .line 847
    .end local v15    # "cursor2":I
    .restart local v9    # "cursor2":I
    sub-int/2addr v3, v14

    .line 848
    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v15, v8, 0x1

    invoke-static {v5, v11, v4, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    const/4 v11, 0x1

    if-gt v3, v11, :cond_cd

    .line 850
    goto :goto_db

    .line 844
    .end local v9    # "cursor2":I
    .restart local v15    # "cursor2":I
    :cond_cc
    move v9, v15

    .line 852
    .end local v15    # "cursor2":I
    .restart local v9    # "cursor2":I
    :cond_cd
    add-int/lit8 v11, v8, -0x1

    .end local v8    # "dest":I
    .restart local v11    # "dest":I
    add-int/lit8 v15, v12, -0x1

    .end local v12    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v12, v4, v12

    aput-object v12, v4, v8

    .line 853
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_108

    .line 854
    move v8, v11

    move v12, v15

    .line 861
    .end local v11    # "dest":I
    .end local v13    # "count1":I
    .end local v14    # "count2":I
    .end local v15    # "cursor1":I
    .restart local v8    # "dest":I
    .restart local v12    # "cursor1":I
    :goto_db
    const/4 v11, 0x1

    if-ge v10, v11, :cond_e0

    move v13, v11

    goto :goto_e1

    :cond_e0
    move v13, v10

    :goto_e1
    iput v13, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 863
    if-ne v3, v11, :cond_f4

    .line 864
    nop

    .line 865
    sub-int/2addr v8, v7

    .line 866
    sub-int/2addr v12, v7

    .line 867
    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v13, v8, 0x1

    invoke-static {v4, v11, v4, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    aget-object v11, v5, v9

    aput-object v11, v4, v8

    goto :goto_ff

    .line 869
    :cond_f4
    if-eqz v3, :cond_100

    .line 873
    nop

    .line 874
    nop

    .line 875
    add-int/lit8 v11, v3, -0x1

    sub-int v11, v8, v11

    invoke-static {v5, v6, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    :goto_ff
    return-void

    .line 870
    :cond_100
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 855
    .end local v8    # "dest":I
    .end local v12    # "cursor1":I
    .restart local v11    # "dest":I
    .restart local v13    # "count1":I
    .restart local v14    # "count2":I
    .restart local v15    # "cursor1":I
    :cond_108
    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 856
    const/4 v8, 0x0

    const/4 v12, 0x7

    if-lt v13, v12, :cond_113

    move/from16 v17, v16

    goto :goto_115

    :cond_113
    move/from16 v17, v8

    :goto_115
    if-lt v14, v12, :cond_119

    move/from16 v8, v16

    :cond_119
    or-int v8, v17, v8

    if-nez v8, :cond_128

    .line 857
    if-gez v10, :cond_120

    .line 858
    const/4 v10, 0x0

    .line 859
    :cond_120
    nop

    .end local v13    # "count1":I
    .end local v14    # "count2":I
    add-int/lit8 v10, v10, 0x2

    .line 860
    move v12, v15

    move/from16 v8, v16

    goto/16 :goto_43

    .line 856
    .restart local v13    # "count1":I
    .restart local v14    # "count2":I
    :cond_128
    move v12, v15

    goto/16 :goto_82

    .line 821
    .end local v15    # "cursor1":I
    .restart local v12    # "cursor1":I
    :cond_12b
    const/16 v16, 0x1

    move/from16 v8, v16

    goto/16 :goto_45
.end method

.method private blacklist mergeLo(IIII)V
    .registers 21
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 653
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 656
    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 657
    .local v2, "a":[Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v3

    .line 659
    .local v3, "tmp":[Ljava/lang/Object;
    iget v4, v0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 660
    .local v4, "cursor1":I
    move/from16 v5, p3

    .line 661
    .local v5, "cursor2":I
    move/from16 v6, p1

    .line 662
    .local v6, "dest":I
    move/from16 v7, p1

    invoke-static {v2, v7, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "dest":I
    .local v8, "dest":I
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "cursor2":I
    .local v9, "cursor2":I
    aget-object v5, v2, v5

    aput-object v5, v2, v6

    .line 666
    add-int/lit8 v5, p4, -0x1

    .end local p4    # "len2":I
    .local v5, "len2":I
    if-nez v5, :cond_25

    .line 667
    invoke-static {v3, v4, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    return-void

    .line 670
    :cond_25
    const/4 v6, 0x1

    if-ne v1, v6, :cond_32

    .line 671
    invoke-static {v2, v9, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    add-int v6, v8, v5

    aget-object v10, v3, v4

    aput-object v10, v2, v6

    .line 673
    return-void

    .line 676
    :cond_32
    iget v10, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 679
    .end local p2    # "len1":I
    .local v1, "len1":I
    .local v10, "minGallop":I
    :goto_34
    const/4 v11, 0x0

    .line 680
    .local v11, "count1":I
    const/4 v12, 0x0

    .line 687
    .local v12, "count2":I
    :cond_36
    nop

    .line 688
    aget-object v13, v2, v9

    check-cast v13, Ljava/lang/Comparable;

    aget-object v14, v3, v4

    invoke-interface {v13, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_59

    .line 689
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "dest":I
    .local v13, "dest":I
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "cursor2":I
    .local v14, "cursor2":I
    aget-object v9, v2, v9

    aput-object v9, v2, v8

    .line 690
    add-int/lit8 v12, v12, 0x1

    .line 691
    const/4 v8, 0x0

    .line 692
    .end local v11    # "count1":I
    .local v8, "count1":I
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_55

    .line 693
    move v9, v14

    goto/16 :goto_b9

    .line 692
    :cond_55
    move v11, v8

    move v9, v14

    move v8, v13

    goto :goto_6d

    .line 695
    .end local v13    # "dest":I
    .end local v14    # "cursor2":I
    .local v8, "dest":I
    .restart local v9    # "cursor2":I
    .restart local v11    # "count1":I
    :cond_59
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "dest":I
    .restart local v13    # "dest":I
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "cursor1":I
    .local v14, "cursor1":I
    aget-object v4, v3, v4

    aput-object v4, v2, v8

    .line 696
    add-int/lit8 v11, v11, 0x1

    .line 697
    const/4 v4, 0x0

    .line 698
    .end local v12    # "count2":I
    .local v4, "count2":I
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v6, :cond_6a

    .line 699
    move v4, v14

    goto :goto_b9

    .line 698
    :cond_6a
    move v12, v4

    move v4, v14

    move v8, v13

    .line 701
    .end local v13    # "dest":I
    .end local v14    # "cursor1":I
    .local v4, "cursor1":I
    .restart local v8    # "dest":I
    .restart local v12    # "count2":I
    :goto_6d
    or-int v13, v11, v12

    if-lt v13, v10, :cond_36

    .line 709
    :goto_71
    nop

    .line 710
    aget-object v13, v2, v9

    check-cast v13, Ljava/lang/Comparable;

    const/4 v14, 0x0

    invoke-static {v13, v3, v4, v1, v14}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v11

    .line 711
    if-eqz v11, :cond_88

    .line 712
    invoke-static {v3, v4, v2, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    add-int v13, v8, v11

    .line 714
    .end local v8    # "dest":I
    .restart local v13    # "dest":I
    add-int/2addr v4, v11

    .line 715
    sub-int/2addr v1, v11

    .line 716
    if-gt v1, v6, :cond_87

    .line 717
    goto :goto_b9

    .line 716
    :cond_87
    move v8, v13

    .line 719
    .end local v13    # "dest":I
    .restart local v8    # "dest":I
    :cond_88
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "dest":I
    .restart local v13    # "dest":I
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v9, v2, v9

    aput-object v9, v2, v8

    .line 720
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_96

    .line 721
    move v9, v15

    goto :goto_b9

    .line 723
    :cond_96
    aget-object v8, v3, v4

    check-cast v8, Ljava/lang/Comparable;

    invoke-static {v8, v2, v15, v5, v14}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v12

    .line 724
    if-eqz v12, :cond_aa

    .line 725
    invoke-static {v2, v15, v2, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    add-int/2addr v13, v12

    .line 727
    add-int v9, v15, v12

    .line 728
    .end local v15    # "cursor2":I
    .restart local v9    # "cursor2":I
    sub-int/2addr v5, v12

    .line 729
    if-nez v5, :cond_ab

    .line 730
    goto :goto_b9

    .line 724
    .end local v9    # "cursor2":I
    .restart local v15    # "cursor2":I
    :cond_aa
    move v9, v15

    .line 732
    .end local v15    # "cursor2":I
    .restart local v9    # "cursor2":I
    :cond_ab
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "dest":I
    .restart local v8    # "dest":I
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v4, v3, v4

    aput-object v4, v2, v13

    .line 733
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v6, :cond_dd

    .line 734
    move v13, v8

    move v4, v15

    .line 741
    .end local v8    # "dest":I
    .end local v11    # "count1":I
    .end local v12    # "count2":I
    .end local v15    # "cursor1":I
    .restart local v4    # "cursor1":I
    .restart local v13    # "dest":I
    :goto_b9
    if-ge v10, v6, :cond_bd

    move v8, v6

    goto :goto_be

    :cond_bd
    move v8, v10

    :goto_be
    iput v8, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 743
    if-ne v1, v6, :cond_cd

    .line 744
    nop

    .line 745
    invoke-static {v2, v9, v2, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    add-int v6, v13, v5

    aget-object v8, v3, v4

    aput-object v8, v2, v6

    goto :goto_d4

    .line 747
    :cond_cd
    if-eqz v1, :cond_d5

    .line 751
    nop

    .line 752
    nop

    .line 753
    invoke-static {v3, v4, v2, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    :goto_d4
    return-void

    .line 748
    :cond_d5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Comparison method violates its general contract!"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 735
    .end local v4    # "cursor1":I
    .end local v13    # "dest":I
    .restart local v8    # "dest":I
    .restart local v11    # "count1":I
    .restart local v12    # "count2":I
    .restart local v15    # "cursor1":I
    :cond_dd
    add-int/lit8 v10, v10, -0x1

    .line 736
    const/4 v4, 0x7

    if-lt v11, v4, :cond_e4

    move v13, v6

    goto :goto_e5

    :cond_e4
    move v13, v14

    :goto_e5
    if-lt v12, v4, :cond_e8

    move v14, v6

    :cond_e8
    or-int v4, v13, v14

    if-nez v4, :cond_f5

    .line 737
    if-gez v10, :cond_ef

    .line 738
    const/4 v10, 0x0

    .line 739
    :cond_ef
    nop

    .end local v11    # "count1":I
    .end local v12    # "count2":I
    add-int/lit8 v10, v10, 0x2

    .line 740
    move v4, v15

    goto/16 :goto_34

    .line 736
    .restart local v11    # "count1":I
    .restart local v12    # "count2":I
    :cond_f5
    move v4, v15

    goto/16 :goto_71
.end method

.method private static blacklist minRunLength(I)I
    .registers 3
    .param p0, "n"    # I

    .line 366
    nop

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "r":I
    :goto_2
    const/16 v1, 0x20

    if-lt p0, v1, :cond_c

    .line 369
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 372
    :cond_c
    add-int v1, p0, v0

    return v1
.end method

.method private blacklist pushRun(II)V
    .registers 5
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .line 382
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 383
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 384
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 385
    return-void
.end method

.method private static blacklist reverseRange([Ljava/lang/Object;II)V
    .registers 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 340
    add-int/lit8 p2, p2, -0x1

    .line 341
    :goto_2
    if-ge p1, p2, :cond_13

    .line 342
    aget-object v0, p0, p1

    .line 343
    .local v0, "t":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "lo":I
    .local v1, "lo":I
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 344
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "hi":I
    .local p1, "hi":I
    aput-object v0, p0, p2

    .line 345
    .end local v0    # "t":Ljava/lang/Object;
    move p2, p1

    move p1, v1

    goto :goto_2

    .line 346
    .end local v1    # "lo":I
    .local p1, "lo":I
    .restart local p2    # "hi":I
    :cond_13
    return-void
.end method

.method static blacklist sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V
    .registers 13
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "work"    # [Ljava/lang/Object;
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .line 180
    nop

    .line 182
    sub-int v0, p2, p1

    .line 183
    .local v0, "nRemaining":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 184
    return-void

    .line 187
    :cond_7
    const/16 v1, 0x20

    if-ge v0, v1, :cond_15

    .line 188
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 189
    .local v1, "initRunLen":I
    add-int v2, p1, v1

    invoke-static {p0, p1, p2, v2}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 190
    return-void

    .line 198
    .end local v1    # "initRunLen":I
    :cond_15
    new-instance v1, Ljava/util/ComparableTimSort;

    invoke-direct {v1, p0, p3, p4, p5}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    .line 199
    .local v1, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v0}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 202
    .local v2, "minRun":I
    :cond_1e
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    .line 205
    .local v3, "runLen":I
    if-ge v3, v2, :cond_31

    .line 206
    if-gt v0, v2, :cond_28

    move v4, v0

    goto :goto_29

    :cond_28
    move v4, v2

    .line 207
    .local v4, "force":I
    :goto_29
    add-int v5, p1, v4

    add-int v6, p1, v3

    invoke-static {p0, p1, v5, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 208
    move v3, v4

    .line 212
    .end local v4    # "force":I
    :cond_31
    invoke-direct {v1, p1, v3}, Ljava/util/ComparableTimSort;->pushRun(II)V

    .line 213
    invoke-direct {v1}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    .line 216
    add-int/2addr p1, v3

    .line 217
    sub-int/2addr v0, v3

    .line 218
    .end local v3    # "runLen":I
    if-nez v0, :cond_1e

    .line 221
    nop

    .line 222
    invoke-direct {v1}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    .line 223
    nop

    .line 224
    return-void
.end method
