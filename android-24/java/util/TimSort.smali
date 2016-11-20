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
.field static final synthetic -assertionsDisabled:Z

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

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/TimSort;

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
    sput-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@b
    .line 62
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 7
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;[TT;II)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "work":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    #@1
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 103
    const/4 v4, 0x7

    #@5
    iput v4, p0, Ljava/util/TimSort;->minGallop:I

    #@7
    .line 133
    iput v6, p0, Ljava/util/TimSort;->stackSize:I

    #@9
    .line 147
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@b
    .line 148
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@d
    .line 151
    array-length v0, p1

    #@e
    .line 152
    .local v0, "len":I
    const/16 v4, 0x200

    #@10
    if-ge v0, v4, :cond_1

    #@12
    .line 153
    ushr-int/lit8 v3, v0, 0x1

    #@14
    .line 154
    .local v3, "tlen":I
    :goto_0
    if-eqz p3, :cond_0

    #@16
    if-ge p5, v3, :cond_2

    #@18
    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1f
    move-result-object v4

    #@20
    .line 156
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, [Ljava/lang/Object;

    #@26
    .line 158
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@28
    .line 159
    iput v6, p0, Ljava/util/TimSort;->tmpBase:I

    #@2a
    .line 160
    iput v3, p0, Ljava/util/TimSort;->tmpLen:I

    #@2c
    .line 178
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :goto_1
    const/16 v4, 0x78

    #@2e
    if-ge v0, v4, :cond_3

    #@30
    const/4 v2, 0x5

    #@31
    .line 181
    .local v2, "stackLen":I
    :goto_2
    new-array v4, v2, [I

    #@33
    iput-object v4, p0, Ljava/util/TimSort;->runBase:[I

    #@35
    .line 182
    new-array v4, v2, [I

    #@37
    iput-object v4, p0, Ljava/util/TimSort;->runLen:[I

    #@39
    .line 146
    return-void

    #@3a
    .line 153
    .end local v2    # "stackLen":I
    .end local v3    # "tlen":I
    :cond_1
    const/16 v3, 0x100

    #@3c
    .restart local v3    # "tlen":I
    goto :goto_0

    #@3d
    .line 154
    :cond_2
    add-int v4, p4, v3

    #@3f
    array-length v5, p3

    #@40
    if-gt v4, v5, :cond_0

    #@42
    .line 163
    iput-object p3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@44
    .line 164
    iput p4, p0, Ljava/util/TimSort;->tmpBase:I

    #@46
    .line 165
    iput p5, p0, Ljava/util/TimSort;->tmpLen:I

    #@48
    goto :goto_1

    #@49
    .line 179
    :cond_3
    const/16 v4, 0x606

    #@4b
    if-ge v0, v4, :cond_4

    #@4d
    const/16 v2, 0xa

    #@4f
    goto :goto_2

    #@50
    .line 180
    :cond_4
    const v4, 0x1d16f

    #@53
    if-ge v0, v4, :cond_5

    #@55
    const/16 v2, 0x18

    #@57
    goto :goto_2

    #@58
    :cond_5
    const/16 v2, 0x28

    #@5a
    goto :goto_2
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 9
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
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 275
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 276
    :cond_1
    if-ne p3, p1, :cond_2

    #@17
    .line 277
    add-int/lit8 p3, p3, 0x1

    #@19
    .line 278
    :cond_2
    :goto_1
    if-ge p3, p2, :cond_9

    #@1b
    .line 279
    aget-object v3, p0, p3

    #@1d
    .line 282
    .local v3, "pivot":Ljava/lang/Object;, "TT;"
    move v0, p1

    #@1e
    .line 283
    .local v0, "left":I
    move v4, p3

    #@1f
    .line 284
    .local v4, "right":I
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@21
    if-nez v5, :cond_4

    #@23
    if-gt p1, v4, :cond_3

    #@25
    move v5, v6

    #@26
    :goto_2
    if-nez v5, :cond_4

    #@28
    new-instance v5, Ljava/lang/AssertionError;

    #@2a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@2d
    throw v5

    #@2e
    :cond_3
    move v5, v7

    #@2f
    goto :goto_2

    #@30
    .line 290
    :cond_4
    :goto_3
    if-ge v0, v4, :cond_6

    #@32
    .line 291
    add-int v5, v0, v4

    #@34
    ushr-int/lit8 v1, v5, 0x1

    #@36
    .line 292
    .local v1, "mid":I
    aget-object v5, p0, v1

    #@38
    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3b
    move-result v5

    #@3c
    if-gez v5, :cond_5

    #@3e
    .line 293
    move v4, v1

    #@3f
    goto :goto_3

    #@40
    .line 295
    :cond_5
    add-int/lit8 v0, v1, 0x1

    #@42
    goto :goto_3

    #@43
    .line 297
    .end local v1    # "mid":I
    :cond_6
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@45
    if-nez v5, :cond_8

    #@47
    if-ne v0, v4, :cond_7

    #@49
    move v5, v6

    #@4a
    :goto_4
    if-nez v5, :cond_8

    #@4c
    new-instance v5, Ljava/lang/AssertionError;

    #@4e
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@51
    throw v5

    #@52
    :cond_7
    move v5, v7

    #@53
    goto :goto_4

    #@54
    .line 306
    :cond_8
    sub-int v2, p3, v0

    #@56
    .line 308
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    #@59
    .line 312
    add-int/lit8 v5, v0, 0x1

    #@5b
    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5e
    .line 314
    :goto_5
    aput-object v3, p0, v0

    #@60
    .line 278
    add-int/lit8 p3, p3, 0x1

    #@62
    goto :goto_1

    #@63
    .line 309
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    #@65
    add-int/lit8 v8, v0, 0x1

    #@67
    aget-object v8, p0, v8

    #@69
    aput-object v8, p0, v5

    #@6b
    .line 310
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    #@6d
    aget-object v8, p0, v0

    #@6f
    aput-object v8, p0, v5

    #@71
    goto :goto_5

    #@72
    .line 274
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v4    # "right":I
    :cond_9
    return-void

    #@73
    .line 308
    nop

    #@74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 5
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
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 345
    sget-boolean v4, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 346
    :cond_1
    add-int/lit8 v0, p1, 0x1

    #@13
    .line 347
    .local v0, "runHi":I
    if-ne v0, p2, :cond_2

    #@15
    .line 348
    return v3

    #@16
    .line 351
    :cond_2
    add-int/lit8 v1, v0, 0x1

    #@18
    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    #@1a
    aget-object v3, p0, p1

    #@1c
    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1f
    move-result v2

    #@20
    if-gez v2, :cond_5

    #@22
    move v0, v1

    #@23
    .line 352
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_0
    if-ge v0, p2, :cond_3

    #@25
    aget-object v2, p0, v0

    #@27
    add-int/lit8 v3, v0, -0x1

    #@29
    aget-object v3, p0, v3

    #@2b
    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2e
    move-result v2

    #@2f
    if-gez v2, :cond_3

    #@31
    .line 353
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 354
    :cond_3
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    #@37
    .line 360
    :cond_4
    sub-int v2, v0, p1

    #@39
    return v2

    #@3a
    .line 356
    :goto_1
    if-ge v0, p2, :cond_4

    #@3c
    aget-object v2, p0, v0

    #@3e
    add-int/lit8 v3, v0, -0x1

    #@40
    aget-object v3, p0, v3

    #@42
    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@45
    move-result v2

    #@46
    if-ltz v2, :cond_4

    #@48
    .line 357
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_1

    #@4b
    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_5
    move v0, v1

    #@4c
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 913
    iget v2, p0, Ljava/util/TimSort;->tmpLen:I

    #@3
    if-ge v2, p1, :cond_0

    #@5
    .line 915
    move v1, p1

    #@6
    .line 916
    .local v1, "newSize":I
    shr-int/lit8 v2, p1, 0x1

    #@8
    or-int v1, p1, v2

    #@a
    .line 917
    shr-int/lit8 v2, v1, 0x2

    #@c
    or-int/2addr v1, v2

    #@d
    .line 918
    shr-int/lit8 v2, v1, 0x4

    #@f
    or-int/2addr v1, v2

    #@10
    .line 919
    shr-int/lit8 v2, v1, 0x8

    #@12
    or-int/2addr v1, v2

    #@13
    .line 920
    shr-int/lit8 v2, v1, 0x10

    #@15
    or-int/2addr v1, v2

    #@16
    .line 921
    add-int/lit8 v1, v1, 0x1

    #@18
    .line 923
    if-gez v1, :cond_1

    #@1a
    .line 924
    move v1, p1

    #@1b
    .line 930
    :goto_0
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@1d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@24
    move-result-object v2

    #@25
    .line 929
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, [Ljava/lang/Object;

    #@2b
    .line 931
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@2d
    .line 932
    iput v1, p0, Ljava/util/TimSort;->tmpLen:I

    #@2f
    .line 933
    iput v3, p0, Ljava/util/TimSort;->tmpBase:I

    #@31
    .line 935
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    #@33
    return-object v2

    #@34
    .line 926
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@36
    array-length v2, v2

    #@37
    ushr-int/lit8 v2, v2, 0x1

    #@39
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v1

    #@3d
    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 8
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
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 535
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 536
    :cond_1
    const/4 v0, 0x0

    #@18
    .line 537
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    #@19
    .line 538
    .local v3, "ofs":I
    add-int v5, p2, p4

    #@1b
    aget-object v5, p1, v5

    #@1d
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@20
    move-result v5

    #@21
    if-lez v5, :cond_5

    #@23
    .line 540
    sub-int v2, p3, p4

    #@25
    .line 541
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2f
    move-result v5

    #@30
    if-lez v5, :cond_3

    #@32
    .line 542
    move v0, v3

    #@33
    .line 543
    shl-int/lit8 v5, v3, 0x1

    #@35
    add-int/lit8 v3, v5, 0x1

    #@37
    .line 544
    if-gtz v3, :cond_2

    #@39
    .line 545
    move v3, v2

    #@3a
    goto :goto_1

    #@3b
    .line 547
    :cond_3
    if-le v3, v2, :cond_4

    #@3d
    .line 548
    move v3, v2

    #@3e
    .line 551
    :cond_4
    add-int/2addr v0, p4

    #@3f
    .line 552
    add-int/2addr v3, p4

    #@40
    .line 570
    :goto_2
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 555
    .end local v2    # "maxOfs":I
    :cond_5
    add-int/lit8 v2, p4, 0x1

    #@56
    .line 556
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@60
    move-result v5

    #@61
    if-gtz v5, :cond_7

    #@63
    .line 557
    move v0, v3

    #@64
    .line 558
    shl-int/lit8 v5, v3, 0x1

    #@66
    add-int/lit8 v3, v5, 0x1

    #@68
    .line 559
    if-gtz v3, :cond_6

    #@6a
    .line 560
    move v3, v2

    #@6b
    goto :goto_4

    #@6c
    .line 562
    :cond_7
    if-le v3, v2, :cond_8

    #@6e
    .line 563
    move v3, v2

    #@6f
    .line 566
    :cond_8
    move v4, v0

    #@70
    .line 567
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@72
    .line 568
    sub-int v3, p4, v4

    #@74
    goto :goto_2

    #@75
    .end local v4    # "tmp":I
    :cond_9
    move v5, v7

    #@76
    .line 570
    goto :goto_3

    #@77
    .line 577
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@79
    .line 578
    :goto_5
    if-ge v0, v3, :cond_c

    #@7b
    .line 579
    sub-int v5, v3, v0

    #@7d
    ushr-int/lit8 v5, v5, 0x1

    #@7f
    add-int v1, v0, v5

    #@81
    .line 581
    .local v1, "m":I
    add-int v5, p2, v1

    #@83
    aget-object v5, p1, v5

    #@85
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@88
    move-result v5

    #@89
    if-lez v5, :cond_b

    #@8b
    .line 582
    add-int/lit8 v0, v1, 0x1

    #@8d
    goto :goto_5

    #@8e
    .line 584
    :cond_b
    move v3, v1

    #@8f
    goto :goto_5

    #@90
    .line 586
    .end local v1    # "m":I
    :cond_c
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 587
    :cond_e
    return v3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 8
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
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 605
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 607
    :cond_1
    const/4 v3, 0x1

    #@18
    .line 608
    .local v3, "ofs":I
    const/4 v0, 0x0

    #@19
    .line 609
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    #@1b
    aget-object v5, p1, v5

    #@1d
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@20
    move-result v5

    #@21
    if-gez v5, :cond_5

    #@23
    .line 611
    add-int/lit8 v2, p4, 0x1

    #@25
    .line 612
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2f
    move-result v5

    #@30
    if-gez v5, :cond_3

    #@32
    .line 613
    move v0, v3

    #@33
    .line 614
    shl-int/lit8 v5, v3, 0x1

    #@35
    add-int/lit8 v3, v5, 0x1

    #@37
    .line 615
    if-gtz v3, :cond_2

    #@39
    .line 616
    move v3, v2

    #@3a
    goto :goto_1

    #@3b
    .line 618
    :cond_3
    if-le v3, v2, :cond_4

    #@3d
    .line 619
    move v3, v2

    #@3e
    .line 622
    :cond_4
    move v4, v0

    #@3f
    .line 623
    .local v4, "tmp":I
    sub-int v0, p4, v3

    #@41
    .line 624
    sub-int v3, p4, v4

    #@43
    .line 641
    .end local v4    # "tmp":I
    :goto_2
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 627
    .end local v2    # "maxOfs":I
    :cond_5
    sub-int v2, p3, p4

    #@59
    .line 628
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
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@63
    move-result v5

    #@64
    if-ltz v5, :cond_7

    #@66
    .line 629
    move v0, v3

    #@67
    .line 630
    shl-int/lit8 v5, v3, 0x1

    #@69
    add-int/lit8 v3, v5, 0x1

    #@6b
    .line 631
    if-gtz v3, :cond_6

    #@6d
    .line 632
    move v3, v2

    #@6e
    goto :goto_4

    #@6f
    .line 634
    :cond_7
    if-le v3, v2, :cond_8

    #@71
    .line 635
    move v3, v2

    #@72
    .line 638
    :cond_8
    add-int/2addr v0, p4

    #@73
    .line 639
    add-int/2addr v3, p4

    #@74
    goto :goto_2

    #@75
    :cond_9
    move v5, v7

    #@76
    .line 641
    goto :goto_3

    #@77
    .line 648
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@79
    .line 649
    :goto_5
    if-ge v0, v3, :cond_c

    #@7b
    .line 650
    sub-int v5, v3, v0

    #@7d
    ushr-int/lit8 v5, v5, 0x1

    #@7f
    add-int v1, v0, v5

    #@81
    .line 652
    .local v1, "m":I
    add-int v5, p2, v1

    #@83
    aget-object v5, p1, v5

    #@85
    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@88
    move-result v5

    #@89
    if-gez v5, :cond_b

    #@8b
    .line 653
    move v3, v1

    #@8c
    goto :goto_5

    #@8d
    .line 655
    :cond_b
    add-int/lit8 v0, v1, 0x1

    #@8f
    goto :goto_5

    #@90
    .line 657
    .end local v1    # "m":I
    :cond_c
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 658
    :cond_e
    return v3
.end method

.method private mergeAt(I)V
    .locals 13
    .param p1, "i"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    const/4 v12, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 465
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@4
    if-nez v0, :cond_1

    #@6
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@8
    const/4 v1, 0x2

    #@9
    if-lt v0, v1, :cond_0

    #@b
    move v0, v12

    #@c
    :goto_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :cond_0
    move v0, v4

    #@15
    goto :goto_0

    #@16
    .line 466
    :cond_1
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@18
    if-nez v0, :cond_3

    #@1a
    if-ltz p1, :cond_2

    #@1c
    move v0, v12

    #@1d
    :goto_1
    if-nez v0, :cond_3

    #@1f
    new-instance v0, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@24
    throw v0

    #@25
    :cond_2
    move v0, v4

    #@26
    goto :goto_1

    #@27
    .line 467
    :cond_3
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@29
    if-nez v0, :cond_6

    #@2b
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@2d
    add-int/lit8 v0, v0, -0x2

    #@2f
    if-eq p1, v0, :cond_4

    #@31
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@33
    add-int/lit8 v0, v0, -0x3

    #@35
    if-ne p1, v0, :cond_5

    #@37
    :cond_4
    move v0, v12

    #@38
    :goto_2
    if-nez v0, :cond_6

    #@3a
    new-instance v0, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v0

    #@40
    :cond_5
    move v0, v4

    #@41
    goto :goto_2

    #@42
    .line 469
    :cond_6
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@44
    aget v2, v0, p1

    #@46
    .line 470
    .local v2, "base1":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@48
    aget v3, v0, p1

    #@4a
    .line 471
    .local v3, "len1":I
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@4c
    add-int/lit8 v1, p1, 0x1

    #@4e
    aget v7, v0, v1

    #@50
    .line 472
    .local v7, "base2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@52
    add-int/lit8 v1, p1, 0x1

    #@54
    aget v8, v0, v1

    #@56
    .line 473
    .local v8, "len2":I
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@58
    if-nez v0, :cond_8

    #@5a
    if-lez v3, :cond_7

    #@5c
    if-lez v8, :cond_7

    #@5e
    move v0, v12

    #@5f
    :goto_3
    if-nez v0, :cond_8

    #@61
    new-instance v0, Ljava/lang/AssertionError;

    #@63
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@66
    throw v0

    #@67
    :cond_7
    move v0, v4

    #@68
    goto :goto_3

    #@69
    .line 474
    :cond_8
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@6b
    if-nez v0, :cond_a

    #@6d
    add-int v0, v2, v3

    #@6f
    if-ne v0, v7, :cond_9

    #@71
    move v0, v12

    #@72
    :goto_4
    if-nez v0, :cond_a

    #@74
    new-instance v0, Ljava/lang/AssertionError;

    #@76
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@79
    throw v0

    #@7a
    :cond_9
    move v0, v4

    #@7b
    goto :goto_4

    #@7c
    .line 481
    :cond_a
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@7e
    add-int v1, v3, v8

    #@80
    aput v1, v0, p1

    #@82
    .line 482
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@84
    add-int/lit8 v0, v0, -0x3

    #@86
    if-ne p1, v0, :cond_b

    #@88
    .line 483
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@8a
    add-int/lit8 v1, p1, 0x1

    #@8c
    iget-object v5, p0, Ljava/util/TimSort;->runBase:[I

    #@8e
    add-int/lit8 v6, p1, 0x2

    #@90
    aget v5, v5, v6

    #@92
    aput v5, v0, v1

    #@94
    .line 484
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@96
    add-int/lit8 v1, p1, 0x1

    #@98
    iget-object v5, p0, Ljava/util/TimSort;->runLen:[I

    #@9a
    add-int/lit8 v6, p1, 0x2

    #@9c
    aget v5, v5, v6

    #@9e
    aput v5, v0, v1

    #@a0
    .line 486
    :cond_b
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@a2
    add-int/lit8 v0, v0, -0x1

    #@a4
    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    #@a6
    .line 492
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@a8
    aget-object v0, v0, v7

    #@aa
    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@ac
    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@ae
    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@b1
    move-result v11

    #@b2
    .line 493
    .local v11, "k":I
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@b4
    if-nez v0, :cond_d

    #@b6
    if-ltz v11, :cond_c

    #@b8
    move v0, v12

    #@b9
    :goto_5
    if-nez v0, :cond_d

    #@bb
    new-instance v0, Ljava/lang/AssertionError;

    #@bd
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@c0
    throw v0

    #@c1
    :cond_c
    move v0, v4

    #@c2
    goto :goto_5

    #@c3
    .line 494
    :cond_d
    add-int/2addr v2, v11

    #@c4
    .line 495
    sub-int/2addr v3, v11

    #@c5
    .line 496
    if-nez v3, :cond_e

    #@c7
    .line 497
    return-void

    #@c8
    .line 503
    :cond_e
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@ca
    add-int v1, v2, v3

    #@cc
    add-int/lit8 v1, v1, -0x1

    #@ce
    aget-object v5, v0, v1

    #@d0
    iget-object v6, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@d2
    add-int/lit8 v9, v8, -0x1

    #@d4
    iget-object v10, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@d6
    invoke-static/range {v5 .. v10}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@d9
    move-result v8

    #@da
    .line 504
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@dc
    if-nez v0, :cond_10

    #@de
    if-ltz v8, :cond_f

    #@e0
    move v4, v12

    #@e1
    :cond_f
    if-nez v4, :cond_10

    #@e3
    new-instance v0, Ljava/lang/AssertionError;

    #@e5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@e8
    throw v0

    #@e9
    .line 505
    :cond_10
    if-nez v8, :cond_11

    #@eb
    .line 506
    return-void

    #@ec
    .line 509
    :cond_11
    if-gt v3, v8, :cond_12

    #@ee
    .line 510
    invoke-direct {p0, v2, v3, v7, v8}, Ljava/util/TimSort;->mergeLo(IIII)V

    #@f1
    .line 464
    :goto_6
    return-void

    #@f2
    .line 512
    :cond_12
    invoke-direct {p0, v2, v3, v7, v8}, Ljava/util/TimSort;->mergeHi(IIII)V

    #@f5
    goto :goto_6
.end method

.method private mergeCollapse()V
    .locals 5

    #@0
    .prologue
    .line 430
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_2

    #@5
    .line 431
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 432
    .local v0, "n":I
    if-lez v0, :cond_1

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
    if-gt v1, v2, :cond_1

    #@1e
    .line 433
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
    if-ge v1, v2, :cond_0

    #@2c
    .line 434
    add-int/lit8 v0, v0, -0x1

    #@2e
    .line 435
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    #@31
    goto :goto_0

    #@32
    .line 436
    :cond_1
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    #@34
    aget v1, v1, v0

    #@36
    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    #@38
    add-int/lit8 v3, v0, 0x1

    #@3a
    aget v2, v2, v3

    #@3c
    if-gt v1, v2, :cond_2

    #@3e
    .line 437
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    #@41
    goto :goto_0

    #@42
    .line 429
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    #@0
    .prologue
    .line 449
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@2
    const/4 v2, 0x1

    #@3
    if-le v1, v2, :cond_1

    #@5
    .line 450
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@7
    add-int/lit8 v0, v1, -0x2

    #@9
    .line 451
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
    .line 452
    add-int/lit8 v0, v0, -0x1

    #@1b
    .line 453
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 448
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
    .line 794
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@2
    if-nez v2, :cond_1

    #@4
    if-lez p2, :cond_0

    #@6
    if-lez p4, :cond_0

    #@8
    add-int v2, p1, p2

    #@a
    move/from16 v0, p3

    #@c
    if-ne v2, v0, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    :goto_0
    if-nez v2, :cond_1

    #@11
    new-instance v2, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v2

    #@17
    :cond_0
    const/4 v2, 0x0

    #@18
    goto :goto_0

    #@19
    .line 797
    :cond_1
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@1d
    .line 798
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, p4

    #@21
    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    .line 799
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@27
    iget v10, v0, Ljava/util/TimSort;->tmpBase:I

    #@29
    .line 800
    .local v10, "tmpBase":I
    move/from16 v0, p3

    #@2b
    move/from16 v1, p4

    #@2d
    invoke-static {v3, v0, v9, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 802
    add-int v2, p1, p2

    #@32
    add-int/lit8 v16, v2, -0x1

    #@34
    .line 803
    .local v16, "cursor1":I
    add-int v2, v10, p4

    #@36
    add-int/lit8 v18, v2, -0x1

    #@38
    .line 804
    .local v18, "cursor2":I
    add-int v2, p3, p4

    #@3a
    add-int/lit8 v20, v2, -0x1

    #@3c
    .line 807
    .local v20, "dest":I
    add-int/lit8 v21, v20, -0x1

    #@3e
    .end local v20    # "dest":I
    .local v21, "dest":I
    add-int/lit8 v17, v16, -0x1

    #@40
    .end local v16    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v2, v3, v16

    #@42
    aput-object v2, v3, v20

    #@44
    .line 808
    add-int/lit8 p2, p2, -0x1

    #@46
    if-nez p2, :cond_2

    #@48
    .line 809
    add-int/lit8 v2, p4, -0x1

    #@4a
    sub-int v2, v21, v2

    #@4c
    move/from16 v0, p4

    #@4e
    invoke-static {v9, v10, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 810
    return-void

    #@52
    .line 812
    :cond_2
    const/4 v2, 0x1

    #@53
    move/from16 v0, p4

    #@55
    if-ne v0, v2, :cond_3

    #@57
    .line 813
    sub-int v20, v21, p2

    #@59
    .line 814
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v16, v17, p2

    #@5b
    .line 815
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    add-int/lit8 v2, v16, 0x1

    #@5d
    add-int/lit8 v4, v20, 0x1

    #@5f
    move/from16 v0, p2

    #@61
    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@64
    .line 816
    aget-object v2, v9, v18

    #@66
    aput-object v2, v3, v20

    #@68
    .line 817
    return-void

    #@69
    .line 820
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_3
    move-object/from16 v0, p0

    #@6b
    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@6d
    .line 821
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    #@71
    move/from16 v22, v0

    #@73
    .local v22, "minGallop":I
    move/from16 v20, v21

    #@75
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@77
    .line 824
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_1
    const/4 v14, 0x0

    #@78
    .line 825
    .local v14, "count1":I
    const/4 v15, 0x0

    #@79
    .line 832
    .local v15, "count2":I
    :cond_4
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@7b
    if-nez v2, :cond_6

    #@7d
    if-lez p2, :cond_5

    #@7f
    const/4 v2, 0x1

    #@80
    move/from16 v0, p4

    #@82
    if-le v0, v2, :cond_5

    #@84
    const/4 v2, 0x1

    #@85
    :goto_2
    if-nez v2, :cond_6

    #@87
    new-instance v2, Ljava/lang/AssertionError;

    #@89
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@8c
    throw v2

    #@8d
    :cond_5
    const/4 v2, 0x0

    #@8e
    goto :goto_2

    #@8f
    .line 833
    :cond_6
    aget-object v2, v9, v18

    #@91
    aget-object v4, v3, v16

    #@93
    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@96
    move-result v2

    #@97
    if-gez v2, :cond_9

    #@99
    .line 834
    add-int/lit8 v21, v20, -0x1

    #@9b
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    #@9d
    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    #@9f
    aput-object v2, v3, v20

    #@a1
    .line 835
    add-int/lit8 v14, v14, 0x1

    #@a3
    .line 836
    const/4 v15, 0x0

    #@a4
    .line 837
    add-int/lit8 p2, p2, -0x1

    #@a6
    if-nez p2, :cond_1d

    #@a8
    move/from16 v20, v21

    #@aa
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@ac
    .line 886
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :cond_7
    :goto_3
    const/4 v2, 0x1

    #@ad
    move/from16 v0, v22

    #@af
    if-ge v0, v2, :cond_8

    #@b1
    const/16 v22, 0x1

    #@b3
    .end local v22    # "minGallop":I
    :cond_8
    move/from16 v0, v22

    #@b5
    move-object/from16 v1, p0

    #@b7
    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    #@b9
    .line 888
    const/4 v2, 0x1

    #@ba
    move/from16 v0, p4

    #@bc
    if-ne v0, v2, :cond_16

    #@be
    .line 889
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@c0
    if-nez v2, :cond_15

    #@c2
    if-lez p2, :cond_14

    #@c4
    const/4 v2, 0x1

    #@c5
    :goto_4
    if-nez v2, :cond_15

    #@c7
    new-instance v2, Ljava/lang/AssertionError;

    #@c9
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v2

    #@cd
    .line 840
    .restart local v22    # "minGallop":I
    :cond_9
    add-int/lit8 v21, v20, -0x1

    #@cf
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    #@d1
    .end local v18    # "cursor2":I
    .local v19, "cursor2":I
    aget-object v2, v9, v18

    #@d3
    aput-object v2, v3, v20

    #@d5
    .line 841
    add-int/lit8 v15, v15, 0x1

    #@d7
    .line 842
    const/4 v14, 0x0

    #@d8
    .line 843
    add-int/lit8 p4, p4, -0x1

    #@da
    const/4 v2, 0x1

    #@db
    move/from16 v0, p4

    #@dd
    if-ne v0, v2, :cond_a

    #@df
    move/from16 v20, v21

    #@e1
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@e3
    .line 844
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_3

    #@e4
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_a
    move/from16 v20, v21

    #@e6
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@e8
    .line 846
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_5
    or-int v2, v14, v15

    #@ea
    move/from16 v0, v22

    #@ec
    if-lt v2, v0, :cond_4

    #@ee
    .line 854
    :goto_6
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@f0
    if-nez v2, :cond_c

    #@f2
    if-lez p2, :cond_b

    #@f4
    const/4 v2, 0x1

    #@f5
    move/from16 v0, p4

    #@f7
    if-le v0, v2, :cond_b

    #@f9
    const/4 v2, 0x1

    #@fa
    :goto_7
    if-nez v2, :cond_c

    #@fc
    new-instance v2, Ljava/lang/AssertionError;

    #@fe
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@101
    throw v2

    #@102
    :cond_b
    const/4 v2, 0x0

    #@103
    goto :goto_7

    #@104
    .line 855
    :cond_c
    aget-object v2, v9, v18

    #@106
    add-int/lit8 v6, p2, -0x1

    #@108
    move/from16 v4, p1

    #@10a
    move/from16 v5, p2

    #@10c
    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@10f
    move-result v2

    #@110
    sub-int v14, p2, v2

    #@112
    .line 856
    if-eqz v14, :cond_d

    #@114
    .line 857
    sub-int v20, v20, v14

    #@116
    .line 858
    sub-int v16, v16, v14

    #@118
    .line 859
    sub-int p2, p2, v14

    #@11a
    .line 860
    add-int/lit8 v2, v16, 0x1

    #@11c
    add-int/lit8 v4, v20, 0x1

    #@11e
    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@121
    .line 861
    if-eqz p2, :cond_7

    #@123
    .line 864
    :cond_d
    add-int/lit8 v21, v20, -0x1

    #@125
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    #@127
    .end local v18    # "cursor2":I
    .restart local v19    # "cursor2":I
    aget-object v2, v9, v18

    #@129
    aput-object v2, v3, v20

    #@12b
    .line 865
    add-int/lit8 p4, p4, -0x1

    #@12d
    const/4 v2, 0x1

    #@12e
    move/from16 v0, p4

    #@130
    if-ne v0, v2, :cond_e

    #@132
    move/from16 v20, v21

    #@134
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@136
    .line 866
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto/16 :goto_3

    #@138
    .line 868
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_e
    aget-object v8, v3, v16

    #@13a
    add-int/lit8 v12, p4, -0x1

    #@13c
    move/from16 v11, p4

    #@13e
    move-object v13, v7

    #@13f
    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@142
    move-result v2

    #@143
    sub-int v15, p4, v2

    #@145
    .line 869
    if-eqz v15, :cond_1c

    #@147
    .line 870
    sub-int v20, v21, v15

    #@149
    .line 871
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v18, v19, v15

    #@14b
    .line 872
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    sub-int p4, p4, v15

    #@14d
    .line 873
    add-int/lit8 v2, v18, 0x1

    #@14f
    add-int/lit8 v4, v20, 0x1

    #@151
    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@154
    .line 874
    const/4 v2, 0x1

    #@155
    move/from16 v0, p4

    #@157
    if-le v0, v2, :cond_7

    #@159
    .line 877
    :goto_8
    add-int/lit8 v21, v20, -0x1

    #@15b
    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    #@15d
    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    #@15f
    aput-object v2, v3, v20

    #@161
    .line 878
    add-int/lit8 p2, p2, -0x1

    #@163
    if-nez p2, :cond_f

    #@165
    move/from16 v20, v21

    #@167
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@169
    .line 879
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_3

    #@16b
    .line 880
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_f
    add-int/lit8 v22, v22, -0x1

    #@16d
    .line 881
    const/4 v2, 0x7

    #@16e
    if-lt v14, v2, :cond_10

    #@170
    const/4 v2, 0x1

    #@171
    move v4, v2

    #@172
    :goto_9
    const/4 v2, 0x7

    #@173
    if-lt v15, v2, :cond_11

    #@175
    const/4 v2, 0x1

    #@176
    :goto_a
    or-int/2addr v2, v4

    #@177
    if-eqz v2, :cond_12

    #@179
    move/from16 v20, v21

    #@17b
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@17d
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_6

    #@17f
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_10
    const/4 v2, 0x0

    #@180
    move v4, v2

    #@181
    goto :goto_9

    #@182
    :cond_11
    const/4 v2, 0x0

    #@183
    goto :goto_a

    #@184
    .line 882
    :cond_12
    if-gez v22, :cond_13

    #@186
    .line 883
    const/16 v22, 0x0

    #@188
    .line 884
    :cond_13
    add-int/lit8 v22, v22, 0x2

    #@18a
    move/from16 v20, v21

    #@18c
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@18e
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_1

    #@190
    .line 889
    .end local v22    # "minGallop":I
    :cond_14
    const/4 v2, 0x0

    #@191
    goto/16 :goto_4

    #@193
    .line 890
    :cond_15
    sub-int v20, v20, p2

    #@195
    .line 891
    sub-int v16, v16, p2

    #@197
    .line 892
    add-int/lit8 v2, v16, 0x1

    #@199
    add-int/lit8 v4, v20, 0x1

    #@19b
    move/from16 v0, p2

    #@19d
    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a0
    .line 893
    aget-object v2, v9, v18

    #@1a2
    aput-object v2, v3, v20

    #@1a4
    .line 793
    :goto_b
    return-void

    #@1a5
    .line 894
    :cond_16
    if-nez p4, :cond_17

    #@1a7
    .line 895
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a9
    .line 896
    const-string/jumbo v4, "Comparison method violates its general contract!"

    #@1ac
    .line 895
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1af
    throw v2

    #@1b0
    .line 898
    :cond_17
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@1b2
    if-nez v2, :cond_19

    #@1b4
    if-nez p2, :cond_18

    #@1b6
    const/4 v2, 0x1

    #@1b7
    :goto_c
    if-nez v2, :cond_19

    #@1b9
    new-instance v2, Ljava/lang/AssertionError;

    #@1bb
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1be
    throw v2

    #@1bf
    :cond_18
    const/4 v2, 0x0

    #@1c0
    goto :goto_c

    #@1c1
    .line 899
    :cond_19
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@1c3
    if-nez v2, :cond_1b

    #@1c5
    if-lez p4, :cond_1a

    #@1c7
    const/4 v2, 0x1

    #@1c8
    :goto_d
    if-nez v2, :cond_1b

    #@1ca
    new-instance v2, Ljava/lang/AssertionError;

    #@1cc
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1cf
    throw v2

    #@1d0
    :cond_1a
    const/4 v2, 0x0

    #@1d1
    goto :goto_d

    #@1d2
    .line 900
    :cond_1b
    add-int/lit8 v2, p4, -0x1

    #@1d4
    sub-int v2, v20, v2

    #@1d6
    move/from16 v0, p4

    #@1d8
    invoke-static {v9, v10, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1db
    goto :goto_b

    #@1dc
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    .restart local v22    # "minGallop":I
    :cond_1c
    move/from16 v20, v21

    #@1de
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    #@1e0
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto/16 :goto_8

    #@1e2
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_1d
    move/from16 v20, v21

    #@1e4
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    #@1e6
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_5
.end method

.method private mergeLo(IIII)V
    .locals 21
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    #@0
    .prologue
    .line 678
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@2
    if-nez v2, :cond_1

    #@4
    if-lez p2, :cond_0

    #@6
    if-lez p4, :cond_0

    #@8
    add-int v2, p1, p2

    #@a
    move/from16 v0, p3

    #@c
    if-ne v2, v0, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    :goto_0
    if-nez v2, :cond_1

    #@11
    new-instance v2, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v2

    #@17
    :cond_0
    const/4 v2, 0x0

    #@18
    goto :goto_0

    #@19
    .line 681
    :cond_1
    move-object/from16 v0, p0

    #@1b
    iget-object v9, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    #@1d
    .line 682
    .local v9, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, p2

    #@21
    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    .line 683
    .local v3, "tmp":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    #@27
    iget v4, v0, Ljava/util/TimSort;->tmpBase:I

    #@29
    .line 684
    .local v4, "cursor1":I
    move/from16 v10, p3

    #@2b
    .line 685
    .local v10, "cursor2":I
    move/from16 v18, p1

    #@2d
    .line 686
    .local v18, "dest":I
    move/from16 v0, p1

    #@2f
    move/from16 v1, p2

    #@31
    invoke-static {v9, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    .line 689
    add-int/lit8 v18, p1, 0x1

    #@36
    add-int/lit8 v10, p3, 0x1

    #@38
    aget-object v2, v9, p3

    #@3a
    aput-object v2, v9, p1

    #@3c
    .line 690
    add-int/lit8 p4, p4, -0x1

    #@3e
    if-nez p4, :cond_2

    #@40
    .line 691
    move/from16 v0, v18

    #@42
    move/from16 v1, p2

    #@44
    invoke-static {v3, v4, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    .line 692
    return-void

    #@48
    .line 694
    :cond_2
    const/4 v2, 0x1

    #@49
    move/from16 v0, p2

    #@4b
    if-ne v0, v2, :cond_3

    #@4d
    .line 695
    move/from16 v0, v18

    #@4f
    move/from16 v1, p4

    #@51
    invoke-static {v9, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@54
    .line 696
    add-int v2, v18, p4

    #@56
    aget-object v5, v3, v4

    #@58
    aput-object v5, v9, v2

    #@5a
    .line 697
    return-void

    #@5b
    .line 700
    :cond_3
    move-object/from16 v0, p0

    #@5d
    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    #@5f
    .line 701
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    #@63
    move/from16 v20, v0

    #@65
    .line 704
    .local v20, "minGallop":I
    :goto_1
    const/4 v14, 0x0

    #@66
    .line 705
    .local v14, "count1":I
    const/4 v15, 0x0

    #@67
    .line 712
    .local v15, "count2":I
    :cond_4
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@69
    if-nez v2, :cond_6

    #@6b
    const/4 v2, 0x1

    #@6c
    move/from16 v0, p2

    #@6e
    if-le v0, v2, :cond_5

    #@70
    if-lez p4, :cond_5

    #@72
    const/4 v2, 0x1

    #@73
    :goto_2
    if-nez v2, :cond_6

    #@75
    new-instance v2, Ljava/lang/AssertionError;

    #@77
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@7a
    throw v2

    #@7b
    :cond_5
    const/4 v2, 0x0

    #@7c
    goto :goto_2

    #@7d
    .line 713
    :cond_6
    aget-object v2, v9, v10

    #@7f
    aget-object v5, v3, v4

    #@81
    invoke-interface {v7, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@84
    move-result v2

    #@85
    if-gez v2, :cond_9

    #@87
    .line 714
    add-int/lit8 v19, v18, 0x1

    #@89
    .end local v18    # "dest":I
    .local v19, "dest":I
    add-int/lit8 v17, v10, 0x1

    #@8b
    .end local v10    # "cursor2":I
    .local v17, "cursor2":I
    aget-object v2, v9, v10

    #@8d
    aput-object v2, v9, v18

    #@8f
    .line 715
    add-int/lit8 v15, v15, 0x1

    #@91
    .line 716
    const/4 v14, 0x0

    #@92
    .line 717
    add-int/lit8 p4, p4, -0x1

    #@94
    if-nez p4, :cond_1d

    #@96
    move/from16 v18, v19

    #@98
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v10, v17

    #@9a
    .line 766
    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    :cond_7
    :goto_3
    const/4 v2, 0x1

    #@9b
    move/from16 v0, v20

    #@9d
    if-ge v0, v2, :cond_8

    #@9f
    const/16 v20, 0x1

    #@a1
    .end local v20    # "minGallop":I
    :cond_8
    move/from16 v0, v20

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    #@a7
    .line 768
    const/4 v2, 0x1

    #@a8
    move/from16 v0, p2

    #@aa
    if-ne v0, v2, :cond_16

    #@ac
    .line 769
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@ae
    if-nez v2, :cond_15

    #@b0
    if-lez p4, :cond_14

    #@b2
    const/4 v2, 0x1

    #@b3
    :goto_4
    if-nez v2, :cond_15

    #@b5
    new-instance v2, Ljava/lang/AssertionError;

    #@b7
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@ba
    throw v2

    #@bb
    .line 720
    .restart local v20    # "minGallop":I
    :cond_9
    add-int/lit8 v19, v18, 0x1

    #@bd
    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    add-int/lit8 v16, v4, 0x1

    #@bf
    .end local v4    # "cursor1":I
    .local v16, "cursor1":I
    aget-object v2, v3, v4

    #@c1
    aput-object v2, v9, v18

    #@c3
    .line 721
    add-int/lit8 v14, v14, 0x1

    #@c5
    .line 722
    const/4 v15, 0x0

    #@c6
    .line 723
    add-int/lit8 p2, p2, -0x1

    #@c8
    const/4 v2, 0x1

    #@c9
    move/from16 v0, p2

    #@cb
    if-ne v0, v2, :cond_a

    #@cd
    move/from16 v18, v19

    #@cf
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    #@d1
    .line 724
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_3

    #@d2
    .end local v4    # "cursor1":I
    .end local v18    # "dest":I
    .restart local v16    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_a
    move/from16 v18, v19

    #@d4
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    #@d6
    .line 726
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_5
    or-int v2, v14, v15

    #@d8
    move/from16 v0, v20

    #@da
    if-lt v2, v0, :cond_4

    #@dc
    move/from16 v17, v10

    #@de
    .line 734
    .end local v10    # "cursor2":I
    .restart local v17    # "cursor2":I
    :goto_6
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@e0
    if-nez v2, :cond_c

    #@e2
    const/4 v2, 0x1

    #@e3
    move/from16 v0, p2

    #@e5
    if-le v0, v2, :cond_b

    #@e7
    if-lez p4, :cond_b

    #@e9
    const/4 v2, 0x1

    #@ea
    :goto_7
    if-nez v2, :cond_c

    #@ec
    new-instance v2, Ljava/lang/AssertionError;

    #@ee
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@f1
    throw v2

    #@f2
    :cond_b
    const/4 v2, 0x0

    #@f3
    goto :goto_7

    #@f4
    .line 735
    :cond_c
    aget-object v2, v9, v17

    #@f6
    const/4 v6, 0x0

    #@f7
    move/from16 v5, p2

    #@f9
    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@fc
    move-result v14

    #@fd
    .line 736
    if-eqz v14, :cond_d

    #@ff
    .line 737
    move/from16 v0, v18

    #@101
    invoke-static {v3, v4, v9, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@104
    .line 738
    add-int v18, v18, v14

    #@106
    .line 739
    add-int/2addr v4, v14

    #@107
    .line 740
    sub-int p2, p2, v14

    #@109
    .line 741
    const/4 v2, 0x1

    #@10a
    move/from16 v0, p2

    #@10c
    if-gt v0, v2, :cond_d

    #@10e
    move/from16 v10, v17

    #@110
    .line 742
    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    goto :goto_3

    #@111
    .line 744
    .end local v10    # "cursor2":I
    .restart local v17    # "cursor2":I
    :cond_d
    add-int/lit8 v19, v18, 0x1

    #@113
    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    add-int/lit8 v10, v17, 0x1

    #@115
    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    aget-object v2, v9, v17

    #@117
    aput-object v2, v9, v18

    #@119
    .line 745
    add-int/lit8 p4, p4, -0x1

    #@11b
    if-nez p4, :cond_e

    #@11d
    move/from16 v18, v19

    #@11f
    .line 746
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    goto/16 :goto_3

    #@121
    .line 748
    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    :cond_e
    aget-object v8, v3, v4

    #@123
    const/4 v12, 0x0

    #@124
    move/from16 v11, p4

    #@126
    move-object v13, v7

    #@127
    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    #@12a
    move-result v15

    #@12b
    .line 749
    if-eqz v15, :cond_1c

    #@12d
    .line 750
    move/from16 v0, v19

    #@12f
    invoke-static {v9, v10, v9, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@132
    .line 751
    add-int v18, v19, v15

    #@134
    .line 752
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    add-int/2addr v10, v15

    #@135
    .line 753
    sub-int p4, p4, v15

    #@137
    .line 754
    if-eqz p4, :cond_7

    #@139
    .line 757
    :goto_8
    add-int/lit8 v19, v18, 0x1

    #@13b
    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    add-int/lit8 v16, v4, 0x1

    #@13d
    .end local v4    # "cursor1":I
    .restart local v16    # "cursor1":I
    aget-object v2, v3, v4

    #@13f
    aput-object v2, v9, v18

    #@141
    .line 758
    add-int/lit8 p2, p2, -0x1

    #@143
    const/4 v2, 0x1

    #@144
    move/from16 v0, p2

    #@146
    if-ne v0, v2, :cond_f

    #@148
    move/from16 v18, v19

    #@14a
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    #@14c
    .line 759
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_3

    #@14e
    .line 760
    .end local v4    # "cursor1":I
    .end local v18    # "dest":I
    .restart local v16    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_f
    add-int/lit8 v20, v20, -0x1

    #@150
    .line 761
    const/4 v2, 0x7

    #@151
    if-lt v14, v2, :cond_10

    #@153
    const/4 v2, 0x1

    #@154
    move v5, v2

    #@155
    :goto_9
    const/4 v2, 0x7

    #@156
    if-lt v15, v2, :cond_11

    #@158
    const/4 v2, 0x1

    #@159
    :goto_a
    or-int/2addr v2, v5

    #@15a
    if-eqz v2, :cond_12

    #@15c
    move/from16 v18, v19

    #@15e
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v17, v10

    #@160
    .end local v10    # "cursor2":I
    .restart local v17    # "cursor2":I
    move/from16 v4, v16

    #@162
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_6

    #@164
    .end local v4    # "cursor1":I
    .end local v17    # "cursor2":I
    .end local v18    # "dest":I
    .restart local v10    # "cursor2":I
    .restart local v16    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_10
    const/4 v2, 0x0

    #@165
    move v5, v2

    #@166
    goto :goto_9

    #@167
    :cond_11
    const/4 v2, 0x0

    #@168
    goto :goto_a

    #@169
    .line 762
    :cond_12
    if-gez v20, :cond_13

    #@16b
    .line 763
    const/16 v20, 0x0

    #@16d
    .line 764
    :cond_13
    add-int/lit8 v20, v20, 0x2

    #@16f
    move/from16 v18, v19

    #@171
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    #@173
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    #@175
    .line 769
    .end local v20    # "minGallop":I
    :cond_14
    const/4 v2, 0x0

    #@176
    goto/16 :goto_4

    #@178
    .line 770
    :cond_15
    move/from16 v0, v18

    #@17a
    move/from16 v1, p4

    #@17c
    invoke-static {v9, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17f
    .line 771
    add-int v2, v18, p4

    #@181
    aget-object v5, v3, v4

    #@183
    aput-object v5, v9, v2

    #@185
    .line 677
    :goto_b
    return-void

    #@186
    .line 772
    :cond_16
    if-nez p2, :cond_17

    #@188
    .line 773
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18a
    .line 774
    const-string/jumbo v5, "Comparison method violates its general contract!"

    #@18d
    .line 773
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@190
    throw v2

    #@191
    .line 776
    :cond_17
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@193
    if-nez v2, :cond_19

    #@195
    if-nez p4, :cond_18

    #@197
    const/4 v2, 0x1

    #@198
    :goto_c
    if-nez v2, :cond_19

    #@19a
    new-instance v2, Ljava/lang/AssertionError;

    #@19c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@19f
    throw v2

    #@1a0
    :cond_18
    const/4 v2, 0x0

    #@1a1
    goto :goto_c

    #@1a2
    .line 777
    :cond_19
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@1a4
    if-nez v2, :cond_1b

    #@1a6
    const/4 v2, 0x1

    #@1a7
    move/from16 v0, p2

    #@1a9
    if-le v0, v2, :cond_1a

    #@1ab
    const/4 v2, 0x1

    #@1ac
    :goto_d
    if-nez v2, :cond_1b

    #@1ae
    new-instance v2, Ljava/lang/AssertionError;

    #@1b0
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1b3
    throw v2

    #@1b4
    :cond_1a
    const/4 v2, 0x0

    #@1b5
    goto :goto_d

    #@1b6
    .line 778
    :cond_1b
    move/from16 v0, v18

    #@1b8
    move/from16 v1, p2

    #@1ba
    invoke-static {v3, v4, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1bd
    goto :goto_b

    #@1be
    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    .restart local v20    # "minGallop":I
    :cond_1c
    move/from16 v18, v19

    #@1c0
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    goto/16 :goto_8

    #@1c2
    .end local v10    # "cursor2":I
    .end local v18    # "dest":I
    .restart local v17    # "cursor2":I
    .restart local v19    # "dest":I
    :cond_1d
    move/from16 v18, v19

    #@1c4
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v10, v17

    #@1c6
    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    goto/16 :goto_5
.end method

.method private static minRunLength(I)I
    .locals 3
    .param p0, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 397
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .line 398
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 399
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    #@13
    if-lt p0, v1, :cond_2

    #@15
    .line 400
    and-int/lit8 v1, p0, 0x1

    #@17
    or-int/2addr v0, v1

    #@18
    .line 401
    shr-int/lit8 p0, p0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 403
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
    .line 413
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    #@2
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@4
    aput p1, v0, v1

    #@6
    .line 414
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    #@8
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    #@a
    aput p2, v0, v1

    #@c
    .line 415
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    #@12
    .line 412
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 371
    add-int/lit8 p2, p2, -0x1

    #@2
    move v0, p2

    #@3
    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    #@4
    .line 372
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 373
    aget-object v2, p0, v1

    #@8
    .line 374
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    #@a
    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    #@c
    aput-object v3, p0, v1

    #@e
    .line 375
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
    .line 370
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 11
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p5, "workBase"    # I
    .param p6, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;[TT;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 208
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p4, "work":[Ljava/lang/Object;, "[TT;"
    sget-boolean v1, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_1

    #@4
    if-eqz p3, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    if-ltz p1, :cond_0

    #@a
    if-gt p1, p2, :cond_0

    #@c
    array-length v1, p0

    #@d
    if-gt p2, v1, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    if-nez v1, :cond_1

    #@12
    new-instance v1, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v1

    #@18
    :cond_0
    const/4 v1, 0x0

    #@19
    goto :goto_0

    #@1a
    .line 210
    :cond_1
    sub-int v9, p2, p1

    #@1c
    .line 211
    .local v9, "nRemaining":I
    const/4 v1, 0x2

    #@1d
    if-ge v9, v1, :cond_2

    #@1f
    .line 212
    return-void

    #@20
    .line 215
    :cond_2
    const/16 v1, 0x20

    #@22
    if-ge v9, v1, :cond_3

    #@24
    .line 216
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    #@27
    move-result v7

    #@28
    .line 217
    .local v7, "initRunLen":I
    add-int v1, p1, v7

    #@2a
    invoke-static {p0, p1, p2, v1, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@2d
    .line 218
    return-void

    #@2e
    .line 226
    .end local v7    # "initRunLen":I
    :cond_3
    new-instance v0, Ljava/util/TimSort;

    #@30
    move-object v1, p0

    #@31
    move-object v2, p3

    #@32
    move-object v3, p4

    #@33
    move/from16 v4, p5

    #@35
    move/from16 v5, p6

    #@37
    invoke-direct/range {v0 .. v5}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    #@3a
    .line 227
    .local v0, "ts":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    invoke-static {v9}, Ljava/util/TimSort;->minRunLength(I)I

    #@3d
    move-result v8

    #@3e
    .line 230
    .local v8, "minRun":I
    :cond_4
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    #@41
    move-result v10

    #@42
    .line 233
    .local v10, "runLen":I
    if-ge v10, v8, :cond_5

    #@44
    .line 234
    if-gt v9, v8, :cond_6

    #@46
    move v6, v9

    #@47
    .line 235
    .local v6, "force":I
    :goto_1
    add-int v1, p1, v6

    #@49
    add-int v2, p1, v10

    #@4b
    invoke-static {p0, p1, v1, v2, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@4e
    .line 236
    move v10, v6

    #@4f
    .line 240
    .end local v6    # "force":I
    :cond_5
    invoke-direct {v0, p1, v10}, Ljava/util/TimSort;->pushRun(II)V

    #@52
    .line 241
    invoke-direct {v0}, Ljava/util/TimSort;->mergeCollapse()V

    #@55
    .line 244
    add-int/2addr p1, v10

    #@56
    .line 245
    sub-int/2addr v9, v10

    #@57
    .line 246
    if-nez v9, :cond_4

    #@59
    .line 249
    sget-boolean v1, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@5b
    if-nez v1, :cond_8

    #@5d
    if-ne p1, p2, :cond_7

    #@5f
    const/4 v1, 0x1

    #@60
    :goto_2
    if-nez v1, :cond_8

    #@62
    new-instance v1, Ljava/lang/AssertionError;

    #@64
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@67
    throw v1

    #@68
    :cond_6
    move v6, v8

    #@69
    .line 234
    goto :goto_1

    #@6a
    .line 249
    :cond_7
    const/4 v1, 0x0

    #@6b
    goto :goto_2

    #@6c
    .line 250
    :cond_8
    invoke-direct {v0}, Ljava/util/TimSort;->mergeForceCollapse()V

    #@6f
    .line 251
    sget-boolean v1, Ljava/util/TimSort;->-assertionsDisabled:Z

    #@71
    if-nez v1, :cond_a

    #@73
    iget v1, v0, Ljava/util/TimSort;->stackSize:I

    #@75
    const/4 v2, 0x1

    #@76
    if-ne v1, v2, :cond_9

    #@78
    const/4 v1, 0x1

    #@79
    :goto_3
    if-nez v1, :cond_a

    #@7b
    new-instance v1, Ljava/lang/AssertionError;

    #@7d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@80
    throw v1

    #@81
    :cond_9
    const/4 v1, 0x0

    #@82
    goto :goto_3

    #@83
    .line 207
    :cond_a
    return-void
.end method
