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
        Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;,
        Ljava/util/concurrent/CopyOnWriteArrayList$Slice;,
        Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;
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

.method static synthetic -wrap1(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 82
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@7
    .line 82
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
    .line 91
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    #@7
    .line 90
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
    .line 97
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
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
    .line 97
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
    .line 130
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
    .line 131
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@11
    move-result v2

    #@12
    const/4 v3, -0x1

    #@13
    if-ne v2, v3, :cond_0

    #@15
    .line 132
    const/4 v2, 0x0

    #@16
    return v2

    #@17
    .line 135
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    #@18
    return v2
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    #@0
    .prologue
    .line 442
    if-nez p0, :cond_1

    #@2
    .line 443
    move v0, p2

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    #@5
    .line 444
    aget-object v1, p1, v0

    #@7
    if-nez v1, :cond_0

    #@9
    .line 445
    return v0

    #@a
    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 449
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    #@e
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p3, :cond_3

    #@10
    .line 450
    aget-object v1, p1, v0

    #@12
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 451
    return v0

    #@19
    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 455
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
    .line 425
    if-nez p0, :cond_1

    #@2
    .line 426
    add-int/lit8 v0, p3, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_3

    #@6
    .line 427
    aget-object v1, p1, v0

    #@8
    if-nez v1, :cond_0

    #@a
    .line 428
    return v0

    #@b
    .line 426
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@d
    goto :goto_0

    #@e
    .line 432
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v0, p3, -0x1

    #@10
    .restart local v0    # "i":I
    :goto_1
    if-lt v0, p2, :cond_3

    #@12
    .line 433
    aget-object v1, p1, v0

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 434
    return v0

    #@1b
    .line 432
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_1

    #@1e
    .line 438
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
    .line 763
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 764
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@7
    move-result v2

    #@8
    new-array v1, v2, [Ljava/lang/Object;

    #@a
    .line 765
    .local v1, "snapshot":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 766
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    aput-object v2, v1, v0

    #@14
    .line 765
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 768
    :cond_0
    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 762
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
    .line 371
    move v0, p3

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_3

    #@4
    .line 372
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
    .line 371
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 380
    :cond_0
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@13
    array-length v6, v6

    #@14
    add-int/lit8 v6, v6, -0x1

    #@16
    new-array v2, v6, [Ljava/lang/Object;

    #@18
    .line 381
    .local v2, "newElements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@1a
    invoke-static {v6, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 382
    move v3, v0

    #@1e
    .line 383
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
    .line 384
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
    .line 385
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
    .line 383
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@37
    move v4, v3

    #@38
    .end local v3    # "newSize":I
    .restart local v4    # "newSize":I
    goto :goto_1

    #@39
    .line 393
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
    .line 394
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@44
    array-length v6, v6

    #@45
    sub-int/2addr v6, p4

    #@46
    add-int v3, v4, v6

    #@48
    .line 396
    .end local v4    # "newSize":I
    .restart local v3    # "newSize":I
    array-length v6, v2

    #@49
    if-ge v3, v6, :cond_2

    #@4b
    .line 397
    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    .line 399
    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@51
    array-length v6, v6

    #@52
    array-length v7, v2

    #@53
    sub-int v5, v6, v7

    #@55
    .line 400
    .local v5, "removed":I
    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@57
    .line 401
    return v5

    #@58
    .line 405
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
    .line 418
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
    .line 419
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@b
    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e
    .line 420
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
    .line 421
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@19
    .line 417
    return-void
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
    .line 753
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 754
    .local v1, "snapshot":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@5
    .line 755
    array-length v2, v1

    #@6
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@9
    .line 756
    const/4 v2, 0x0

    #@a
    array-length v3, v1

    #@b
    :goto_0
    if-ge v2, v3, :cond_0

    #@d
    aget-object v0, v1, v2

    #@f
    .line 757
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@12
    .line 756
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 752
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
    .line 275
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    new-array v0, v1, [Ljava/lang/Object;

    #@8
    .line 276
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 277
    aput-object p2, v0, p1

    #@11
    .line 278
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
    .line 279
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 274
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
    .line 267
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    new-array v0, v1, [Ljava/lang/Object;

    #@8
    .line 268
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
    .line 269
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@14
    array-length v1, v1

    #@15
    aput-object p1, v0, v1

    #@17
    .line 270
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 271
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
    .line 287
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 288
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
    .line 289
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@f
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x0

    #@11
    invoke-static {v3, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 290
    array-length v3, v1

    #@15
    const/4 v4, 0x0

    #@16
    invoke-static {v1, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 291
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@1b
    .line 292
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
    .line 291
    invoke-static {v3, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 293
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@26
    .line 294
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
    .line 283
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
    .line 307
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    .line 308
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
    .line 309
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
    .line 310
    const/4 v0, 0x0

    #@18
    .line 311
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
    .line 312
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
    .line 313
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
    .line 311
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@34
    move v1, v0

    #@35
    .end local v0    # "addedCount":I
    .restart local v1    # "addedCount":I
    goto :goto_0

    #@36
    .line 316
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    array-length v5, v4

    #@37
    if-ge v1, v5, :cond_1

    #@39
    .line 318
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3b
    array-length v5, v5

    #@3c
    add-int/2addr v5, v1

    #@3d
    const/4 v6, 0x0

    #@3e
    .line 317
    invoke-static {v2, v6, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    .line 320
    :cond_1
    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 321
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
    .line 331
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 332
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 334
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 335
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
    .line 339
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@3
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 338
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
    .line 103
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    .line 104
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
    .line 105
    return-object v1

    #@11
    .line 106
    .end local v1    # "result":Ljava/util/concurrent/CopyOnWriteArrayList;
    :catch_0
    move-exception v0

    #@12
    .line 107
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
    .line 121
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
    .line 125
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 126
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
    .line 241
    instance-of v5, p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    if-eqz v5, :cond_1

    #@6
    .line 242
    if-eq p0, p1, :cond_0

    #@8
    .line 243
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
    .line 242
    :cond_0
    return v3

    #@13
    .line 244
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Ljava/util/List;

    #@15
    if-eqz v5, :cond_5

    #@17
    .line 245
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@19
    .line 246
    .local v2, "snapshot":[Ljava/lang/Object;
    check-cast p1, Ljava/util/List;

    #@1b
    .end local p1    # "other":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v0

    #@1f
    .line 247
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
    .line 248
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
    .line 247
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 249
    :cond_2
    return v4

    #@39
    .line 252
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
    .line 254
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "snapshot":[Ljava/lang/Object;
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_5
    return v4
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
    .line 117
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
    .line 460
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 259
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
    .line 150
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 151
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
    .line 145
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 146
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
    .line 171
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
    .line 183
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 184
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
    .line 166
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 167
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
    .line 161
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 162
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
    .line 210
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 211
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
    .line 197
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    .line 198
    .local v1, "snapshot":[Ljava/lang/Object;
    if-ltz p1, :cond_0

    #@5
    array-length v2, v1

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 199
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
    .line 201
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    #@30
    array-length v2, v1

    #@31
    invoke-direct {v0, v1, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #@34
    .line 202
    .local v0, "result":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    invoke-static {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->-set0(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I

    #@37
    .line 203
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
    .line 344
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    aget-object v0, v1, p1

    #@5
    .line 345
    .local v0, "removed":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, p1, 0x1

    #@7
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 346
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
    .line 350
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    .line 351
    .local v0, "index":I
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 352
    const/4 v1, 0x0

    #@9
    monitor-exit p0

    #@a
    return v1

    #@b
    .line 354
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 355
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
    .line 359
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
    .line 363
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
    .line 409
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Ljava/lang/Object;

    #@9
    .line 411
    .local v0, "newElements":[Ljava/lang/Object;
    aget-object v1, v0, p1

    #@b
    .line 412
    .local v1, "result":Ljava/lang/Object;, "TE;"
    aput-object p2, v0, p1

    #@d
    .line 413
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 414
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
    .line 112
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
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
    .line 215
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    .line 216
    .local v0, "snapshot":[Ljava/lang/Object;
    if-ltz p1, :cond_0

    #@4
    if-le p1, p2, :cond_1

    #@6
    .line 217
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
    .line 218
    const-string/jumbo v3, ", list size="

    #@26
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 218
    array-length v3, v0

    #@2b
    .line 217
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
    .line 216
    :cond_1
    array-length v1, v0

    #@38
    if-gt p2, v1, :cond_0

    #@3a
    .line 220
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
    .line 224
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
    .line 229
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@3
    .line 230
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    #@4
    array-length v2, p1

    #@5
    if-le v1, v2, :cond_0

    #@7
    .line 231
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
    .line 233
    :cond_0
    array-length v1, v0

    #@12
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 234
    array-length v1, v0

    #@16
    array-length v2, p1

    #@17
    if-ge v1, v2, :cond_1

    #@19
    .line 235
    array-length v1, v0

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object v2, p1, v1

    #@1d
    .line 237
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 263
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
