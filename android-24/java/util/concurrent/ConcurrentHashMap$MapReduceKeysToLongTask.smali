.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToLongTask"
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

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToLongFunction",
            "<-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 5929
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceKeysToLongTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@5
    .line 5930
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    #@7
    .line 5931
    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->basis:J

    #@9
    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    #@b
    .line 5928
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    #@0
    .prologue
    .line 5937
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceKeysToLongTask<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    #@4
    .local v9, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz v9, :cond_3

    #@6
    .line 5938
    move-object/from16 v0, p0

    #@8
    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    #@a
    .local v12, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v12, :cond_3

    #@c
    .line 5939
    move-object/from16 v0, p0

    #@e
    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->basis:J

    #@10
    .line 5940
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
    .line 5941
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
    .line 5942
    const/4 v2, 0x1

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@2a
    .line 5943
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@2c
    .line 5944
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
    .line 5945
    move-object/from16 v0, p0

    #@40
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@42
    move-object/from16 v3, p0

    #@44
    .line 5943
    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@4b
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@4e
    goto :goto_0

    #@4f
    .line 5947
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
    .line 5948
    iget-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@57
    invoke-interface {v9, v2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    #@5a
    move-result-wide v2

    #@5b
    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@5e
    move-result-wide v10

    #@5f
    goto :goto_1

    #@60
    .line 5949
    :cond_1
    move-object/from16 v0, p0

    #@62
    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    #@64
    .line 5951
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@67
    move-result-object v13

    #@68
    .local v13, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v13, :cond_3

    #@6a
    move-object/from16 v17, v13

    #@6c
    .line 5954
    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@6e
    .line 5955
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    move-object/from16 v0, v17

    #@70
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@72
    move-object/from16 v16, v0

    #@74
    .line 5956
    .local v16, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    :goto_3
    if-eqz v16, :cond_2

    #@76
    .line 5957
    move-object/from16 v0, v17

    #@78
    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    #@7a
    move-object/from16 v0, v16

    #@7c
    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    #@7e
    move-wide/from16 v18, v0

    #@80
    move-wide/from16 v0, v18

    #@82
    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@85
    move-result-wide v2

    #@86
    move-object/from16 v0, v17

    #@88
    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    #@8a
    .line 5958
    move-object/from16 v0, v16

    #@8c
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@8e
    move-object/from16 v16, v0

    #@90
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    move-object/from16 v0, v16

    #@92
    move-object/from16 v1, v17

    #@94
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@96
    .restart local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    goto :goto_3

    #@97
    .line 5951
    :cond_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@9a
    move-result-object v13

    #@9b
    goto :goto_2

    #@9c
    .line 5934
    .end local v10    # "r":J
    .end local v12    # "reducer":Ljava/util/function/LongBinaryOperator;
    .end local v13    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "i":I
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Long;
    .locals 2

    #@0
    .prologue
    .line 5933
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceKeysToLongTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

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
    .line 5933
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceKeysToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->getRawResult()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
