.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesToLongTask"
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:J

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # J
    .param p10, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 6029
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToLongTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@5
    .line 6030
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    #@7
    .line 6031
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->basis:J

    #@9
    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    #@b
    .line 6028
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    #@0
    .prologue
    .line 6037
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToLongTask<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    #@4
    .local v9, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v9, :cond_3

    #@6
    .line 6038
    move-object/from16 v0, p0

    #@8
    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    #@a
    .local v12, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v12, :cond_3

    #@c
    .line 6039
    move-object/from16 v0, p0

    #@e
    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->basis:J

    #@10
    .line 6040
    .local v10, "r":J
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
    .line 6041
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
    .line 6042
    const/4 v2, 0x1

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@2a
    .line 6043
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@2c
    .line 6044
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
    .line 6045
    move-object/from16 v0, p0

    #@40
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@42
    move-object/from16 v3, p0

    #@44
    .line 6043
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@4b
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@4e
    goto :goto_0

    #@4f
    .line 6047
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
    .line 6048
    invoke-interface {v9, v15}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    #@58
    move-result-wide v2

    #@59
    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@5c
    move-result-wide v10

    #@5d
    goto :goto_1

    #@5e
    .line 6049
    :cond_1
    move-object/from16 v0, p0

    #@60
    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    #@62
    .line 6051
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
    .line 6054
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@6c
    .line 6055
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    move-object/from16 v0, v17

    #@6e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@70
    move-object/from16 v16, v0

    #@72
    .line 6056
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    :goto_3
    if-eqz v16, :cond_2

    #@74
    .line 6057
    move-object/from16 v0, v17

    #@76
    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    #@78
    move-object/from16 v0, v16

    #@7a
    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    #@7c
    move-wide/from16 v18, v0

    #@7e
    move-wide/from16 v0, v18

    #@80
    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@83
    move-result-wide v2

    #@84
    move-object/from16 v0, v17

    #@86
    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    #@88
    .line 6058
    move-object/from16 v0, v16

    #@8a
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@8c
    move-object/from16 v16, v0

    #@8e
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    move-object/from16 v0, v16

    #@90
    move-object/from16 v1, v17

    #@92
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@94
    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    goto :goto_3

    #@95
    .line 6051
    :cond_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@98
    move-result-object v13

    #@99
    goto :goto_2

    #@9a
    .line 6034
    .end local v10    # "r":J
    .end local v12    # "reducer":Ljava/util/function/LongBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Long;
    .locals 2

    #@0
    .prologue
    .line 6033
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToLongTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 6033
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->getRawResult()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
