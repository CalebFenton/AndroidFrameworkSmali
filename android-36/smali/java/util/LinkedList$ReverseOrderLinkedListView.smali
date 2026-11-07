.class Ljava/util/LinkedList$ReverseOrderLinkedListView;
.super Ljava/util/LinkedList;
.source "LinkedList.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReverseOrderLinkedListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# instance fields
.field final blacklist list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist rdeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist rlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedList;Ljava/util/List;Ljava/util/Deque;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Deque<",
            "TE;>;)V"
        }
    .end annotation

    .line 1297
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "rlist":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p3, "rdeque":Ljava/util/Deque;, "Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 1298
    iput-object p1, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->list:Ljava/util/LinkedList;

    .line 1299
    iput-object p2, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    .line 1300
    iput-object p3, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    .line 1301
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1468
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1469
    return-void
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1496
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1484
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1488
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1512
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1513
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1508
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1509
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 1480
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1481
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1504
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1316
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1388
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1448
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1352
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1340
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1341
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1476
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1528
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1524
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1348
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1460
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1320
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    .line 1344
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1456
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
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

    .line 1360
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1392
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1436
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1432
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1428
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1324
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1452
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1424
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1420
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1444
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1416
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1412
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1404
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1408
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1409
    return-void
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1532
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serializable"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1440
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1464
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1492
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 1312
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1520
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1400
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 1332
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1516
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1396
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rdeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1368
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 1369
    return-void
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

    .line 1308
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/Deque;
    .registers 2

    .line 1291
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ReverseOrderLinkedListView;->reversed()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .line 1372
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->list:Ljava/util/LinkedList;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/List;
    .registers 2

    .line 1291
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ReverseOrderLinkedListView;->reversed()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 1291
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ReverseOrderLinkedListView;->reversed()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1472
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1500
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1364
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1365
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1376
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1328
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1356
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1384
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1336
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1380
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1304
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseOrderLinkedListView;->rlist:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1536
    .local p0, "this":Ljava/util/LinkedList$ReverseOrderLinkedListView;, "Ljava/util/LinkedList$ReverseOrderLinkedListView<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serializable"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
