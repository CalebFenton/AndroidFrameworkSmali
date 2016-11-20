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
        Ljava/util/stream/Nodes$ConcNode$OfInt;,
        Ljava/util/stream/Nodes$ConcNode$OfLong;,
        Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$AbstractConcNode",
        "<TT;",
        "Ljava/util/stream/Node",
        "<TT;>;>;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 783
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    #@3
    .line 782
    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 802
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@3
    move-result-wide v2

    #@4
    .line 803
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@7
    cmp-long v1, v2, v4

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@10
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 805
    :cond_0
    long-to-int v1, v2

    #@15
    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [Ljava/lang/Object;

    #@1b
    .line 806
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1c
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    #@1f
    .line 807
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
    .line 793
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 794
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    #@8
    .line 797
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@a
    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@c
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    #@f
    move-result-wide v2

    #@10
    long-to-int v1, v2

    #@11
    add-int/2addr v1, p2

    #@12
    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    #@15
    .line 792
    return-void
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
    .line 812
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@2
    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    #@5
    .line 813
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@7
    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    #@a
    .line 811
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
    .line 788
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava/util/stream/Node;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 833
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x20

    #@8
    cmp-long v0, v0, v2

    #@a
    if-gez v0, :cond_0

    #@c
    .line 834
    const-string/jumbo v0, "ConcNode[%s.%s]"

    #@f
    const/4 v1, 0x2

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    iget-object v2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@14
    aput-object v2, v1, v4

    #@16
    iget-object v2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@18
    aput-object v2, v1, v5

    #@1a
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 836
    :cond_0
    const-string/jumbo v0, "ConcNode[size=%d]"

    #@22
    new-array v1, v5, [Ljava/lang/Object;

    #@24
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@27
    move-result-wide v2

    #@28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b
    move-result-object v2

    #@2c
    aput-object v2, v1, v4

    #@2e
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 13
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 818
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@9
    move-result-wide v0

    #@a
    cmp-long v0, p3, v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 819
    return-object p0

    #@f
    .line 820
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@11
    invoke-interface {v0}, Ljava/util/stream/Node;->count()J

    #@14
    move-result-wide v4

    #@15
    .line 821
    .local v4, "leftCount":J
    cmp-long v0, p1, v4

    #@17
    if-ltz v0, :cond_1

    #@19
    .line 822
    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@1b
    sub-long v2, p1, v4

    #@1d
    sub-long v4, p3, v4

    #@1f
    move-object/from16 v6, p5

    #@21
    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@24
    .end local v4    # "leftCount":J
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 823
    .restart local v4    # "leftCount":J
    :cond_1
    cmp-long v0, p3, v4

    #@28
    if-gtz v0, :cond_2

    #@2a
    .line 824
    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@2c
    move-wide v2, p1

    #@2d
    move-wide/from16 v4, p3

    #@2f
    move-object/from16 v6, p5

    #@31
    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@34
    .end local v4    # "leftCount":J
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 826
    .restart local v4    # "leftCount":J
    :cond_2
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->getShape()Ljava/util/stream/StreamShape;

    #@39
    move-result-object v0

    #@3a
    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@3c
    move-wide v2, p1

    #@3d
    move-object/from16 v6, p5

    #@3f
    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@42
    move-result-object v1

    #@43
    .line 827
    iget-object v7, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@45
    const-wide/16 v8, 0x0

    #@47
    sub-long v10, p3, v4

    #@49
    move-object/from16 v12, p5

    #@4b
    invoke-interface/range {v7 .. v12}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@4e
    move-result-object v2

    #@4f
    .line 826
    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    #@52
    move-result-object v0

    #@53
    return-object v0
.end method
