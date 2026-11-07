.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachEntryTask"
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
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
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
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 5051
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5052
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->action:Ljava/util/function/Consumer;

    .line 5053
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 9

    .line 5056
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->action:Ljava/util/function/Consumer;

    move-object v7, v0

    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_39

    .line 5057
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseIndex:I

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    if-lez v1, :cond_2b

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_2b

    .line 5059
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->addToPendingCount(I)V

    .line 5060
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 5062
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    .line 5064
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_36

    .line 5065
    invoke-interface {v7, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2b

    .line 5066
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_36
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->propagateCompletion()V

    .line 5068
    :cond_39
    return-void
.end method
