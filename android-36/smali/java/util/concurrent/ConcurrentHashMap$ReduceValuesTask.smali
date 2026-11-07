.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceValuesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)V"
        }
    .end annotation

    .line 5465
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5466
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5467
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 5471
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v8, v0

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz v0, :cond_72

    .line 5472
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    if-lez v1, :cond_31

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_2f

    .line 5474
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->addToPendingCount(I)V

    .line 5475
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5477
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5472
    :cond_2f
    move-object v2, p0

    goto :goto_32

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_31
    move-object v2, p0

    .line 5479
    .end local v0    # "i":I
    :goto_32
    const/4 v0, 0x0

    .line 5480
    .local v0, "r":Ljava/lang/Object;, "TV;"
    :goto_33
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_46

    .line 5481
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 5482
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_40

    move-object v4, v1

    goto :goto_44

    :cond_40
    invoke-interface {v8, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_44
    move-object v0, v4

    .line 5483
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_33

    .line 5484
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .line 5486
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4c
    if-eqz v1, :cond_73

    .line 5489
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5490
    .local v3, "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 5491
    .local v4, "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :goto_53
    if-eqz v4, :cond_6d

    .line 5493
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "sr":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_67

    .line 5494
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    move-object v7, v5

    .local v7, "tr":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_61

    move-object v5, v6

    goto :goto_65

    .line 5495
    :cond_61
    invoke-interface {v8, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_65
    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    .line 5496
    .end local v7    # "tr":Ljava/lang/Object;, "TV;"
    :cond_67
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object v4, v5

    .line 5497
    .end local v6    # "sr":Ljava/lang/Object;, "TV;"
    goto :goto_53

    .line 5486
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    .end local v4    # "s":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    :cond_6d
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_4c

    .line 5471
    .end local v0    # "r":Ljava/lang/Object;, "TV;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_72
    move-object v2, p0

    .line 5500
    :cond_73
    return-void
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 5468
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
