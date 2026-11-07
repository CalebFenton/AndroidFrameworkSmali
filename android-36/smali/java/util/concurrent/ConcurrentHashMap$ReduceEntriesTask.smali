.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceEntriesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V
    .registers 9
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 5513
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local v0, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p3, "b":I
    .local p4, "i":I
    .local p5, "f":I
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5514
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5515
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 5519
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v8, v0

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_74

    .line 5520
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    if-lez v1, :cond_31

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_2f

    .line 5522
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->addToPendingCount(I)V

    .line 5523
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5525
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5520
    :cond_2f
    move-object v2, p0

    goto :goto_32

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_31
    move-object v2, p0

    .line 5527
    .end local v0    # "i":I
    :goto_32
    const/4 v0, 0x0

    .line 5528
    .local v0, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_33
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_46

    .line 5529
    if-nez v0, :cond_3e

    move-object v1, v3

    goto :goto_44

    :cond_3e
    invoke-interface {v8, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_44
    move-object v0, v1

    goto :goto_33

    .line 5530
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .line 5532
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4c
    if-eqz v1, :cond_75

    .line 5535
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5536
    .local v3, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5537
    .local v4, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :goto_53
    if-eqz v4, :cond_6f

    .line 5539
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object v6, v5

    .local v6, "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v5, :cond_69

    .line 5540
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object v7, v5

    .local v7, "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v5, :cond_61

    move-object v5, v6

    goto :goto_67

    .line 5541
    :cond_61
    invoke-interface {v8, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    :goto_67
    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .line 5542
    .end local v7    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_69
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object v4, v5

    .line 5543
    .end local v6    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_53

    .line 5532
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .end local v4    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :cond_6f
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_4c

    .line 5519
    .end local v0    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_74
    move-object v2, p0

    .line 5546
    :cond_75
    return-void
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 5503
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->getRawResult()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5516
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    return-object v0
.end method
