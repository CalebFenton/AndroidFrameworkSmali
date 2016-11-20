.class final Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CLDSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field exhausted:Z

.field final queue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1417
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.CLDSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1418
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@5
    .line 1417
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1495
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.CLDSpliterator<TE;>;"
    const/16 v0, 0x1110

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1492
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.CLDSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    #@5
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1455
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.CLDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1456
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@a
    .line 1457
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    #@c
    if-nez v4, :cond_4

    #@e
    .line 1458
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@10
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v1, :cond_1

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_4

    #@18
    .line 1459
    :cond_1
    const/4 v4, 0x1

    #@19
    iput-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    #@1b
    .line 1461
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1d
    .line 1462
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1f
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_5

    #@21
    .line 1463
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@24
    move-result-object v1

    #@25
    .line 1464
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@27
    .line 1465
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2a
    .line 1466
    :cond_3
    if-nez v1, :cond_2

    #@2c
    .line 1453
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    return-void

    #@2d
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    move-object v1, v2

    #@2e
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.CLDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v5, 0x1

    #@1
    .line 1472
    if-nez p1, :cond_0

    #@3
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 1473
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@b
    .line 1474
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    #@d
    if-nez v4, :cond_4

    #@f
    .line 1475
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v1, :cond_1

    #@13
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_4

    #@19
    .line 1478
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1b
    .line 1479
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1d
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_5

    #@1f
    .line 1480
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@22
    move-result-object v1

    #@23
    .line 1481
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-nez v0, :cond_2

    #@25
    if-nez v1, :cond_1

    #@27
    .line 1482
    :cond_2
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 1483
    iput-boolean v5, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    #@2d
    .line 1484
    :cond_3
    if-eqz v0, :cond_4

    #@2f
    .line 1485
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@32
    .line 1486
    return v5

    #@33
    .line 1489
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    const/4 v4, 0x0

    #@34
    return v4

    #@35
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    move-object v1, v2

    #@36
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.CLDSpliterator<TE;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1423
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@4
    .line 1424
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->batch:I

    #@6
    .line 1425
    .local v1, "b":I
    if-gtz v1, :cond_6

    #@8
    const/4 v3, 0x1

    #@9
    .line 1426
    .local v3, "n":I
    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    #@b
    if-nez v7, :cond_9

    #@d
    .line 1427
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v4, :cond_0

    #@11
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    move-result-object v4

    #@15
    if-eqz v4, :cond_9

    #@17
    .line 1428
    :cond_0
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@19
    if-nez v7, :cond_1

    #@1b
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1d
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v4, v5, :cond_8

    #@1f
    .line 1429
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@22
    move-result-object v4

    #@23
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@25
    .line 1430
    :cond_1
    :goto_1
    if-eqz v4, :cond_9

    #@27
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@29
    if-eqz v7, :cond_9

    #@2b
    .line 1431
    new-array v0, v3, [Ljava/lang/Object;

    #@2d
    .line 1432
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@2e
    .line 1434
    .local v2, "i":I
    :cond_2
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@30
    aput-object v7, v0, v2

    #@32
    if-eqz v7, :cond_3

    #@34
    .line 1435
    add-int/lit8 v2, v2, 0x1

    #@36
    .line 1436
    :cond_3
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@38
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v4, v5, :cond_a

    #@3a
    .line 1437
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3d
    move-result-object v4

    #@3e
    .line 1438
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_2
    if-eqz v4, :cond_4

    #@40
    if-lt v2, v3, :cond_2

    #@42
    .line 1439
    :cond_4
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@44
    if-nez v4, :cond_5

    #@46
    .line 1440
    const/4 v7, 0x1

    #@47
    iput-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    #@49
    .line 1441
    :cond_5
    if-lez v2, :cond_9

    #@4b
    .line 1442
    iput v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->batch:I

    #@4d
    .line 1444
    const/16 v7, 0x1110

    #@4f
    .line 1443
    invoke-static {v0, v9, v2, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@52
    move-result-object v7

    #@53
    return-object v7

    #@54
    .line 1425
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_6
    const/high16 v7, 0x2000000

    #@56
    if-lt v1, v7, :cond_7

    #@58
    const/high16 v3, 0x2000000

    #@5a
    .restart local v3    # "n":I
    goto :goto_0

    #@5b
    .end local v3    # "n":I
    :cond_7
    add-int/lit8 v3, v1, 0x1

    #@5d
    .restart local v3    # "n":I
    goto :goto_0

    #@5e
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_8
    move-object v4, v5

    #@5f
    .line 1429
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_1

    #@60
    .line 1450
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_9
    return-object v8

    #@61
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_a
    move-object v4, v5

    #@62
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_2
.end method
