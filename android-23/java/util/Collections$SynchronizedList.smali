.class Ljava/util/Collections$SynchronizedList;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    #@3
    .line 513
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    .line 511
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 517
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    #@3
    .line 518
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    .line 516
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 650
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@2
    instance-of v0, v0, Ljava/util/RandomAccess;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 651
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@8
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@a
    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@c
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #@f
    return-object v0

    #@10
    .line 653
    :cond_0
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 630
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 631
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 629
    return-void

    #@8
    .line 630
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 522
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 523
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 521
    return-void

    #@a
    .line 522
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 528
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 529
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 528
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 534
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 535
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 534
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 540
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 541
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 540
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 546
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 547
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 546
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 554
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 555
    :try_start_0
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .line 556
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/Object;

    #@b
    .line 557
    .local v0, "array":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v4

    #@11
    .line 559
    if-eqz p1, :cond_1

    #@13
    .line 560
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@16
    .line 561
    aget-object v3, v0, v1

    #@18
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 562
    return v1

    #@1f
    .line 554
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v4

    #@21
    throw v3

    #@22
    .line 560
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 566
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@26
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@28
    .line 567
    aget-object v3, v0, v1

    #@2a
    if-nez v3, :cond_2

    #@2c
    .line 568
    return v1

    #@2d
    .line 566
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 572
    :cond_3
    const/4 v3, -0x1

    #@31
    return v3
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 578
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 579
    :try_start_0
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .line 580
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/Object;

    #@b
    .line 581
    .local v0, "array":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v4

    #@11
    .line 583
    if-eqz p1, :cond_1

    #@13
    .line 584
    add-int/lit8 v1, v2, -0x1

    #@15
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@17
    .line 585
    aget-object v3, v0, v1

    #@19
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 586
    return v1

    #@20
    .line 578
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@21
    monitor-exit v4

    #@22
    throw v3

    #@23
    .line 584
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@25
    goto :goto_0

    #@26
    .line 590
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v2, -0x1

    #@28
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@2a
    .line 591
    aget-object v3, v0, v1

    #@2c
    if-nez v3, :cond_2

    #@2e
    .line 592
    return v1

    #@2f
    .line 590
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@31
    goto :goto_1

    #@32
    .line 596
    :cond_3
    const/4 v3, -0x1

    #@33
    return v3
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 601
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 600
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 606
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 607
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 606
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 612
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 613
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 612
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 618
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 619
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 618
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 624
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 625
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@7
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 624
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
