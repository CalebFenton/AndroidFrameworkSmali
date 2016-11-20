.class public Ljava/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;,
        Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;,
        Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;
    .param p2, "retain"    # Z
    .param p3, "from"    # I
    .param p4, "to"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/concurrent/CopyOnWriteArrayList;IILjava/util/function/Consumer;)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "action"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->forInRange(IILjava/util/function/Consumer;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Ljava/util/concurrent/CopyOnWriteArrayList;IILjava/util/function/UnaryOperator;)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "operator"    # Ljava/util/function/UnaryOperator;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->replaceInRange(IILjava/util/function/UnaryOperator;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Ljava/util/concurrent/CopyOnWriteArrayList;IILjava/util/Comparator;)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "c"    # Ljava/util/Comparator;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->sortInRange(IILjava/util/Comparator;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@7
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    #@7
    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    array-length v0, p1

    #@4
    const-class v1, [Ljava/lang/Object;

    #@6
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@c
    .line 101
    return-void
.end method

.method static containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z
    .locals 4
    .param p1, "snapshot"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 135
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@11
    move-result v2

    #@12
    const/4 v3, -0x1

    #@13
    if-ne v2, v3, :cond_0

    #@15
    .line 136
    const/4 v2, 0x0

    #@16
    return v2

    #@17
    .line 139
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    #@18
    return v2
.end method

.method private forInRange(IILjava/util/function/Consumer;)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v4, 0x0

    #@1
    .line 405
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 406
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@6
    array-length v2, v2

    #@7
    new-array v1, v2, [Ljava/lang/Object;

    #@9
    .line 407
    .local v1, "newElements":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@b
    array-length v3, v1

    #@c
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 408
    move v0, p1

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@12
    .line 409
    aget-object v2, v1, v0

    #@14
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@17
    .line 408
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 404
    :cond_0
    return-void
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    #@0
    .prologue
    .line 489
    if-nez p0, :cond_1

    #@2
    .line 490
    move v0, p2

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    #@5
    .line 491
    aget-object v1, p1, v0

    #@7
    if-nez v1, :cond_0

    #@9
    .line 492
    return v0

    #@a
    .line 490
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 496
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    #@e
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p3, :cond_3

    #@10
    .line 497
    aget-object v1, p1, v0

    #@12
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 498
    return v0

    #@19
    .line 496
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 502
    :cond_3
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method static lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    #@0
    .prologue
    .line 472
    if-nez p0, :cond_1

    #@2
    .line 473
    add-int/lit8 v0, p3, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_3

    #@6
    .line 474
    aget-object v1, p1, v0

    #@8
    if-nez v1, :cond_0

    #@a
    .line 475
    return v0

    #@b
    .line 473
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@d
    goto :goto_0

    #@e
    .line 479
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v0, p3, -0x1

    #@10
    .restart local v0    # "i":I
    :goto_1
    if-lt v0, p2, :cond_3

    #@12
    .line 480
    aget-object v1, p1, v0

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 481
    return v0

    #@1b
    .line 479
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_1

    #@1e
    .line 485
    :cond_3
    const/4 v1, -0x1

    #@1f
    return v1
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    monitor-enter p0

    #@1
    .line 844
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 845
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@7
    move-result v2

    #@8
    new-array v1, v2, [Ljava/lang/Object;

    #@a
    .line 846
    .local v1, "snapshot":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 847
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    aput-object v2, v1, v0

    #@14
    .line 846
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 849
    :cond_0
    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 843
    return-void

    #@1b
    .end local v0    # "i":I
    .end local v1    # "snapshot":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method private removeOrRetain(Ljava/util/Collection;ZII)I
    .locals 9
    .param p2, "retain"    # Z
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;ZII)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    #@1
    .line 418
    move v0, p3

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_3

    #@4
    .line 419
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@6
    aget-object v6, v6, v0

    #@8
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v6

    #@c
    if-ne v6, p2, :cond_0

    #@e
    .line 418
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 427
    :cond_0
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@13
    array-length v6, v6

    #@14
    add-int/lit8 v6, v6, -0x1

    #@16
    new-array v2, v6, [Ljava/lang/Object;

    #@18
    .line 428
    .local v2, "newElements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@1a
    invoke-static {v6, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 429
    move v3, v0

    #@1e
    .line 430
    .local v3, "newSize":I
    add-int/lit8 v1, v0, 0x1

    #@20
    .local v1, "j":I
    move v4, v3

    #@21
    .end local v3    # "newSize":I
    .local v4, "newSize":I
    :goto_1
    if-ge v1, p4, :cond_1

    #@23
    .line 431
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@25
    aget-object v6, v6, v1

    #@27
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-ne v6, p2, :cond_4

    #@2d
    .line 432
    add-int/lit8 v3, v4, 0x1

    #@2f
    .end local v4    # "newSize":I
    .restart local v3    # "newSize":I
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@31
    aget-object v6, v6, v1

    #@33
    aput-object v6, v2, v4

    #@35
    .line 430
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@37
    move v4, v3

    #@38
    .end local v3    # "newSize":I
    .restart local v4    # "newSize":I
    goto :goto_1

    #@39
    .line 440
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3b
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3d
    array-length v7, v7

    #@3e
    sub-int/2addr v7, p4

    #@3f
    invoke-static {v6, p4, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@42
    .line 441
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@44
    array-length v6, v6

    #@45
    sub-int/2addr v6, p4

    #@46
    add-int v3, v4, v6

    #@48
    .line 443
    .end local v4    # "newSize":I
    .restart local v3    # "newSize":I
    array-length v6, v2

    #@49
    if-ge v3, v6, :cond_2

    #@4b
    .line 444
    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    .line 446
    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@51
    array-length v6, v6

    #@52
    array-length v7, v2

    #@53
    sub-int v5, v6, v7

    #@55
    .line 447
    .local v5, "removed":I
    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@57
    .line 448
    return v5

    #@58
    .line 452
    .end local v1    # "j":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local v3    # "newSize":I
    .end local v5    # "removed":I
    :cond_3
    return v8

    #@59
    .restart local v1    # "j":I
    .restart local v2    # "newElements":[Ljava/lang/Object;
    .restart local v4    # "newSize":I
    :cond_4
    move v3, v4

    #@5a
    .end local v4    # "newSize":I
    .restart local v3    # "newSize":I
    goto :goto_2
.end method

.method private removeRange(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 465
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    sub-int v2, p2, p1

    #@6
    sub-int/2addr v1, v2

    #@7
    new-array v0, v1, [Ljava/lang/Object;

    #@9
    .line 466
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@b
    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e
    .line 467
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@10
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@12
    array-length v2, v2

    #@13
    sub-int/2addr v2, p2

    #@14
    invoke-static {v1, p2, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 468
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@19
    .line 464
    return-void
.end method

.method private replaceInRange(IILjava/util/function/UnaryOperator;)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p3, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 376
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 377
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@6
    array-length v3, v3

    #@7
    new-array v2, v3, [Ljava/lang/Object;

    #@9
    .line 378
    .local v2, "newElements":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@b
    array-length v4, v2

    #@c
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 379
    move v1, p1

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@12
    .line 380
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@14
    aget-object v0, v3, v1

    #@16
    .line 381
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p3, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    aput-object v3, v2, v1

    #@1c
    .line 379
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 383
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@21
    .line 375
    return-void
.end method

.method private declared-synchronized sortInRange(IILjava/util/Comparator;)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    monitor-enter p0

    #@1
    .line 392
    :try_start_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 393
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@6
    array-length v1, v1

    #@7
    new-array v0, v1, [Ljava/lang/Object;

    #@9
    .line 394
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@b
    array-length v2, v0

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x0

    #@e
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 395
    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@14
    .line 396
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 391
    return-void

    #@18
    .end local v0    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 834
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 835
    .local v1, "snapshot":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@5
    .line 836
    array-length v2, v1

    #@6
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@9
    .line 837
    const/4 v2, 0x0

    #@a
    array-length v3, v1

    #@b
    :goto_0
    if-ge v2, v3, :cond_0

    #@d
    aget-object v0, v1, v2

    #@f
    .line 838
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@12
    .line 837
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 833
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 279
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    new-array v0, v1, [Ljava/lang/Object;

    #@8
    .line 280
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 281
    aput-object p2, v0, p1

    #@11
    .line 282
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@13
    add-int/lit8 v2, p1, 0x1

    #@15
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@17
    array-length v3, v3

    #@18
    sub-int/2addr v3, p1

    #@19
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 283
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 278
    return-void

    #@20
    .end local v0    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 271
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    new-array v0, v1, [Ljava/lang/Object;

    #@8
    .line 272
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@a
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@c
    array-length v2, v2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 273
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@14
    array-length v1, v1

    #@15
    aput-object p1, v0, v1

    #@17
    .line 274
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 275
    const/4 v1, 0x1

    #@1a
    monitor-exit p0

    #@1b
    return v1

    #@1c
    .end local v0    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 291
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 292
    .local v1, "toAdd":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@8
    array-length v3, v3

    #@9
    array-length v4, v1

    #@a
    add-int/2addr v3, v4

    #@b
    new-array v0, v3, [Ljava/lang/Object;

    #@d
    .line 293
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@f
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x0

    #@11
    invoke-static {v3, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 294
    array-length v3, v1

    #@15
    const/4 v4, 0x0

    #@16
    invoke-static {v1, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 295
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@1b
    .line 296
    array-length v4, v1

    #@1c
    add-int/2addr v4, p1

    #@1d
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@1f
    array-length v5, v5

    #@20
    sub-int/2addr v5, p1

    #@21
    .line 295
    invoke-static {v3, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 297
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@26
    .line 298
    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    if-lez v3, :cond_0

    #@29
    const/4 v2, 0x1

    #@2a
    :cond_0
    monitor-exit p0

    #@2b
    return v2

    #@2c
    .end local v0    # "newElements":[Ljava/lang/Object;
    .end local v1    # "toAdd":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit p0

    #@2e
    throw v2
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    #@1
    .line 287
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v0, v0

    #@4
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized addAllAbsent(Ljava/util/Collection;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 311
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    .line 312
    .local v4, "toAdd":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@8
    array-length v6, v6

    #@9
    array-length v7, v4

    #@a
    add-int/2addr v6, v7

    #@b
    new-array v2, v6, [Ljava/lang/Object;

    #@d
    .line 313
    .local v2, "newElements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@f
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@11
    array-length v7, v7

    #@12
    const/4 v8, 0x0

    #@13
    const/4 v9, 0x0

    #@14
    invoke-static {v6, v8, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 314
    const/4 v0, 0x0

    #@18
    .line 315
    .local v0, "addedCount":I
    array-length v6, v4

    #@19
    move v1, v0

    #@1a
    .end local v0    # "addedCount":I
    .local v1, "addedCount":I
    :goto_0
    if-ge v5, v6, :cond_0

    #@1c
    aget-object v3, v4, v5

    #@1e
    .line 316
    .local v3, "o":Ljava/lang/Object;
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@20
    array-length v7, v7

    #@21
    add-int/2addr v7, v1

    #@22
    const/4 v8, 0x0

    #@23
    invoke-static {v3, v2, v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@26
    move-result v7

    #@27
    const/4 v8, -0x1

    #@28
    if-ne v7, v8, :cond_2

    #@2a
    .line 317
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2c
    array-length v7, v7

    #@2d
    add-int/lit8 v0, v1, 0x1

    #@2f
    .end local v1    # "addedCount":I
    .restart local v0    # "addedCount":I
    add-int/2addr v7, v1

    #@30
    aput-object v3, v2, v7

    #@32
    .line 315
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@34
    move v1, v0

    #@35
    .end local v0    # "addedCount":I
    .restart local v1    # "addedCount":I
    goto :goto_0

    #@36
    .line 320
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    array-length v5, v4

    #@37
    if-ge v1, v5, :cond_1

    #@39
    .line 322
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3b
    array-length v5, v5

    #@3c
    add-int/2addr v5, v1

    #@3d
    const/4 v6, 0x0

    #@3e
    .line 321
    invoke-static {v2, v6, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    .line 324
    :cond_1
    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 325
    return v1

    #@46
    .end local v1    # "addedCount":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local v4    # "toAdd":[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    #@47
    monitor-exit p0

    #@48
    throw v5

    #@49
    .restart local v1    # "addedCount":I
    .restart local v2    # "newElements":[Ljava/lang/Object;
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "toAdd":[Ljava/lang/Object;
    :cond_2
    move v0, v1

    #@4a
    .end local v1    # "addedCount":I
    .restart local v0    # "addedCount":I
    goto :goto_1
.end method

.method public declared-synchronized addIfAbsent(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 335
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 336
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 338
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 339
    const/4 v0, 0x1

    #@e
    monitor-exit p0

    #@f
    return v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    monitor-enter p0

    #@1
    .line 343
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@3
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 342
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 107
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    .line 108
    .local v1, "result":Ljava/util/concurrent/CopyOnWriteArrayList;
    iget-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [Ljava/lang/Object;

    #@e
    iput-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 109
    return-object v1

    #@11
    .line 110
    .end local v1    # "result":Ljava/util/concurrent/CopyOnWriteArrayList;
    :catch_0
    move-exception v0

    #@12
    .line 111
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@17
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 125
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 130
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 245
    instance-of v5, p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    if-eqz v5, :cond_1

    #@6
    .line 246
    if-eq p0, p1, :cond_0

    #@8
    .line 247
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@a
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v4, p1, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@e
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    .line 246
    :cond_0
    return v3

    #@13
    .line 248
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Ljava/util/List;

    #@15
    if-eqz v5, :cond_5

    #@17
    .line 249
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@19
    .line 250
    .local v2, "snapshot":[Ljava/lang/Object;
    check-cast p1, Ljava/util/List;

    #@1b
    .end local p1    # "other":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v0

    #@1f
    .line 251
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    array-length v6, v2

    #@20
    move v5, v4

    #@21
    :goto_0
    if-ge v5, v6, :cond_3

    #@23
    aget-object v1, v2, v5

    #@25
    .line 252
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_2

    #@2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    invoke-static {v1, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_2

    #@35
    .line 251
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 253
    :cond_2
    return v4

    #@39
    .line 256
    .end local v1    # "o":Ljava/lang/Object;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_4

    #@3f
    move v3, v4

    #@40
    :cond_4
    return v3

    #@41
    .line 258
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "snapshot":[Ljava/lang/Object;
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_5
    return v4
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 401
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forInRange(IILjava/util/function/Consumer;)V

    #@7
    .line 400
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method final getArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 263
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 154
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 155
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 150
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    #@3
    invoke-static {p1, v0, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@6
    move-result v1

    #@7
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 175
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 187
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 188
    .local v0, "snapshot":[Ljava/lang/Object;
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    #@4
    array-length v2, v0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-direct {v1, v0, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #@9
    return-object v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 170
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 171
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 166
    .local v0, "snapshot":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@3
    invoke-static {p1, v0, v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@6
    move-result v1

    #@7
    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 215
    .local v0, "snapshot":[Ljava/lang/Object;
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    #@4
    array-length v2, v0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-direct {v1, v0, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #@9
    return-object v1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 201
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    .line 202
    .local v1, "snapshot":[Ljava/lang/Object;
    if-ltz p1, :cond_0

    #@5
    array-length v2, v1

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 203
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "index="

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, ", length="

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    array-length v4, v1

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 205
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    #@30
    array-length v2, v1

    #@31
    invoke-direct {v0, v1, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #@34
    .line 206
    .local v0, "result":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    invoke-static {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->-set0(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I

    #@37
    .line 207
    return-object v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    monitor-enter p0

    #@1
    .line 348
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    aget-object v0, v1, p1

    #@5
    .line 349
    .local v0, "removed":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, p1, 0x1

    #@7
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 350
    return-object v0

    #@c
    .end local v0    # "removed":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    monitor-enter p0

    #@1
    .line 354
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    .line 355
    .local v0, "index":I
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 356
    const/4 v1, 0x0

    #@9
    monitor-exit p0

    #@a
    return v1

    #@b
    .line 358
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 359
    const/4 v1, 0x1

    #@f
    monitor-exit p0

    #@10
    return v1

    #@11
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 363
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {p0, p1, v2, v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    monitor-exit p0

    #@f
    return v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    monitor-enter p0

    #@1
    .line 372
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v0, v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->replaceInRange(IILjava/util/function/UnaryOperator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 371
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 367
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@5
    array-length v2, v2

    #@6
    const/4 v3, 0x1

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {p0, p1, v3, v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    :goto_0
    monitor-exit p0

    #@f
    return v0

    #@10
    :cond_0
    move v0, v1

    #@11
    goto :goto_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 456
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Ljava/lang/Object;

    #@9
    .line 458
    .local v0, "newElements":[Ljava/lang/Object;
    aget-object v1, v0, p1

    #@b
    .line 459
    .local v1, "result":Ljava/lang/Object;, "TE;"
    aput-object p2, v0, p1

    #@d
    .line 460
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 461
    return-object v1

    #@11
    .end local v0    # "newElements":[Ljava/lang/Object;
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    monitor-exit p0

    #@13
    throw v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 116
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public declared-synchronized sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    monitor-enter p0

    #@1
    .line 388
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v0, v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->sortInRange(IILjava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 387
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 219
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 220
    .local v0, "snapshot":[Ljava/lang/Object;
    if-ltz p1, :cond_0

    #@4
    if-le p1, p2, :cond_1

    #@6
    .line 221
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "from="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ", to="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 222
    const-string/jumbo v3, ", list size="

    #@26
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 222
    array-length v3, v0

    #@2b
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 220
    :cond_1
    array-length v1, v0

    #@38
    if-gt p2, v1, :cond_0

    #@3a
    .line 224
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;

    #@3c
    invoke-direct {v1, p0, v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    #@3f
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 228
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/Object;

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@1
    .line 233
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    .line 234
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    #@4
    array-length v2, p1

    #@5
    if-le v1, v2, :cond_0

    #@7
    .line 235
    array-length v1, v0

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 237
    :cond_0
    array-length v1, v0

    #@12
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 238
    array-length v1, v0

    #@16
    array-length v2, p1

    #@17
    if-ge v1, v2, :cond_1

    #@19
    .line 239
    array-length v1, v0

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object v2, p1, v1

    #@1d
    .line 241
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 267
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
