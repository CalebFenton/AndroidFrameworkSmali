.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesToIntTask"
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

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToIntFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 6229
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToIntTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@5
    .line 6230
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    #@7
    .line 6231
    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->basis:I

    #@9
    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    #@b
    .line 6228
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 15

    #@0
    .prologue
    .line 6237
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToIntTask<TK;TV;>;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    #@2
    .local v7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v7, :cond_3

    #@4
    .line 6238
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    #@6
    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v9, :cond_3

    #@8
    .line 6239
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->basis:I

    #@a
    .line 6240
    .local v8, "r":I
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@c
    .local v11, "i":I
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@e
    if-lez v0, :cond_0

    #@10
    .line 6241
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
    .line 6242
    const/4 v0, 0x1

    #@19
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@1c
    .line 6243
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@1e
    .line 6244
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
    .line 6245
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@2a
    move-object v1, p0

    #@2b
    .line 6243
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    #@2e
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@30
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@33
    goto :goto_0

    #@34
    .line 6247
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
    .line 6248
    invoke-interface {v7, v12}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    #@3d
    move-result v0

    #@3e
    invoke-interface {v9, v8, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@41
    move-result v8

    #@42
    goto :goto_1

    #@43
    .line 6249
    :cond_1
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    #@45
    .line 6251
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@48
    move-result-object v10

    #@49
    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v10, :cond_3

    #@4b
    move-object v14, v10

    #@4c
    .line 6254
    check-cast v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@4e
    .line 6255
    .local v14, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    iget-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@50
    .line 6256
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    :goto_3
    if-eqz v13, :cond_2

    #@52
    .line 6257
    iget v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    #@54
    iget v1, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    #@56
    invoke-interface {v9, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@59
    move-result v0

    #@5a
    iput v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    #@5c
    .line 6258
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@5e
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    iput-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@60
    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    goto :goto_3

    #@61
    .line 6251
    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    #@64
    move-result-object v10

    #@65
    goto :goto_2

    #@66
    .line 6234
    .end local v8    # "r":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    .end local v14    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 6233
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToIntTask<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

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
    .line 6233
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.MapReduceEntriesToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->getRawResult()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
