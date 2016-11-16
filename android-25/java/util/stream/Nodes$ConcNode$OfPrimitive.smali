.class abstract Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
.super Ljava/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TE;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/util/stream/Nodes$AbstractConcNode",
        "<TE;TT_NODE;>;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 847
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "left":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    .local p2, "right":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    #@3
    .line 846
    return-void
.end method


# virtual methods
.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    #@0
    .prologue
    .line 866
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@3
    move-result-wide v2

    #@4
    .line 867
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@7
    cmp-long v1, v2, v4

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 868
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@10
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 869
    :cond_0
    long-to-int v1, v2

    #@15
    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->newArray(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 870
    .local v0, "array":Ljava/lang/Object;, "TT_ARR;"
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    #@1d
    .line 871
    return-object v0
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 858
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@2
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@4
    invoke-interface {v0, p1, p2}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    #@7
    .line 861
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@9
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@b
    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@d
    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    #@f
    invoke-interface {v1}, Ljava/util/stream/Node$OfPrimitive;->count()J

    #@12
    move-result-wide v2

    #@13
    long-to-int v1, v2

    #@14
    add-int/2addr v1, p2

    #@15
    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    #@18
    .line 857
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 852
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@2
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@4
    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    #@7
    .line 853
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@9
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@b
    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    #@e
    .line 851
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 766
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$AbstractConcNode;->getChild(I)Ljava/util/stream/Node;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 876
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@6
    move-result-wide v0

    #@7
    const-wide/16 v2, 0x20

    #@9
    cmp-long v0, v0, v2

    #@b
    if-gez v0, :cond_0

    #@d
    .line 877
    const-string/jumbo v0, "%s[%s.%s]"

    #@10
    const/4 v1, 0x3

    #@11
    new-array v1, v1, [Ljava/lang/Object;

    #@13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v1, v4

    #@1d
    iget-object v2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@1f
    aput-object v2, v1, v5

    #@21
    iget-object v2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@23
    aput-object v2, v1, v6

    #@25
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 879
    :cond_0
    const-string/jumbo v0, "%s[size=%d]"

    #@2d
    new-array v1, v6, [Ljava/lang/Object;

    #@2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    aput-object v2, v1, v4

    #@39
    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    #@3c
    move-result-wide v2

    #@3d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@40
    move-result-object v2

    #@41
    aput-object v2, v1, v5

    #@43
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method
