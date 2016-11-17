.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesToDoubleTask"
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:D

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # D
    .param p10, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 5829
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToDoubleTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@5
    .line 5830
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    #@7
    .line 5831
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    #@9
    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    #@b
    .line 5828
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    #@0
    .prologue
    .line 5837
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    #@4
    .local v9, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v9, :cond_3

    #@6
    .line 5838
    move-object/from16 v0, p0

    #@8
    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    #@a
    .local v12, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v12, :cond_3

    #@c
    .line 5839
    move-object/from16 v0, p0

    #@e
    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    #@10
    .line 5840
    .local v10, "r":D
    move-object/from16 v0, p0

    #@12
    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@14
    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@18
    if-lez v2, :cond_0

    #@1a
    .line 5841
    move-object/from16 v0, p0

    #@1c
    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@1e
    .local v6, "f":I
    add-int v2, v6, v14

    #@20
    ushr-int/lit8 v5, v2, 0x1

    #@22
    .local v5, "h":I
    if-le v5, v14, :cond_0

    #@24
    .line 5842
    const/4 v2, 0x1

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@2a
    .line 5843
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@2c
    .line 5844
    move-object/from16 v0, p0

    #@2e
    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@30
    ushr-int/lit8 v4, v3, 0x1

    #@32
    move-object/from16 v0, p0

    #@34
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@36
    move-object/from16 v0, p0

    #@38
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3e
    .line 5845
    move-object/from16 v0, p0

    #@40
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@42
    move-object/from16 v3, p0

    #@44
    .line 5843
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@4b
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@4e
    goto :goto_0

    #@4f
    .line 5847
    .end local v5    # "h":I
    .end local v6    # "f":I
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@52
    move-result-object v15

    #@53
    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_1

    #@55
    .line 5848
    invoke-interface {v9, v15}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    #@58
    move-result-wide v2

    #@59
    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@5c
    move-result-wide v10

    #@5d
    goto :goto_1

    #@5e
    .line 5849
    :cond_1
    move-object/from16 v0, p0

    #@60
    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    #@62
    .line 5851
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@65
    move-result-object v13

    #@66
    .local v13, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v13, :cond_3

    #@68
    move-object/from16 v17, v13

    #@6a
    .line 5854
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@6c
    .line 5855
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v17

    #@6e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@70
    move-object/from16 v16, v0

    #@72
    .line 5856
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    :goto_3
    if-eqz v16, :cond_2

    #@74
    .line 5857
    move-object/from16 v0, v17

    #@76
    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    #@78
    move-object/from16 v0, v16

    #@7a
    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    #@7c
    move-wide/from16 v18, v0

    #@7e
    move-wide/from16 v0, v18

    #@80
    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@83
    move-result-wide v2

    #@84
    move-object/from16 v0, v17

    #@86
    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    #@88
    .line 5858
    move-object/from16 v0, v16

    #@8a
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@8c
    move-object/from16 v16, v0

    #@8e
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v0, v16

    #@90
    move-object/from16 v1, v17

    #@92
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@94
    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    goto :goto_3

    #@95
    .line 5851
    :cond_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@98
    move-result-object v13

    #@99
    goto :goto_2

    #@9a
    .line 5834
    .end local v10    # "r":D
    .end local v12    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .locals 2

    #@0
    .prologue
    .line 5833
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 5833
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->getRawResult()Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
