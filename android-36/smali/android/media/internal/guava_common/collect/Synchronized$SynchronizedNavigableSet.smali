.class final Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;
.super Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SynchronizedNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field transient blacklist descendingSet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1324
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1335
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1337
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method bridge synthetic blacklist delegate()Ljava/util/Collection;
    .registers 1

    .line 1319
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method blacklist delegate()Ljava/util/NavigableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1329
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method bridge synthetic blacklist delegate()Ljava/util/Set;
    .registers 1

    .line 1319
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic blacklist delegate()Ljava/util/SortedSet;
    .registers 1

    .line 1319
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1342
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_3
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->descendingSet:Ljava/util/NavigableSet;

    if-nez v1, :cond_1b

    .line 1351
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/media/internal/guava_common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 1352
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->descendingSet:Ljava/util/NavigableSet;

    .line 1353
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 1355
    :cond_1b
    monitor-exit v0

    return-object v1

    .line 1356
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1362
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1363
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1364
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroid/media/internal/guava_common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1371
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1376
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1382
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1383
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1384
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1390
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1392
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1398
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1400
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1406
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1408
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    .line 1415
    invoke-static {p1, p0}, Landroid/media/internal/guava_common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1417
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1422
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1427
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroid/media/internal/guava_common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1429
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1434
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method
