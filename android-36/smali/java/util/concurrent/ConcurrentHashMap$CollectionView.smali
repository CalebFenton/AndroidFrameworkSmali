.class abstract Ljava/util/concurrent/ConcurrentHashMap$CollectionView;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o OOME_MSG:Ljava/lang/String; = "Required array size too large"

.field private static final whitelist serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final greylist-max-o map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4432
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api clear()V
    .registers 2

    .line 4445
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract whitelist test-api contains(Ljava/lang/Object;)Z
.end method

.method public final whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4545
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_1c

    .line 4546
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4547
    .local v1, "e":Ljava/lang/Object;
    if-eqz v1, :cond_1a

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1a

    .line 4549
    .end local v1    # "e":Ljava/lang/Object;
    :cond_19
    goto :goto_6

    .line 4548
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0

    .line 4551
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4439
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final whitelist test-api isEmpty()Z
    .registers 2

    .line 4447
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api remove(Ljava/lang/Object;)Z
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4555
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_46

    .line 4556
    const/4 v0, 0x0

    .line 4560
    .local v0, "modified":Z
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_c

    .line 4561
    const/4 v1, 0x0

    return v1

    .line 4562
    :cond_c
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    array-length v3, v2

    if-le v1, v3, :cond_31

    .line 4563
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 4564
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4565
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4566
    const/4 v0, 0x1

    goto :goto_1b

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_30
    goto :goto_45

    .line 4570
    :cond_31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4571
    .local v3, "e":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .end local v3    # "e":Ljava/lang/Object;
    goto :goto_35

    .line 4573
    :cond_45
    :goto_45
    return v0

    .line 4555
    .end local v0    # "modified":Z
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4577
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_1d

    .line 4578
    const/4 v0, 0x0

    .line 4579
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4581
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4582
    const/4 v0, 0x1

    goto :goto_7

    .line 4585
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1c
    return v0

    .line 4577
    .end local v0    # "modified":Z
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 4446
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toArray()[Ljava/lang/Object;
    .registers 10

    .line 4466
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    .line 4467
    .local v0, "sz":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    const-string v3, "Required array size too large"

    if-gtz v2, :cond_50

    .line 4469
    long-to-int v2, v0

    .line 4470
    .local v2, "n":I
    new-array v4, v2, [Ljava/lang/Object;

    .line 4471
    .local v4, "r":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 4472
    .local v5, "i":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 4473
    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-ne v5, v2, :cond_41

    .line 4474
    const v8, 0x7ffffff7

    if-ge v2, v8, :cond_3b

    .line 4476
    const v8, 0x3ffffffb    # 1.9999994f

    if-lt v2, v8, :cond_31

    .line 4477
    const v2, 0x7ffffff7

    goto :goto_36

    .line 4479
    :cond_31
    ushr-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    .line 4480
    :goto_36
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_41

    .line 4475
    :cond_3b
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4482
    :cond_41
    :goto_41
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    aput-object v7, v4, v5

    .line 4483
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    move v5, v8

    goto :goto_17

    .line 4484
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_47
    if-ne v5, v2, :cond_4b

    move-object v3, v4

    goto :goto_4f

    :cond_4b
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :goto_4f
    return-object v3

    .line 4468
    .end local v2    # "n":I
    .end local v4    # "r":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_50
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4489
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    .line 4490
    .local v0, "sz":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    const-string v3, "Required array size too large"

    if-gtz v2, :cond_6c

    .line 4492
    long-to-int v2, v0

    .line 4493
    .local v2, "m":I
    array-length v4, p1

    if-lt v4, v2, :cond_15

    move-object v4, p1

    goto :goto_24

    .line 4494
    :cond_15
    nop

    .line 4495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    :goto_24
    nop

    .line 4496
    .local v4, "r":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    .line 4497
    .local v5, "n":I
    const/4 v6, 0x0

    .line 4498
    .local v6, "i":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4499
    .local v8, "e":Ljava/lang/Object;, "TE;"
    if-ne v6, v5, :cond_55

    .line 4500
    const v9, 0x7ffffff7

    if-ge v5, v9, :cond_4f

    .line 4502
    const v9, 0x3ffffffb    # 1.9999994f

    if-lt v5, v9, :cond_45

    .line 4503
    const v5, 0x7ffffff7

    goto :goto_4a

    .line 4505
    :cond_45
    ushr-int/lit8 v9, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    .line 4506
    :goto_4a
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_55

    .line 4501
    :cond_4f
    new-instance v7, Ljava/lang/OutOfMemoryError;

    invoke-direct {v7, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4508
    :cond_55
    :goto_55
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .local v9, "i":I
    aput-object v8, v4, v6

    .line 4509
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    move v6, v9

    goto :goto_2b

    .line 4510
    .end local v9    # "i":I
    .restart local v6    # "i":I
    :cond_5b
    if-ne p1, v4, :cond_63

    if-ge v6, v5, :cond_63

    .line 4511
    const/4 v3, 0x0

    aput-object v3, v4, v6

    .line 4512
    return-object v4

    .line 4514
    :cond_63
    if-ne v6, v5, :cond_67

    move-object v3, v4

    goto :goto_6b

    :cond_67
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :goto_6b
    return-object v3

    .line 4491
    .end local v2    # "m":I
    .end local v4    # "r":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_6c
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 4529
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4530
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4531
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4532
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 4534
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4535
    .local v2, "e":Ljava/lang/Object;
    if-ne v2, p0, :cond_1d

    const-string v3, "(this Collection)"

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4536
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_28

    .line 4537
    goto :goto_34

    .line 4538
    :cond_28
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4539
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_14

    .line 4541
    :cond_34
    :goto_34
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
