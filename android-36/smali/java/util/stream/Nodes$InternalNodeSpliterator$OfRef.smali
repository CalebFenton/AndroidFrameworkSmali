.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;",
        "Ljava/util/Spliterator<",
        "TT;>;",
        "Ljava/util/stream/Node<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1076
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "curNode":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava/util/stream/Node;)V

    .line 1077
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1103
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava/util/stream/Node;

    if-nez v0, :cond_5

    .line 1104
    return-void

    .line 1106
    :cond_5
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_26

    .line 1107
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_20

    .line 1108
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1110
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    :goto_11
    invoke-virtual {p0, v0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v1, :cond_1c

    .line 1111
    invoke-interface {v2, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_11

    .line 1113
    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava/util/stream/Node;

    .line 1114
    .end local v0    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    .end local v2    # "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    goto :goto_2d

    .line 1116
    :cond_20
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2d

    .line 1119
    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_26

    .line 1120
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1081
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1082
    const/4 v0, 0x0

    return v0

    .line 1084
    :cond_8
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 1085
    .local v0, "hasNext":Z
    if-nez v0, :cond_2c

    .line 1086
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v1, :cond_29

    .line 1088
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    .line 1089
    .local v1, "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v1, :cond_29

    .line 1090
    invoke-interface {v1}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1092
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    return v2

    .line 1096
    .end local v1    # "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava/util/stream/Node;

    .line 1098
    :cond_2c
    return v0
.end method
