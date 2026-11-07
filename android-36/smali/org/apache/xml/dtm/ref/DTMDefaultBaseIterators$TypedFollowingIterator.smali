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
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1556
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1557
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 1571
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1573
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 1576
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 1577
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    if-eq v2, v3, :cond_23

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    if-ne v2, v3, :cond_0

    :cond_23
    if-ne v0, v1, :cond_26

    return v1

    .line 1579
    :cond_26
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method
