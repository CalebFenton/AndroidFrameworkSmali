.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowingSiblingIterator"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 864
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 3

    .line 898
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_c

    .line 899
    :cond_6
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    :goto_c
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 900
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 879
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 880
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1a

    .line 882
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 883
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 885
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_1a
    return-object p0
.end method
