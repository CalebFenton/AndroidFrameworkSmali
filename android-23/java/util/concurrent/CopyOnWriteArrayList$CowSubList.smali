.class Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;
.super Ljava/util/AbstractList;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CowSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

.field final synthetic this$0:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V
    .locals 1
    .param p2, "expectedElements"    # [Ljava/lang/Object;
    .param p3, "from"    # I
    .param p4, "to"    # I

    #@0
    .prologue
    .line 484
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "this$0":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    .line 485
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@7
    invoke-direct {v0, p2, p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@c
    .line 484
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 580
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 581
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    #@8
    .line 582
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@a
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@13
    .line 583
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@15
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@17
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1a
    move-result v2

    #@1b
    add-int/2addr v2, p1

    #@1c
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    #@1f
    .line 584
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@21
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@23
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@29
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@2c
    move-result v3

    #@2d
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2f
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@32
    move-result v4

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@38
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v1

    #@3b
    .line 579
    return-void

    #@3c
    .line 580
    :catchall_0
    move-exception v0

    #@3d
    monitor-exit v1

    #@3e
    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 589
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 590
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@5
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@8
    move-result v0

    #@9
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@b
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@e
    move-result v2

    #@f
    sub-int/2addr v0, v2

    #@10
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 591
    const/4 v0, 0x1

    #@14
    monitor-exit v1

    #@15
    return v0

    #@16
    .line 589
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 596
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 597
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@5
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    #@8
    .line 598
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@a
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@13
    .line 599
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@15
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    array-length v0, v2

    #@1a
    .line 600
    .local v0, "oldSize":I
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1c
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@1e
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@21
    move-result v4

    #@22
    add-int/2addr v4, p1

    #@23
    invoke-virtual {v2, v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    #@26
    move-result v1

    #@27
    .line 601
    .local v1, "result":Z
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@29
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2b
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@31
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@34
    move-result v5

    #@35
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@37
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@3a
    move-result v6

    #@3b
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3d
    invoke-static {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    array-length v7, v7

    #@42
    sub-int/2addr v7, v0

    #@43
    add-int/2addr v6, v7

    #@44
    invoke-direct {v2, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@47
    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    monitor-exit v3

    #@4a
    .line 602
    return v1

    #@4b
    .line 596
    .end local v0    # "oldSize":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2
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
    .line 607
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 608
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 607
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .line 572
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 573
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@5
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@e
    .line 574
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@12
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@18
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1b
    move-result v3

    #@1c
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->-wrap1(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    #@1f
    .line 575
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@21
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@23
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@29
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@2c
    move-result v3

    #@2d
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2f
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@32
    move-result v4

    #@33
    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@36
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit v1

    #@39
    .line 571
    return-void

    #@3a
    .line 572
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 542
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 546
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2
    .line 547
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 548
    .local v1, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@b
    .line 549
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@e
    move-result v2

    #@f
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@12
    move-result v3

    #@13
    invoke-static {p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    #@16
    move-result v2

    #@17
    return v2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 500
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2
    .line 501
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 502
    .local v1, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    #@b
    .line 503
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@e
    .line 504
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@11
    move-result v2

    #@12
    add-int/2addr v2, p1

    #@13
    aget-object v2, v1, v2

    #@15
    return-object v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v3, -0x1

    #@1
    .line 526
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@3
    .line 527
    .local v1, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 528
    .local v2, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@c
    .line 529
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@f
    move-result v4

    #@10
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@13
    move-result v5

    #@14
    invoke-static {p1, v2, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@17
    move-result v0

    #@18
    .line 530
    .local v0, "result":I
    if-eq v0, v3, :cond_0

    #@1a
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1d
    move-result v3

    #@1e
    sub-int v3, v0, v3

    #@20
    :cond_0
    return v3
.end method

.method public isEmpty()Z
    .locals 3

    #@0
    .prologue
    .line 494
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2
    .line 495
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@5
    move-result v1

    #@6
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@9
    move-result v2

    #@a
    if-ne v1, v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 508
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v3, -0x1

    #@1
    .line 534
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@3
    .line 535
    .local v1, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 536
    .local v2, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@c
    .line 537
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@f
    move-result v4

    #@10
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@13
    move-result v5

    #@14
    invoke-static {p1, v2, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    #@17
    move-result v0

    #@18
    .line 538
    .local v0, "result":I
    if-eq v0, v3, :cond_0

    #@1a
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1d
    move-result v3

    #@1e
    sub-int v3, v0, v3

    #@20
    :cond_0
    return v3
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 516
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2
    .line 517
    .local v1, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    .line 518
    .local v2, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    #@b
    .line 519
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@e
    .line 520
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    #@10
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@13
    move-result v3

    #@14
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@17
    move-result v4

    #@18
    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #@1b
    .line 521
    .local v0, "result":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v3, p1

    #@20
    invoke-static {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->-set0(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I

    #@23
    .line 522
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 562
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 563
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    #@8
    .line 564
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@a
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@13
    .line 565
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@15
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@17
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1a
    move-result v3

    #@1b
    add-int/2addr v3, p1

    #@1c
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 566
    .local v0, "removed":Ljava/lang/Object;, "TE;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@22
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@24
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2a
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@2d
    move-result v4

    #@2e
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@30
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@33
    move-result v5

    #@34
    add-int/lit8 v5, v5, -0x1

    #@36
    invoke-direct {v1, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@39
    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 567
    return-object v0

    #@3d
    .line 562
    .end local v0    # "removed":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 623
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 624
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 625
    .local v0, "index":I
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 626
    const/4 v1, 0x0

    #@b
    monitor-exit v2

    #@c
    return v1

    #@d
    .line 628
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 629
    const/4 v1, 0x1

    #@11
    monitor-exit v2

    #@12
    return v1

    #@13
    .line 623
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 634
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    monitor-enter v2

    #@4
    .line 635
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@6
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@f
    .line 636
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@13
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@16
    move-result v4

    #@17
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@19
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1c
    move-result v5

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-static {v3, p1, v6, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->-wrap0(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I

    #@21
    move-result v0

    #@22
    .line 637
    .local v0, "removed":I
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@24
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@26
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2c
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@2f
    move-result v5

    #@30
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@32
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@35
    move-result v6

    #@36
    sub-int/2addr v6, v0

    #@37
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@3a
    iput-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 638
    if-eqz v0, :cond_0

    #@3e
    const/4 v1, 0x1

    #@3f
    :cond_0
    monitor-exit v2

    #@40
    return v1

    #@41
    .line 634
    .end local v0    # "removed":I
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 643
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    monitor-enter v3

    #@5
    .line 644
    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@7
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@10
    .line 645
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@12
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@14
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@17
    move-result v5

    #@18
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@1a
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1d
    move-result v6

    #@1e
    const/4 v7, 0x1

    #@1f
    invoke-static {v4, p1, v7, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->-wrap0(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I

    #@22
    move-result v0

    #@23
    .line 646
    .local v0, "removed":I
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@25
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@27
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2d
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@30
    move-result v6

    #@31
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@33
    invoke-static {v7}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@36
    move-result v7

    #@37
    sub-int/2addr v7, v0

    #@38
    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@3b
    iput-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 647
    if-eqz v0, :cond_0

    #@3f
    :goto_0
    monitor-exit v3

    #@40
    return v1

    #@41
    :cond_0
    move v1, v2

    #@42
    goto :goto_0

    #@43
    .line 643
    .end local v0    # "removed":I
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v3

    #@45
    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 613
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 614
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    #@8
    .line 615
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@a
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #@13
    .line 616
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@15
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@17
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@1a
    move-result v3

    #@1b
    add-int/2addr v3, p1

    #@1c
    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 617
    .local v0, "result":Ljava/lang/Object;, "TE;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@22
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@24
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2a
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@2d
    move-result v4

    #@2e
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@30
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@33
    move-result v5

    #@34
    invoke-direct {v1, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    #@37
    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit v2

    #@3a
    .line 618
    return-object v0

    #@3b
    .line 613
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 489
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2
    .line 490
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@5
    move-result v1

    #@6
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@9
    move-result v2

    #@a
    sub-int/2addr v1, v2

    #@b
    return v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 553
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #@2
    .line 554
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    if-ltz p1, :cond_0

    #@4
    if-le p1, p2, :cond_1

    #@6
    .line 555
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "from="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ", to="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 556
    const-string/jumbo v3, ", list size="

    #@26
    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 556
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    #@2d
    move-result v3

    #@2e
    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 554
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    #@3d
    move-result v1

    #@3e
    if-gt p2, v1, :cond_0

    #@40
    .line 558
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;

    #@42
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@44
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get0(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)[Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@4b
    move-result v4

    #@4c
    add-int/2addr v4, p1

    #@4d
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->-get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    #@50
    move-result v5

    #@51
    add-int/2addr v5, p2

    #@52
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    #@55
    return-object v1
.end method
