.class final Ljava/util/stream/Nodes$ConcNode;
.super Ljava/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$ConcNode$OfDouble;,
        Ljava/util/stream/Nodes$ConcNode$OfLong;,
        Ljava/util/stream/Nodes$ConcNode$OfInt;,
        Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$AbstractConcNode<",
        "TT;",
        "Ljava/util/stream/Node<",
        "TT;>;>;",
        "Ljava/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node<",
            "TT;>;",
            "Ljava/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 794
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    .line 795
    return-void
.end method


# virtual methods
.method public blacklist asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 813
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    .line 814
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 816
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 817
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    .line 818
    return-object v2

    .line 815
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist copyInto([Ljava/lang/Object;I)V
    .registers 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 804
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 808
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 809
    return-void
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

    .line 823
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 824
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 825
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

    .line 799
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava/util/stream/Node;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 844
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 845
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ConcNode[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 847
    :cond_19
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ConcNode[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 18
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 829
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 830
    return-object p0

    .line 831
    :cond_f
    iget-object v0, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->count()J

    move-result-wide v4

    .line 832
    .local v4, "leftCount":J
    cmp-long v0, p1, v4

    if-ltz v0, :cond_26

    .line 833
    iget-object v6, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    sub-long v7, p1, v4

    sub-long v9, p3, v4

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 834
    :cond_26
    cmp-long v0, p3, v4

    if-gtz v0, :cond_35

    .line 835
    iget-object v6, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    move-wide v7, p1

    move-wide v9, p3

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 837
    :cond_35
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->getShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$ConcNode;->left:Ljava/util/stream/Node;

    move-wide v2, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    iget-object v6, p0, Ljava/util/stream/Nodes$ConcNode;->right:Ljava/util/stream/Node;

    sub-long v9, p3, v4

    .line 838
    const-wide/16 v7, 0x0

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    .line 837
    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method
