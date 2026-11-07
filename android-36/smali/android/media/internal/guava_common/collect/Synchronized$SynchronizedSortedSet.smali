.class Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;
.super Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# direct methods
.method constructor blacklist <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 282
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method bridge synthetic blacklist delegate()Ljava/util/Collection;
    .registers 1

    .line 266
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic blacklist delegate()Ljava/util/Set;
    .registers 1

    .line 266
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method blacklist delegate()Ljava/util/SortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 274
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 310
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    # invokes: Landroid/media/internal/guava_common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    invoke-static {p1, p0}, Landroid/media/internal/guava_common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 317
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

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

    .line 287
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    # invokes: Landroid/media/internal/guava_common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    invoke-static {p1, p0}, Landroid/media/internal/guava_common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    # invokes: Landroid/media/internal/guava_common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    invoke-static {p1, p0}, Landroid/media/internal/guava_common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 303
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
