.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesTask"
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
.field greylist-max-o nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field greylist-max-o rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
    .registers 10
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<",
            "TK;TV;TU;>;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .line 5669
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5670
    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    .line 5671
    iput-object p8, p1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5672
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 11

    .line 5677
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v0, :cond_7e

    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v0, v9

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v0, :cond_7c

    .line 5679
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    if-lez v1, :cond_36

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_34

    .line 5681
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->addToPendingCount(I)V

    .line 5682
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5684
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5679
    :cond_34
    move-object v2, p0

    goto :goto_37

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_36
    move-object v2, p0

    .line 5686
    .end local v0    # "i":I
    :goto_37
    const/4 v0, 0x0

    .line 5687
    .local v0, "r":Ljava/lang/Object;, "TU;"
    :goto_38
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_50

    .line 5689
    invoke-interface {v8, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    .local v4, "u":Ljava/lang/Object;, "TU;"
    if-eqz v1, :cond_4f

    .line 5690
    if-nez v0, :cond_4a

    move-object v1, v4

    goto :goto_4e

    :cond_4a
    invoke-interface {v9, v0, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4e
    move-object v0, v1

    .line 5691
    .end local v4    # "u":Ljava/lang/Object;, "TU;"
    :cond_4f
    goto :goto_38

    .line 5692
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_50
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .line 5694
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_56
    if-eqz v1, :cond_7f

    .line 5697
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5698
    .local v3, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5699
    .local v4, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :goto_5d
    if-eqz v4, :cond_77

    .line 5701
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v5, :cond_71

    .line 5702
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    move-object v7, v5

    .local v7, "tr":Ljava/lang/Object;, "TU;"
    if-nez v5, :cond_6b

    move-object v5, v6

    goto :goto_6f

    .line 5703
    :cond_6b
    invoke-interface {v9, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_6f
    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .line 5704
    .end local v7    # "tr":Ljava/lang/Object;, "TU;"
    :cond_71
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    move-object v4, v5

    .line 5705
    .end local v6    # "sr":Ljava/lang/Object;, "TU;"
    goto :goto_5d

    .line 5694
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .end local v4    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :cond_77
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_56

    .line 5677
    .end local v0    # "r":Ljava/lang/Object;, "TU;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_7c
    move-object v2, p0

    goto :goto_7f

    .end local v9    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_7e
    move-object v2, p0

    .line 5708
    :cond_7f
    :goto_7f
    return-void
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5673
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
