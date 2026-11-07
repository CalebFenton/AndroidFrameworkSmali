.class final Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchKeysTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o searchFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TK;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V
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
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;)V"
        }
    .end annotation

    .line 5240
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5241
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->searchFunction:Ljava/util/function/Function;

    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5242
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 5247
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->searchFunction:Ljava/util/function/Function;

    move-object v7, v0

    .local v7, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz v0, :cond_5d

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v8

    .local v8, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    if-eqz v0, :cond_5d

    .line 5249
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->batch:I

    if-lez v1, :cond_37

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_37

    .line 5251
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 5252
    return-void

    .line 5253
    :cond_21
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->addToPendingCount(I)V

    .line 5254
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5256
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5258
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_37
    :goto_37
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 5261
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_48

    .line 5262
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->propagateCompletion()V

    .line 5263
    goto :goto_5d

    .line 5265
    :cond_48
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_5c

    .line 5266
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 5267
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->quietlyCompleteRoot()V

    goto :goto_5d

    .line 5270
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_5c
    goto :goto_37

    .line 5272
    .end local v8    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    :cond_5d
    :goto_5d
    return-void
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5243
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
