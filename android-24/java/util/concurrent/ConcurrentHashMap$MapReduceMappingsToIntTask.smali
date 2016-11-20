.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToIntTask"
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:I

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntBiFunction",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # I
    .param p9, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToIntBiFunction",
            "<-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 6279
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceMappingsToIntTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@5
    .line 6280
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    #@7
    .line 6281
    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    #@9
    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    #@b
    .line 6278
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 15

    #@0
    .prologue
    .line 6287
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceMappingsToIntTask<TK;TV;>;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    #@2
    .local v7, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    if-eqz v7, :cond_3

    #@4
    .line 6288
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    #@6
    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v9, :cond_3

    #@8
    .line 6289
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    #@a
    .line 6290
    .local v8, "r":I
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@c
    .local v11, "i":I
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@e
    if-lez v0, :cond_0

    #@10
    .line 6291
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@12
    .local v4, "f":I
    add-int v0, v4, v11

    #@14
    ushr-int/lit8 v3, v0, 0x1

    #@16
    .local v3, "h":I
    if-le v3, v11, :cond_0

    #@18
    .line 6292
    const/4 v0, 0x1

    #@19
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@1c
    .line 6293
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@1e
    .line 6294
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@20
    ushr-int/lit8 v2, v1, 0x1

    #@22
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@24
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@26
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@28
    .line 6295
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@2a
    move-object v1, p0

    #@2b
    .line 6293
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    #@2e
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@30
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@33
    goto :goto_0

    #@34
    .line 6297
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@37
    move-result-object v12

    #@38
    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v12, :cond_1

    #@3a
    .line 6298
    iget-object v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@3c
    iget-object v1, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@3e
    invoke-interface {v7, v0, v1}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    #@41
    move-result v0

    #@42
    invoke-interface {v9, v8, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@45
    move-result v8

    #@46
    goto :goto_1

    #@47
    .line 6299
    :cond_1
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    #@49
    .line 6301
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@4c
    move-result-object v10

    #@4d
    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v10, :cond_3

    #@4f
    move-object v14, v10

    #@50
    .line 6304
    check-cast v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@52
    .line 6305
    .local v14, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iget-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@54
    .line 6306
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    :goto_3
    if-eqz v13, :cond_2

    #@56
    .line 6307
    iget v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    #@58
    iget v1, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    #@5a
    invoke-interface {v9, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@5d
    move-result v0

    #@5e
    iput v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    #@60
    .line 6308
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@62
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iput-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@64
    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    goto :goto_3

    #@65
    .line 6301
    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@68
    move-result-object v10

    #@69
    goto :goto_2

    #@6a
    .line 6284
    .end local v8    # "r":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .end local v14    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 6283
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceMappingsToIntTask<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 6283
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceMappingsToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->getRawResult()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
