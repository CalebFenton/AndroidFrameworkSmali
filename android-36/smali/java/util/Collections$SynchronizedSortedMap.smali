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
        "Ljava/util/Collections$SynchronizedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x7a194bdf48d1f3d1L


# instance fields
.field private final greylist-max-o sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3131
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    .line 3132
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 3133
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3135
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 3136
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 3137
    return-void
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 3140
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3161
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3150
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3151
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 3152
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3164
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3144
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3145
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 3146
    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    .line 3145
    return-object v1

    .line 3147
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3155
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedMap;, "Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3156
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 3157
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
