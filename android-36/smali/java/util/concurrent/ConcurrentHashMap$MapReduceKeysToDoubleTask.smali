.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToDoubleTask"
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o basis:D

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/DoubleBinaryOperator;

.field greylist-max-o result:D

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .registers 12
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # D
    .param p10, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 5779
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5780
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    .line 5781
    iput-wide p8, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->basis:D

    iput-object p10, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5782
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 13

    .line 5787
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz v0, :cond_71

    iget-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    move-object v0, v11

    .local v11, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v0, :cond_6f

    .line 5789
    iget-wide v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->basis:D

    .line 5790
    .local v9, "r":D
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseIndex:I

    .local v0, "i":I
    :goto_e
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_36

    .line 5792
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->addToPendingCount(I)V

    .line 5793
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5795
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    .line 5790
    :cond_36
    move-object v2, p0

    goto :goto_39

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_38
    move-object v2, p0

    .line 5797
    .end local v0    # "i":I
    :goto_39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4b

    .line 5798
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v9

    goto :goto_39

    .line 5799
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4b
    iput-wide v9, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    .line 5801
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_51
    if-eqz v0, :cond_72

    .line 5804
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5805
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 5806
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    :goto_58
    if-eqz v3, :cond_6a

    .line 5807
    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    iget-wide v6, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    iput-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    .line 5808
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object v3, v4

    goto :goto_58

    .line 5801
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    :cond_6a
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_51

    .line 5787
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":D
    :cond_6f
    move-object v2, p0

    goto :goto_72

    .end local v11    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    :cond_71
    move-object v2, p0

    .line 5812
    :cond_72
    :goto_72
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Double;
    .registers 3

    .line 5783
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 5765
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
