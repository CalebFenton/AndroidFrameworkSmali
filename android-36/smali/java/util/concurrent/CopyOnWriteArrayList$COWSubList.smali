.class Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "COWSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedArray:[Ljava/lang/Object;

.field private final greylist-max-o offset:I

.field private greylist-max-o size:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V
    .registers 5
    .param p2, "es"    # [Ljava/lang/Object;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1278
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iput-object p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1281
    iput p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1282
    iput p4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1283
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1644
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1645
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1646
    .local v1, "oldArray":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->bulkRemove(Ljava/util/function/Predicate;II)Z

    move-result v2

    .line 1648
    .local v2, "modified":Z
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1649
    monitor-exit v0

    return v2

    .line 1650
    .end local v1    # "oldArray":[Ljava/lang/Object;
    .end local v2    # "modified":Z
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private greylist-max-o checkForComodification()V
    .registers 3

    .line 1287
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    .line 1289
    return-void

    .line 1288
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private blacklist getArrayChecked()[Ljava/lang/Object;
    .registers 3

    .line 1293
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1294
    .local v0, "a":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    .line 1296
    return-object v0

    .line 1295
    :cond_b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1630
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1635
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o rangeCheck(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1301
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-ge p1, v0, :cond_7

    .line 1303
    return-void

    .line 1302
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist rangeCheckForAdd(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1307
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-gt p1, v0, :cond_7

    .line 1309
    return-void

    .line 1308
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1485
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1486
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1487
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheckForAdd(I)V

    .line 1488
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 1489
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1490
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1491
    monitor-exit v0

    .line 1492
    return-void

    .line 1491
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1475
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1476
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1477
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 1478
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1479
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1480
    monitor-exit v0

    .line 1481
    return v2

    .line 1480
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1515
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheckForAdd(I)V

    .line 1517
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1518
    .local v1, "oldArray":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    .line 1519
    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    .line 1520
    .local v2, "modified":Z
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1521
    monitor-exit v0

    return v2

    .line 1522
    .end local v1    # "oldArray":[Ljava/lang/Object;
    .end local v2    # "modified":Z
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1505
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1506
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1507
    .local v1, "oldArray":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    .line 1508
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    .line 1509
    .local v2, "modified":Z
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1510
    monitor-exit v0

    return v2

    .line 1511
    .end local v1    # "oldArray":[Ljava/lang/Object;
    .end local v2    # "modified":Z
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1495
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->add(ILjava/lang/Object;)V

    .line 1496
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1499
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->add(ILjava/lang/Object;)V

    .line 1501
    monitor-exit v0

    .line 1502
    return-void

    .line 1501
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api clear()V
    .registers 6

    .line 1526
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1527
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1528
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    .line 1529
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1530
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1531
    monitor-exit v0

    .line 1532
    return-void

    .line 1531
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1371
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1378
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1380
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1381
    .local v2, "offset":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1382
    .local v3, "size":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_29

    .line 1383
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1384
    .local v4, "o":Ljava/lang/Object;
    add-int v5, v2, v3

    invoke-static {v4, v1, v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->-$$Nest$smindexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    if-gez v5, :cond_26

    .line 1385
    const/4 v0, 0x0

    return v0

    .line 1384
    .end local v4    # "o":Ljava/lang/Object;
    :cond_26
    goto :goto_12

    .line 1386
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 1382
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "offset":I
    .end local v3    # "size":I
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;

    .line 1410
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1411
    return v0

    .line 1412
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1413
    return v2

    .line 1414
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1419
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, v3, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1420
    :try_start_16
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v4

    .line 1421
    .local v4, "es":[Ljava/lang/Object;
    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1422
    .local v5, "offset":I
    iget v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1423
    .local v6, "size":I
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_41

    .line 1425
    move v3, v5

    .local v3, "i":I
    add-int v7, v5, v6

    .local v7, "end":I
    :goto_22
    if-ge v3, v7, :cond_3b

    .line 1426
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    aget-object v8, v4, v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    goto :goto_3a

    .line 1425
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1427
    :cond_3a
    :goto_3a
    return v2

    .line 1428
    .end local v3    # "i":I
    .end local v7    # "end":I
    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 1423
    .end local v4    # "es":[Ljava/lang/Object;
    .end local v5    # "offset":I
    .end local v6    # "size":I
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1601
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1604
    :try_start_8
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1605
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1606
    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v2

    .line 1607
    .local v3, "end":I
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1f

    .line 1608
    :goto_12
    if-ge v2, v3, :cond_1e

    .line 1609
    invoke-static {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1608
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1610
    :cond_1e
    return-void

    .line 1607
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "end":I
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1442
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1444
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1445
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1446
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1450
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1451
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-eqz v1, :cond_10

    .line 1454
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1452
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    throw v1

    .line 1455
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1459
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-eqz v1, :cond_13

    .line 1463
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1461
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    throw v1

    .line 1464
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1401
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1402
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1403
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1404
    .local v2, "offset":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1405
    .local v3, "size":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    .line 1406
    add-int v0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->-$$Nest$smhashCodeOfRange([Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 1405
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "offset":I
    .end local v3    # "size":I
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1348
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1350
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1351
    .local v2, "offset":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1352
    .local v3, "size":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1b

    .line 1353
    add-int v0, v2, v3

    invoke-static {p1, v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->-$$Nest$smindexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    .line 1354
    .local v0, "i":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_18

    goto :goto_1a

    :cond_18
    sub-int v4, v0, v2

    :goto_1a
    return v4

    .line 1352
    .end local v0    # "i":I
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "offset":I
    .end local v3    # "size":I
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1390
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1575
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1361
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1363
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1364
    .local v2, "offset":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1365
    .local v3, "size":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1b

    .line 1366
    add-int v0, v2, v3

    invoke-static {p1, v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->-$$Nest$smlastIndexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    .line 1367
    .local v0, "i":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_18

    goto :goto_1a

    :cond_18
    sub-int v4, v0, v2

    :goto_1a
    return v4

    .line 1365
    .end local v0    # "i":I
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "offset":I
    .end local v3    # "size":I
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1579
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1583
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1584
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1585
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheckForAdd(I)V

    .line 1586
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-direct {v1, v2, p1, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V

    monitor-exit v0

    return-object v1

    .line 1588
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1535
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1536
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1537
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1538
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 1539
    .local v1, "result":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1540
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1541
    monitor-exit v0

    return-object v1

    .line 1542
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1564
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1566
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1567
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 1568
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1569
    :cond_12
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->remove(I)Ljava/lang/Object;

    .line 1570
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1571
    .end local v1    # "index":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1629
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1546
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1547
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-eqz v1, :cond_10

    .line 1550
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1548
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    throw v1

    .line 1551
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1639
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1555
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1556
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-eqz v1, :cond_13

    .line 1559
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1557
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    throw v1

    .line 1560
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1613
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1614
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1615
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->replaceAllRange(Ljava/util/function/UnaryOperator;II)V

    .line 1616
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1617
    monitor-exit v0

    .line 1618
    return-void

    .line 1617
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1634
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api reversed()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1662
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 1273
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->reversed()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1432
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1434
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1435
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1436
    .local v1, "x":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1437
    monitor-exit v0

    return-object v1

    .line 1438
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 1468
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1470
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    monitor-exit v0

    return v1

    .line 1471
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1621
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1623
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->sortRange(Ljava/util/Comparator;II)V

    .line 1624
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1625
    monitor-exit v0

    .line 1626
    return-void

    .line 1625
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1654
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1655
    nop

    .line 1656
    :try_start_6
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    .line 1655
    const/16 v4, 0x410

    invoke-static {v1, v2, v3, v4}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1658
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1592
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1594
    if-ltz p1, :cond_20

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-gt p2, v1, :cond_20

    if-gt p1, p2, :cond_20

    .line 1596
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v4, p1

    sub-int v5, p2, p1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    monitor-exit v0

    return-object v1

    .line 1595
    :cond_20
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v1

    .line 1597
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 1315
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1316
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1317
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1318
    .local v2, "offset":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1319
    .local v3, "size":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    .line 1320
    add-int v0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1319
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "offset":I
    .end local v3    # "size":I
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1328
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1329
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->getArrayChecked()[Ljava/lang/Object;

    move-result-object v1

    .line 1330
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1331
    .local v2, "offset":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1332
    .local v3, "size":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_27

    .line 1333
    array-length v0, p1

    if-ge v0, v3, :cond_1c

    .line 1334
    add-int v0, v2, v3

    .line 1335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1334
    invoke-static {v1, v2, v0, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1337
    :cond_1c
    const/4 v0, 0x0

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1338
    array-length v0, p1

    if-le v0, v3, :cond_26

    .line 1339
    const/4 v0, 0x0

    aput-object v0, p1, v3

    .line 1340
    :cond_26
    return-object p1

    .line 1332
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "offset":I
    .end local v3    # "size":I
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1394
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.COWSubList;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
