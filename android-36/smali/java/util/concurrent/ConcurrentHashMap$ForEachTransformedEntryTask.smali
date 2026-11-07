.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedEntryTask"
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
            "-TU;>;"
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
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 5172
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5173
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->transformer:Ljava/util/function/Function;

    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->action:Ljava/util/function/Consumer;

    .line 5174
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 5178
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->transformer:Ljava/util/function/Function;

    move-object v7, v0

    .local v7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v0, :cond_45

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->action:Ljava/util/function/Consumer;

    move-object v0, v8

    .local v8, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v0, :cond_45

    .line 5180
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    if-lez v1, :cond_30

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_30

    .line 5182
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->addToPendingCount(I)V

    .line 5183
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 5185
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5187
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_30
    :goto_30
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_42

    .line 5189
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_41

    .line 5190
    invoke-interface {v8, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5191
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_41
    goto :goto_30

    .line 5192
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_42
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->propagateCompletion()V

    .line 5194
    .end local v8    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_45
    return-void
.end method
