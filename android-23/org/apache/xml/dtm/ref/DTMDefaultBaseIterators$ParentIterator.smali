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
.field private _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 342
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 346
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    #@8
    .line 342
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 398
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    #@3
    .line 400
    .local v0, "result":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    #@5
    const/16 v2, 0xe

    #@7
    if-lt v1, v2, :cond_1

    #@9
    .line 401
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    #@b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@d
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    #@f
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    #@12
    move-result v2

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 402
    const/4 v0, -0x1

    #@16
    .line 410
    :cond_0
    :goto_0
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    #@18
    .line 412
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->returnNode(I)I

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 404
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    #@1f
    if-eq v1, v4, :cond_0

    #@21
    .line 405
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    #@23
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@25
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    #@27
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    #@2a
    move-result v2

    #@2b
    if-eq v1, v2, :cond_0

    #@2d
    .line 406
    const/4 v0, -0x1

    #@2e
    goto :goto_0
.end method

.method public setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 385
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    #@2
    .line 387
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 359
    if-nez p1, :cond_0

    #@2
    .line 360
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 361
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_isRestartable:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 363
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_startNode:I

    #@e
    .line 364
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@10
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getParent(I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    #@16
    .line 366
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 369
    :cond_1
    return-object p0
.end method
