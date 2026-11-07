.class Ljava/util/Collections$SynchronizedSortedSet;
.super Ljava/util/Collections$SynchronizedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
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
        "Ljava/util/Collections$SynchronizedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x78adb1384b50312eL


# instance fields
.field private final greylist-max-o ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/SortedSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 2557
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    .line 2558
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 2559
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2561
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 2562
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 2563
    return-void
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 2566
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

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

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2587
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

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

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 2576
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2577
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2578
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2590
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

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

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 2570
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2571
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 2572
    invoke-interface {v2, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    .line 2571
    return-object v1

    .line 2573
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 2581
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2582
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2583
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
