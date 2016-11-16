.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

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

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/ComparableTimSort;

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
    sput-boolean v0, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@b
    .line 42
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;II)V
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "work"    # [Ljava/lang/Object;
    .param p3, "workBase"    # I
    .param p4, "workLen"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 78
    const/4 v3, 0x7

    #@5
    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    #@7
    .line 108
    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@9
    .line 121
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@b
    .line 124
    array-length v0, p1

    #@c
    .line 125
    .local v0, "len":I
    const/16 v3, 0x200

    #@e
    if-ge v0, v3, :cond_1

    #@10
    .line 126
    ushr-int/lit8 v2, v0, 0x1

    #@12
    .line 127
    .local v2, "tlen":I
    :goto_0
    if-eqz p2, :cond_0

    #@14
    if-ge p4, v2, :cond_2

    #@16
    .line 128
    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    #@18
    iput-object v3, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@1a
    .line 129
    iput v5, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    #@1c
    .line 130
    iput v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    #@1e
    .line 148
    :goto_1
    const/16 v3, 0x78

    #@20
    if-ge v0, v3, :cond_3

    #@22
    const/4 v1, 0x5

    #@23
    .line 151
    .local v1, "stackLen":I
    :goto_2
    new-array v3, v1, [I

    #@25
    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@27
    .line 152
    new-array v3, v1, [I

    #@29
    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@2b
    .line 120
    return-void

    #@2c
    .line 126
    .end local v1    # "stackLen":I
    .end local v2    # "tlen":I
    :cond_1
    const/16 v2, 0x100

    #@2e
    .restart local v2    # "tlen":I
    goto :goto_0

    #@2f
    .line 127
    :cond_2
    add-int v3, p3, v2

    #@31
    array-length v4, p2

    #@32
    if-gt v3, v4, :cond_0

    #@34
    .line 133
    iput-object p2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@36
    .line 134
    iput p3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    #@38
    .line 135
    iput p4, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    #@3a
    goto :goto_1

    #@3b
    .line 149
    :cond_3
    const/16 v3, 0x606

    #@3d
    if-ge v0, v3, :cond_4

    #@3f
    const/16 v1, 0xa

    #@41
    goto :goto_2

    #@42
    .line 150
    :cond_4
    const v3, 0x1d16f

    #@45
    if-ge v0, v3, :cond_5

    #@47
    const/16 v1, 0x18

    #@49
    goto :goto_2

    #@4a
    :cond_5
    const/16 v1, 0x28

    #@4c
    goto :goto_2
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 241
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@4
    if-nez v5, :cond_1

    #@6
    if-gt p1, p3, :cond_0

    #@8
    if-gt p3, p2, :cond_0

    #@a
    move v5, v6

    #@b
    :goto_0
    if-nez v5, :cond_1

    #@d
    new-instance v5, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v5

    #@13
    :cond_0
    move v5, v7

    #@14
    goto :goto_0

    #@15
    .line 242
    :cond_1
    if-ne p3, p1, :cond_2

    #@17
    .line 243
    add-int/lit8 p3, p3, 0x1

    #@19
    .line 244
    :cond_2
    :goto_1
    if-ge p3, p2, :cond_9

    #@1b
    .line 245
    aget-object v3, p0, p3

    #@1d
    check-cast v3, Ljava/lang/Comparable;

    #@1f
    .line 248
    .local v3, "pivot":Ljava/lang/Comparable;
    move v0, p1

    #@20
    .line 249
    .local v0, "left":I
    move v4, p3

    #@21
    .line 250
    .local v4, "right":I
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@23
    if-nez v5, :cond_4

    #@25
    if-gt p1, v4, :cond_3

    #@27
    move v5, v6

    #@28
    :goto_2
    if-nez v5, :cond_4

    #@2a
    new-instance v5, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v5

    #@30
    :cond_3
    move v5, v7

    #@31
    goto :goto_2

    #@32
    .line 256
    :cond_4
    :goto_3
    if-ge v0, v4, :cond_6

    #@34
    .line 257
    add-int v5, v0, v4

    #@36
    ushr-int/lit8 v1, v5, 0x1

    #@38
    .line 258
    .local v1, "mid":I
    aget-object v5, p0, v1

    #@3a
    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@3d
    move-result v5

    #@3e
    if-gez v5, :cond_5

    #@40
    .line 259
    move v4, v1

    #@41
    goto :goto_3

    #@42
    .line 261
    :cond_5
    add-int/lit8 v0, v1, 0x1

    #@44
    goto :goto_3

    #@45
    .line 263
    .end local v1    # "mid":I
    :cond_6
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@47
    if-nez v5, :cond_8

    #@49
    if-ne v0, v4, :cond_7

    #@4b
    move v5, v6

    #@4c
    :goto_4
    if-nez v5, :cond_8

    #@4e
    new-instance v5, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v5

    #@54
    :cond_7
    move v5, v7

    #@55
    goto :goto_4

    #@56
    .line 272
    :cond_8
    sub-int v2, p3, v0

    #@58
    .line 274
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    #@5b
    .line 278
    add-int/lit8 v5, v0, 0x1

    #@5d
    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@60
    .line 280
    :goto_5
    aput-object v3, p0, v0

    #@62
    .line 244
    add-int/lit8 p3, p3, 0x1

    #@64
    goto :goto_1

    #@65
    .line 275
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    #@67
    add-int/lit8 v8, v0, 0x1

    #@69
    aget-object v8, p0, v8

    #@6b
    aput-object v8, p0, v5

    #@6d
    .line 276
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    #@6f
    aget-object v8, p0, v0

    #@71
    aput-object v8, p0, v5

    #@73
    goto :goto_5

    #@74
    .line 240
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;
    .end local v4    # "right":I
    :cond_9
    return-void

    #@75
    .line 274
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 310
    sget-boolean v4, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@4
    if-nez v4, :cond_1

    #@6
    if-ge p1, p2, :cond_0

    #@8
    move v2, v3

    #@9
    :cond_0
    if-nez v2, :cond_1

    #@b
    new-instance v2, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v2

    #@11
    .line 311
    :cond_1
    add-int/lit8 v0, p1, 0x1

    #@13
    .line 312
    .local v0, "runHi":I
    if-ne v0, p2, :cond_2

    #@15
    .line 313
    return v3

    #@16
    .line 316
    :cond_2
    add-int/lit8 v1, v0, 0x1

    #@18
    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    #@1a
    check-cast v2, Ljava/lang/Comparable;

    #@1c
    aget-object v3, p0, p1

    #@1e
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@21
    move-result v2

    #@22
    if-gez v2, :cond_5

    #@24
    move v0, v1

    #@25
    .line 317
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_0
    if-ge v0, p2, :cond_3

    #@27
    aget-object v2, p0, v0

    #@29
    check-cast v2, Ljava/lang/Comparable;

    #@2b
    add-int/lit8 v3, v0, -0x1

    #@2d
    aget-object v3, p0, v3

    #@2f
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@32
    move-result v2

    #@33
    if-gez v2, :cond_3

    #@35
    .line 318
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 319
    :cond_3
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    #@3b
    .line 325
    :cond_4
    sub-int v2, v0, p1

    #@3d
    return v2

    #@3e
    .line 321
    :goto_1
    if-ge v0, p2, :cond_4

    #@40
    aget-object v2, p0, v0

    #@42
    check-cast v2, Ljava/lang/Comparable;

    #@44
    add-int/lit8 v3, v0, -0x1

    #@46
    aget-object v3, p0, v3

    #@48
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@4b
    move-result v2

    #@4c
    if-ltz v2, :cond_4

    #@4e
    .line 322
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_5
    move v0, v1

    #@52
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 880
    iget v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    #@3
    if-ge v2, p1, :cond_0

    #@5
    .line 882
    move v1, p1

    #@6
    .line 883
    .local v1, "newSize":I
    shr-int/lit8 v2, p1, 0x1

    #@8
    or-int v1, p1, v2

    #@a
    .line 884
    shr-int/lit8 v2, v1, 0x2

    #@c
    or-int/2addr v1, v2

    #@d
    .line 885
    shr-int/lit8 v2, v1, 0x4

    #@f
    or-int/2addr v1, v2

    #@10
    .line 886
    shr-int/lit8 v2, v1, 0x8

    #@12
    or-int/2addr v1, v2

    #@13
    .line 887
    shr-int/lit8 v2, v1, 0x10

    #@15
    or-int/2addr v1, v2

    #@16
    .line 888
    add-int/lit8 v1, v1, 0x1

    #@18
    .line 890
    if-gez v1, :cond_1

    #@1a
    .line 891
    move v1, p1

    #@1b
    .line 896
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    #@1d
    .line 897
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@1f
    .line 898
    iput v1, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    #@21
    .line 899
    iput v3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    #@23
    .line 901
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    #@25
    return-object v2

    #@26
    .line 893
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@28
    array-length v2, v2

    #@29
    ushr-int/lit8 v2, v2, 0x1

    #@2b
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v1

    #@2f
    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 8
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
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 501
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@4
    if-nez v5, :cond_1

    #@6
    if-lez p3, :cond_0

    #@8
    if-ltz p4, :cond_0

    #@a
    if-ge p4, p3, :cond_0

    #@c
    move v5, v6

    #@d
    :goto_0
    if-nez v5, :cond_1

    #@f
    new-instance v5, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v5

    #@15
    :cond_0
    move v5, v7

    #@16
    goto :goto_0

    #@17
    .line 503
    :cond_1
    const/4 v0, 0x0

    #@18
    .line 504
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    #@19
    .line 505
    .local v3, "ofs":I
    add-int v5, p2, p4

    #@1b
    aget-object v5, p1, v5

    #@1d
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@20
    move-result v5

    #@21
    if-lez v5, :cond_5

    #@23
    .line 507
    sub-int v2, p3, p4

    #@25
    .line 508
    .local v2, "maxOfs":I
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    #@27
    add-int v5, p2, p4

    #@29
    add-int/2addr v5, v3

    #@2a
    aget-object v5, p1, v5

    #@2c
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@2f
    move-result v5

    #@30
    if-lez v5, :cond_3

    #@32
    .line 509
    move v0, v3

    #@33
    .line 510
    shl-int/lit8 v5, v3, 0x1

    #@35
    add-int/lit8 v3, v5, 0x1

    #@37
    .line 511
    if-gtz v3, :cond_2

    #@39
    .line 512
    move v3, v2

    #@3a
    goto :goto_1

    #@3b
    .line 514
    :cond_3
    if-le v3, v2, :cond_4

    #@3d
    .line 515
    move v3, v2

    #@3e
    .line 518
    :cond_4
    add-int/2addr v0, p4

    #@3f
    .line 519
    add-int/2addr v3, p4

    #@40
    .line 537
    :goto_2
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@42
    if-nez v5, :cond_a

    #@44
    const/4 v5, -0x1

    #@45
    if-gt v5, v0, :cond_9

    #@47
    if-ge v0, v3, :cond_9

    #@49
    if-gt v3, p3, :cond_9

    #@4b
    move v5, v6

    #@4c
    :goto_3
    if-nez v5, :cond_a

    #@4e
    new-instance v5, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v5

    #@54
    .line 522
    .end local v2    # "maxOfs":I
    :cond_5
    add-int/lit8 v2, p4, 0x1

    #@56
    .line 523
    .restart local v2    # "maxOfs":I
    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    #@58
    add-int v5, p2, p4

    #@5a
    sub-int/2addr v5, v3

    #@5b
    aget-object v5, p1, v5

    #@5d
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@60
    move-result v5

    #@61
    if-gtz v5, :cond_7

    #@63
    .line 524
    move v0, v3

    #@64
    .line 525
    shl-int/lit8 v5, v3, 0x1

    #@66
    add-int/lit8 v3, v5, 0x1

    #@68
    .line 526
    if-gtz v3, :cond_6

    #@6a
    .line 527
    move v3, v2

    #@6b
    goto :goto_4

    #@6c
    .line 529
    :cond_7
    if-le v3, v2, :cond_8

    #@6e
    .line 530
    move v3, v2

    #@6f
    .line 533
    :cond_8
    move v4, v0

    #@70
    .line 534
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@72
    .line 535
    sub-int v3, p4, v4

    #@74
    goto :goto_2

    #@75
    .end local v4    # "tmp":I
    :cond_9
    move v5, v7

    #@76
    .line 537
    goto :goto_3

    #@77
    .line 544
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@79
    .line 545
    :goto_5
    if-ge v0, v3, :cond_c

    #@7b
    .line 546
    sub-int v5, v3, v0

    #@7d
    ushr-int/lit8 v5, v5, 0x1

    #@7f
    add-int v1, v0, v5

    #@81
    .line 548
    .local v1, "m":I
    add-int v5, p2, v1

    #@83
    aget-object v5, p1, v5

    #@85
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@88
    move-result v5

    #@89
    if-lez v5, :cond_b

    #@8b
    .line 549
    add-int/lit8 v0, v1, 0x1

    #@8d
    goto :goto_5

    #@8e
    .line 551
    :cond_b
    move v3, v1

    #@8f
    goto :goto_5

    #@90
    .line 553
    .end local v1    # "m":I
    :cond_c
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@92
    if-nez v5, :cond_e

    #@94
    if-ne v0, v3, :cond_d

    #@96
    :goto_6
    if-nez v6, :cond_e

    #@98
    new-instance v5, Ljava/lang/AssertionError;

    #@9a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@9d
    throw v5

    #@9e
    :cond_d
    move v6, v7

    #@9f
    goto :goto_6

    #@a0
    .line 554
    :cond_e
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 8
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
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 571
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@4
    if-nez v5, :cond_1

    #@6
    if-lez p3, :cond_0

    #@8
    if-ltz p4, :cond_0

    #@a
    if-ge p4, p3, :cond_0

    #@c
    move v5, v6

    #@d
    :goto_0
    if-nez v5, :cond_1

    #@f
    new-instance v5, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v5

    #@15
    :cond_0
    move v5, v7

    #@16
    goto :goto_0

    #@17
    .line 573
    :cond_1
    const/4 v3, 0x1

    #@18
    .line 574
    .local v3, "ofs":I
    const/4 v0, 0x0

    #@19
    .line 575
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    #@1b
    aget-object v5, p1, v5

    #@1d
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@20
    move-result v5

    #@21
    if-gez v5, :cond_5

    #@23
    .line 577
    add-int/lit8 v2, p4, 0x1

    #@25
    .line 578
    .local v2, "maxOfs":I
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    #@27
    add-int v5, p2, p4

    #@29
    sub-int/2addr v5, v3

    #@2a
    aget-object v5, p1, v5

    #@2c
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@2f
    move-result v5

    #@30
    if-gez v5, :cond_3

    #@32
    .line 579
    move v0, v3

    #@33
    .line 580
    shl-int/lit8 v5, v3, 0x1

    #@35
    add-int/lit8 v3, v5, 0x1

    #@37
    .line 581
    if-gtz v3, :cond_2

    #@39
    .line 582
    move v3, v2

    #@3a
    goto :goto_1

    #@3b
    .line 584
    :cond_3
    if-le v3, v2, :cond_4

    #@3d
    .line 585
    move v3, v2

    #@3e
    .line 588
    :cond_4
    move v4, v0

    #@3f
    .line 589
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@41
    .line 590
    sub-int v3, p4, v4

    #@43
    .line 607
    .end local v4    # "tmp":I
    :goto_2
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@45
    if-nez v5, :cond_a

    #@47
    const/4 v5, -0x1

    #@48
    if-gt v5, v0, :cond_9

    #@4a
    if-ge v0, v3, :cond_9

    #@4c
    if-gt v3, p3, :cond_9

    #@4e
    move v5, v6

    #@4f
    :goto_3
    if-nez v5, :cond_a

    #@51
    new-instance v5, Ljava/lang/AssertionError;

    #@53
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@56
    throw v5

    #@57
    .line 593
    .end local v2    # "maxOfs":I
    :cond_5
    sub-int v2, p3, p4

    #@59
    .line 594
    .restart local v2    # "maxOfs":I
    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    #@5b
    add-int v5, p2, p4

    #@5d
    add-int/2addr v5, v3

    #@5e
    aget-object v5, p1, v5

    #@60
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@63
    move-result v5

    #@64
    if-ltz v5, :cond_7

    #@66
    .line 595
    move v0, v3

    #@67
    .line 596
    shl-int/lit8 v5, v3, 0x1

    #@69
    add-int/lit8 v3, v5, 0x1

    #@6b
    .line 597
    if-gtz v3, :cond_6

    #@6d
    .line 598
    move v3, v2

    #@6e
    goto :goto_4

    #@6f
    .line 600
    :cond_7
    if-le v3, v2, :cond_8

    #@71
    .line 601
    move v3, v2

    #@72
    .line 604
    :cond_8
    add-int/2addr v0, p4

    #@73
    .line 605
    add-int/2addr v3, p4

    #@74
    goto :goto_2

    #@75
    :cond_9
    move v5, v7

    #@76
    .line 607
    goto :goto_3

    #@77
    .line 614
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@79
    .line 615
    :goto_5
    if-ge v0, v3, :cond_c

    #@7b
    .line 616
    sub-int v5, v3, v0

    #@7d
    ushr-int/lit8 v5, v5, 0x1

    #@7f
    add-int v1, v0, v5

    #@81
    .line 618
    .local v1, "m":I
    add-int v5, p2, v1

    #@83
    aget-object v5, p1, v5

    #@85
    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@88
    move-result v5

    #@89
    if-gez v5, :cond_b

    #@8b
    .line 619
    move v3, v1

    #@8c
    goto :goto_5

    #@8d
    .line 621
    :cond_b
    add-int/lit8 v0, v1, 0x1

    #@8f
    goto :goto_5

    #@90
    .line 623
    .end local v1    # "m":I
    :cond_c
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@92
    if-nez v5, :cond_e

    #@94
    if-ne v0, v3, :cond_d

    #@96
    :goto_6
    if-nez v6, :cond_e

    #@98
    new-instance v5, Ljava/lang/AssertionError;

    #@9a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@9d
    throw v5

    #@9e
    :cond_d
    move v6, v7

    #@9f
    goto :goto_6

    #@a0
    .line 624
    :cond_e
    return v3
.end method

.method private mergeAt(I)V
    .locals 11
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 431
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@4
    if-nez v5, :cond_1

    #@6
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@8
    const/4 v8, 0x2

    #@9
    if-lt v5, v8, :cond_0

    #@b
    move v5, v6

    #@c
    :goto_0
    if-nez v5, :cond_1

    #@e
    new-instance v5, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v5

    #@14
    :cond_0
    move v5, v7

    #@15
    goto :goto_0

    #@16
    .line 432
    :cond_1
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@18
    if-nez v5, :cond_3

    #@1a
    if-ltz p1, :cond_2

    #@1c
    move v5, v6

    #@1d
    :goto_1
    if-nez v5, :cond_3

    #@1f
    new-instance v5, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@24
    throw v5

    #@25
    :cond_2
    move v5, v7

    #@26
    goto :goto_1

    #@27
    .line 433
    :cond_3
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@29
    if-nez v5, :cond_6

    #@2b
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@2d
    add-int/lit8 v5, v5, -0x2

    #@2f
    if-eq p1, v5, :cond_4

    #@31
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@33
    add-int/lit8 v5, v5, -0x3

    #@35
    if-ne p1, v5, :cond_5

    #@37
    :cond_4
    move v5, v6

    #@38
    :goto_2
    if-nez v5, :cond_6

    #@3a
    new-instance v5, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v5

    #@40
    :cond_5
    move v5, v7

    #@41
    goto :goto_2

    #@42
    .line 435
    :cond_6
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@44
    aget v0, v5, p1

    #@46
    .line 436
    .local v0, "base1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@48
    aget v3, v5, p1

    #@4a
    .line 437
    .local v3, "len1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@4c
    add-int/lit8 v8, p1, 0x1

    #@4e
    aget v1, v5, v8

    #@50
    .line 438
    .local v1, "base2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@52
    add-int/lit8 v8, p1, 0x1

    #@54
    aget v4, v5, v8

    #@56
    .line 439
    .local v4, "len2":I
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@58
    if-nez v5, :cond_8

    #@5a
    if-lez v3, :cond_7

    #@5c
    if-lez v4, :cond_7

    #@5e
    move v5, v6

    #@5f
    :goto_3
    if-nez v5, :cond_8

    #@61
    new-instance v5, Ljava/lang/AssertionError;

    #@63
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@66
    throw v5

    #@67
    :cond_7
    move v5, v7

    #@68
    goto :goto_3

    #@69
    .line 440
    :cond_8
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@6b
    if-nez v5, :cond_a

    #@6d
    add-int v5, v0, v3

    #@6f
    if-ne v5, v1, :cond_9

    #@71
    move v5, v6

    #@72
    :goto_4
    if-nez v5, :cond_a

    #@74
    new-instance v5, Ljava/lang/AssertionError;

    #@76
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@79
    throw v5

    #@7a
    :cond_9
    move v5, v7

    #@7b
    goto :goto_4

    #@7c
    .line 447
    :cond_a
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@7e
    add-int v8, v3, v4

    #@80
    aput v8, v5, p1

    #@82
    .line 448
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@84
    add-int/lit8 v5, v5, -0x3

    #@86
    if-ne p1, v5, :cond_b

    #@88
    .line 449
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@8a
    add-int/lit8 v8, p1, 0x1

    #@8c
    iget-object v9, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@8e
    add-int/lit8 v10, p1, 0x2

    #@90
    aget v9, v9, v10

    #@92
    aput v9, v5, v8

    #@94
    .line 450
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@96
    add-int/lit8 v8, p1, 0x1

    #@98
    iget-object v9, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@9a
    add-int/lit8 v10, p1, 0x2

    #@9c
    aget v9, v9, v10

    #@9e
    aput v9, v5, v8

    #@a0
    .line 452
    :cond_b
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@a2
    add-int/lit8 v5, v5, -0x1

    #@a4
    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@a6
    .line 458
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@a8
    aget-object v5, v5, v1

    #@aa
    check-cast v5, Ljava/lang/Comparable;

    #@ac
    iget-object v8, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@ae
    invoke-static {v5, v8, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@b1
    move-result v2

    #@b2
    .line 459
    .local v2, "k":I
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@b4
    if-nez v5, :cond_d

    #@b6
    if-ltz v2, :cond_c

    #@b8
    move v5, v6

    #@b9
    :goto_5
    if-nez v5, :cond_d

    #@bb
    new-instance v5, Ljava/lang/AssertionError;

    #@bd
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@c0
    throw v5

    #@c1
    :cond_c
    move v5, v7

    #@c2
    goto :goto_5

    #@c3
    .line 460
    :cond_d
    add-int/2addr v0, v2

    #@c4
    .line 461
    sub-int/2addr v3, v2

    #@c5
    .line 462
    if-nez v3, :cond_e

    #@c7
    .line 463
    return-void

    #@c8
    .line 469
    :cond_e
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@ca
    add-int v8, v0, v3

    #@cc
    add-int/lit8 v8, v8, -0x1

    #@ce
    aget-object v5, v5, v8

    #@d0
    check-cast v5, Ljava/lang/Comparable;

    #@d2
    iget-object v8, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@d4
    .line 470
    add-int/lit8 v9, v4, -0x1

    #@d6
    .line 469
    invoke-static {v5, v8, v1, v4, v9}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@d9
    move-result v4

    #@da
    .line 471
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@dc
    if-nez v5, :cond_10

    #@de
    if-ltz v4, :cond_f

    #@e0
    move v5, v6

    #@e1
    :goto_6
    if-nez v5, :cond_10

    #@e3
    new-instance v5, Ljava/lang/AssertionError;

    #@e5
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@e8
    throw v5

    #@e9
    :cond_f
    move v5, v7

    #@ea
    goto :goto_6

    #@eb
    .line 472
    :cond_10
    if-nez v4, :cond_11

    #@ed
    .line 473
    return-void

    #@ee
    .line 476
    :cond_11
    if-gt v3, v4, :cond_12

    #@f0
    .line 477
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    #@f3
    .line 430
    :goto_7
    return-void

    #@f4
    .line 479
    :cond_12
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    #@f7
    goto :goto_7
.end method

.method private mergeCollapse()V
    .locals 5

    #@0
    .prologue
    .line 395
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_2

    #@5
    .line 396
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 397
    .local v0, "n":I
    if-lez v0, :cond_1

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
    if-gt v1, v2, :cond_1

    #@1e
    .line 398
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
    if-ge v1, v2, :cond_0

    #@2c
    .line 399
    add-int/lit8 v0, v0, -0x1

    #@2e
    .line 400
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@31
    goto :goto_0

    #@32
    .line 401
    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@34
    aget v1, v1, v0

    #@36
    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@38
    add-int/lit8 v3, v0, 0x1

    #@3a
    aget v2, v2, v3

    #@3c
    if-gt v1, v2, :cond_2

    #@3e
    .line 402
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@41
    goto :goto_0

    #@42
    .line 394
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    #@0
    .prologue
    .line 414
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_1

    #@5
    .line 415
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 416
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
    .line 417
    add-int/lit8 v0, v0, -0x1

    #@1b
    .line 418
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 413
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
    .line 762
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@2
    if-nez v14, :cond_1

    #@4
    if-lez p2, :cond_0

    #@6
    if-lez p4, :cond_0

    #@8
    add-int v14, p1, p2

    #@a
    move/from16 v0, p3

    #@c
    if-ne v14, v0, :cond_0

    #@e
    const/4 v14, 0x1

    #@f
    :goto_0
    if-nez v14, :cond_1

    #@11
    new-instance v14, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v14

    #@17
    :cond_0
    const/4 v14, 0x0

    #@18
    goto :goto_0

    #@19
    .line 765
    :cond_1
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@1d
    .line 766
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, p4

    #@21
    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@24
    move-result-object v12

    #@25
    .line 767
    .local v12, "tmp":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@27
    iget v13, v0, Ljava/util/ComparableTimSort;->tmpBase:I

    #@29
    .line 768
    .local v13, "tmpBase":I
    move/from16 v0, p3

    #@2b
    move/from16 v1, p4

    #@2d
    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 770
    add-int v14, p1, p2

    #@32
    add-int/lit8 v5, v14, -0x1

    #@34
    .line 771
    .local v5, "cursor1":I
    add-int v14, v13, p4

    #@36
    add-int/lit8 v7, v14, -0x1

    #@38
    .line 772
    .local v7, "cursor2":I
    add-int v14, p3, p4

    #@3a
    add-int/lit8 v9, v14, -0x1

    #@3c
    .line 775
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    #@3e
    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    #@40
    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v14, v2, v5

    #@42
    aput-object v14, v2, v9

    #@44
    .line 776
    add-int/lit8 p2, p2, -0x1

    #@46
    if-nez p2, :cond_2

    #@48
    .line 777
    add-int/lit8 v14, p4, -0x1

    #@4a
    sub-int v14, v10, v14

    #@4c
    move/from16 v0, p4

    #@4e
    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 778
    return-void

    #@52
    .line 780
    :cond_2
    const/4 v14, 0x1

    #@53
    move/from16 v0, p4

    #@55
    if-ne v0, v14, :cond_3

    #@57
    .line 781
    sub-int v9, v10, p2

    #@59
    .line 782
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    #@5b
    .line 783
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v14, v5, 0x1

    #@5d
    add-int/lit8 v15, v9, 0x1

    #@5f
    move/from16 v0, p2

    #@61
    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@64
    .line 784
    aget-object v14, v12, v7

    #@66
    aput-object v14, v2, v9

    #@68
    .line 785
    return-void

    #@69
    .line 788
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_3
    move-object/from16 v0, p0

    #@6b
    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    #@6d
    .local v11, "minGallop":I
    move v9, v10

    #@6e
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@6f
    .line 791
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_1
    const/4 v3, 0x0

    #@70
    .line 792
    .local v3, "count1":I
    const/4 v4, 0x0

    #@71
    .line 799
    .local v4, "count2":I
    :cond_4
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@73
    if-nez v14, :cond_6

    #@75
    if-lez p2, :cond_5

    #@77
    const/4 v14, 0x1

    #@78
    move/from16 v0, p4

    #@7a
    if-le v0, v14, :cond_5

    #@7c
    const/4 v14, 0x1

    #@7d
    :goto_2
    if-nez v14, :cond_6

    #@7f
    new-instance v14, Ljava/lang/AssertionError;

    #@81
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@84
    throw v14

    #@85
    :cond_5
    const/4 v14, 0x0

    #@86
    goto :goto_2

    #@87
    .line 800
    :cond_6
    aget-object v14, v12, v7

    #@89
    check-cast v14, Ljava/lang/Comparable;

    #@8b
    aget-object v15, v2, v5

    #@8d
    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@90
    move-result v14

    #@91
    if-gez v14, :cond_9

    #@93
    .line 801
    add-int/lit8 v10, v9, -0x1

    #@95
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    #@97
    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v14, v2, v5

    #@99
    aput-object v14, v2, v9

    #@9b
    .line 802
    add-int/lit8 v3, v3, 0x1

    #@9d
    .line 803
    const/4 v4, 0x0

    #@9e
    .line 804
    add-int/lit8 p2, p2, -0x1

    #@a0
    if-nez p2, :cond_1d

    #@a2
    move v9, v10

    #@a3
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@a4
    .line 853
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_7
    :goto_3
    const/4 v14, 0x1

    #@a5
    if-ge v11, v14, :cond_8

    #@a7
    const/4 v11, 0x1

    #@a8
    .end local v11    # "minGallop":I
    :cond_8
    move-object/from16 v0, p0

    #@aa
    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    #@ac
    .line 855
    const/4 v14, 0x1

    #@ad
    move/from16 v0, p4

    #@af
    if-ne v0, v14, :cond_16

    #@b1
    .line 856
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@b3
    if-nez v14, :cond_15

    #@b5
    if-lez p2, :cond_14

    #@b7
    const/4 v14, 0x1

    #@b8
    :goto_4
    if-nez v14, :cond_15

    #@ba
    new-instance v14, Ljava/lang/AssertionError;

    #@bc
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@bf
    throw v14

    #@c0
    .line 807
    .restart local v11    # "minGallop":I
    :cond_9
    add-int/lit8 v10, v9, -0x1

    #@c2
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    #@c4
    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v14, v12, v7

    #@c6
    aput-object v14, v2, v9

    #@c8
    .line 808
    add-int/lit8 v4, v4, 0x1

    #@ca
    .line 809
    const/4 v3, 0x0

    #@cb
    .line 810
    add-int/lit8 p4, p4, -0x1

    #@cd
    const/4 v14, 0x1

    #@ce
    move/from16 v0, p4

    #@d0
    if-ne v0, v14, :cond_a

    #@d2
    move v9, v10

    #@d3
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@d4
    .line 811
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_3

    #@d5
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_a
    move v9, v10

    #@d6
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@d7
    .line 813
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_5
    or-int v14, v3, v4

    #@d9
    if-lt v14, v11, :cond_4

    #@db
    .line 821
    :goto_6
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@dd
    if-nez v14, :cond_c

    #@df
    if-lez p2, :cond_b

    #@e1
    const/4 v14, 0x1

    #@e2
    move/from16 v0, p4

    #@e4
    if-le v0, v14, :cond_b

    #@e6
    const/4 v14, 0x1

    #@e7
    :goto_7
    if-nez v14, :cond_c

    #@e9
    new-instance v14, Ljava/lang/AssertionError;

    #@eb
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@ee
    throw v14

    #@ef
    :cond_b
    const/4 v14, 0x0

    #@f0
    goto :goto_7

    #@f1
    .line 822
    :cond_c
    aget-object v14, v12, v7

    #@f3
    check-cast v14, Ljava/lang/Comparable;

    #@f5
    add-int/lit8 v15, p2, -0x1

    #@f7
    move/from16 v0, p1

    #@f9
    move/from16 v1, p2

    #@fb
    invoke-static {v14, v2, v0, v1, v15}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@fe
    move-result v14

    #@ff
    sub-int v3, p2, v14

    #@101
    .line 823
    if-eqz v3, :cond_d

    #@103
    .line 824
    sub-int/2addr v9, v3

    #@104
    .line 825
    sub-int/2addr v5, v3

    #@105
    .line 826
    sub-int p2, p2, v3

    #@107
    .line 827
    add-int/lit8 v14, v5, 0x1

    #@109
    add-int/lit8 v15, v9, 0x1

    #@10b
    invoke-static {v2, v14, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10e
    .line 828
    if-eqz p2, :cond_7

    #@110
    .line 831
    :cond_d
    add-int/lit8 v10, v9, -0x1

    #@112
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    #@114
    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v14, v12, v7

    #@116
    aput-object v14, v2, v9

    #@118
    .line 832
    add-int/lit8 p4, p4, -0x1

    #@11a
    const/4 v14, 0x1

    #@11b
    move/from16 v0, p4

    #@11d
    if-ne v0, v14, :cond_e

    #@11f
    move v9, v10

    #@120
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@121
    .line 833
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_3

    #@122
    .line 835
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_e
    aget-object v14, v2, v5

    #@124
    check-cast v14, Ljava/lang/Comparable;

    #@126
    add-int/lit8 v15, p4, -0x1

    #@128
    move/from16 v0, p4

    #@12a
    invoke-static {v14, v12, v13, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@12d
    move-result v14

    #@12e
    sub-int v4, p4, v14

    #@130
    .line 836
    if-eqz v4, :cond_1c

    #@132
    .line 837
    sub-int v9, v10, v4

    #@134
    .line 838
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    #@136
    .line 839
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    #@138
    .line 840
    add-int/lit8 v14, v7, 0x1

    #@13a
    add-int/lit8 v15, v9, 0x1

    #@13c
    invoke-static {v12, v14, v2, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13f
    .line 841
    const/4 v14, 0x1

    #@140
    move/from16 v0, p4

    #@142
    if-le v0, v14, :cond_7

    #@144
    .line 844
    :goto_8
    add-int/lit8 v10, v9, -0x1

    #@146
    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    #@148
    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v14, v2, v5

    #@14a
    aput-object v14, v2, v9

    #@14c
    .line 845
    add-int/lit8 p2, p2, -0x1

    #@14e
    if-nez p2, :cond_f

    #@150
    move v9, v10

    #@151
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@152
    .line 846
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_3

    #@154
    .line 847
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_f
    add-int/lit8 v11, v11, -0x1

    #@156
    .line 848
    const/4 v14, 0x7

    #@157
    if-lt v3, v14, :cond_10

    #@159
    const/4 v14, 0x1

    #@15a
    move v15, v14

    #@15b
    :goto_9
    const/4 v14, 0x7

    #@15c
    if-lt v4, v14, :cond_11

    #@15e
    const/4 v14, 0x1

    #@15f
    :goto_a
    or-int/2addr v14, v15

    #@160
    if-eqz v14, :cond_12

    #@162
    move v9, v10

    #@163
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@164
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_6

    #@166
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_10
    const/4 v14, 0x0

    #@167
    move v15, v14

    #@168
    goto :goto_9

    #@169
    :cond_11
    const/4 v14, 0x0

    #@16a
    goto :goto_a

    #@16b
    .line 849
    :cond_12
    if-gez v11, :cond_13

    #@16d
    .line 850
    const/4 v11, 0x0

    #@16e
    .line 851
    :cond_13
    add-int/lit8 v11, v11, 0x2

    #@170
    move v9, v10

    #@171
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@172
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    #@174
    .line 856
    .end local v11    # "minGallop":I
    :cond_14
    const/4 v14, 0x0

    #@175
    goto/16 :goto_4

    #@177
    .line 857
    :cond_15
    sub-int v9, v9, p2

    #@179
    .line 858
    sub-int v5, v5, p2

    #@17b
    .line 859
    add-int/lit8 v14, v5, 0x1

    #@17d
    add-int/lit8 v15, v9, 0x1

    #@17f
    move/from16 v0, p2

    #@181
    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@184
    .line 860
    aget-object v14, v12, v7

    #@186
    aput-object v14, v2, v9

    #@188
    .line 761
    :goto_b
    return-void

    #@189
    .line 861
    :cond_16
    if-nez p4, :cond_17

    #@18b
    .line 862
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@18d
    .line 863
    const-string/jumbo v15, "Comparison method violates its general contract!"

    #@190
    .line 862
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@193
    throw v14

    #@194
    .line 865
    :cond_17
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@196
    if-nez v14, :cond_19

    #@198
    if-nez p2, :cond_18

    #@19a
    const/4 v14, 0x1

    #@19b
    :goto_c
    if-nez v14, :cond_19

    #@19d
    new-instance v14, Ljava/lang/AssertionError;

    #@19f
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@1a2
    throw v14

    #@1a3
    :cond_18
    const/4 v14, 0x0

    #@1a4
    goto :goto_c

    #@1a5
    .line 866
    :cond_19
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@1a7
    if-nez v14, :cond_1b

    #@1a9
    if-lez p4, :cond_1a

    #@1ab
    const/4 v14, 0x1

    #@1ac
    :goto_d
    if-nez v14, :cond_1b

    #@1ae
    new-instance v14, Ljava/lang/AssertionError;

    #@1b0
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@1b3
    throw v14

    #@1b4
    :cond_1a
    const/4 v14, 0x0

    #@1b5
    goto :goto_d

    #@1b6
    .line 867
    :cond_1b
    add-int/lit8 v14, p4, -0x1

    #@1b8
    sub-int v14, v9, v14

    #@1ba
    move/from16 v0, p4

    #@1bc
    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1bf
    goto :goto_b

    #@1c0
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_1c
    move v9, v10

    #@1c1
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    #@1c2
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_8

    #@1c3
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_1d
    move v9, v10

    #@1c4
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    #@1c5
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_5
.end method

.method private mergeLo(IIII)V
    .locals 14
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    #@0
    .prologue
    .line 645
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@2
    if-nez v12, :cond_1

    #@4
    if-lez p2, :cond_0

    #@6
    if-lez p4, :cond_0

    #@8
    add-int v12, p1, p2

    #@a
    move/from16 v0, p3

    #@c
    if-ne v12, v0, :cond_0

    #@e
    const/4 v12, 0x1

    #@f
    :goto_0
    if-nez v12, :cond_1

    #@11
    new-instance v12, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v12

    #@17
    :cond_0
    const/4 v12, 0x0

    #@18
    goto :goto_0

    #@19
    .line 648
    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    #@1b
    .line 649
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    #@1d
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@20
    move-result-object v11

    #@21
    .line 651
    .local v11, "tmp":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    #@23
    .line 652
    .local v4, "cursor1":I
    move/from16 v6, p3

    #@25
    .line 653
    .local v6, "cursor2":I
    move v8, p1

    #@26
    .line 654
    .local v8, "dest":I
    move/from16 v0, p2

    #@28
    invoke-static {v1, p1, v11, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2b
    .line 657
    add-int/lit8 v8, p1, 0x1

    #@2d
    add-int/lit8 v6, p3, 0x1

    #@2f
    aget-object v12, v1, p3

    #@31
    aput-object v12, v1, p1

    #@33
    .line 658
    add-int/lit8 p4, p4, -0x1

    #@35
    if-nez p4, :cond_2

    #@37
    .line 659
    move/from16 v0, p2

    #@39
    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    .line 660
    return-void

    #@3d
    .line 662
    :cond_2
    const/4 v12, 0x1

    #@3e
    move/from16 v0, p2

    #@40
    if-ne v0, v12, :cond_3

    #@42
    .line 663
    move/from16 v0, p4

    #@44
    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    .line 664
    add-int v12, v8, p4

    #@49
    aget-object v13, v11, v4

    #@4b
    aput-object v13, v1, v12

    #@4d
    .line 665
    return-void

    #@4e
    .line 668
    :cond_3
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    #@50
    .line 671
    .local v10, "minGallop":I
    :goto_1
    const/4 v2, 0x0

    #@51
    .line 672
    .local v2, "count1":I
    const/4 v3, 0x0

    #@52
    .line 679
    .local v3, "count2":I
    :cond_4
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@54
    if-nez v12, :cond_6

    #@56
    const/4 v12, 0x1

    #@57
    move/from16 v0, p2

    #@59
    if-le v0, v12, :cond_5

    #@5b
    if-lez p4, :cond_5

    #@5d
    const/4 v12, 0x1

    #@5e
    :goto_2
    if-nez v12, :cond_6

    #@60
    new-instance v12, Ljava/lang/AssertionError;

    #@62
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@65
    throw v12

    #@66
    :cond_5
    const/4 v12, 0x0

    #@67
    goto :goto_2

    #@68
    .line 680
    :cond_6
    aget-object v12, v1, v6

    #@6a
    check-cast v12, Ljava/lang/Comparable;

    #@6c
    aget-object v13, v11, v4

    #@6e
    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@71
    move-result v12

    #@72
    if-gez v12, :cond_9

    #@74
    .line 681
    add-int/lit8 v9, v8, 0x1

    #@76
    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    #@78
    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    #@7a
    aput-object v12, v1, v8

    #@7c
    .line 682
    add-int/lit8 v3, v3, 0x1

    #@7e
    .line 683
    const/4 v2, 0x0

    #@7f
    .line 684
    add-int/lit8 p4, p4, -0x1

    #@81
    if-nez p4, :cond_1d

    #@83
    move v8, v9

    #@84
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@85
    .line 733
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_7
    :goto_3
    const/4 v12, 0x1

    #@86
    if-ge v10, v12, :cond_8

    #@88
    const/4 v10, 0x1

    #@89
    .end local v10    # "minGallop":I
    :cond_8
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    #@8b
    .line 735
    const/4 v12, 0x1

    #@8c
    move/from16 v0, p2

    #@8e
    if-ne v0, v12, :cond_16

    #@90
    .line 736
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@92
    if-nez v12, :cond_15

    #@94
    if-lez p4, :cond_14

    #@96
    const/4 v12, 0x1

    #@97
    :goto_4
    if-nez v12, :cond_15

    #@99
    new-instance v12, Ljava/lang/AssertionError;

    #@9b
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@9e
    throw v12

    #@9f
    .line 687
    .restart local v10    # "minGallop":I
    :cond_9
    add-int/lit8 v9, v8, 0x1

    #@a1
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    #@a3
    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    #@a5
    aput-object v12, v1, v8

    #@a7
    .line 688
    add-int/lit8 v2, v2, 0x1

    #@a9
    .line 689
    const/4 v3, 0x0

    #@aa
    .line 690
    add-int/lit8 p2, p2, -0x1

    #@ac
    const/4 v12, 0x1

    #@ad
    move/from16 v0, p2

    #@af
    if-ne v0, v12, :cond_a

    #@b1
    move v8, v9

    #@b2
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@b3
    .line 691
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_3

    #@b4
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_a
    move v8, v9

    #@b5
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@b6
    .line 693
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_5
    or-int v12, v2, v3

    #@b8
    if-lt v12, v10, :cond_4

    #@ba
    .line 701
    :goto_6
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@bc
    if-nez v12, :cond_c

    #@be
    const/4 v12, 0x1

    #@bf
    move/from16 v0, p2

    #@c1
    if-le v0, v12, :cond_b

    #@c3
    if-lez p4, :cond_b

    #@c5
    const/4 v12, 0x1

    #@c6
    :goto_7
    if-nez v12, :cond_c

    #@c8
    new-instance v12, Ljava/lang/AssertionError;

    #@ca
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@cd
    throw v12

    #@ce
    :cond_b
    const/4 v12, 0x0

    #@cf
    goto :goto_7

    #@d0
    .line 702
    :cond_c
    aget-object v12, v1, v6

    #@d2
    check-cast v12, Ljava/lang/Comparable;

    #@d4
    const/4 v13, 0x0

    #@d5
    move/from16 v0, p2

    #@d7
    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@da
    move-result v2

    #@db
    .line 703
    if-eqz v2, :cond_d

    #@dd
    .line 704
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e0
    .line 705
    add-int/2addr v8, v2

    #@e1
    .line 706
    add-int/2addr v4, v2

    #@e2
    .line 707
    sub-int p2, p2, v2

    #@e4
    .line 708
    const/4 v12, 0x1

    #@e5
    move/from16 v0, p2

    #@e7
    if-le v0, v12, :cond_7

    #@e9
    .line 711
    :cond_d
    add-int/lit8 v9, v8, 0x1

    #@eb
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    #@ed
    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    #@ef
    aput-object v12, v1, v8

    #@f1
    .line 712
    add-int/lit8 p4, p4, -0x1

    #@f3
    if-nez p4, :cond_e

    #@f5
    move v8, v9

    #@f6
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@f7
    .line 713
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_3

    #@f8
    .line 715
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_e
    aget-object v12, v11, v4

    #@fa
    check-cast v12, Ljava/lang/Comparable;

    #@fc
    const/4 v13, 0x0

    #@fd
    move/from16 v0, p4

    #@ff
    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    #@102
    move-result v3

    #@103
    .line 716
    if-eqz v3, :cond_1c

    #@105
    .line 717
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@108
    .line 718
    add-int v8, v9, v3

    #@10a
    .line 719
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    #@10c
    .line 720
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    #@10e
    .line 721
    if-eqz p4, :cond_7

    #@110
    .line 724
    :goto_8
    add-int/lit8 v9, v8, 0x1

    #@112
    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    #@114
    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    #@116
    aput-object v12, v1, v8

    #@118
    .line 725
    add-int/lit8 p2, p2, -0x1

    #@11a
    const/4 v12, 0x1

    #@11b
    move/from16 v0, p2

    #@11d
    if-ne v0, v12, :cond_f

    #@11f
    move v8, v9

    #@120
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@121
    .line 726
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_3

    #@123
    .line 727
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_f
    add-int/lit8 v10, v10, -0x1

    #@125
    .line 728
    const/4 v12, 0x7

    #@126
    if-lt v2, v12, :cond_10

    #@128
    const/4 v12, 0x1

    #@129
    move v13, v12

    #@12a
    :goto_9
    const/4 v12, 0x7

    #@12b
    if-lt v3, v12, :cond_11

    #@12d
    const/4 v12, 0x1

    #@12e
    :goto_a
    or-int/2addr v12, v13

    #@12f
    if-eqz v12, :cond_12

    #@131
    move v8, v9

    #@132
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@133
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_6

    #@134
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_10
    const/4 v12, 0x0

    #@135
    move v13, v12

    #@136
    goto :goto_9

    #@137
    :cond_11
    const/4 v12, 0x0

    #@138
    goto :goto_a

    #@139
    .line 729
    :cond_12
    if-gez v10, :cond_13

    #@13b
    .line 730
    const/4 v10, 0x0

    #@13c
    .line 731
    :cond_13
    add-int/lit8 v10, v10, 0x2

    #@13e
    move v8, v9

    #@13f
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    #@140
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    #@142
    .line 736
    .end local v10    # "minGallop":I
    :cond_14
    const/4 v12, 0x0

    #@143
    goto/16 :goto_4

    #@145
    .line 737
    :cond_15
    move/from16 v0, p4

    #@147
    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14a
    .line 738
    add-int v12, v8, p4

    #@14c
    aget-object v13, v11, v4

    #@14e
    aput-object v13, v1, v12

    #@150
    .line 644
    :goto_b
    return-void

    #@151
    .line 739
    :cond_16
    if-nez p2, :cond_17

    #@153
    .line 740
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@155
    .line 741
    const-string/jumbo v13, "Comparison method violates its general contract!"

    #@158
    .line 740
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15b
    throw v12

    #@15c
    .line 743
    :cond_17
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@15e
    if-nez v12, :cond_19

    #@160
    if-nez p4, :cond_18

    #@162
    const/4 v12, 0x1

    #@163
    :goto_c
    if-nez v12, :cond_19

    #@165
    new-instance v12, Ljava/lang/AssertionError;

    #@167
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@16a
    throw v12

    #@16b
    :cond_18
    const/4 v12, 0x0

    #@16c
    goto :goto_c

    #@16d
    .line 744
    :cond_19
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@16f
    if-nez v12, :cond_1b

    #@171
    const/4 v12, 0x1

    #@172
    move/from16 v0, p2

    #@174
    if-le v0, v12, :cond_1a

    #@176
    const/4 v12, 0x1

    #@177
    :goto_d
    if-nez v12, :cond_1b

    #@179
    new-instance v12, Ljava/lang/AssertionError;

    #@17b
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@17e
    throw v12

    #@17f
    :cond_1a
    const/4 v12, 0x0

    #@180
    goto :goto_d

    #@181
    .line 745
    :cond_1b
    move/from16 v0, p2

    #@183
    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@186
    goto :goto_b

    #@187
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_1c
    move v8, v9

    #@188
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@189
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_8

    #@18a
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_1d
    move v8, v9

    #@18b
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    #@18c
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_5
.end method

.method private static minRunLength(I)I
    .locals 3
    .param p0, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 362
    sget-boolean v2, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    if-ltz p0, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    :cond_0
    if-nez v1, :cond_1

    #@a
    new-instance v1, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v1

    #@10
    .line 363
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 364
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    #@13
    if-lt p0, v1, :cond_2

    #@15
    .line 365
    and-int/lit8 v1, p0, 0x1

    #@17
    or-int/2addr v0, v1

    #@18
    .line 366
    shr-int/lit8 p0, p0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 368
    :cond_2
    add-int v1, p0, v0

    #@1d
    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    #@2
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@4
    aput p1, v0, v1

    #@6
    .line 379
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    #@8
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@a
    aput p2, v0, v1

    #@c
    .line 380
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    #@12
    .line 377
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 336
    add-int/lit8 p2, p2, -0x1

    #@2
    move v0, p2

    #@3
    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    #@4
    .line 337
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 338
    aget-object v2, p0, v1

    #@8
    .line 339
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    #@a
    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    #@c
    aput-object v3, p0, v1

    #@e
    .line 340
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
    .line 335
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V
    .locals 10
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "work"    # [Ljava/lang/Object;
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 176
    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    if-ltz p1, :cond_0

    #@a
    if-gt p1, p2, :cond_0

    #@c
    array-length v6, p0

    #@d
    if-gt p2, v6, :cond_0

    #@f
    move v6, v7

    #@10
    :goto_0
    if-nez v6, :cond_1

    #@12
    new-instance v6, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v6

    #@18
    :cond_0
    move v6, v8

    #@19
    goto :goto_0

    #@1a
    .line 178
    :cond_1
    sub-int v3, p2, p1

    #@1c
    .line 179
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    #@1d
    if-ge v3, v6, :cond_2

    #@1f
    .line 180
    return-void

    #@20
    .line 183
    :cond_2
    const/16 v6, 0x20

    #@22
    if-ge v3, v6, :cond_3

    #@24
    .line 184
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    #@27
    move-result v1

    #@28
    .line 185
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    #@2a
    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    #@2d
    .line 186
    return-void

    #@2e
    .line 194
    .end local v1    # "initRunLen":I
    :cond_3
    new-instance v5, Ljava/util/ComparableTimSort;

    #@30
    invoke-direct {v5, p0, p3, p4, p5}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    #@33
    .line 195
    .local v5, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    #@36
    move-result v2

    #@37
    .line 198
    .local v2, "minRun":I
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    #@3a
    move-result v4

    #@3b
    .line 201
    .local v4, "runLen":I
    if-ge v4, v2, :cond_5

    #@3d
    .line 202
    if-gt v3, v2, :cond_6

    #@3f
    move v0, v3

    #@40
    .line 203
    .local v0, "force":I
    :goto_1
    add-int v6, p1, v0

    #@42
    add-int v9, p1, v4

    #@44
    invoke-static {p0, p1, v6, v9}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    #@47
    .line 204
    move v4, v0

    #@48
    .line 208
    .end local v0    # "force":I
    :cond_5
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    #@4b
    .line 209
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    #@4e
    .line 212
    add-int/2addr p1, v4

    #@4f
    .line 213
    sub-int/2addr v3, v4

    #@50
    .line 214
    if-nez v3, :cond_4

    #@52
    .line 217
    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@54
    if-nez v6, :cond_8

    #@56
    if-ne p1, p2, :cond_7

    #@58
    move v6, v7

    #@59
    :goto_2
    if-nez v6, :cond_8

    #@5b
    new-instance v6, Ljava/lang/AssertionError;

    #@5d
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@60
    throw v6

    #@61
    :cond_6
    move v0, v2

    #@62
    .line 202
    goto :goto_1

    #@63
    :cond_7
    move v6, v8

    #@64
    .line 217
    goto :goto_2

    #@65
    .line 218
    :cond_8
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    #@68
    .line 219
    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    #@6a
    if-nez v6, :cond_a

    #@6c
    iget v6, v5, Ljava/util/ComparableTimSort;->stackSize:I

    #@6e
    if-ne v6, v7, :cond_9

    #@70
    :goto_3
    if-nez v7, :cond_a

    #@72
    new-instance v6, Ljava/lang/AssertionError;

    #@74
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@77
    throw v6

    #@78
    :cond_9
    move v7, v8

    #@79
    goto :goto_3

    #@7a
    .line 175
    :cond_a
    return-void
.end method
