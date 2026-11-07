.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentIterator"
.end annotation


# instance fields
.field private greylist _nodeType:I

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

    .line 342
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    const/4 p1, -0x1

    .line 346
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 398
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 400
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-lt v1, v2, :cond_13

    .line 401
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v2

    if-eq v1, v2, :cond_1e

    :goto_11
    move v0, v3

    goto :goto_1e

    :cond_13
    if-eq v1, v3, :cond_1e

    .line 405
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v2

    if-eq v1, v2, :cond_1e

    goto :goto_11

    .line 410
    :cond_1e
    :goto_1e
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 412
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    .line 385
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    return-object p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 360
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 361
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1a

    .line 363
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 364
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 366
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_1a
    return-object p0
.end method
