.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1555
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1557
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    #@7
    .line 1555
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1571
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_currentNode:I

    #@3
    .line 1573
    .local v0, "node":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@5
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_startNode:I

    #@7
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_currentNode:I

    #@9
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@c
    move-result v2

    #@d
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_currentNode:I

    #@f
    .line 1576
    if-eq v0, v1, :cond_1

    #@11
    .line 1577
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@13
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    #@16
    move-result v2

    #@17
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    #@19
    if-eq v2, v3, :cond_1

    #@1b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1d
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    #@20
    move-result v2

    #@21
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    #@23
    if-ne v2, v3, :cond_0

    #@25
    .line 1579
    :cond_1
    if-ne v0, v1, :cond_2

    #@27
    :goto_0
    return v1

    #@28
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->returnNode(I)I

    #@2b
    move-result v1

    #@2c
    goto :goto_0
.end method
