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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field result:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5463
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceEntriesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@5
    .line 5464
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    #@7
    .line 5462
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 17

    #@0
    .prologue
    .line 5469
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceEntriesTask<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    #@4
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v8, :cond_6

    #@6
    .line 5470
    move-object/from16 v0, p0

    #@8
    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@a
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@c
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@e
    if-lez v1, :cond_0

    #@10
    .line 5471
    move-object/from16 v0, p0

    #@12
    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@14
    .local v5, "f":I
    add-int v1, v5, v10

    #@16
    ushr-int/lit8 v4, v1, 0x1

    #@18
    .local v4, "h":I
    if-le v4, v10, :cond_0

    #@1a
    .line 5472
    const/4 v1, 0x1

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@20
    .line 5473
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@22
    .line 5474
    move-object/from16 v0, p0

    #@24
    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@26
    ushr-int/lit8 v3, v2, 0x1

    #@28
    move-object/from16 v0, p0

    #@2a
    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@34
    .line 5475
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@38
    move-object/from16 v2, p0

    #@3a
    .line 5473
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@41
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@44
    goto :goto_0

    #@45
    .line 5477
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    const/4 v12, 0x0

    #@46
    .line 5478
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@49
    move-result-object v11

    #@4a
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_2

    #@4c
    .line 5479
    if-nez v12, :cond_1

    #@4e
    move-object v12, v11

    #@4f
    .local v12, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_1

    #@50
    .end local v12    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface {v8, v12, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v12

    #@54
    check-cast v12, Ljava/util/Map$Entry;

    #@56
    .restart local v12    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_1

    #@57
    .line 5480
    .end local v12    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    move-object/from16 v0, p0

    #@59
    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    #@5b
    .line 5482
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@5e
    move-result-object v9

    #@5f
    .local v9, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v9, :cond_6

    #@61
    move-object v15, v9

    #@62
    .line 5485
    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@64
    .line 5486
    .local v15, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@66
    .line 5487
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :goto_3
    if-eqz v13, :cond_5

    #@68
    .line 5489
    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    #@6a
    .local v14, "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v14, :cond_3

    #@6c
    .line 5490
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    #@6e
    move-object/from16 v16, v0

    #@70
    .local v16, "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v16, :cond_4

    #@72
    .end local v14    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_4
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    #@74
    .line 5492
    .end local v16    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@76
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@78
    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    goto :goto_3

    #@79
    .line 5491
    .restart local v14    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v16    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4
    move-object/from16 v0, v16

    #@7b
    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Ljava/util/Map$Entry;

    #@81
    move-object v14, v1

    #@82
    goto :goto_4

    #@83
    .line 5482
    .end local v14    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v16    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@86
    move-result-object v9

    #@87
    goto :goto_2

    #@88
    .line 5467
    .end local v9    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v10    # "i":I
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .end local v15    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :cond_6
    return-void
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 5466
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceEntriesTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->getRawResult()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 5466
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceEntriesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    #@2
    return-object v0
.end method
