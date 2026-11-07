.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToLongTask"
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

.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/LongBinaryOperator;

.field greylist-max-o result:J

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/ToLongBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6129
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6130
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    .line 6131
    iput-wide p8, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    iput-object p10, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .line 6132
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 13

    .line 6137
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_73

    iget-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v0, v11

    .local v11, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v0, :cond_71

    .line 6139
    iget-wide v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    .line 6140
    .local v9, "r":J
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseIndex:I

    .local v0, "i":I
    :goto_e
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_36

    .line 6142
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->addToPendingCount(I)V

    .line 6143
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6145
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    .line 6140
    :cond_36
    move-object v2, p0

    goto :goto_39

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_38
    move-object v2, p0

    .line 6147
    .end local v0    # "i":I
    :goto_39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4d

    .line 6148
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0, v3}, Ljava/util/function/ToLongBiFunction;->applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v9

    goto :goto_39

    .line 6149
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4d
    iput-wide v9, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    .line 6151
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_53
    if-eqz v0, :cond_74

    .line 6154
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6155
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6156
    .local v3, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    :goto_5a
    if-eqz v3, :cond_6c

    .line 6157
    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    iget-wide v6, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    .line 6158
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v3, v4

    goto :goto_5a

    .line 6151
    .end local v1    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .end local v3    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    :cond_6c
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_53

    .line 6137
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":J
    :cond_71
    move-object v2, p0

    goto :goto_74

    .end local v11    # "reducer":Ljava/util/function/LongBinaryOperator;
    :cond_73
    move-object v2, p0

    .line 6162
    :cond_74
    :goto_74
    return-void
.end method

.method public final blacklist getRawResult()Ljava/lang/Long;
    .registers 3

    .line 6133
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 6115
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
