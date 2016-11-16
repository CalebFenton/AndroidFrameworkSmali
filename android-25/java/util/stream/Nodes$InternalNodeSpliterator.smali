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
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator",
        "<TT;>;N::",
        "Ljava/util/stream/Node",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field curChildIndex:I

.field curNode:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field lastNodeSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 951
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "curNode":Ljava/util/stream/Node;, "TN;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 952
    iput-object p1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@5
    .line 951
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1055
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/16 v0, 0x40

    #@2
    return v0
.end method

.method public final estimateSize()J
    .locals 6

    #@0
    .prologue
    .line 1038
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1039
    const-wide/16 v4, 0x0

    #@6
    return-wide v4

    #@7
    .line 1043
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1044
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@d
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    #@10
    move-result-wide v4

    #@11
    return-wide v4

    #@12
    .line 1046
    :cond_1
    const-wide/16 v2, 0x0

    #@14
    .line 1047
    .local v2, "size":J
    iget v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@18
    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    #@1b
    move-result v1

    #@1c
    if-ge v0, v1, :cond_2

    #@1e
    .line 1048
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@20
    invoke-interface {v1, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    #@27
    move-result-wide v4

    #@28
    add-long/2addr v2, v4

    #@29
    .line 1047
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1049
    :cond_2
    return-wide v2
.end method

.method protected final findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<TN;>;)TN;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    const/4 v6, 0x0

    #@1
    .line 975
    const/4 v1, 0x0

    #@2
    .line 976
    :cond_0
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/util/stream/Node;

    #@8
    .local v1, "n":Ljava/util/stream/Node;, "TN;"
    if-eqz v1, :cond_2

    #@a
    .line 977
    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 978
    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    #@13
    move-result-wide v2

    #@14
    const-wide/16 v4, 0x0

    #@16
    cmp-long v2, v2, v4

    #@18
    if-lez v2, :cond_0

    #@1a
    .line 979
    return-object v1

    #@1b
    .line 981
    :cond_1
    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    #@1e
    move-result v2

    #@1f
    add-int/lit8 v0, v2, -0x1

    #@21
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@23
    .line 982
    invoke-interface {v1, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@26
    move-result-object v2

    #@27
    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    #@2a
    .line 981
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 986
    .end local v0    # "i":I
    :cond_2
    return-object v6
.end method

.method protected final initStack()Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque",
            "<TN;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 963
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    #@2
    const/16 v2, 0x8

    #@4
    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    #@7
    .line 964
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@9
    invoke-interface {v2}, Ljava/util/stream/Node;->getChildCount()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v0, v2, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@11
    if-lt v0, v2, :cond_0

    #@13
    .line 965
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@15
    invoke-interface {v2, v0}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    #@1c
    .line 964
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 966
    :cond_0
    return-object v1
.end method

.method protected final initTryAdvance()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 991
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 992
    return v3

    #@7
    .line 994
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 995
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@d
    if-nez v1, :cond_3

    #@f
    .line 997
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    #@15
    .line 998
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    #@17
    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    #@1a
    move-result-object v0

    #@1b
    .line 999
    .local v0, "leaf":Ljava/util/stream/Node;, "TN;"
    if-eqz v0, :cond_2

    #@1d
    .line 1000
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@23
    .line 1011
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_1
    :goto_0
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 1004
    .restart local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_2
    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@27
    .line 1005
    return v3

    #@28
    .line 1009
    .end local v0    # "leaf":Ljava/util/stream/Node;, "TN;"
    :cond_3
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@2a
    iput-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@2c
    goto :goto_0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1017
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1018
    :cond_0
    return-object v1

    #@b
    .line 1019
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1020
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@11
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 1021
    :cond_2
    iget v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@18
    iget-object v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@1a
    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    #@1d
    move-result v1

    #@1e
    add-int/lit8 v1, v1, -0x1

    #@20
    if-ge v0, v1, :cond_3

    #@22
    .line 1022
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@24
    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@26
    add-int/lit8 v2, v1, 0x1

    #@28
    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@2a
    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@2d
    move-result-object v0

    #@2e
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    .line 1024
    :cond_3
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@35
    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@37
    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@3d
    .line 1025
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@3f
    invoke-interface {v0}, Ljava/util/stream/Node;->getChildCount()I

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_4

    #@45
    .line 1026
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@47
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@4d
    .line 1027
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    #@4f
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@52
    move-result-object v0

    #@53
    return-object v0

    #@54
    .line 1030
    :cond_4
    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@56
    .line 1031
    iget-object v0, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    #@58
    iget v1, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@5a
    add-int/lit8 v2, v1, 0x1

    #@5c
    iput v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    #@5e
    invoke-interface {v0, v1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@61
    move-result-object v0

    #@62
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@65
    move-result-object v0

    #@66
    return-object v0
.end method
