.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamespaceChildrenIterator"
.end annotation


# instance fields
.field private final _nsType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 525
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 527
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_nsType:I

    #@7
    .line 525
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 561
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_currentNode:I

    #@3
    if-eq v1, v4, :cond_2

    #@5
    .line 562
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_currentNode:I

    #@7
    const/4 v2, -0x2

    #@8
    if-ne v2, v1, :cond_0

    #@a
    .line 563
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@e
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_startNode:I

    #@10
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    #@17
    move-result v0

    #@18
    .line 562
    .local v0, "node":I
    :goto_0
    if-eq v0, v4, :cond_2

    #@1a
    .line 567
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1c
    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@1e
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@20
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@23
    move-result v2

    #@24
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@27
    move-result v1

    #@28
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_nsType:I

    #@2a
    if-ne v1, v2, :cond_1

    #@2c
    .line 568
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_currentNode:I

    #@2e
    .line 570
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->returnNode(I)I

    #@31
    move-result v1

    #@32
    return v1

    #@33
    .line 564
    .end local v0    # "node":I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@35
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_currentNode:I

    #@37
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@3a
    move-result v0

    #@3b
    .restart local v0    # "node":I
    goto :goto_0

    #@3c
    .line 566
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@3e
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@41
    move-result v0

    #@42
    goto :goto_0

    #@43
    .line 575
    .end local v0    # "node":I
    :cond_2
    return v4
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 541
    if-nez p1, :cond_0

    #@3
    .line 542
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 543
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 545
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_startNode:I

    #@f
    .line 546
    if-ne p1, v0, :cond_1

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_currentNode:I

    #@13
    .line 548
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 546
    :cond_1
    const/4 v0, -0x2

    #@19
    goto :goto_0

    #@1a
    .line 551
    :cond_2
    return-object p0
.end method
