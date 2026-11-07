.class abstract Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile blacklist count:I

.field final blacklist map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field blacklist modCount:I

.field final blacklist readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile blacklist table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist threshold:I


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;I)V"
        }
    .end annotation

    .line 1244
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1245
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    .line 1246
    invoke-virtual {p0, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-void
.end method

.method static blacklist isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1982
    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method abstract blacklist castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation
.end method

.method blacklist clear()V
    .registers 5

    .line 1814
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_32

    .line 1815
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1817
    :try_start_7
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    move v2, v1

    .line 1818
    :goto_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1a

    const/4 v3, 0x0

    .line 1819
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catchall_18
    move-exception v0

    goto :goto_2e

    .line 1821
    :cond_1a
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->maybeClearReferenceQueues()V

    .line 1822
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1824
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1825
    iput v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_18

    .line 1827
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2e
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1828
    throw v0

    :cond_32
    return-void
.end method

.method blacklist clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1413
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method

.method blacklist containsKey(Ljava/lang/Object;I)Z
    .registers 5

    .line 1474
    :try_start_0
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1475
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1476
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_1d

    .line 1481
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :cond_19
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :goto_1d
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1482
    throw p1
.end method

.method blacklist containsValue(Ljava/lang/Object;)Z
    .registers 9

    .line 1492
    :try_start_0
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1493
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1494
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_38

    .line 1496
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    :goto_14
    if-eqz v4, :cond_35

    .line 1497
    invoke-virtual {p0, v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getLiveValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_2e

    .line 1501
    :cond_1d
    iget-object v6, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {v6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->valueEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_33

    if-eqz v5, :cond_2e

    .line 1510
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p0, 0x1

    return p0

    .line 1496
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_33

    goto :goto_14

    :catchall_33
    move-exception p1

    goto :goto_3c

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1510
    :cond_38
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :goto_3c
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1511
    throw p1
.end method

.method blacklist copyEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1272
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method blacklist drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1388
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1390
    check-cast v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    .line 1391
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->reclaimKey(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_14
    return-void
.end method

.method blacklist drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1402
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1404
    check-cast v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1405
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->reclaimValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_14
    return-void
.end method

.method blacklist expand()V
    .registers 12

    .line 1575
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1576
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_b

    return-void

    .line 1591
    :cond_b
    iget v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    shl-int/lit8 v3, v1, 0x1

    .line 1592
    invoke-virtual {p0, v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 1593
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1594
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v1, :cond_72

    .line 1598
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v6, :cond_6f

    .line 1601
    invoke-interface {v6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    .line 1602
    invoke-interface {v6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_3d

    .line 1606
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_6f

    :cond_3d
    move-object v9, v6

    :goto_3e
    if-eqz v7, :cond_4e

    .line 1614
    invoke-interface {v7}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_49

    move-object v9, v7

    move v8, v10

    .line 1613
    :cond_49
    invoke-interface {v7}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    goto :goto_3e

    .line 1621
    :cond_4e
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_51
    if-eq v6, v9, :cond_6f

    .line 1625
    invoke-interface {v6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    and-int/2addr v7, v4

    .line 1626
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    .line 1627
    invoke-virtual {p0, v6, v8}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->copyEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v8

    if-eqz v8, :cond_68

    .line 1629
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_6a

    :cond_68
    add-int/lit8 v2, v2, -0x1

    .line 1624
    :goto_6a
    invoke-interface {v6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    goto :goto_51

    :cond_6f
    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 1637
    :cond_72
    iput-object v3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1638
    iput v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    return-void
.end method

.method blacklist get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1457
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_15

    if-nez p1, :cond_b

    .line 1468
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p0, 0x0

    return-object p0

    .line 1462
    :cond_b
    :try_start_b
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    .line 1464
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_1b

    .line 1468
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return-object p1

    :goto_1b
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1469
    throw p1
.end method

.method blacklist getEntry(Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1428
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2b

    .line 1429
    invoke-virtual {p0, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getFirst(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_2b

    .line 1430
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_11

    goto :goto_26

    .line 1434
    :cond_11
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 1436
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_26

    .line 1440
    :cond_1b
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v2, v2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-object v0

    .line 1429
    :cond_26
    :goto_26
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_8

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist getFirst(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1420
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1421
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    return-object p0
.end method

.method blacklist getLiveEntry(Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1451
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method blacklist getLiveValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1991
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1992
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    return-object v1

    .line 1995
    :cond_b
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    .line 1997
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    return-object v1

    :cond_15
    return-object p1
.end method

.method blacklist getLiveValueForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1368
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getLiveValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 1280
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1281
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method blacklist maybeClearReferenceQueues()V
    .registers 1

    .line 0
    return-void
.end method

.method blacklist maybeDrainReferenceQueues()V
    .registers 1

    .line 0
    return-void
.end method

.method blacklist newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1276
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object p0
.end method

.method blacklist postReadCleanup()V
    .registers 2

    .line 2010
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 2011
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    :cond_d
    return-void
.end method

.method blacklist preWriteCleanup()V
    .registers 1

    .line 2021
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    return-void
.end method

.method blacklist put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1516
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1518
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1520
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 1521
    iget v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v0, v1, :cond_19

    .line 1522
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 1523
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :catchall_16
    move-exception p1

    goto/16 :goto_8f

    .line 1526
    :cond_19
    :goto_19
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1527
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1528
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_29
    const/4 v5, 0x0

    if-eqz v4, :cond_71

    .line 1532
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1533
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_6c

    if-eqz v6, :cond_6c

    iget-object v7, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v7, v7, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 1535
    invoke-virtual {v7, p1, v6}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1538
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_59

    .line 1541
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1542
    invoke-virtual {p0, v4, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1543
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1544
    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_16

    .line 1568
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :cond_59
    if-eqz p4, :cond_5f

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1553
    :cond_5f
    :try_start_5f
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1554
    invoke-virtual {p0, v4, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_16

    .line 1568
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1531
    :cond_6c
    :try_start_6c
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4

    goto :goto_29

    .line 1561
    :cond_71
    iget p4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1562
    iget-object p4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object p4, p4, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object v4

    invoke-interface {p4, v4, p1, p2, v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1563
    invoke-virtual {p0, p1, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1564
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1565
    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_8b
    .catchall {:try_start_6c .. :try_end_8b} :catchall_16

    .line 1568
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :goto_8f
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1569
    throw p1
.end method

.method blacklist reclaimKey(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1864
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1867
    :try_start_3
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1868
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 1869
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v1

    :goto_13
    if-eqz v3, :cond_33

    if-ne v3, p1, :cond_2e

    .line 1873
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1874
    invoke-virtual {p0, v1, v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1875
    iget v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v1, v2

    .line 1876
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1877
    iput v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2c

    .line 1884
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_2c
    move-exception p1

    goto :goto_38

    .line 1871
    :cond_2e
    :try_start_2e
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2c

    goto :goto_13

    .line 1884
    :cond_33
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, 0x0

    return p0

    :goto_38
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1885
    throw p1
.end method

.method blacklist reclaimValue(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)Z"
        }
    .end annotation

    .line 1891
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1894
    :try_start_3
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1895
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1896
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_13
    const/4 v5, 0x0

    if-eqz v4, :cond_55

    .line 1899
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1900
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_50

    if-eqz v6, :cond_50

    iget-object v7, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v7, v7, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 1902
    invoke-virtual {v7, p1, v6}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1903
    move-object p1, v4

    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry;

    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_4c

    .line 1905
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1906
    invoke-virtual {p0, v3, v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1907
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1908
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1909
    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_4a

    .line 1918
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_4a
    move-exception p1

    goto :goto_59

    :cond_4c
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .line 1898
    :cond_50
    :try_start_50
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_4a

    goto :goto_13

    .line 1918
    :cond_55
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :goto_59
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1919
    throw p1
.end method

.method blacklist remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1733
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1735
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1738
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1739
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1740
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v2

    :goto_16
    const/4 v4, 0x0

    if-eqz v3, :cond_5e

    .line 1743
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1744
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_59

    if-eqz v5, :cond_59

    iget-object v6, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v6, v6, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 1746
    invoke-virtual {v6, p1, v5}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1747
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_36

    goto :goto_3c

    .line 1751
    :cond_36
    invoke-static {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 1757
    :goto_3c
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1758
    invoke-virtual {p0, v2, v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p2

    .line 1759
    iget v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 1760
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1761
    iput v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_53

    .line 1768
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_53
    move-exception p1

    goto :goto_62

    :cond_55
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    .line 1742
    :cond_59
    :try_start_59
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_53

    goto :goto_16

    .line 1768
    :cond_5e
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    :goto_62
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1769
    throw p1
.end method

.method blacklist remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 12

    .line 1773
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1775
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1778
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1779
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1780
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_16
    const/4 v5, 0x0

    if-eqz v4, :cond_67

    .line 1783
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1784
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_62

    if-eqz v6, :cond_62

    iget-object v7, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v7, v7, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 1786
    invoke-virtual {v7, p1, v6}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1787
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1790
    iget-object p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->valueEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    move v5, v2

    goto :goto_47

    .line 1792
    :cond_41
    invoke-static {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 1798
    :goto_47
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1799
    invoke-virtual {p0, v3, v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1800
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1801
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1802
    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_5c

    .line 1809
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :catchall_5c
    move-exception p1

    goto :goto_6b

    :cond_5e
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .line 1782
    :cond_62
    :try_start_62
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_5c

    goto :goto_16

    .line 1809
    :cond_67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :goto_6b
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1810
    throw p1
.end method

.method blacklist removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1847
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1848
    invoke-interface {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    :goto_6
    if-eq p1, p2, :cond_17

    .line 1850
    invoke-virtual {p0, p1, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->copyEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object v1, v2

    goto :goto_12

    :cond_10
    add-int/lit8 v0, v0, -0x1

    .line 1849
    :goto_12
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    goto :goto_6

    .line 1857
    :cond_17
    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    return-object v1
.end method

.method blacklist replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1690
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1692
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1694
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1695
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1696
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v2

    :goto_16
    const/4 v4, 0x0

    if-eqz v3, :cond_67

    .line 1699
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1700
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v6, v6, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 1702
    invoke-virtual {v6, p1, v5}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1705
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_55

    .line 1707
    invoke-static {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 1709
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1710
    invoke-virtual {p0, v2, v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1711
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 p2, p2, -0x1

    .line 1712
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1713
    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    goto :goto_51

    :catchall_4f
    move-exception p1

    goto :goto_6b

    .line 1726
    :cond_51
    :goto_51
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    .line 1718
    :cond_55
    :try_start_55
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1719
    invoke-virtual {p0, v3, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_4f

    .line 1726
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1698
    :cond_62
    :try_start_62
    invoke-interface {v3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_4f

    goto :goto_16

    .line 1726
    :cond_67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    :goto_6b
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1727
    throw p1
.end method

.method blacklist replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1642
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1644
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1646
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1647
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1648
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_16
    const/4 v5, 0x0

    if-eqz v4, :cond_74

    .line 1651
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1652
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_6f

    if-eqz v6, :cond_6f

    iget-object v7, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v7, v7, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 1654
    invoke-virtual {v7, p1, v6}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1657
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_53

    .line 1659
    invoke-static {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1661
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1662
    invoke-virtual {p0, v3, v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->removeFromChain(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1663
    iget p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1664
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1665
    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4d

    goto :goto_4f

    :catchall_4d
    move-exception p1

    goto :goto_78

    .line 1684
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .line 1670
    :cond_53
    :try_start_53
    iget-object p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->valueEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 1671
    iget p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1672
    invoke-virtual {p0, v4, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_53 .. :try_end_67} :catchall_4d

    .line 1684
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_6b
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .line 1650
    :cond_6f
    :try_start_6f
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_4d

    goto :goto_16

    .line 1684
    :cond_74
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :goto_78
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1685
    throw p1
.end method

.method blacklist runCleanup()V
    .registers 1

    .line 2025
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    return-void
.end method

.method blacklist runLockedCleanup()V
    .registers 3

    .line 2029
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2031
    :try_start_6
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V

    .line 2032
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 2034
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2035
    throw v0

    :cond_18
    return-void
.end method

.method abstract blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->map:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    return-void
.end method

.method blacklist tryDrainReferenceQueues()V
    .registers 2

    .line 1375
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1377
    :try_start_6
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 1379
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1380
    throw v0

    :cond_12
    return-void
.end method
