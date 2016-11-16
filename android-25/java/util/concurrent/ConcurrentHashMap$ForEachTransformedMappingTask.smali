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
            "<-TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V
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
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5156
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ForEachTransformedMappingTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    .line 5157
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->transformer:Ljava/util/function/BiFunction;

    #@5
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->action:Ljava/util/function/Consumer;

    #@7
    .line 5155
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 11

    #@0
    .prologue
    .line 5162
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ForEachTransformedMappingTask<TK;TV;TU;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->transformer:Ljava/util/function/BiFunction;

    #@2
    .local v6, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz v6, :cond_2

    #@4
    .line 5163
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->action:Ljava/util/function/Consumer;

    #@6
    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v7, :cond_2

    #@8
    .line 5164
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    #@a
    .local v8, "i":I
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@c
    if-lez v0, :cond_0

    #@e
    .line 5165
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@10
    .local v4, "f":I
    add-int v0, v4, v8

    #@12
    ushr-int/lit8 v3, v0, 0x1

    #@14
    .local v3, "h":I
    if-le v3, v8, :cond_0

    #@16
    .line 5166
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@1a
    .line 5167
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    #@1c
    .line 5168
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@1e
    ushr-int/lit8 v2, v1, 0x1

    #@20
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    #@22
    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    #@24
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@26
    move-object v1, p0

    #@27
    .line 5167
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    #@2a
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@2d
    goto :goto_0

    #@2e
    .line 5171
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@31
    move-result-object v9

    #@32
    .local v9, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_1

    #@34
    .line 5173
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@36
    iget-object v1, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@38
    invoke-interface {v6, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v10

    #@3c
    .local v10, "u":Ljava/lang/Object;, "TU;"
    if-eqz v10, :cond_0

    #@3e
    .line 5174
    invoke-interface {v7, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@41
    goto :goto_1

    #@42
    .line 5176
    .end local v10    # "u":Ljava/lang/Object;, "TU;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    #@45
    .line 5159
    .end local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .end local v8    # "i":I
    .end local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    return-void
.end method
