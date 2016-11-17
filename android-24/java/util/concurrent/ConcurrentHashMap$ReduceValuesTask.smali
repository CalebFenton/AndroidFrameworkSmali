.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceValuesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5415
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceValuesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@5
    .line 5416
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    #@7
    .line 5414
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 18

    #@0
    .prologue
    .line 5421
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceValuesTask<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    #@4
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz v8, :cond_6

    #@6
    .line 5422
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
    .line 5423
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
    .line 5424
    const/4 v1, 0x1

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@20
    .line 5425
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@22
    .line 5426
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
    .line 5427
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@38
    move-object/from16 v2, p0

    #@3a
    .line 5425
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@41
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@44
    goto :goto_0

    #@45
    .line 5429
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    const/4 v12, 0x0

    #@46
    .line 5430
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@49
    move-result-object v11

    #@4a
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_2

    #@4c
    .line 5431
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@4e
    move-object/from16 v17, v0

    #@50
    .line 5432
    .local v17, "v":Ljava/lang/Object;, "TV;"
    if-nez v12, :cond_1

    #@52
    move-object/from16 v12, v17

    #@54
    .local v12, "r":Ljava/lang/Object;, "TV;"
    goto :goto_1

    #@55
    .end local v12    # "r":Ljava/lang/Object;, "TV;"
    :cond_1
    move-object/from16 v0, v17

    #@57
    invoke-interface {v8, v12, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v12

    #@5b
    .restart local v12    # "r":Ljava/lang/Object;, "TV;"
    goto :goto_1

    #@5c
    .line 5434
    .end local v12    # "r":Ljava/lang/Object;, "TV;"
    .end local v17    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    move-object/from16 v0, p0

    #@5e
    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    #@60
    .line 5436
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@63
    move-result-object v9

    #@64
    .local v9, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v9, :cond_6

    #@66
    move-object v15, v9

    #@67
    .line 5439
    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@69
    .line 5440
    .local v15, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@6b
    .line 5441
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :goto_3
    if-eqz v13, :cond_5

    #@6d
    .line 5443
    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    #@6f
    .local v14, "sr":Ljava/lang/Object;, "TV;"
    if-eqz v14, :cond_3

    #@71
    .line 5444
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    #@73
    move-object/from16 v16, v0

    #@75
    .local v16, "tr":Ljava/lang/Object;, "TV;"
    if-nez v16, :cond_4

    #@77
    .end local v14    # "sr":Ljava/lang/Object;, "TV;"
    :goto_4
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    #@79
    .line 5446
    .end local v16    # "tr":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@7b
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@7d
    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    goto :goto_3

    #@7e
    .line 5445
    .restart local v14    # "sr":Ljava/lang/Object;, "TV;"
    .restart local v16    # "tr":Ljava/lang/Object;, "TV;"
    :cond_4
    move-object/from16 v0, v16

    #@80
    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v14

    #@84
    goto :goto_4

    #@85
    .line 5436
    .end local v14    # "sr":Ljava/lang/Object;, "TV;"
    .end local v16    # "tr":Ljava/lang/Object;, "TV;"
    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@88
    move-result-object v9

    #@89
    goto :goto_2

    #@8a
    .line 5419
    .end local v9    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v10    # "i":I
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .end local v15    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :cond_6
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 5418
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ReduceValuesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    #@2
    return-object v0
.end method
