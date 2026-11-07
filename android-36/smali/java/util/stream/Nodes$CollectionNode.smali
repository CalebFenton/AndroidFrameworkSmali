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
        "Ljava/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 712
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p1, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    .line 714
    return-void
.end method


# virtual methods
.method public blacklist asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 732
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    iget-object v1, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyInto([Ljava/lang/Object;I)V
    .registers 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 725
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 726
    .local v1, "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    aput-object v1, p1, p2

    move p2, v2

    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_6

    .line 727
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_16
    return-void
.end method

.method public blacklist count()J
    .registers 3

    .line 737
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 742
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 743
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 720
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 749
    .local p0, "this":Ljava/util/stream/Nodes$CollectionNode;, "Ljava/util/stream/Nodes$CollectionNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CollectionNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
