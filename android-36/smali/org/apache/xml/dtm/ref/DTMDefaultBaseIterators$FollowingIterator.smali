.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowingIterator"
.end annotation


# instance fields
.field greylist m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1489
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    const/4 v0, 0x6

    .line 1490
    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 4

    .line 1532
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1534
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1536
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 1505
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1506
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1a

    .line 1508
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 1515
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1518
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_1a
    return-object p0
.end method
