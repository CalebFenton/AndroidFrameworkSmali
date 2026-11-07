.class abstract Ljava/util/stream/Nodes$InternalNodeSpliterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InternalNodeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator<",
        "TT;>;N::",
        "Ljava/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist curChildIndex:I

.field blacklist curNode:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field blacklist lastNodeSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field blacklist tryAdvanceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field blacklist tryAdvanceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 965
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "curNode":Ljava/util/stream/Node;, "TN;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    iput-object p1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 967
    return-void
.end method


# virtual methods
.method public final whitelist test-api characteristics()I
    .registers 2

    .line 1069
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/16 v0, 0x40

    return v0
.end method

.method public final whitelist test-api estimateSize()J
    .registers 6

    .line 1052
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-nez v0, :cond_7

    .line 1053
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1057
    :cond_7
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_12

    .line 1058
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    .line 1060
    :cond_12
    const-wide/16 v0, 0x0

    .line 1061
    .local v0, "size":J
    iget v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .local v2, "i":I
    :goto_16
    iget-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v3}, Ljava/util/stream/Node;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1062
    iget-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v3, v2}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Node;->count()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1063
    .end local v2    # "i":I
    :cond_2c
    return-wide v0
.end method

.method protected final blacklist findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TN;>;)TN;"
        }
    .end annotation

    .line 989
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    const/4 v0, 0x0

    .line 990
    .local v0, "n":Ljava/util/stream/Node;, "TN;"
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    move-object v0, v1

    if-eqz v1, :cond_2e

    .line 991
    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 992
    invoke-interface {v0}, Ljava/util/stream/Node;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 993
    return-object v0

    .line 995
    :cond_1b
    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_2d

    .line 996
    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 995
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .end local v1    # "i":I
    :cond_2d
    goto :goto_1

    .line 1000
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method protected final blacklist initStack()Ljava/util/Deque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation

    .line 977
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 978
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    iget v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v1, v2, :cond_1f

    .line 979
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v2, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 978
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 980
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method protected final blacklist initTryAdvance()Z
    .registers 4

    .line 1005
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1006
    return v1

    .line 1008
    :cond_6
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_2b

    .line 1009
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_27

    .line 1011
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    .line 1012
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v0

    .line 1013
    .local v0, "leaf":Ljava/util/stream/Node;, "TN;"
    if-eqz v0, :cond_23

    .line 1014
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1021
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    goto :goto_2b

    .line 1018
    .restart local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1019
    return v1

    .line 1023
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_27
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1025
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1031
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-eqz v0, :cond_66

    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_9

    goto :goto_66

    .line 1033
    :cond_9
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-eqz v0, :cond_14

    .line 1034
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1035
    :cond_14
    iget v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_31

    .line 1036
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_31
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1039
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_52

    .line 1040
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    .line 1041
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_52
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .line 1045
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1032
    :cond_66
    :goto_66
    const/4 v0, 0x0

    return-object v0
.end method
