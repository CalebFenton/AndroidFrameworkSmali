.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask",
            "<TK;TV;TU;>;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5619
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@5
    .line 5620
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    #@7
    .line 5621
    iput-object p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    #@9
    .line 5618
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    #@0
    .prologue
    .line 5627
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesTask<TK;TV;TU;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    #@4
    .local v8, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v8, :cond_7

    #@6
    .line 5628
    move-object/from16 v0, p0

    #@8
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    #@a
    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v9, :cond_7

    #@c
    .line 5629
    move-object/from16 v0, p0

    #@e
    iget v11, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@10
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@12
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@14
    if-lez v1, :cond_0

    #@16
    .line 5630
    move-object/from16 v0, p0

    #@18
    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@1a
    .local v5, "f":I
    add-int v1, v5, v11

    #@1c
    ushr-int/lit8 v4, v1, 0x1

    #@1e
    .local v4, "h":I
    if-le v4, v11, :cond_0

    #@20
    .line 5631
    const/4 v1, 0x1

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@26
    .line 5632
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@28
    .line 5633
    move-object/from16 v0, p0

    #@2a
    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@2c
    ushr-int/lit8 v3, v2, 0x1

    #@2e
    move-object/from16 v0, p0

    #@30
    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@32
    move-object/from16 v0, p0

    #@34
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3a
    .line 5634
    move-object/from16 v0, p0

    #@3c
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@3e
    move-object/from16 v2, p0

    #@40
    .line 5632
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    #@43
    move-object/from16 v0, p0

    #@45
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@47
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@4a
    goto :goto_0

    #@4b
    .line 5636
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    const/4 v13, 0x0

    #@4c
    .line 5637
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4f
    move-result-object v12

    #@50
    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v12, :cond_3

    #@52
    .line 5639
    invoke-interface {v8, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v18

    #@56
    .local v18, "u":Ljava/lang/Object;, "TU;"
    if-eqz v18, :cond_1

    #@58
    .line 5640
    if-nez v13, :cond_2

    #@5a
    move-object/from16 v13, v18

    #@5c
    .local v13, "r":Ljava/lang/Object;, "TU;"
    goto :goto_1

    #@5d
    .end local v13    # "r":Ljava/lang/Object;, "TU;"
    :cond_2
    move-object/from16 v0, v18

    #@5f
    invoke-interface {v9, v13, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    move-result-object v13

    #@63
    .restart local v13    # "r":Ljava/lang/Object;, "TU;"
    goto :goto_1

    #@64
    .line 5642
    .end local v13    # "r":Ljava/lang/Object;, "TU;"
    .end local v18    # "u":Ljava/lang/Object;, "TU;"
    :cond_3
    move-object/from16 v0, p0

    #@66
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    #@68
    .line 5644
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@6b
    move-result-object v10

    #@6c
    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v10, :cond_7

    #@6e
    move-object/from16 v16, v10

    #@70
    .line 5647
    check-cast v16, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@72
    .line 5648
    .local v16, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    move-object/from16 v0, v16

    #@74
    iget-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@76
    .line 5649
    .local v14, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :goto_3
    if-eqz v14, :cond_6

    #@78
    .line 5651
    iget-object v15, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    #@7a
    .local v15, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v15, :cond_4

    #@7c
    .line 5652
    move-object/from16 v0, v16

    #@7e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    #@80
    move-object/from16 v17, v0

    #@82
    .local v17, "tr":Ljava/lang/Object;, "TU;"
    if-nez v17, :cond_5

    #@84
    .end local v15    # "sr":Ljava/lang/Object;, "TU;"
    :goto_4
    move-object/from16 v0, v16

    #@86
    iput-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    #@88
    .line 5654
    .end local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_4
    iget-object v14, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@8a
    .end local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    move-object/from16 v0, v16

    #@8c
    iput-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@8e
    .restart local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    goto :goto_3

    #@8f
    .line 5653
    .restart local v15    # "sr":Ljava/lang/Object;, "TU;"
    .restart local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_5
    move-object/from16 v0, v17

    #@91
    invoke-interface {v9, v0, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object v15

    #@95
    goto :goto_4

    #@96
    .line 5644
    .end local v15    # "sr":Ljava/lang/Object;, "TU;"
    .end local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_6
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@99
    move-result-object v10

    #@9a
    goto :goto_2

    #@9b
    .line 5624
    .end local v9    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .end local v16    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :cond_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    #@0
    .prologue
    .line 5623
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    #@2
    return-object v0
.end method
