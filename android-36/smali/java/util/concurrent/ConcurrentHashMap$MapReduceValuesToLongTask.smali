.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesToLongTask"
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o basis:J

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/LongBinaryOperator;

.field greylist-max-o result:J

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
    .registers 12
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # J
    .param p10, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToLongFunction<",
            "-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6029
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 6030
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    .line 6031
    iput-wide p8, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->basis:J

    iput-object p10, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .line 6032
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 13

    .line 6037
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
    if-eqz v0, :cond_71

    iget-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v0, v11

    .local v11, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v0, :cond_6f

    .line 6039
    iget-wide v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->basis:J

    .line 6040
    .local v9, "r":J
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->baseIndex:I

    .local v0, "i":I
    :goto_e
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_36

    .line 6042
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->addToPendingCount(I)V

    .line 6043
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 6045
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    .line 6040
    :cond_36
    move-object v2, p0

    goto :goto_39

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_38
    move-object v2, p0

    .line 6047
    .end local v0    # "i":I
    :goto_39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4b

    .line 6048
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v9

    goto :goto_39

    .line 6049
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4b
    iput-wide v9, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    .line 6051
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_51
    if-eqz v0, :cond_72

    .line 6054
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 6055
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 6056
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    :goto_58
    if-eqz v3, :cond_6a

    .line 6057
    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    iget-wide v6, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    .line 6058
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object v3, v4

    goto :goto_58

    .line 6051
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    :cond_6a
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_51

    .line 6037
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":J
    :cond_6f
    move-object v2, p0

    goto :goto_72

    .end local v11    # "reducer":Ljava/util/function/LongBinaryOperator;
    :cond_71
    move-object v2, p0

    .line 6062
    :cond_72
    :goto_72
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Long;
    .registers 3

    .line 6033
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 6015
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
