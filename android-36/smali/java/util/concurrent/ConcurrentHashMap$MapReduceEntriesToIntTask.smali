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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o basis:I

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/IntBinaryOperator;

.field greylist-max-o result:I

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .registers 11
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # I
    .param p9, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToIntFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6279
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 6280
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .line 6281
    iput p8, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->basis:I

    iput-object p9, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6282
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 12

    .line 6287
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6f

    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v0, v10

    .local v10, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v0, :cond_6d

    .line 6289
    iget v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->basis:I

    .line 6290
    .local v9, "r":I
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->baseIndex:I

    .local v0, "i":I
    :goto_e
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_36

    .line 6292
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->addToPendingCount(I)V

    .line 6293
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 6295
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    .line 6290
    :cond_36
    move-object v2, p0

    goto :goto_39

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_38
    move-object v2, p0

    .line 6297
    .end local v0    # "i":I
    :goto_39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_49

    .line 6298
    invoke-interface {v8, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v10, v9, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    goto :goto_39

    .line 6299
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_49
    iput v9, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    .line 6301
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4f
    if-eqz v0, :cond_70

    .line 6304
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 6305
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 6306
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    :goto_56
    if-eqz v3, :cond_68

    .line 6307
    iget v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    iget v5, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    invoke-interface {v10, v4, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v4

    iput v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    .line 6308
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    move-object v3, v4

    goto :goto_56

    .line 6301
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    :cond_68
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_4f

    .line 6287
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":I
    :cond_6d
    move-object v2, p0

    goto :goto_70

    .end local v10    # "reducer":Ljava/util/function/IntBinaryOperator;
    :cond_6f
    move-object v2, p0

    .line 6312
    :cond_70
    :goto_70
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Integer;
    .registers 2

    .line 6283
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 6265
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
