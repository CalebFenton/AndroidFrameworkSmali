.class Ljava/util/Collections$SynchronizedMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 664
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 665
    iput-object p1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    .line 666
    iput-object p0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@7
    .line 664
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 669
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 670
    iput-object p1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    .line 671
    iput-object p2, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@7
    .line 669
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
    .line 765
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 766
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 764
    return-void

    #@8
    .line 765
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 675
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 676
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 674
    return-void

    #@a
    .line 675
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 681
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 682
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 681
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 687
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 688
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 687
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 693
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 694
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 693
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 699
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 700
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 699
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 705
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 706
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 705
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
    .line 711
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 712
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 711
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
    .line 717
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 718
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 717
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 723
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 724
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 723
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 729
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 730
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 729
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 735
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 736
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 734
    return-void

    #@a
    .line 735
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 741
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 742
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 741
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
    .line 747
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 748
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 747
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
    .line 759
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 760
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

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
    .line 759
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 753
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 754
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 753
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
