.class final Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchValuesTask"
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
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TU;>;"
        }
    .end annotation
.end field

.field final searchFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5234
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.SearchValuesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    .line 5235
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->searchFunction:Ljava/util/function/Function;

    #@5
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .line 5233
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 12

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.SearchValuesTask<TK;TV;TU;>;"
    const/4 v11, 0x0

    #@1
    .line 5241
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->searchFunction:Ljava/util/function/Function;

    #@3
    .local v6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz v6, :cond_2

    #@5
    .line 5242
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .local v7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    if-eqz v7, :cond_2

    #@9
    .line 5243
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@b
    .local v8, "i":I
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@d
    if-lez v0, :cond_1

    #@f
    .line 5244
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@11
    .local v4, "f":I
    add-int v0, v4, v8

    #@13
    ushr-int/lit8 v3, v0, 0x1

    #@15
    .local v3, "h":I
    if-le v3, v8, :cond_1

    #@17
    .line 5245
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 5246
    return-void

    #@1e
    .line 5247
    :cond_0
    const/4 v0, 0x1

    #@1f
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@22
    .line 5248
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    #@24
    .line 5249
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@26
    ushr-int/lit8 v2, v1, 0x1

    #@28
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@2a
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@2c
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2e
    move-object v1, p0

    #@2f
    .line 5248
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    #@32
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@35
    goto :goto_0

    #@36
    .line 5252
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    if-nez v0, :cond_2

    #@3c
    .line 5255
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3f
    move-result-object v9

    #@40
    .local v9, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_3

    #@42
    .line 5256
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    #@45
    .line 5238
    .end local v7    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    .end local v8    # "i":I
    .end local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    :goto_1
    return-void

    #@46
    .line 5259
    .restart local v7    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    .restart local v8    # "i":I
    .restart local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@48
    invoke-interface {v6, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v10

    #@4c
    .local v10, "u":Ljava/lang/Object;, "TU;"
    if-eqz v10, :cond_1

    #@4e
    .line 5260
    invoke-virtual {v7, v11, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_2

    #@54
    .line 5261
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyCompleteRoot()V

    #@57
    goto :goto_1
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    #@0
    .prologue
    .line 5237
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.SearchValuesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
