.class Ljava/util/Collections$SynchronizedCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a61f84d099c99b5L


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 373
    iput-object p1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    .line 374
    iput-object p0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@7
    .line 372
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 377
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 378
    iput-object p1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    .line 379
    iput-object p2, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@7
    .line 377
    return-void
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
    .line 467
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 468
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 466
    return-void

    #@8
    .line 467
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 383
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 384
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 383
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 389
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 390
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 389
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 395
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 396
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 394
    return-void

    #@a
    .line 395
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 401
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 402
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 401
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 407
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 408
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 407
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 413
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 414
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 413
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 419
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 420
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 419
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 426
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 425
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 431
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 432
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 431
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 437
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 438
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 437
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 443
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 444
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 443
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 449
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 450
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 449
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 461
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 462
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 461
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 455
    .local p0, "this":Ljava/util/Collections$SynchronizedCollection;, "Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 456
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 455
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
