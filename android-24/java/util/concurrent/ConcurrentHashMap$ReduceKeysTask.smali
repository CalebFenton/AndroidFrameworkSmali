.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceKeysTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TK;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5367
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceKeysTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@5
    .line 5368
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    #@7
    .line 5366
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 18

    #@0
    .prologue
    .line 5373
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceKeysTask<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    #@4
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz v8, :cond_7

    #@6
    .line 5374
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
    .line 5375
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
    .line 5376
    const/4 v1, 0x1

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@20
    .line 5377
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@22
    .line 5378
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
    .line 5379
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@38
    move-object/from16 v2, p0

    #@3a
    .line 5377
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@41
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@44
    goto :goto_0

    #@45
    .line 5381
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    const/4 v12, 0x0

    #@46
    .line 5382
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@49
    move-result-object v11

    #@4a
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_3

    #@4c
    .line 5383
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@4e
    move-object/from16 v17, v0

    #@50
    .line 5384
    .local v17, "u":Ljava/lang/Object;, "TK;"
    if-nez v12, :cond_2

    #@52
    move-object/from16 v12, v17

    #@54
    .local v12, "r":Ljava/lang/Object;, "TK;"
    goto :goto_1

    #@55
    .end local v12    # "r":Ljava/lang/Object;, "TK;"
    :cond_2
    if-eqz v17, :cond_1

    #@57
    move-object/from16 v0, v17

    #@59
    invoke-interface {v8, v12, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v12

    #@5d
    .restart local v12    # "r":Ljava/lang/Object;, "TK;"
    goto :goto_1

    #@5e
    .line 5386
    .end local v12    # "r":Ljava/lang/Object;, "TK;"
    .end local v17    # "u":Ljava/lang/Object;, "TK;"
    :cond_3
    move-object/from16 v0, p0

    #@60
    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    #@62
    .line 5388
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@65
    move-result-object v9

    #@66
    .local v9, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v9, :cond_7

    #@68
    move-object v15, v9

    #@69
    .line 5391
    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@6b
    .line 5392
    .local v15, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@6d
    .line 5393
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :goto_3
    if-eqz v13, :cond_6

    #@6f
    .line 5395
    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    #@71
    .local v14, "sr":Ljava/lang/Object;, "TK;"
    if-eqz v14, :cond_4

    #@73
    .line 5396
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    #@75
    move-object/from16 v16, v0

    #@77
    .local v16, "tr":Ljava/lang/Object;, "TK;"
    if-nez v16, :cond_5

    #@79
    .end local v14    # "sr":Ljava/lang/Object;, "TK;"
    :goto_4
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    #@7b
    .line 5398
    .end local v16    # "tr":Ljava/lang/Object;, "TK;"
    :cond_4
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@7d
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@7f
    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    goto :goto_3

    #@80
    .line 5397
    .restart local v14    # "sr":Ljava/lang/Object;, "TK;"
    .restart local v16    # "tr":Ljava/lang/Object;, "TK;"
    :cond_5
    move-object/from16 v0, v16

    #@82
    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    move-result-object v14

    #@86
    goto :goto_4

    #@87
    .line 5388
    .end local v14    # "sr":Ljava/lang/Object;, "TK;"
    .end local v16    # "tr":Ljava/lang/Object;, "TK;"
    :cond_6
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@8a
    move-result-object v9

    #@8b
    goto :goto_2

    #@8c
    .line 5371
    .end local v9    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v10    # "i":I
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .end local v15    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :cond_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 5370
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    #@2
    return-object v0
.end method
