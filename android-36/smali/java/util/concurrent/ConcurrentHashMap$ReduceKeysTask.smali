.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceKeysTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TK;>;"
    }
.end annotation


# instance fields
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V
    .registers 9
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;)V"
        }
    .end annotation

    .line 5417
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5418
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    .line 5419
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 5423
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    move-object v8, v0

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz v0, :cond_76

    .line 5424
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    if-lez v1, :cond_31

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_2f

    .line 5426
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->addToPendingCount(I)V

    .line 5427
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5429
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5424
    :cond_2f
    move-object v2, p0

    goto :goto_32

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_31
    move-object v2, p0

    .line 5431
    .end local v0    # "i":I
    :goto_32
    const/4 v0, 0x0

    .line 5432
    .local v0, "r":Ljava/lang/Object;, "TK;"
    :goto_33
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_4a

    .line 5433
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 5434
    .local v1, "u":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_40

    move-object v4, v1

    goto :goto_48

    :cond_40
    if-nez v1, :cond_44

    move-object v4, v0

    goto :goto_48

    :cond_44
    invoke-interface {v8, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_48
    move-object v0, v4

    .line 5435
    .end local v1    # "u":Ljava/lang/Object;, "TK;"
    goto :goto_33

    .line 5436
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4a
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5438
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_50
    if-eqz v1, :cond_77

    .line 5441
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5442
    .local v3, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5443
    .local v4, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :goto_57
    if-eqz v4, :cond_71

    .line 5445
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "sr":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_6b

    .line 5446
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v7, v5

    .local v7, "tr":Ljava/lang/Object;, "TK;"
    if-nez v5, :cond_65

    move-object v5, v6

    goto :goto_69

    .line 5447
    :cond_65
    invoke-interface {v8, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_69
    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5448
    .end local v7    # "tr":Ljava/lang/Object;, "TK;"
    :cond_6b
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v4, v5

    .line 5449
    .end local v6    # "sr":Ljava/lang/Object;, "TK;"
    goto :goto_57

    .line 5438
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .end local v4    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :cond_71
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_50

    .line 5423
    .end local v0    # "r":Ljava/lang/Object;, "TK;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_76
    move-object v2, p0

    .line 5452
    :cond_77
    return-void
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 5420
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    return-object v0
.end method
