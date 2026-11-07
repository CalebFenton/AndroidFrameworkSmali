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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final blacklist MIN_GALLOP:I = 0x7

.field private static final blacklist MIN_MERGE:I = 0x20


# instance fields
.field private final blacklist a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final blacklist c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private blacklist minGallop:I

.field private final blacklist runBase:[I

.field private final blacklist runLen:[I

.field private blacklist stackSize:I

.field private blacklist tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist tmpBase:I

.field private blacklist tmpLen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 62
    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .registers 11
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "work":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x7

    iput v0, p0, Ljava/util/TimSort;->minGallop:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 147
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 151
    array-length v1, p1

    .line 152
    .local v1, "len":I
    const/16 v2, 0x200

    if-ge v1, v2, :cond_15

    .line 153
    ushr-int/lit8 v2, v1, 0x1

    goto :goto_17

    :cond_15
    const/16 v2, 0x100

    .line 154
    .local v2, "tlen":I
    :goto_17
    if-eqz p3, :cond_28

    if-lt p5, v2, :cond_28

    add-int v3, p4, v2

    array-length v4, p3

    if-le v3, v4, :cond_21

    goto :goto_28

    .line 163
    :cond_21
    iput-object p3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 164
    iput p4, p0, Ljava/util/TimSort;->tmpBase:I

    .line 165
    iput p5, p0, Ljava/util/TimSort;->tmpLen:I

    goto :goto_3e

    .line 156
    :cond_28
    :goto_28
    nop

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 158
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 159
    iput v0, p0, Ljava/util/TimSort;->tmpBase:I

    .line 160
    iput v2, p0, Ljava/util/TimSort;->tmpLen:I

    .line 161
    .end local v3    # "newArray":[Ljava/lang/Object;, "[TT;"
    nop

    .line 182
    :goto_3e
    const/16 v0, 0x78

    if-ge v1, v0, :cond_44

    const/4 v0, 0x5

    goto :goto_55

    .line 183
    :cond_44
    const/16 v0, 0x606

    if-ge v1, v0, :cond_4b

    const/16 v0, 0xa

    goto :goto_55

    .line 184
    :cond_4b
    const v0, 0x1d16f

    if-ge v1, v0, :cond_53

    const/16 v0, 0x18

    goto :goto_55

    :cond_53
    const/16 v0, 0x31

    :goto_55
    nop

    .line 185
    .local v0, "stackLen":I
    new-array v3, v0, [I

    iput-object v3, p0, Ljava/util/TimSort;->runBase:[I

    .line 186
    new-array v3, v0, [I

    iput-object v3, p0, Ljava/util/TimSort;->runLen:[I

    .line 187
    return-void
.end method

.method private static blacklist binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .registers 11
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 279
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 280
    if-ne p3, p1, :cond_5

    .line 281
    add-int/lit8 p3, p3, 0x1

    .line 282
    :cond_5
    :goto_5
    if-ge p3, p2, :cond_3f

    .line 283
    aget-object v0, p0, p3

    .line 286
    .local v0, "pivot":Ljava/lang/Object;, "TT;"
    move v1, p1

    .line 287
    .local v1, "left":I
    move v2, p3

    .line 288
    .local v2, "right":I
    nop

    .line 294
    :goto_c
    if-ge v1, v2, :cond_1f

    .line 295
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 296
    .local v3, "mid":I
    aget-object v4, p0, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1c

    .line 297
    move v2, v3

    goto :goto_1e

    .line 299
    :cond_1c
    add-int/lit8 v1, v3, 0x1

    .line 300
    .end local v3    # "mid":I
    :goto_1e
    goto :goto_c

    .line 301
    :cond_1f
    nop

    .line 310
    sub-int v3, p3, v1

    .line 312
    .local v3, "n":I
    packed-switch v3, :pswitch_data_40

    .line 316
    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v1, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 313
    :pswitch_2b
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, p0, v4

    .line 314
    :pswitch_33
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, p0, v4

    .line 315
    nop

    .line 318
    :goto_3a
    aput-object v0, p0, v1

    .line 282
    .end local v0    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "n":I
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 320
    :cond_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2b
    .end packed-switch
.end method

.method private static blacklist countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 7
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 349
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 350
    add-int/lit8 v0, p1, 0x1

    .line 351
    .local v0, "runHi":I
    if-ne v0, p2, :cond_7

    .line 352
    const/4 v1, 0x1

    return v1

    .line 355
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v0, p0, v0

    aget-object v2, p0, p1

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_28

    .line 356
    :goto_13
    if-ge v1, p2, :cond_24

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_24

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 358
    :cond_24
    invoke-static {p0, p1, v1}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_39

    .line 360
    :cond_28
    :goto_28
    if-ge v1, p2, :cond_39

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_39

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 364
    :cond_39
    :goto_39
    sub-int v0, v1, p1

    return v0
.end method

.method private blacklist ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 921
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget v0, p0, Ljava/util/TimSort;->tmpLen:I

    if-ge v0, p1, :cond_30

    .line 923
    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    ushr-int/2addr v0, v1

    .line 924
    .local v0, "newSize":I
    add-int/lit8 v0, v0, 0x1

    .line 926
    if-gez v0, :cond_10

    .line 927
    move v0, p1

    goto :goto_19

    .line 929
    :cond_10
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 932
    :goto_19
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 933
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 934
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 935
    iput v0, p0, Ljava/util/TimSort;->tmpLen:I

    .line 936
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/TimSort;->tmpBase:I

    .line 938
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_30
    iget-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 10
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 543
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "lastOfs":I
    const/4 v1, 0x1

    .line 546
    .local v1, "ofs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2b

    .line 548
    sub-int v2, p3, p4

    .line 549
    .local v2, "maxOfs":I
    :cond_f
    :goto_f
    if-ge v1, v2, :cond_25

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_25

    .line 550
    move v0, v1

    .line 551
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 552
    if-gtz v1, :cond_f

    .line 553
    move v1, v2

    goto :goto_f

    .line 555
    :cond_25
    if-le v1, v2, :cond_28

    .line 556
    move v1, v2

    .line 559
    :cond_28
    add-int/2addr v0, p4

    .line 560
    add-int/2addr v1, p4

    .line 561
    .end local v2    # "maxOfs":I
    goto :goto_4b

    .line 563
    :cond_2b
    add-int/lit8 v2, p4, 0x1

    .line 564
    .restart local v2    # "maxOfs":I
    :cond_2d
    :goto_2d
    if-ge v1, v2, :cond_43

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_43

    .line 565
    move v0, v1

    .line 566
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 567
    if-gtz v1, :cond_2d

    .line 568
    move v1, v2

    goto :goto_2d

    .line 570
    :cond_43
    if-le v1, v2, :cond_46

    .line 571
    move v1, v2

    .line 574
    :cond_46
    move v3, v0

    .line 575
    .local v3, "tmp":I
    sub-int v0, p4, v1

    .line 576
    sub-int v1, p4, v3

    .line 578
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    :goto_4b
    nop

    .line 585
    add-int/lit8 v0, v0, 0x1

    .line 586
    :goto_4e
    if-ge v0, v1, :cond_64

    .line 587
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 589
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_62

    .line 590
    add-int/lit8 v0, v2, 0x1

    goto :goto_63

    .line 592
    :cond_62
    move v1, v2

    .line 593
    .end local v2    # "m":I
    :goto_63
    goto :goto_4e

    .line 594
    :cond_64
    nop

    .line 595
    return v1
.end method

.method private static blacklist gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 10
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 613
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    .line 615
    const/4 v0, 0x1

    .line 616
    .local v0, "ofs":I
    const/4 v1, 0x0

    .line 617
    .local v1, "lastOfs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2e

    .line 619
    add-int/lit8 v2, p4, 0x1

    .line 620
    .local v2, "maxOfs":I
    :cond_f
    :goto_f
    if-ge v0, v2, :cond_25

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_25

    .line 621
    move v1, v0

    .line 622
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 623
    if-gtz v0, :cond_f

    .line 624
    move v0, v2

    goto :goto_f

    .line 626
    :cond_25
    if-le v0, v2, :cond_28

    .line 627
    move v0, v2

    .line 630
    :cond_28
    move v3, v1

    .line 631
    .local v3, "tmp":I
    sub-int v1, p4, v0

    .line 632
    sub-int v0, p4, v3

    .line 633
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    goto :goto_4b

    .line 635
    :cond_2e
    sub-int v2, p3, p4

    .line 636
    .restart local v2    # "maxOfs":I
    :cond_30
    :goto_30
    if-ge v0, v2, :cond_46

    add-int v3, p2, p4

    add-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_46

    .line 637
    move v1, v0

    .line 638
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 639
    if-gtz v0, :cond_30

    .line 640
    move v0, v2

    goto :goto_30

    .line 642
    :cond_46
    if-le v0, v2, :cond_49

    .line 643
    move v0, v2

    .line 646
    :cond_49
    add-int/2addr v1, p4

    .line 647
    add-int/2addr v0, p4

    .line 649
    .end local v2    # "maxOfs":I
    :goto_4b
    nop

    .line 656
    add-int/lit8 v1, v1, 0x1

    .line 657
    :goto_4e
    if-ge v1, v0, :cond_64

    .line 658
    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 660
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_61

    .line 661
    move v0, v2

    goto :goto_63

    .line 663
    :cond_61
    add-int/lit8 v1, v2, 0x1

    .line 664
    .end local v2    # "m":I
    :goto_63
    goto :goto_4e

    .line 665
    :cond_64
    nop

    .line 666
    return v0
.end method

.method private blacklist mergeAt(I)V
    .registers 13
    .param p1, "i"    # I

    .line 473
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    nop

    .line 474
    nop

    .line 475
    nop

    .line 477
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    aget v3, v0, p1

    .line 478
    .local v3, "base1":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aget v4, v0, p1

    .line 479
    .local v4, "len1":I
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 480
    .local v7, "base2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v8, v0, v1

    .line 481
    .local v8, "len2":I
    nop

    .line 482
    nop

    .line 489
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int v1, v4, v8

    aput v1, v0, p1

    .line 490
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_3d

    .line 491
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v2, v2, v5

    aput v2, v0, v1

    .line 492
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v2, v2, v5

    aput v2, v0, v1

    .line 494
    :cond_3d
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 500
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v1, v0, v7

    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v1 .. v6}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    .line 501
    .local v0, "k":I
    nop

    .line 502
    add-int/2addr v3, v0

    .line 503
    sub-int/2addr v4, v0

    .line 504
    if-nez v4, :cond_56

    .line 505
    return-void

    .line 511
    :cond_56
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int v2, v3, v4

    add-int/lit8 v2, v2, -0x1

    aget-object v5, v1, v2

    iget-object v6, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v9, v8, -0x1

    iget-object v10, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v5 .. v10}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    .line 512
    .end local v8    # "len2":I
    .local v1, "len2":I
    nop

    .line 513
    if-nez v1, :cond_6c

    .line 514
    return-void

    .line 517
    :cond_6c
    if-gt v4, v1, :cond_72

    .line 518
    invoke-direct {p0, v3, v4, v7, v1}, Ljava/util/TimSort;->mergeLo(IIII)V

    goto :goto_75

    .line 520
    :cond_72
    invoke-direct {p0, v3, v4, v7, v1}, Ljava/util/TimSort;->mergeHi(IIII)V

    .line 521
    :goto_75
    return-void
.end method

.method private blacklist mergeCollapse()V
    .registers 7

    .line 439
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    nop

    :goto_1
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_58

    .line 440
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 441
    .local v0, "n":I
    if-lez v0, :cond_1f

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    aget v3, v3, v0

    iget-object v4, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    if-le v2, v3, :cond_34

    :cond_1f
    if-le v0, v1, :cond_45

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x2

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_45

    .line 443
    :cond_34
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_54

    .line 444
    add-int/lit8 v0, v0, -0x1

    goto :goto_54

    .line 445
    :cond_45
    if-ltz v0, :cond_58

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-le v1, v2, :cond_54

    .line 446
    goto :goto_58

    .line 448
    :cond_54
    :goto_54
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    .line 449
    .end local v0    # "n":I
    goto :goto_1

    .line 450
    :cond_58
    :goto_58
    return-void
.end method

.method private blacklist mergeForceCollapse()V
    .registers 5

    .line 457
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    nop

    :goto_1
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 458
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 459
    .local v0, "n":I
    if-lez v0, :cond_1c

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1c

    .line 460
    add-int/lit8 v0, v0, -0x1

    .line 461
    :cond_1c
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    .line 462
    .end local v0    # "n":I
    goto :goto_1

    .line 463
    :cond_20
    return-void
.end method

.method private blacklist mergeHi(IIII)V
    .registers 25
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 802
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 805
    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 806
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v2}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v8

    .line 807
    .local v8, "tmp":[Ljava/lang/Object;, "[TT;"
    iget v9, v0, Ljava/util/TimSort;->tmpBase:I

    .line 808
    .local v9, "tmpBase":I
    invoke-static {v3, v1, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    add-int v4, p1, p2

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    .line 811
    .local v4, "cursor1":I
    add-int v5, v9, v2

    sub-int/2addr v5, v10

    .line 812
    .local v5, "cursor2":I
    add-int v6, v1, v2

    sub-int/2addr v6, v10

    .line 815
    .local v6, "dest":I
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "dest":I
    .local v7, "dest":I
    add-int/lit8 v11, v4, -0x1

    .end local v4    # "cursor1":I
    .local v11, "cursor1":I
    aget-object v4, v3, v4

    aput-object v4, v3, v6

    .line 816
    add-int/lit8 v4, p2, -0x1

    .end local p2    # "len1":I
    .local v4, "len1":I
    if-nez v4, :cond_2f

    .line 817
    add-int/lit8 v6, v2, -0x1

    sub-int v6, v7, v6

    invoke-static {v8, v9, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    return-void

    .line 820
    :cond_2f
    if-ne v2, v10, :cond_3f

    .line 821
    sub-int/2addr v7, v4

    .line 822
    sub-int/2addr v11, v4

    .line 823
    add-int/lit8 v6, v11, 0x1

    add-int/lit8 v10, v7, 0x1

    invoke-static {v3, v6, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    aget-object v6, v8, v5

    aput-object v6, v3, v7

    .line 825
    return-void

    .line 828
    :cond_3f
    move v6, v7

    .end local v7    # "dest":I
    .restart local v6    # "dest":I
    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 829
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v12, v0, Ljava/util/TimSort;->minGallop:I

    .line 832
    .end local p4    # "len2":I
    .local v2, "len2":I
    .local v12, "minGallop":I
    :goto_44
    const/4 v13, 0x0

    .line 833
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 840
    .local v14, "count2":I
    :goto_46
    nop

    .line 841
    aget-object v15, v8, v5

    aget-object v10, v3, v11

    invoke-interface {v7, v15, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_6b

    .line 842
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v15, v11, -0x1

    .end local v11    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v11, v3, v11

    aput-object v11, v3, v6

    .line 843
    add-int/lit8 v13, v13, 0x1

    .line 844
    const/4 v6, 0x0

    .line 845
    .end local v14    # "count2":I
    .local v6, "count2":I
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_67

    .line 846
    move v11, v9

    move-object v9, v7

    move-object v7, v8

    move v8, v11

    move v11, v15

    goto/16 :goto_11f

    .line 845
    :cond_67
    move v14, v6

    move v11, v15

    move v6, v10

    goto :goto_85

    .line 848
    .end local v10    # "dest":I
    .end local v15    # "cursor1":I
    .local v6, "dest":I
    .restart local v11    # "cursor1":I
    .restart local v14    # "count2":I
    :cond_6b
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v15, v5, -0x1

    .end local v5    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v5, v8, v5

    aput-object v5, v3, v6

    .line 849
    add-int/lit8 v14, v14, 0x1

    .line 850
    const/4 v5, 0x0

    .line 851
    .end local v13    # "count1":I
    .local v5, "count1":I
    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_82

    .line 852
    move v5, v9

    move-object v9, v7

    move-object v7, v8

    move v8, v5

    move v5, v15

    goto/16 :goto_11f

    .line 851
    :cond_82
    move v13, v5

    move v5, v15

    move v6, v10

    .line 854
    .end local v10    # "dest":I
    .end local v15    # "cursor2":I
    .local v5, "cursor2":I
    .restart local v6    # "dest":I
    .restart local v13    # "count1":I
    :goto_85
    or-int v10, v13, v14

    if-lt v10, v12, :cond_17f

    move v10, v2

    move v15, v13

    move/from16 v17, v14

    move v13, v11

    move v14, v12

    move v11, v5

    move v12, v6

    move v5, v4

    .line 862
    .end local v2    # "len2":I
    .end local v4    # "len1":I
    .end local v6    # "dest":I
    .local v5, "len1":I
    .local v10, "len2":I
    .local v11, "cursor2":I
    .local v12, "dest":I
    .local v13, "cursor1":I
    .local v14, "minGallop":I
    .local v15, "count1":I
    .local v17, "count2":I
    :goto_92
    nop

    .line 863
    aget-object v2, v8, v11

    add-int/lit8 v6, v5, -0x1

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, v5, v2

    .line 864
    if-eqz v15, :cond_c1

    .line 865
    sub-int v2, v12, v15

    .line 866
    .end local v12    # "dest":I
    .local v2, "dest":I
    sub-int v4, v13, v15

    .line 867
    .end local v13    # "cursor1":I
    .local v4, "cursor1":I
    sub-int/2addr v5, v15

    .line 868
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v12, v2, 0x1

    invoke-static {v3, v6, v3, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    if-nez v5, :cond_bd

    .line 870
    move v12, v10

    move v10, v2

    move v2, v12

    move v12, v11

    move v11, v4

    move v4, v5

    move v5, v12

    move v12, v9

    move-object v9, v7

    move-object v7, v8

    move v8, v12

    move v12, v14

    goto/16 :goto_11f

    .line 869
    :cond_bd
    move v12, v2

    move v13, v4

    move v2, v5

    goto :goto_c2

    .line 864
    .end local v2    # "dest":I
    .end local v4    # "cursor1":I
    .restart local v12    # "dest":I
    .restart local v13    # "cursor1":I
    :cond_c1
    move v2, v5

    .line 872
    .end local v5    # "len1":I
    .local v2, "len1":I
    :goto_c2
    add-int/lit8 v18, v12, -0x1

    .end local v12    # "dest":I
    .local v18, "dest":I
    add-int/lit8 v19, v11, -0x1

    .end local v11    # "cursor2":I
    .local v19, "cursor2":I
    aget-object v4, v8, v11

    aput-object v4, v3, v12

    .line 873
    add-int/lit8 v4, v10, -0x1

    const/4 v6, 0x1

    .end local v10    # "len2":I
    .local v4, "len2":I
    if-ne v4, v6, :cond_dd

    .line 874
    move v5, v4

    move v4, v2

    move v2, v5

    move v5, v9

    move-object v9, v7

    move-object v7, v8

    move v8, v5

    move v11, v13

    move v12, v14

    move/from16 v10, v18

    move/from16 v5, v19

    goto :goto_11f

    .line 876
    :cond_dd
    move v10, v4

    .end local v4    # "len2":I
    .restart local v10    # "len2":I
    aget-object v4, v3, v13

    move-object v5, v8

    .end local v8    # "tmp":[Ljava/lang/Object;, "[TT;"
    .local v5, "tmp":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v8, v10, -0x1

    move v6, v9

    move-object v9, v7

    move v7, v10

    .end local v10    # "len2":I
    .local v6, "tmpBase":I
    .local v7, "len2":I
    .local v9, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static/range {v4 .. v9}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v4

    move v8, v6

    move-object v7, v5

    .end local v5    # "tmp":[Ljava/lang/Object;, "[TT;"
    .end local v6    # "tmpBase":I
    .local v7, "tmp":[Ljava/lang/Object;, "[TT;"
    .local v8, "tmpBase":I
    .restart local v10    # "len2":I
    sub-int v4, v10, v4

    .line 877
    .end local v17    # "count2":I
    .local v4, "count2":I
    if-eqz v4, :cond_10a

    .line 878
    sub-int v5, v18, v4

    .line 879
    .end local v18    # "dest":I
    .local v5, "dest":I
    sub-int v6, v19, v4

    .line 880
    .end local v19    # "cursor2":I
    .local v6, "cursor2":I
    sub-int/2addr v10, v4

    .line 881
    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v5, 0x1

    invoke-static {v7, v11, v3, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    const/4 v11, 0x1

    if-gt v10, v11, :cond_106

    .line 883
    move v4, v2

    move v2, v10

    move v11, v13

    move v12, v14

    move v10, v5

    move v5, v6

    goto :goto_11f

    .line 882
    :cond_106
    move/from16 v18, v5

    move v11, v6

    goto :goto_10c

    .line 877
    .end local v5    # "dest":I
    .end local v6    # "cursor2":I
    .restart local v18    # "dest":I
    .restart local v19    # "cursor2":I
    :cond_10a
    move/from16 v11, v19

    .line 885
    .end local v19    # "cursor2":I
    .restart local v11    # "cursor2":I
    :goto_10c
    add-int/lit8 v12, v18, -0x1

    .end local v18    # "dest":I
    .restart local v12    # "dest":I
    add-int/lit8 v5, v13, -0x1

    .end local v13    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v6, v3, v13

    aput-object v6, v3, v18

    .line 886
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_14c

    .line 887
    move v4, v11

    move v11, v5

    move v5, v4

    move v4, v2

    move v2, v10

    move v10, v12

    move v12, v14

    .line 894
    .end local v14    # "minGallop":I
    .end local v15    # "count1":I
    .local v2, "len2":I
    .local v4, "len1":I
    .local v5, "cursor2":I
    .local v10, "dest":I
    .local v11, "cursor1":I
    .local v12, "minGallop":I
    :goto_11f
    const/4 v6, 0x1

    if-ge v12, v6, :cond_124

    move v13, v6

    goto :goto_125

    :cond_124
    move v13, v12

    :goto_125
    iput v13, v0, Ljava/util/TimSort;->minGallop:I

    .line 896
    if-ne v2, v6, :cond_138

    .line 897
    nop

    .line 898
    sub-int/2addr v10, v4

    .line 899
    sub-int/2addr v11, v4

    .line 900
    add-int/lit8 v6, v11, 0x1

    add-int/lit8 v13, v10, 0x1

    invoke-static {v3, v6, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    aget-object v6, v7, v5

    aput-object v6, v3, v10

    goto :goto_143

    .line 902
    :cond_138
    if-eqz v2, :cond_144

    .line 906
    nop

    .line 907
    nop

    .line 908
    add-int/lit8 v6, v2, -0x1

    sub-int v6, v10, v6

    invoke-static {v7, v8, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    :goto_143
    return-void

    .line 903
    :cond_144
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 888
    .local v2, "len1":I
    .local v4, "count2":I
    .local v5, "cursor1":I
    .local v10, "len2":I
    .local v11, "cursor2":I
    .local v12, "dest":I
    .restart local v14    # "minGallop":I
    .restart local v15    # "count1":I
    :cond_14c
    const/4 v6, 0x1

    add-int/lit8 v14, v14, -0x1

    .line 889
    const/4 v13, 0x0

    const/4 v6, 0x7

    if-lt v15, v6, :cond_156

    const/16 v17, 0x1

    goto :goto_158

    :cond_156
    move/from16 v17, v13

    :goto_158
    if-lt v4, v6, :cond_15c

    const/4 v6, 0x1

    goto :goto_15d

    :cond_15c
    move v6, v13

    :goto_15d
    or-int v6, v17, v6

    if-nez v6, :cond_175

    .line 890
    if-gez v14, :cond_164

    .line 891
    const/4 v14, 0x0

    .line 892
    :cond_164
    nop

    .end local v4    # "count2":I
    .end local v15    # "count1":I
    add-int/lit8 v4, v14, 0x2

    .line 893
    .end local v14    # "minGallop":I
    .local v4, "minGallop":I
    move v6, v11

    move v11, v5

    move v5, v6

    move v6, v8

    move-object v8, v7

    move-object v7, v9

    move v9, v6

    move v6, v12

    move v12, v4

    move v4, v2

    move v2, v10

    const/4 v10, 0x1

    goto/16 :goto_44

    .line 889
    .local v4, "count2":I
    .restart local v14    # "minGallop":I
    .restart local v15    # "count1":I
    :cond_175
    move v13, v8

    move-object v8, v7

    move-object v7, v9

    move v9, v13

    move/from16 v17, v4

    move v13, v5

    move v5, v2

    goto/16 :goto_92

    .line 854
    .end local v10    # "len2":I
    .end local v15    # "count1":I
    .local v2, "len2":I
    .local v4, "len1":I
    .local v5, "cursor2":I
    .local v6, "dest":I
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v8, "tmp":[Ljava/lang/Object;, "[TT;"
    .local v9, "tmpBase":I
    .local v11, "cursor1":I
    .local v12, "minGallop":I
    .local v13, "count1":I
    .local v14, "count2":I
    :cond_17f
    move/from16 v16, v9

    move-object v9, v7

    move-object v7, v8

    move/from16 v8, v16

    const/16 v16, 0x1

    .local v7, "tmp":[Ljava/lang/Object;, "[TT;"
    .local v8, "tmpBase":I
    .local v9, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move v10, v8

    move-object v8, v7

    move-object v7, v9

    move v9, v10

    move/from16 v10, v16

    goto/16 :goto_46
.end method

.method private blacklist mergeLo(IIII)V
    .registers 22
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 686
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 689
    iget-object v2, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 690
    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v4

    .line 691
    .local v4, "tmp":[Ljava/lang/Object;, "[TT;"
    iget v3, v0, Ljava/util/TimSort;->tmpBase:I

    .line 692
    .local v3, "cursor1":I
    move/from16 v5, p3

    .line 693
    .local v5, "cursor2":I
    move/from16 v6, p1

    .line 694
    .local v6, "dest":I
    move/from16 v9, p1

    invoke-static {v2, v9, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "dest":I
    .local v7, "dest":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v5, v2, v5

    aput-object v5, v2, v6

    .line 698
    add-int/lit8 v5, p4, -0x1

    .end local p4    # "len2":I
    .local v5, "len2":I
    if-nez v5, :cond_25

    .line 699
    invoke-static {v4, v3, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    return-void

    .line 702
    :cond_25
    const/4 v10, 0x1

    if-ne v1, v10, :cond_32

    .line 703
    invoke-static {v2, v8, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    add-int v6, v7, v5

    aget-object v10, v4, v3

    aput-object v10, v2, v6

    .line 705
    return-void

    .line 708
    :cond_32
    iget-object v6, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 709
    .local v6, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v11, v0, Ljava/util/TimSort;->minGallop:I

    .line 712
    .end local p2    # "len1":I
    .local v1, "len1":I
    .local v11, "minGallop":I
    :goto_36
    const/4 v12, 0x0

    .line 713
    .local v12, "count1":I
    const/4 v13, 0x0

    .line 720
    .local v13, "count2":I
    :cond_38
    nop

    .line 721
    aget-object v14, v2, v8

    aget-object v15, v4, v3

    invoke-interface {v6, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_5a

    .line 722
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "dest":I
    .local v14, "dest":I
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v8, v2, v8

    aput-object v8, v2, v7

    .line 723
    add-int/lit8 v13, v13, 0x1

    .line 724
    const/4 v7, 0x0

    .line 725
    .end local v12    # "count1":I
    .local v7, "count1":I
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_56

    .line 726
    move-object v7, v4

    move v8, v15

    goto/16 :goto_e6

    .line 725
    :cond_56
    move v12, v7

    move v8, v15

    move v7, v14

    goto :goto_70

    .line 728
    .end local v14    # "dest":I
    .end local v15    # "cursor2":I
    .local v7, "dest":I
    .restart local v8    # "cursor2":I
    .restart local v12    # "count1":I
    :cond_5a
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "dest":I
    .restart local v14    # "dest":I
    add-int/lit8 v15, v3, 0x1

    .end local v3    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v3, v4, v3

    aput-object v3, v2, v7

    .line 729
    add-int/lit8 v12, v12, 0x1

    .line 730
    const/4 v3, 0x0

    .line 731
    .end local v13    # "count2":I
    .local v3, "count2":I
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v10, :cond_6d

    .line 732
    move-object v7, v4

    move v3, v15

    goto/16 :goto_e6

    .line 731
    :cond_6d
    move v13, v3

    move v3, v15

    move v7, v14

    .line 734
    .end local v14    # "dest":I
    .end local v15    # "cursor1":I
    .local v3, "cursor1":I
    .restart local v7    # "dest":I
    .restart local v13    # "count2":I
    :goto_70
    or-int v14, v12, v13

    if-lt v14, v11, :cond_38

    move v14, v11

    move v15, v12

    move/from16 v16, v13

    move v11, v5

    move v12, v7

    move v13, v8

    move v5, v3

    .line 742
    .end local v3    # "cursor1":I
    .end local v7    # "dest":I
    .end local v8    # "cursor2":I
    .local v5, "cursor1":I
    .local v11, "len2":I
    .local v12, "dest":I
    .local v13, "cursor2":I
    .local v14, "minGallop":I
    .local v15, "count1":I
    .local v16, "count2":I
    :goto_7c
    nop

    .line 743
    aget-object v3, v2, v13

    const/4 v7, 0x0

    move-object v8, v6

    move v6, v1

    .end local v1    # "len1":I
    .local v6, "len1":I
    .local v8, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static/range {v3 .. v8}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    .line 744
    move-object v7, v4

    move-object v6, v8

    .end local v4    # "tmp":[Ljava/lang/Object;, "[TT;"
    .end local v8    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v1    # "len1":I
    .local v6, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v7, "tmp":[Ljava/lang/Object;, "[TT;"
    if-eqz v15, :cond_9e

    .line 745
    invoke-static {v7, v5, v2, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    add-int v3, v12, v15

    .line 747
    .end local v12    # "dest":I
    .local v3, "dest":I
    add-int v4, v5, v15

    .line 748
    .end local v5    # "cursor1":I
    .local v4, "cursor1":I
    sub-int/2addr v1, v15

    .line 749
    if-gt v1, v10, :cond_9b

    .line 750
    move v5, v11

    move v8, v13

    move v11, v14

    move v14, v3

    move v3, v4

    goto/16 :goto_e6

    .line 749
    :cond_9b
    move v12, v4

    move v8, v1

    goto :goto_a1

    .line 744
    .end local v3    # "dest":I
    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    .restart local v12    # "dest":I
    :cond_9e
    move v3, v12

    move v12, v5

    move v8, v1

    .line 752
    .end local v1    # "len1":I
    .end local v5    # "cursor1":I
    .restart local v3    # "dest":I
    .local v8, "len1":I
    .local v12, "cursor1":I
    :goto_a1
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "dest":I
    .local v1, "dest":I
    move v4, v3

    .local v4, "dest":I
    add-int/lit8 v3, v13, 0x1

    .end local v13    # "cursor2":I
    .local v3, "cursor2":I
    aget-object v5, v2, v13

    aput-object v5, v2, v4

    .line 753
    .end local v4    # "dest":I
    add-int/lit8 v4, v11, -0x1

    .end local v11    # "len2":I
    .local v4, "len2":I
    if-nez v4, :cond_b5

    .line 754
    move v5, v4

    move v11, v14

    move v14, v1

    move v1, v8

    move v8, v3

    move v3, v12

    goto :goto_e6

    .line 756
    :cond_b5
    move v5, v1

    .end local v1    # "dest":I
    .local v5, "dest":I
    aget-object v1, v7, v12

    move v11, v5

    .end local v5    # "dest":I
    .local v11, "dest":I
    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    .line 757
    .end local v16    # "count2":I
    .local v1, "count2":I
    if-eqz v1, :cond_d3

    .line 758
    invoke-static {v2, v3, v2, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    add-int v5, v11, v1

    .line 760
    .end local v11    # "dest":I
    .restart local v5    # "dest":I
    add-int/2addr v3, v1

    .line 761
    sub-int/2addr v4, v1

    .line 762
    if-nez v4, :cond_d0

    .line 763
    move v1, v8

    move v11, v14

    move v8, v3

    move v14, v5

    move v3, v12

    move v5, v4

    goto :goto_e6

    .line 762
    :cond_d0
    move v11, v5

    move v13, v3

    goto :goto_d4

    .line 757
    .end local v5    # "dest":I
    .restart local v11    # "dest":I
    :cond_d3
    move v13, v3

    .line 765
    .end local v3    # "cursor2":I
    .restart local v13    # "cursor2":I
    :goto_d4
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "dest":I
    .local v3, "dest":I
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v7, v12

    aput-object v12, v2, v11

    .line 766
    add-int/lit8 v8, v8, -0x1

    if-ne v8, v10, :cond_10a

    .line 767
    move v1, v8

    move v8, v13

    move v11, v14

    move v14, v3

    move v3, v5

    move v5, v4

    .line 774
    .end local v4    # "len2":I
    .end local v13    # "cursor2":I
    .end local v15    # "count1":I
    .local v1, "len1":I
    .local v3, "cursor1":I
    .local v5, "len2":I
    .local v8, "cursor2":I
    .local v11, "minGallop":I
    .local v14, "dest":I
    :goto_e6
    if-ge v11, v10, :cond_ea

    move v4, v10

    goto :goto_eb

    :cond_ea
    move v4, v11

    :goto_eb
    iput v4, v0, Ljava/util/TimSort;->minGallop:I

    .line 776
    if-ne v1, v10, :cond_fa

    .line 777
    nop

    .line 778
    invoke-static {v2, v8, v2, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    add-int v4, v14, v5

    aget-object v10, v7, v3

    aput-object v10, v2, v4

    goto :goto_101

    .line 780
    :cond_fa
    if-eqz v1, :cond_102

    .line 784
    nop

    .line 785
    nop

    .line 786
    invoke-static {v7, v3, v2, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    :goto_101
    return-void

    .line 781
    :cond_102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Comparison method violates its general contract!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 768
    .end local v11    # "minGallop":I
    .local v1, "count2":I
    .local v3, "dest":I
    .restart local v4    # "len2":I
    .local v5, "cursor1":I
    .local v8, "len1":I
    .restart local v13    # "cursor2":I
    .local v14, "minGallop":I
    .restart local v15    # "count1":I
    :cond_10a
    add-int/lit8 v14, v14, -0x1

    .line 769
    const/4 v11, 0x0

    const/4 v12, 0x7

    if-lt v15, v12, :cond_113

    move/from16 v16, v10

    goto :goto_115

    :cond_113
    move/from16 v16, v11

    :goto_115
    if-lt v1, v12, :cond_118

    move v11, v10

    :cond_118
    or-int v11, v16, v11

    if-nez v11, :cond_12b

    .line 770
    if-gez v14, :cond_11f

    .line 771
    const/4 v14, 0x0

    .line 772
    :cond_11f
    nop

    .end local v1    # "count2":I
    .end local v15    # "count1":I
    add-int/lit8 v11, v14, 0x2

    .line 773
    .end local v14    # "minGallop":I
    .restart local v11    # "minGallop":I
    move-object v1, v7

    move v7, v3

    move v3, v5

    move v5, v4

    move-object v4, v1

    move v1, v8

    move v8, v13

    goto/16 :goto_36

    .line 769
    .end local v11    # "minGallop":I
    .restart local v1    # "count2":I
    .restart local v14    # "minGallop":I
    .restart local v15    # "count1":I
    :cond_12b
    move/from16 v16, v1

    move v12, v3

    move v11, v4

    move-object v4, v7

    move v1, v8

    goto/16 :goto_7c
.end method

.method private static blacklist minRunLength(I)I
    .registers 3
    .param p0, "n"    # I

    .line 401
    nop

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "r":I
    :goto_2
    const/16 v1, 0x20

    if-lt p0, v1, :cond_c

    .line 404
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 405
    shr-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 407
    :cond_c
    add-int v1, p0, v0

    return v1
.end method

.method private blacklist pushRun(II)V
    .registers 5
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .line 417
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 418
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 419
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 420
    return-void
.end method

.method private static blacklist reverseRange([Ljava/lang/Object;II)V
    .registers 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 375
    add-int/lit8 p2, p2, -0x1

    .line 376
    :goto_2
    if-ge p1, p2, :cond_13

    .line 377
    aget-object v0, p0, p1

    .line 378
    .local v0, "t":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "lo":I
    .local v1, "lo":I
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 379
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "hi":I
    .local p1, "hi":I
    aput-object v0, p0, p2

    .line 380
    .end local v0    # "t":Ljava/lang/Object;
    move p2, p1

    move p1, v1

    goto :goto_2

    .line 381
    .end local v1    # "lo":I
    .local p1, "lo":I
    .restart local p2    # "hi":I
    :cond_13
    return-void
.end method

.method static blacklist sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .registers 16
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p5, "workBase"    # I
    .param p6, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    .line 212
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p4, "work":[Ljava/lang/Object;, "[TT;"
    nop

    .line 214
    sub-int v0, p2, p1

    .line 215
    .local v0, "nRemaining":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 216
    return-void

    .line 219
    :cond_7
    const/16 v1, 0x20

    if-ge v0, v1, :cond_15

    .line 220
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 221
    .local v1, "initRunLen":I
    add-int v2, p1, v1

    invoke-static {p0, p1, p2, v2, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 222
    return-void

    .line 230
    .end local v1    # "initRunLen":I
    :cond_15
    new-instance v3, Ljava/util/TimSort;

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    .end local p3    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local p4    # "work":[Ljava/lang/Object;, "[TT;"
    .end local p5    # "workBase":I
    .end local p6    # "workLen":I
    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    .local v5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v6, "work":[Ljava/lang/Object;, "[TT;"
    .local v7, "workBase":I
    .local v8, "workLen":I
    invoke-direct/range {v3 .. v8}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    .line 231
    .local v3, "ts":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    invoke-static {v0}, Ljava/util/TimSort;->minRunLength(I)I

    move-result p0

    .line 234
    .local p0, "minRun":I
    :cond_23
    invoke-static {v4, p1, p2, v5}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result p3

    .line 237
    .local p3, "runLen":I
    if-ge p3, p0, :cond_36

    .line 238
    if-gt v0, p0, :cond_2d

    move p4, v0

    goto :goto_2e

    :cond_2d
    move p4, p0

    .line 239
    .local p4, "force":I
    :goto_2e
    add-int p5, p1, p4

    add-int p6, p1, p3

    invoke-static {v4, p1, p5, p6, v5}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 240
    move p3, p4

    .line 244
    .end local p4    # "force":I
    :cond_36
    invoke-direct {v3, p1, p3}, Ljava/util/TimSort;->pushRun(II)V

    .line 245
    invoke-direct {v3}, Ljava/util/TimSort;->mergeCollapse()V

    .line 248
    add-int/2addr p1, p3

    .line 249
    sub-int/2addr v0, p3

    .line 250
    .end local p3    # "runLen":I
    if-nez v0, :cond_23

    .line 253
    nop

    .line 254
    invoke-direct {v3}, Ljava/util/TimSort;->mergeForceCollapse()V

    .line 255
    nop

    .line 256
    return-void
.end method
