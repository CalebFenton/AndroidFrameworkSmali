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
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final OOME_MSG:Ljava/lang/String; = "Required array size too large"

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4408
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    #@0
    .prologue
    .line 4421
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@5
    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
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
    .line 4521
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_2

    #@2
    .line 4522
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 4523
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@12
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 4524
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 4527
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    #@1b
    return v2
.end method

.method public getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4415
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 4423
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public final removeAll(Ljava/util/Collection;)Z
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
    .line 4531
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 4532
    :cond_0
    const/4 v1, 0x0

    #@9
    .line 4533
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 4534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 4535
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@20
    .line 4536
    const/4 v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 4539
    :cond_2
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
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
    .line 4543
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 4544
    :cond_0
    const/4 v1, 0x0

    #@9
    .line 4545
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 4546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 4547
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@20
    .line 4548
    const/4 v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 4551
    :cond_2
    return v1
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 4422
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 10

    #@0
    .prologue
    .line 4442
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    #@5
    move-result-wide v6

    #@6
    .line 4443
    .local v6, "sz":J
    const-wide/32 v8, 0x7ffffff7

    #@9
    cmp-long v8, v6, v8

    #@b
    if-lez v8, :cond_0

    #@d
    .line 4444
    new-instance v8, Ljava/lang/OutOfMemoryError;

    #@f
    const-string/jumbo v9, "Required array size too large"

    #@12
    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 4445
    :cond_0
    long-to-int v4, v6

    #@17
    .line 4446
    .local v4, "n":I
    new-array v5, v4, [Ljava/lang/Object;

    #@19
    .line 4447
    .local v5, "r":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@1a
    .line 4448
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_4

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .line 4449
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, v4, :cond_2

    #@2a
    .line 4450
    const v8, 0x7ffffff7

    #@2d
    if-lt v4, v8, :cond_1

    #@2f
    .line 4451
    new-instance v8, Ljava/lang/OutOfMemoryError;

    #@31
    const-string/jumbo v9, "Required array size too large"

    #@34
    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@37
    throw v8

    #@38
    .line 4452
    :cond_1
    const v8, 0x3ffffffb    # 1.9999994f

    #@3b
    if-lt v4, v8, :cond_3

    #@3d
    .line 4453
    const v4, 0x7ffffff7

    #@40
    .line 4456
    :goto_1
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    .line 4458
    :cond_2
    add-int/lit8 v3, v2, 0x1

    #@46
    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v5, v2

    #@48
    move v2, v3

    #@49
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@4a
    .line 4455
    :cond_3
    ushr-int/lit8 v8, v4, 0x1

    #@4c
    add-int/lit8 v8, v8, 0x1

    #@4e
    add-int/2addr v4, v8

    #@4f
    goto :goto_1

    #@50
    .line 4460
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    if-ne v2, v4, :cond_5

    #@52
    .end local v5    # "r":[Ljava/lang/Object;
    :goto_2
    return-object v5

    #@53
    .restart local v5    # "r":[Ljava/lang/Object;
    :cond_5
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    goto :goto_2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 4465
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    #@5
    move-result-wide v8

    #@6
    .line 4466
    .local v8, "sz":J
    const-wide/32 v10, 0x7ffffff7

    #@9
    cmp-long v7, v8, v10

    #@b
    if-lez v7, :cond_0

    #@d
    .line 4467
    new-instance v7, Ljava/lang/OutOfMemoryError;

    #@f
    const-string/jumbo v10, "Required array size too large"

    #@12
    invoke-direct {v7, v10}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@15
    throw v7

    #@16
    .line 4468
    :cond_0
    long-to-int v4, v8

    #@17
    .line 4469
    .local v4, "m":I
    array-length v7, p1

    #@18
    if-lt v7, v4, :cond_1

    #@1a
    move-object v6, p1

    #@1b
    .line 4472
    .local v6, "r":[Ljava/lang/Object;, "[TT;"
    :goto_0
    array-length v5, v6

    #@1c
    .line 4473
    .local v5, "n":I
    const/4 v2, 0x0

    #@1d
    .line 4474
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_5

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    .line 4475
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, v5, :cond_3

    #@2d
    .line 4476
    const v7, 0x7ffffff7

    #@30
    if-lt v5, v7, :cond_2

    #@32
    .line 4477
    new-instance v7, Ljava/lang/OutOfMemoryError;

    #@34
    const-string/jumbo v10, "Required array size too large"

    #@37
    invoke-direct {v7, v10}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@3a
    throw v7

    #@3b
    .line 4471
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v5    # "n":I
    .end local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@42
    move-result-object v7

    #@43
    .line 4470
    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, [Ljava/lang/Object;

    #@49
    move-object v6, v7

    #@4a
    goto :goto_0

    #@4b
    .line 4478
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v2    # "i":I
    .restart local v5    # "n":I
    .restart local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_2
    const v7, 0x3ffffffb    # 1.9999994f

    #@4e
    if-lt v5, v7, :cond_4

    #@50
    .line 4479
    const v5, 0x7ffffff7

    #@53
    .line 4482
    :goto_2
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@56
    move-result-object v6

    #@57
    .line 4484
    :cond_3
    add-int/lit8 v3, v2, 0x1

    #@59
    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v6, v2

    #@5b
    move v2, v3

    #@5c
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@5d
    .line 4481
    :cond_4
    ushr-int/lit8 v7, v5, 0x1

    #@5f
    add-int/lit8 v7, v7, 0x1

    #@61
    add-int/2addr v5, v7

    #@62
    goto :goto_2

    #@63
    .line 4486
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    if-ne p1, v6, :cond_6

    #@65
    if-ge v2, v5, :cond_6

    #@67
    .line 4487
    const/4 v7, 0x0

    #@68
    aput-object v7, v6, v2

    #@6a
    .line 4488
    return-object v6

    #@6b
    .line 4490
    :cond_6
    if-ne v2, v5, :cond_7

    #@6d
    .end local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :goto_3
    return-object v6

    #@6e
    .restart local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_7
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@71
    move-result-object v6

    #@72
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 4505
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CollectionView<TK;TV;TE;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 4506
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 4507
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .line 4508
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 4510
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 4511
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, p0, :cond_0

    #@1a
    const-string/jumbo v0, "(this Collection)"

    #@1d
    .end local v0    # "e":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    .line 4512
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2

    #@26
    .line 4517
    :cond_1
    const/16 v3, 0x5d

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3

    #@31
    .line 4514
    :cond_2
    const/16 v3, 0x2c

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const/16 v4, 0x20

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_0
.end method
