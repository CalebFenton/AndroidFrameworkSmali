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
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;N::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TN;>;>",
        "Ljava/util/stream/Nodes$InternalNodeSpliterator",
        "<TT;TT_SP",
        "LITR;",
        "TN;>;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1116
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "cur":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava/util/stream/Node;)V

    #@3
    .line 1115
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v3, 0x0

    #@1
    .line 1143
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1144
    return-void

    #@6
    .line 1146
    :cond_0
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@8
    if-nez v2, :cond_4

    #@a
    .line 1147
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@c
    if-nez v2, :cond_3

    #@e
    .line 1148
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    #@11
    move-result-object v1

    #@12
    .line 1150
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@18
    .local v0, "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v0, :cond_1

    #@1a
    .line 1151
    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    #@1d
    goto :goto_0

    #@1e
    .line 1153
    :cond_1
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@20
    .line 1142
    .end local v0    # "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    .end local v1    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    :cond_2
    :goto_1
    return-void

    #@21
    .line 1156
    :cond_3
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@23
    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    #@25
    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@28
    goto :goto_1

    #@29
    .line 1159
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    goto :goto_2
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v3, 0x0

    #@1
    .line 1121
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initTryAdvance()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1122
    const/4 v2, 0x0

    #@8
    return v2

    #@9
    .line 1124
    :cond_0
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@b
    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    #@d
    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 1125
    .local v0, "hasNext":Z
    if-nez v0, :cond_2

    #@13
    .line 1126
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 1128
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    #@19
    invoke-virtual {p0, v2}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    #@1f
    .line 1129
    .local v1, "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_1

    #@21
    .line 1130
    invoke-interface {v1}, Ljava/util/stream/Node$OfPrimitive;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@27
    .line 1132
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@29
    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    #@2b
    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    return v2

    #@30
    .line 1136
    .end local v1    # "leaf":Ljava/util/stream/Node$OfPrimitive;, "TN;"
    :cond_1
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@32
    .line 1138
    :cond_2
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1016
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
