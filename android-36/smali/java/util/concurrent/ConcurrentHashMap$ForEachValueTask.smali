.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachValueTask"
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V
    .registers 8
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
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 5024
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5025
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    .line 5026
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 9

    .line 5029
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    move-object v7, v0

    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz v0, :cond_3b

    .line 5030
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    if-lez v1, :cond_2b

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_2b

    .line 5032
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->addToPendingCount(I)V

    .line 5033
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 5035
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5037
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_38

    .line 5038
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2b

    .line 5039
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_38
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->propagateCompletion()V

    .line 5041
    :cond_3b
    return-void
.end method
