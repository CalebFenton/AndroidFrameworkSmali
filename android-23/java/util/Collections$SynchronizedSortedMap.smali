.class Ljava/util/Collections$SynchronizedSortedMap;
.super Ljava/util/Collections$SynchronizedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a194bdf48d1f3d1L


# instance fields
.field private final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 808
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    #@3
    .line 809
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@5
    .line 807
    return-void
.end method

.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 813
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    #@3
    .line 814
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@5
    .line 812
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
    .line 857
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 858
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 856
    return-void

    #@8
    .line 857
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 818
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 819
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@5
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 818
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 824
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 825
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@5
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 824
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 830
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "endKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 831
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@7
    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@a
    move-result-object v2

    #@b
    .line 832
    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@d
    .line 831
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 830
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 837
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 838
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@5
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 837
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 843
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "startKey":Ljava/lang/Object;, "TK;"
    .local p2, "endKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 844
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@7
    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    #@a
    move-result-object v2

    #@b
    .line 845
    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@d
    .line 844
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 843
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 850
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "startKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 851
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    #@7
    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@a
    move-result-object v2

    #@b
    .line 852
    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    #@d
    .line 851
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 850
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
