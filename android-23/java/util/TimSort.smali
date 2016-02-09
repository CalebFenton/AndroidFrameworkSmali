.class Ljava/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    const/4 v3, 0x7

    #@4
    iput v3, p0, Ljava/util/TimSort;->minGallop:I

    #@6
    .line 117
    const/4 v3, 0x0

    #@7
    iput v3, p0, Ljava/util/TimSort;->stackSize:I

    #@9
    .line 135
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@b
    .line 136
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@d
    .line 139
    array-length v0, p1

    #@e
    .line 141
    .local v0, "len":I
    const/16 v3, 0x200

    #@10
    if-ge v0, v3, :cond_0

    #@12
    .line 142
    ushr-int/lit8 v3, v0, 0x1

    #@14
    .line 141
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    #@16
    .line 143
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@18
    .line 155
    const/16 v3, 0x78

    #@1a
    if-ge v0, v3, :cond_1

    #@1c
    const/4 v2, 0x5

    #@1d
    .line 158
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    #@1f
    iput-object v3, p0, Ljava/util/TimSort;->runBase:[I

    #@21
    .line 159
    new-array v3, v2, [I

    #@23
    iput-object v3, p0, Ljava/util/TimSort;->runLen:[I

    #@25
    .line 134
    return-void

    #@26
    .line 142
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "stackLen":I
    :cond_0
    const/16 v3, 0x100

    #@28
    goto :goto_0

    #@29
    .line 156
    .restart local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    const/16 v3, 0x606

    #@2b
    if-ge v0, v3, :cond_2

    #@2d
    const/16 v2, 0xa

    #@2f
    .restart local v2    # "stackLen":I
    goto :goto_1

    #@30
    .line 157
    .end local v2    # "stackLen":I
    :cond_2
    const v3, 0x1d16f

    #@33
    if-ge v0, v3, :cond_3

    #@35
    const/16 v2, 0x13

    #@37
    .restart local v2    # "stackLen":I
    goto :goto_1

    #@38
    .end local v2    # "stackLen":I
    :cond_3
    const/16 v2, 0x28

    #@3a
    .restart local v2    # "stackLen":I
    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 7
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_0

    #@2
    .line 246
    add-int/lit8 p3, p3, 0x1

    #@4
    .line 247
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    #@6
    .line 248
    aget-object v3, p0, p3

    #@8
    .line 251
    .local v3, "pivot":Ljava/lang/Object;, "TT;"
    move v0, p1

    #@9
    .line 252
    .local v0, "left":I
    move v4, p3

    #@a
    .line 259
    .local v4, "right":I
    :goto_1
    if-ge v0, v4, :cond_2

    #@c
    .line 260
    add-int v5, v0, v4

    #@e
    ushr-int/lit8 v1, v5, 0x1

    #@10
    .line 261
    .local v1, "mid":I
    aget-object v5, p0, v1

    #@12
    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@15
    move-result v5

    #@16
    if-gez v5, :cond_1

    #@18
    .line 262
    move v4, v1

    #@19
    goto :goto_1

    #@1a
    .line 264
    :cond_1
    add-int/lit8 v0, v1, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 275
    .end local v1    # "mid":I
    :cond_2
    sub-int v2, p3, v0

    #@1f
    .line 277
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    #@22
    .line 281
    add-int/lit8 v5, v0, 0x1

    #@24
    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 283
    :goto_2
    aput-object v3, p0, v0

    #@29
    .line 247
    add-int/lit8 p3, p3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 278
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    #@2e
    add-int/lit8 v6, v0, 0x1

    #@30
    aget-object v6, p0, v6

    #@32
    aput-object v6, p0, v5

    #@34
    .line 279
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    #@36
    aget-object v6, p0, v0

    #@38
    aput-object v6, p0, v5

    #@3a
    goto :goto_2

    #@3b
    .line 243
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v4    # "right":I
    :cond_3
    return-void

    #@3c
    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 4
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 315
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 316
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    #@4
    .line 317
    const/4 v2, 0x1

    #@5
    return v2

    #@6
    .line 320
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@8
    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    #@a
    aget-object v3, p0, p1

    #@c
    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    if-gez v2, :cond_3

    #@12
    move v0, v1

    #@13
    .line 321
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@15
    aget-object v2, p0, v0

    #@17
    add-int/lit8 v3, v0, -0x1

    #@19
    aget-object v3, p0, v3

    #@1b
    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1e
    move-result v2

    #@1f
    if-gez v2, :cond_1

    #@21
    .line 322
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 323
    :cond_1
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    #@27
    .line 329
    :cond_2
    sub-int v2, v0, p1

    #@29
    return v2

    #@2a
    .line 325
    :goto_1
    if-ge v0, p2, :cond_2

    #@2c
    aget-object v2, p0, v0

    #@2e
    add-int/lit8 v3, v0, -0x1

    #@30
    aget-object v3, p0, v3

    #@32
    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@35
    move-result v2

    #@36
    if-ltz v2, :cond_2

    #@38
    .line 326
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_3
    move v0, v1

    #@3c
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 900
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@2
    array-length v2, v2

    #@3
    if-ge v2, p1, :cond_0

    #@5
    .line 902
    move v1, p1

    #@6
    .line 903
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    #@8
    or-int/2addr v1, v2

    #@9
    .line 904
    shr-int/lit8 v2, v1, 0x2

    #@b
    or-int/2addr v1, v2

    #@c
    .line 905
    shr-int/lit8 v2, v1, 0x4

    #@e
    or-int/2addr v1, v2

    #@f
    .line 906
    shr-int/lit8 v2, v1, 0x8

    #@11
    or-int/2addr v1, v2

    #@12
    .line 907
    shr-int/lit8 v2, v1, 0x10

    #@14
    or-int/2addr v1, v2

    #@15
    .line 908
    add-int/lit8 v1, v1, 0x1

    #@17
    .line 910
    if-gez v1, :cond_1

    #@19
    .line 911
    move v1, p1

    #@1a
    .line 916
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    #@1c
    .line 917
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@1e
    .line 919
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@20
    return-object v2

    #@21
    .line 913
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

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

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    #@1
    .line 524
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    #@2
    .line 525
    .local v3, "ofs":I
    add-int v5, p2, p4

    #@4
    aget-object v5, p1, v5

    #@6
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v5

    #@a
    if-lez v5, :cond_3

    #@c
    .line 527
    sub-int v2, p3, p4

    #@e
    .line 528
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    move-result v5

    #@19
    if-lez v5, :cond_1

    #@1b
    .line 529
    move v0, v3

    #@1c
    .line 530
    mul-int/lit8 v5, v3, 0x2

    #@1e
    add-int/lit8 v3, v5, 0x1

    #@20
    .line 531
    if-gtz v3, :cond_0

    #@22
    .line 532
    move v3, v2

    #@23
    goto :goto_0

    #@24
    .line 534
    :cond_1
    if-le v3, v2, :cond_2

    #@26
    .line 535
    move v3, v2

    #@27
    .line 538
    :cond_2
    add-int/2addr v0, p4

    #@28
    .line 539
    add-int/2addr v3, p4

    #@29
    .line 564
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    .line 565
    :goto_2
    if-ge v0, v3, :cond_8

    #@2d
    .line 566
    sub-int v5, v3, v0

    #@2f
    ushr-int/lit8 v5, v5, 0x1

    #@31
    add-int v1, v0, v5

    #@33
    .line 568
    .local v1, "m":I
    add-int v5, p2, v1

    #@35
    aget-object v5, p1, v5

    #@37
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3a
    move-result v5

    #@3b
    if-lez v5, :cond_7

    #@3d
    .line 569
    add-int/lit8 v0, v1, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 542
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    add-int/lit8 v2, p4, 0x1

    #@42
    .line 543
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4c
    move-result v5

    #@4d
    if-gtz v5, :cond_5

    #@4f
    .line 544
    move v0, v3

    #@50
    .line 545
    mul-int/lit8 v5, v3, 0x2

    #@52
    add-int/lit8 v3, v5, 0x1

    #@54
    .line 546
    if-gtz v3, :cond_4

    #@56
    .line 547
    move v3, v2

    #@57
    goto :goto_3

    #@58
    .line 549
    :cond_5
    if-le v3, v2, :cond_6

    #@5a
    .line 550
    move v3, v2

    #@5b
    .line 553
    :cond_6
    move v4, v0

    #@5c
    .line 554
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@5e
    .line 555
    sub-int v3, p4, v4

    #@60
    goto :goto_1

    #@61
    .line 571
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_7
    move v3, v1

    #@62
    goto :goto_2

    #@63
    .line 574
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 594
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    #@1
    .line 595
    .local v3, "ofs":I
    const/4 v0, 0x0

    #@2
    .line 596
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    #@4
    aget-object v5, p1, v5

    #@6
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v5

    #@a
    if-gez v5, :cond_3

    #@c
    .line 598
    add-int/lit8 v2, p4, 0x1

    #@e
    .line 599
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    move-result v5

    #@19
    if-gez v5, :cond_1

    #@1b
    .line 600
    move v0, v3

    #@1c
    .line 601
    mul-int/lit8 v5, v3, 0x2

    #@1e
    add-int/lit8 v3, v5, 0x1

    #@20
    .line 602
    if-gtz v3, :cond_0

    #@22
    .line 603
    move v3, v2

    #@23
    goto :goto_0

    #@24
    .line 605
    :cond_1
    if-le v3, v2, :cond_2

    #@26
    .line 606
    move v3, v2

    #@27
    .line 609
    :cond_2
    move v4, v0

    #@28
    .line 610
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@2a
    .line 611
    sub-int v3, p4, v4

    #@2c
    .line 635
    .end local v4    # "tmp":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    .line 636
    :goto_2
    if-ge v0, v3, :cond_8

    #@30
    .line 637
    sub-int v5, v3, v0

    #@32
    ushr-int/lit8 v5, v5, 0x1

    #@34
    add-int v1, v0, v5

    #@36
    .line 639
    .local v1, "m":I
    add-int v5, p2, v1

    #@38
    aget-object v5, p1, v5

    #@3a
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3d
    move-result v5

    #@3e
    if-gez v5, :cond_7

    #@40
    .line 640
    move v3, v1

    #@41
    goto :goto_2

    #@42
    .line 614
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    sub-int v2, p3, p4

    #@44
    .line 615
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4e
    move-result v5

    #@4f
    if-ltz v5, :cond_5

    #@51
    .line 616
    move v0, v3

    #@52
    .line 617
    mul-int/lit8 v5, v3, 0x2

    #@54
    add-int/lit8 v3, v5, 0x1

    #@56
    .line 618
    if-gtz v3, :cond_4

    #@58
    .line 619
    move v3, v2

    #@59
    goto :goto_3

    #@5a
    .line 621
    :cond_5
    if-le v3, v2, :cond_6

    #@5c
    .line 622
    move v3, v2

    #@5d
    .line 625
    :cond_6
    add-int/2addr v0, p4

    #@5e
    .line 626
    add-int/2addr v3, p4

    #@5f
    goto :goto_1

    #@60
    .line 642
    .restart local v1    # "m":I
    :cond_7
    add-int/lit8 v0, v1, 0x1

    #@62
    goto :goto_2

    #@63
    .line 645
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private mergeAt(I)V
    .locals 11
    .param p1, "i"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 456
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@3
    aget v2, v0, p1

    #@5
    .line 457
    .local v2, "base1":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@7
    aget v3, v0, p1

    #@9
    .line 458
    .local v3, "len1":I
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@b
    add-int/lit8 v1, p1, 0x1

    #@d
    aget v6, v0, v1

    #@f
    .line 459
    .local v6, "base2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@11
    add-int/lit8 v1, p1, 0x1

    #@13
    aget v7, v0, v1

    #@15
    .line 468
    .local v7, "len2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@17
    add-int v1, v3, v7

    #@19
    aput v1, v0, p1

    #@1b
    .line 469
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@1d
    add-int/lit8 v0, v0, -0x3

    #@1f
    if-ne p1, v0, :cond_0

    #@21
    .line 470
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@23
    add-int/lit8 v1, p1, 0x1

    #@25
    iget-object v5, p0, Ljava/util/TimSort;->runBase:[I

    #@27
    add-int/lit8 v8, p1, 0x2

    #@29
    aget v5, v5, v8

    #@2b
    aput v5, v0, v1

    #@2d
    .line 471
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@2f
    add-int/lit8 v1, p1, 0x1

    #@31
    iget-object v5, p0, Ljava/util/TimSort;->runLen:[I

    #@33
    add-int/lit8 v8, p1, 0x2

    #@35
    aget v5, v5, v8

    #@37
    aput v5, v0, v1

    #@39
    .line 473
    :cond_0
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@3b
    add-int/lit8 v0, v0, -0x1

    #@3d
    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    #@3f
    .line 479
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@41
    aget-object v0, v0, v6

    #@43
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@45
    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@47
    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@4a
    move-result v10

    #@4b
    .line 481
    .local v10, "k":I
    add-int/2addr v2, v10

    #@4c
    .line 482
    sub-int/2addr v3, v10

    #@4d
    .line 483
    if-nez v3, :cond_1

    #@4f
    .line 484
    return-void

    #@50
    .line 490
    :cond_1
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@52
    add-int v1, v2, v3

    #@54
    add-int/lit8 v1, v1, -0x1

    #@56
    aget-object v4, v0, v1

    #@58
    iget-object v5, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@5a
    add-int/lit8 v8, v7, -0x1

    #@5c
    iget-object v9, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@5e
    invoke-static/range {v4 .. v9}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@61
    move-result v7

    #@62
    .line 492
    if-nez v7, :cond_2

    #@64
    .line 493
    return-void

    #@65
    .line 496
    :cond_2
    if-gt v3, v7, :cond_3

    #@67
    .line 497
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeLo(IIII)V

    #@6a
    .line 451
    :goto_0
    return-void

    #@6b
    .line 499
    :cond_3
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeHi(IIII)V

    #@6e
    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    #@0
    .prologue
    .line 399
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_3

    #@5
    .line 400
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 401
    .local v0, "n":I
    if-lez v0, :cond_2

    #@b
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    #@d
    add-int/lit8 v2, v0, -0x1

    #@f
    aget v1, v1, v2

    #@11
    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    #@13
    aget v2, v2, v0

    #@15
    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    #@17
    add-int/lit8 v4, v0, 0x1

    #@19
    aget v3, v3, v4

    #@1b
    add-int/2addr v2, v3

    #@1c
    if-gt v1, v2, :cond_2

    #@1e
    .line 403
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    #@20
    add-int/lit8 v2, v0, -0x1

    #@22
    aget v1, v1, v2

    #@24
    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    #@26
    add-int/lit8 v3, v0, 0x1

    #@28
    aget v2, v2, v3

    #@2a
    if-ge v1, v2, :cond_1

    #@2c
    .line 406
    add-int/lit8 v1, v0, -0x1

    #@2e
    invoke-direct {p0, v1}, Ljava/util/TimSort;->mergeAt(I)V

    #@31
    .line 412
    const/4 v1, 0x2

    #@32
    if-le v0, v1, :cond_0

    #@34
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    #@36
    add-int/lit8 v2, v0, -0x3

    #@38
    aget v1, v1, v2

    #@3a
    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    #@3c
    add-int/lit8 v3, v0, -0x2

    #@3e
    aget v2, v2, v3

    #@40
    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    #@42
    add-int/lit8 v4, v0, -0x1

    #@44
    aget v3, v3, v4

    #@46
    add-int/2addr v2, v3

    #@47
    if-gt v1, v2, :cond_0

    #@49
    .line 415
    add-int/lit8 v1, v0, -0x1

    #@4b
    invoke-direct {p0, v1}, Ljava/util/TimSort;->mergeAt(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 421
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    #@52
    goto :goto_0

    #@53
    .line 423
    :cond_2
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    #@55
    aget v1, v1, v0

    #@57
    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    #@59
    add-int/lit8 v3, v0, 0x1

    #@5b
    aget v2, v2, v3

    #@5d
    if-gt v1, v2, :cond_3

    #@5f
    .line 424
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    #@62
    goto :goto_0

    #@63
    .line 398
    .end local v0    # "n":I
    :cond_3
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    #@0
    .prologue
    .line 436
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_1

    #@5
    .line 437
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 438
    .local v0, "n":I
    if-lez v0, :cond_0

    #@b
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    #@d
    add-int/lit8 v2, v0, -0x1

    #@f
    aget v1, v1, v2

    #@11
    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    aget v2, v2, v3

    #@17
    if-ge v1, v2, :cond_0

    #@19
    .line 439
    add-int/lit8 v0, v0, -0x1

    #@1b
    .line 440
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 435
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    #@0
    .prologue
    .line 785
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@4
    .line 786
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@6
    move/from16 v1, p4

    #@8
    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@b
    move-result-object v9

    #@c
    .line 787
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    #@d
    move/from16 v0, p3

    #@f
    move/from16 v1, p4

    #@11
    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 789
    add-int v2, p1, p2

    #@16
    add-int/lit8 v16, v2, -0x1

    #@18
    .line 790
    .local v16, "cursor1":I
    add-int/lit8 v18, p4, -0x1

    #@1a
    .line 791
    .local v18, "cursor2":I
    add-int v2, p3, p4

    #@1c
    add-int/lit8 v20, v2, -0x1

    #@1e
    .line 794
    .local v20, "dest":I
    add-int/lit8 v21, v20, -0x1

    #@20
    .end local v20    # "dest":I
    .local v21, "dest":I
    add-int/lit8 v17, v16, -0x1

    #@22
    .end local v16    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v2, v3, v16

    #@24
    aput-object v2, v3, v20

    #@26
    .line 795
    add-int/lit8 p2, p2, -0x1

    #@28
    if-nez p2, :cond_0

    #@2a
    .line 796
    add-int/lit8 v2, p4, -0x1

    #@2c
    sub-int v2, v21, v2

    #@2e
    const/4 v4, 0x0

    #@2f
    move/from16 v0, p4

    #@31
    invoke-static {v9, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    .line 797
    return-void

    #@35
    .line 799
    :cond_0
    const/4 v2, 0x1

    #@36
    move/from16 v0, p4

    #@38
    if-ne v0, v2, :cond_1

    #@3a
    .line 800
    sub-int v20, v21, p2

    #@3c
    .line 801
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v16, v17, p2

    #@3e
    .line 802
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    add-int/lit8 v2, v16, 0x1

    #@40
    add-int/lit8 v4, v20, 0x1

    #@42
    move/from16 v0, p2

    #@44
    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    .line 803
    aget-object v2, v9, v18

    #@49
    aput-object v2, v3, v20

    #@4b
    .line 804
    return-void

    #@4c
    .line 807
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_1
    move-object/from16 v0, p0

    #@4e
    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@50
    .line 808
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    #@52
    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    #@54
    move/from16 v22, v0

    #@56
    .local v22, "minGallop":I
    move/from16 v20, v21

    #@58
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@5a
    .line 811
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_0
    const/4 v14, 0x0

    #@5b
    .line 812
    .local v14, "count1":I
    const/4 v15, 0x0

    #@5c
    .line 820
    .local v15, "count2":I
    :cond_2
    aget-object v2, v9, v18

    #@5e
    aget-object v4, v3, v16

    #@60
    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@63
    move-result v2

    #@64
    if-gez v2, :cond_5

    #@66
    .line 821
    add-int/lit8 v21, v20, -0x1

    #@68
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    #@6a
    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    #@6c
    aput-object v2, v3, v20

    #@6e
    .line 822
    add-int/lit8 v14, v14, 0x1

    #@70
    .line 823
    const/4 v15, 0x0

    #@71
    .line 824
    add-int/lit8 p2, p2, -0x1

    #@73
    if-nez p2, :cond_11

    #@75
    move/from16 v20, v21

    #@77
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@79
    .line 873
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    #@7a
    move/from16 v0, v22

    #@7c
    if-ge v0, v2, :cond_4

    #@7e
    const/16 v22, 0x1

    #@80
    .end local v22    # "minGallop":I
    :cond_4
    move/from16 v0, v22

    #@82
    move-object/from16 v1, p0

    #@84
    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    #@86
    .line 875
    const/4 v2, 0x1

    #@87
    move/from16 v0, p4

    #@89
    if-ne v0, v2, :cond_e

    #@8b
    .line 877
    sub-int v20, v20, p2

    #@8d
    .line 878
    sub-int v16, v16, p2

    #@8f
    .line 879
    add-int/lit8 v2, v16, 0x1

    #@91
    add-int/lit8 v4, v20, 0x1

    #@93
    move/from16 v0, p2

    #@95
    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@98
    .line 880
    aget-object v2, v9, v18

    #@9a
    aput-object v2, v3, v20

    #@9c
    .line 781
    :goto_2
    return-void

    #@9d
    .line 827
    .restart local v22    # "minGallop":I
    :cond_5
    add-int/lit8 v21, v20, -0x1

    #@9f
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    #@a1
    .end local v18    # "cursor2":I
    .local v19, "cursor2":I
    aget-object v2, v9, v18

    #@a3
    aput-object v2, v3, v20

    #@a5
    .line 828
    add-int/lit8 v15, v15, 0x1

    #@a7
    .line 829
    const/4 v14, 0x0

    #@a8
    .line 830
    add-int/lit8 p4, p4, -0x1

    #@aa
    const/4 v2, 0x1

    #@ab
    move/from16 v0, p4

    #@ad
    if-ne v0, v2, :cond_6

    #@af
    move/from16 v20, v21

    #@b1
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@b3
    .line 831
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_1

    #@b4
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_6
    move/from16 v20, v21

    #@b6
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@b8
    .line 833
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_3
    or-int v2, v14, v15

    #@ba
    move/from16 v0, v22

    #@bc
    if-lt v2, v0, :cond_2

    #@be
    .line 842
    :goto_4
    aget-object v2, v9, v18

    #@c0
    add-int/lit8 v6, p2, -0x1

    #@c2
    move/from16 v4, p1

    #@c4
    move/from16 v5, p2

    #@c6
    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@c9
    move-result v2

    #@ca
    sub-int v14, p2, v2

    #@cc
    .line 843
    if-eqz v14, :cond_7

    #@ce
    .line 844
    sub-int v20, v20, v14

    #@d0
    .line 845
    sub-int v16, v16, v14

    #@d2
    .line 846
    sub-int p2, p2, v14

    #@d4
    .line 847
    add-int/lit8 v2, v16, 0x1

    #@d6
    add-int/lit8 v4, v20, 0x1

    #@d8
    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@db
    .line 848
    if-eqz p2, :cond_3

    #@dd
    .line 851
    :cond_7
    add-int/lit8 v21, v20, -0x1

    #@df
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    #@e1
    .end local v18    # "cursor2":I
    .restart local v19    # "cursor2":I
    aget-object v2, v9, v18

    #@e3
    aput-object v2, v3, v20

    #@e5
    .line 852
    add-int/lit8 p4, p4, -0x1

    #@e7
    const/4 v2, 0x1

    #@e8
    move/from16 v0, p4

    #@ea
    if-ne v0, v2, :cond_8

    #@ec
    move/from16 v20, v21

    #@ee
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@f0
    .line 853
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_1

    #@f1
    .line 855
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_8
    aget-object v8, v3, v16

    #@f3
    add-int/lit8 v12, p4, -0x1

    #@f5
    const/4 v10, 0x0

    #@f6
    move/from16 v11, p4

    #@f8
    move-object v13, v7

    #@f9
    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@fc
    move-result v2

    #@fd
    sub-int v15, p4, v2

    #@ff
    .line 856
    if-eqz v15, :cond_10

    #@101
    .line 857
    sub-int v20, v21, v15

    #@103
    .line 858
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v18, v19, v15

    #@105
    .line 859
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    sub-int p4, p4, v15

    #@107
    .line 860
    add-int/lit8 v2, v18, 0x1

    #@109
    add-int/lit8 v4, v20, 0x1

    #@10b
    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10e
    .line 861
    const/4 v2, 0x1

    #@10f
    move/from16 v0, p4

    #@111
    if-le v0, v2, :cond_3

    #@113
    .line 864
    :goto_5
    add-int/lit8 v21, v20, -0x1

    #@115
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    #@117
    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    #@119
    aput-object v2, v3, v20

    #@11b
    .line 865
    add-int/lit8 p2, p2, -0x1

    #@11d
    if-nez p2, :cond_9

    #@11f
    move/from16 v20, v21

    #@121
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@123
    .line 866
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_1

    #@125
    .line 867
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_9
    add-int/lit8 v22, v22, -0x1

    #@127
    .line 868
    const/4 v2, 0x7

    #@128
    if-lt v14, v2, :cond_a

    #@12a
    const/4 v2, 0x1

    #@12b
    move v4, v2

    #@12c
    :goto_6
    const/4 v2, 0x7

    #@12d
    if-lt v15, v2, :cond_b

    #@12f
    const/4 v2, 0x1

    #@130
    :goto_7
    or-int/2addr v2, v4

    #@131
    if-eqz v2, :cond_c

    #@133
    move/from16 v20, v21

    #@135
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@137
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto :goto_4

    #@138
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_a
    const/4 v2, 0x0

    #@139
    move v4, v2

    #@13a
    goto :goto_6

    #@13b
    :cond_b
    const/4 v2, 0x0

    #@13c
    goto :goto_7

    #@13d
    .line 869
    :cond_c
    if-gez v22, :cond_d

    #@13f
    .line 870
    const/16 v22, 0x0

    #@141
    .line 871
    :cond_d
    add-int/lit8 v22, v22, 0x2

    #@143
    move/from16 v20, v21

    #@145
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@147
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_0

    #@149
    .line 881
    .end local v22    # "minGallop":I
    :cond_e
    if-nez p4, :cond_f

    #@14b
    .line 882
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14d
    .line 883
    const-string/jumbo v4, "Comparison method violates its general contract!"

    #@150
    .line 882
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@153
    throw v2

    #@154
    .line 887
    :cond_f
    add-int/lit8 v2, p4, -0x1

    #@156
    sub-int v2, v20, v2

    #@158
    const/4 v4, 0x0

    #@159
    move/from16 v0, p4

    #@15b
    invoke-static {v9, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15e
    goto/16 :goto_2

    #@160
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    .restart local v22    # "minGallop":I
    :cond_10
    move/from16 v20, v21

    #@162
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@164
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_5

    #@165
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_11
    move/from16 v20, v21

    #@167
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@169
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 22
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    #@0
    .prologue
    .line 668
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v10, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@4
    .line 669
    .local v10, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@6
    move/from16 v1, p2

    #@8
    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    .line 670
    .local v4, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@d
    move/from16 v0, p1

    #@f
    move/from16 v1, p2

    #@11
    invoke-static {v10, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 672
    const/4 v5, 0x0

    #@15
    .line 673
    .local v5, "cursor1":I
    move/from16 v11, p3

    #@17
    .line 674
    .local v11, "cursor2":I
    move/from16 v19, p1

    #@19
    .line 677
    .local v19, "dest":I
    add-int/lit8 v20, v19, 0x1

    #@1b
    .end local v19    # "dest":I
    .local v20, "dest":I
    add-int/lit8 v18, v11, 0x1

    #@1d
    .end local v11    # "cursor2":I
    .local v18, "cursor2":I
    aget-object v3, v10, v11

    #@1f
    aput-object v3, v10, v19

    #@21
    .line 678
    add-int/lit8 p4, p4, -0x1

    #@23
    if-nez p4, :cond_0

    #@25
    .line 679
    move/from16 v0, v20

    #@27
    move/from16 v1, p2

    #@29
    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 680
    return-void

    #@2d
    .line 682
    :cond_0
    const/4 v3, 0x1

    #@2e
    move/from16 v0, p2

    #@30
    if-ne v0, v3, :cond_1

    #@32
    .line 683
    move/from16 v0, v18

    #@34
    move/from16 v1, v20

    #@36
    move/from16 v2, p4

    #@38
    invoke-static {v10, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 684
    add-int v3, v20, p4

    #@3d
    aget-object v6, v4, v5

    #@3f
    aput-object v6, v10, v3

    #@41
    .line 685
    return-void

    #@42
    .line 688
    :cond_1
    move-object/from16 v0, p0

    #@44
    iget-object v8, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@46
    .line 689
    .local v8, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    #@48
    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    #@4a
    move/from16 v21, v0

    #@4c
    .local v21, "minGallop":I
    move/from16 v19, v20

    #@4e
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    #@50
    .line 692
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :goto_0
    const/4 v15, 0x0

    #@51
    .line 693
    .local v15, "count1":I
    const/16 v16, 0x0

    #@53
    .line 701
    .local v16, "count2":I
    :cond_2
    aget-object v3, v10, v11

    #@55
    aget-object v6, v4, v5

    #@57
    invoke-interface {v8, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5a
    move-result v3

    #@5b
    if-gez v3, :cond_5

    #@5d
    .line 702
    add-int/lit8 v20, v19, 0x1

    #@5f
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v18, v11, 0x1

    #@61
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    aget-object v3, v10, v11

    #@63
    aput-object v3, v10, v19

    #@65
    .line 703
    add-int/lit8 v16, v16, 0x1

    #@67
    .line 704
    const/4 v15, 0x0

    #@68
    .line 705
    add-int/lit8 p4, p4, -0x1

    #@6a
    if-nez p4, :cond_11

    #@6c
    move/from16 v19, v20

    #@6e
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    #@70
    .line 754
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :cond_3
    :goto_1
    const/4 v3, 0x1

    #@71
    move/from16 v0, v21

    #@73
    if-ge v0, v3, :cond_4

    #@75
    const/16 v21, 0x1

    #@77
    .end local v21    # "minGallop":I
    :cond_4
    move/from16 v0, v21

    #@79
    move-object/from16 v1, p0

    #@7b
    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    #@7d
    .line 756
    const/4 v3, 0x1

    #@7e
    move/from16 v0, p2

    #@80
    if-ne v0, v3, :cond_e

    #@82
    .line 758
    move/from16 v0, v19

    #@84
    move/from16 v1, p4

    #@86
    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@89
    .line 759
    add-int v3, v19, p4

    #@8b
    aget-object v6, v4, v5

    #@8d
    aput-object v6, v10, v3

    #@8f
    .line 664
    :goto_2
    return-void

    #@90
    .line 708
    .restart local v21    # "minGallop":I
    :cond_5
    add-int/lit8 v20, v19, 0x1

    #@92
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v17, v5, 0x1

    #@94
    .end local v5    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v3, v4, v5

    #@96
    aput-object v3, v10, v19

    #@98
    .line 709
    add-int/lit8 v15, v15, 0x1

    #@9a
    .line 710
    const/16 v16, 0x0

    #@9c
    .line 711
    add-int/lit8 p2, p2, -0x1

    #@9e
    const/4 v3, 0x1

    #@9f
    move/from16 v0, p2

    #@a1
    if-ne v0, v3, :cond_6

    #@a3
    move/from16 v19, v20

    #@a5
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    #@a7
    .line 712
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto :goto_1

    #@a8
    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_6
    move/from16 v19, v20

    #@aa
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    #@ac
    .line 714
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_3
    or-int v3, v15, v16

    #@ae
    move/from16 v0, v21

    #@b0
    if-lt v3, v0, :cond_2

    #@b2
    move/from16 v18, v11

    #@b4
    .line 723
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_4
    aget-object v3, v10, v18

    #@b6
    const/4 v7, 0x0

    #@b7
    move/from16 v6, p2

    #@b9
    invoke-static/range {v3 .. v8}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@bc
    move-result v15

    #@bd
    .line 724
    if-eqz v15, :cond_7

    #@bf
    .line 725
    move/from16 v0, v19

    #@c1
    invoke-static {v4, v5, v10, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c4
    .line 726
    add-int v19, v19, v15

    #@c6
    .line 727
    add-int/2addr v5, v15

    #@c7
    .line 728
    sub-int p2, p2, v15

    #@c9
    .line 729
    const/4 v3, 0x1

    #@ca
    move/from16 v0, p2

    #@cc
    if-gt v0, v3, :cond_7

    #@ce
    move/from16 v11, v18

    #@d0
    .line 730
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto :goto_1

    #@d1
    .line 732
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    :cond_7
    add-int/lit8 v20, v19, 0x1

    #@d3
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v11, v18, 0x1

    #@d5
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    aget-object v3, v10, v18

    #@d7
    aput-object v3, v10, v19

    #@d9
    .line 733
    add-int/lit8 p4, p4, -0x1

    #@db
    if-nez p4, :cond_8

    #@dd
    move/from16 v19, v20

    #@df
    .line 734
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    goto :goto_1

    #@e0
    .line 736
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    :cond_8
    aget-object v9, v4, v5

    #@e2
    const/4 v13, 0x0

    #@e3
    move/from16 v12, p4

    #@e5
    move-object v14, v8

    #@e6
    invoke-static/range {v9 .. v14}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@e9
    move-result v16

    #@ea
    .line 737
    if-eqz v16, :cond_10

    #@ec
    .line 738
    move/from16 v0, v20

    #@ee
    move/from16 v1, v16

    #@f0
    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f3
    .line 739
    add-int v19, v20, v16

    #@f5
    .line 740
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    add-int v11, v11, v16

    #@f7
    .line 741
    sub-int p4, p4, v16

    #@f9
    .line 742
    if-eqz p4, :cond_3

    #@fb
    .line 745
    :goto_5
    add-int/lit8 v20, v19, 0x1

    #@fd
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v17, v5, 0x1

    #@ff
    .end local v5    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v3, v4, v5

    #@101
    aput-object v3, v10, v19

    #@103
    .line 746
    add-int/lit8 p2, p2, -0x1

    #@105
    const/4 v3, 0x1

    #@106
    move/from16 v0, p2

    #@108
    if-ne v0, v3, :cond_9

    #@10a
    move/from16 v19, v20

    #@10c
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    #@10e
    .line 747
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    #@110
    .line 748
    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_9
    add-int/lit8 v21, v21, -0x1

    #@112
    .line 749
    const/4 v3, 0x7

    #@113
    if-lt v15, v3, :cond_a

    #@115
    const/4 v3, 0x1

    #@116
    move v6, v3

    #@117
    :goto_6
    const/4 v3, 0x7

    #@118
    move/from16 v0, v16

    #@11a
    if-lt v0, v3, :cond_b

    #@11c
    const/4 v3, 0x1

    #@11d
    :goto_7
    or-int/2addr v3, v6

    #@11e
    if-eqz v3, :cond_c

    #@120
    move/from16 v19, v20

    #@122
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v18, v11

    #@124
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    move/from16 v5, v17

    #@126
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto :goto_4

    #@127
    .end local v5    # "cursor1":I
    .end local v18    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v11    # "cursor2":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_a
    const/4 v3, 0x0

    #@128
    move v6, v3

    #@129
    goto :goto_6

    #@12a
    :cond_b
    const/4 v3, 0x0

    #@12b
    goto :goto_7

    #@12c
    .line 750
    :cond_c
    if-gez v21, :cond_d

    #@12e
    .line 751
    const/16 v21, 0x0

    #@130
    .line 752
    :cond_d
    add-int/lit8 v21, v21, 0x2

    #@132
    move/from16 v19, v20

    #@134
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    #@136
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_0

    #@138
    .line 760
    .end local v21    # "minGallop":I
    :cond_e
    if-nez p2, :cond_f

    #@13a
    .line 761
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13c
    .line 762
    const-string/jumbo v6, "Comparison method violates its general contract!"

    #@13f
    .line 761
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@142
    throw v3

    #@143
    .line 766
    :cond_f
    move/from16 v0, v19

    #@145
    move/from16 v1, p2

    #@147
    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14a
    goto/16 :goto_2

    #@14c
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    .restart local v21    # "minGallop":I
    :cond_10
    move/from16 v19, v20

    #@14e
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    goto :goto_5

    #@14f
    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_11
    move/from16 v19, v20

    #@151
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    #@153
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 367
    const/4 v0, 0x0

    #@1
    .line 368
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 369
    and-int/lit8 v1, p0, 0x1

    #@7
    or-int/2addr v0, v1

    #@8
    .line 370
    shr-int/lit8 p0, p0, 0x1

    #@a
    goto :goto_0

    #@b
    .line 372
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
    .line 382
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@2
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@4
    aput p1, v0, v1

    #@6
    .line 383
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@8
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@a
    aput p2, v0, v1

    #@c
    .line 384
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    #@12
    .line 381
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 340
    add-int/lit8 p2, p2, -0x1

    #@2
    move v0, p2

    #@3
    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    #@4
    .line 341
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 342
    aget-object v2, p0, v1

    #@8
    .line 343
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    #@a
    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    #@c
    aput-object v3, p0, v1

    #@e
    .line 344
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
    .line 339
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 8
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_0

    #@2
    .line 174
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    #@5
    .line 175
    return-void

    #@6
    .line 178
    :cond_0
    array-length v6, p0

    #@7
    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    #@a
    .line 179
    sub-int v3, p2, p1

    #@c
    .line 180
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    #@d
    if-ge v3, v6, :cond_1

    #@f
    .line 181
    return-void

    #@10
    .line 184
    :cond_1
    const/16 v6, 0x20

    #@12
    if-ge v3, v6, :cond_2

    #@14
    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    #@17
    move-result v1

    #@18
    .line 186
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    #@1a
    invoke-static {p0, p1, p2, v6, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@1d
    .line 187
    return-void

    #@1e
    .line 195
    .end local v1    # "initRunLen":I
    :cond_2
    new-instance v5, Ljava/util/TimSort;

    #@20
    invoke-direct {v5, p0, p3}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@23
    .line 196
    .local v5, "ts":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    invoke-static {v3}, Ljava/util/TimSort;->minRunLength(I)I

    #@26
    move-result v2

    #@27
    .line 199
    .local v2, "minRun":I
    :cond_3
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    #@2a
    move-result v4

    #@2b
    .line 202
    .local v4, "runLen":I
    if-ge v4, v2, :cond_4

    #@2d
    .line 203
    if-gt v3, v2, :cond_5

    #@2f
    move v0, v3

    #@30
    .line 204
    .local v0, "force":I
    :goto_0
    add-int v6, p1, v0

    #@32
    add-int v7, p1, v4

    #@34
    invoke-static {p0, p1, v6, v7, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@37
    .line 205
    move v4, v0

    #@38
    .line 209
    .end local v0    # "force":I
    :cond_4
    invoke-direct {v5, p1, v4}, Ljava/util/TimSort;->pushRun(II)V

    #@3b
    .line 210
    invoke-direct {v5}, Ljava/util/TimSort;->mergeCollapse()V

    #@3e
    .line 213
    add-int/2addr p1, v4

    #@3f
    .line 214
    sub-int/2addr v3, v4

    #@40
    .line 215
    if-nez v3, :cond_3

    #@42
    .line 219
    invoke-direct {v5}, Ljava/util/TimSort;->mergeForceCollapse()V

    #@45
    .line 172
    return-void

    #@46
    .line 203
    :cond_5
    move v0, v2

    #@47
    .restart local v0    # "force":I
    goto :goto_0
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@5
    .line 168
    return-void
.end method
