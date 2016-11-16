.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachKeyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V
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
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4947
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ForEachKeyTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    .line 4948
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->action:Ljava/util/function/Consumer;

    #@5
    .line 4946
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    #@0
    .prologue
    .line 4952
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ForEachKeyTask<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->action:Ljava/util/function/Consumer;

    #@2
    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz v6, :cond_2

    #@4
    .line 4953
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@6
    .local v7, "i":I
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@8
    if-lez v0, :cond_0

    #@a
    .line 4954
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@c
    .local v4, "f":I
    add-int v0, v4, v7

    #@e
    ushr-int/lit8 v3, v0, 0x1

    #@10
    .local v3, "h":I
    if-le v3, v7, :cond_0

    #@12
    .line 4955
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@16
    .line 4956
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    #@18
    .line 4957
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@1a
    ushr-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@1e
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@20
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@22
    move-object v1, p0

    #@23
    .line 4956
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    #@26
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@29
    goto :goto_0

    #@2a
    .line 4960
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2d
    move-result-object v8

    #@2e
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_1

    #@30
    .line 4961
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@32
    invoke-interface {v6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@35
    goto :goto_1

    #@36
    .line 4962
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    #@39
    .line 4950
    .end local v7    # "i":I
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    return-void
.end method
