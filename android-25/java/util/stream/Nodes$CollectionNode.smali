.class final Ljava/util/stream/Nodes$CollectionNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 701
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 702
    iput-object p1, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@5
    .line 701
    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 721
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v1, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@2
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@4
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@7
    move-result v0

    #@8
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/lang/Object;

    #@e
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 714
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .line 715
    .local v1, "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, p2, 0x1

    #@12
    .end local p2    # "offset":I
    .local v0, "offset":I
    aput-object v1, p1, p2

    #@14
    move p2, v0

    #@15
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    #@16
    .line 713
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    #@0
    .prologue
    .line 726
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    return-wide v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 731
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    #@5
    .line 730
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 709
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 738
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    const-string/jumbo v0, "CollectionNode[%d][%s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@8
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    iget-object v2, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
