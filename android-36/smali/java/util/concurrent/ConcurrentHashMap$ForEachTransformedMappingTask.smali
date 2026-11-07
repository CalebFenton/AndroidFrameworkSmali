.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedMappingTask"
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

.field final greylist-max-o transformer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V
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
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 5206
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5207
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
    iput-object p6, p1, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->transformer:Ljava/util/function/BiFunction;

    iput-object p7, p1, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->action:Ljava/util/function/Consumer;

    .line 5208
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 5212
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->transformer:Ljava/util/function/BiFunction;

    move-object v7, v0

    .local v7, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz v0, :cond_49

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->action:Ljava/util/function/Consumer;

    move-object v0, v8

    .local v8, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v0, :cond_49

    .line 5214
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->batch:I

    if-lez v1, :cond_30

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_30

    .line 5216
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->addToPendingCount(I)V

    .line 5217
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->batch:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    .line 5219
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5221
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_30
    :goto_30
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_46

    .line 5223
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_45

    .line 5224
    invoke-interface {v8, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5225
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_45
    goto :goto_30

    .line 5226
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->propagateCompletion()V

    .line 5228
    .end local v8    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_49
    return-void
.end method
