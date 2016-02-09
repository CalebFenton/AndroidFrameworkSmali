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
.field m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 1488
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1490
    const/4 v0, 0x6

    #@6
    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@c
    .line 1488
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    #@0
    .prologue
    .line 1532
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_currentNode:I

    #@2
    .line 1534
    .local v0, "node":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@4
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_startNode:I

    #@6
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_currentNode:I

    #@8
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@b
    move-result v1

    #@c
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_currentNode:I

    #@e
    .line 1536
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->returnNode(I)I

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 1504
    if-nez p1, :cond_0

    #@2
    .line 1505
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 1506
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_isRestartable:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1508
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_startNode:I

    #@e
    .line 1515
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@10
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->_currentNode:I

    #@16
    .line 1518
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 1521
    :cond_1
    return-object p0
.end method
