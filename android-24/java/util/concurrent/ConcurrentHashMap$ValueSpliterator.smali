.class final Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;
.super Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field est:J


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;IIIJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3583
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@3
    .line 3584
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    #@5
    .line 3582
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 3612
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    const/16 v0, 0x1100

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 3609
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3595
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 3596
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    #@e
    .line 3597
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@10
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@13
    goto :goto_0

    #@14
    .line 3594
    :cond_1
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3601
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 3603
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    #@e
    .line 3604
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 3605
    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@12
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@15
    .line 3606
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 3587
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3589
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@2
    .local v0, "i":I
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@4
    .local v5, "f":I
    add-int v1, v0, v5

    #@6
    ushr-int/lit8 v4, v1, 0x1

    #@8
    .local v4, "h":I
    if-gt v4, v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return-object v1

    #@c
    .line 3590
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    #@e
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@12
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@14
    .line 3591
    iget-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    #@16
    const/4 v8, 0x1

    #@17
    ushr-long/2addr v6, v8

    #@18
    iput-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    #@1a
    .line 3590
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    #@1d
    goto :goto_0
.end method
