.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedChildrenIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 434
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 436
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_nodeType:I

    #@7
    .line 434
    return-void
.end method


# virtual methods
.method public next()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xe

    #@2
    const/4 v4, -0x1

    #@3
    .line 473
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    #@5
    .line 475
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_nodeType:I

    #@7
    .line 477
    .local v2, "nodeType":I
    if-lt v2, v5, :cond_1

    #@9
    .line 478
    :goto_0
    if-eq v1, v4, :cond_2

    #@b
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@d
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@10
    move-result v3

    #@11
    if-eq v3, v2, :cond_2

    #@13
    .line 479
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@15
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@18
    move-result v1

    #@19
    goto :goto_0

    #@1a
    .line 491
    .local v0, "eType":I
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1c
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@1f
    move-result v1

    #@20
    .line 482
    .end local v0    # "eType":I
    :cond_1
    if-eq v1, v4, :cond_2

    #@22
    .line 483
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@24
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@27
    move-result v0

    #@28
    .line 484
    .restart local v0    # "eType":I
    if-ge v0, v5, :cond_3

    #@2a
    .line 485
    if-ne v0, v2, :cond_0

    #@2c
    .line 495
    .end local v0    # "eType":I
    :cond_2
    :goto_1
    if-ne v1, v4, :cond_4

    #@2e
    .line 496
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    #@30
    .line 497
    return v4

    #@31
    .line 488
    .restart local v0    # "eType":I
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@33
    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@35
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@38
    move-result v3

    #@39
    if-ne v3, v2, :cond_0

    #@3b
    goto :goto_1

    #@3c
    .line 499
    .end local v0    # "eType":I
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@3e
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@41
    move-result v3

    #@42
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    #@44
    .line 500
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@46
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@49
    move-result v3

    #@4a
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->returnNode(I)I

    #@4d
    move-result v3

    #@4e
    return v3
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 450
    if-nez p1, :cond_0

    #@3
    .line 451
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 452
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 454
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_startNode:I

    #@f
    .line 455
    if-ne p1, v0, :cond_1

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_currentNode:I

    #@13
    .line 459
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 457
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1c
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;->_startNode:I

    #@1e
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 462
    :cond_2
    return-object p0
.end method
