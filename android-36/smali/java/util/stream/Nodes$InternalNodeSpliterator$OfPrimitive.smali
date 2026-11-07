.class abstract Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;N::",
        "Ljava/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TN;>;>",
        "Ljava/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;TT_SP",
        "LITR;",
        "TN;>;",
        "Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node$OfPrimitive;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1130
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "cur":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava/util/stream/Node;)V

    .line 1131
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1157
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljava/util/stream/Node;

    if-nez v0, :cond_5

    .line 1158
    return-void

    .line 1160
    :cond_5
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_2a

    .line 1161
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_22

    .line 1162
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1164
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    :goto_11
    invoke-virtual {p0, v0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    move-object v2, v1

    .local v2, "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_1e

    .line 1165
    invoke-interface {v2, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_11

    .line 1167
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljava/util/stream/Node;

    .line 1168
    .end local v0    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    .end local v2    # "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    goto :goto_31

    .line 1170
    :cond_22
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_31

    .line 1173
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_2a

    .line 1174
    :cond_31
    :goto_31
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1135
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_8
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 1139
    .local v0, "hasNext":Z
    if-nez v0, :cond_32

    .line 1140
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v1, :cond_2f

    .line 1142
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    .line 1143
    .local v1, "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_2f

    .line 1144
    invoke-interface {v1}, Ljava/util/stream/Node$OfPrimitive;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v2

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1146
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1150
    .end local v1    # "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    :cond_2f
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljava/util/stream/Node;

    .line 1152
    :cond_32
    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1123
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    invoke-super {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
