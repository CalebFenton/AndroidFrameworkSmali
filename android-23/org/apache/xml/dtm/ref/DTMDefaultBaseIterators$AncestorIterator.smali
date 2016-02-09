.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AncestorIterator"
.end annotation


# instance fields
.field m_ancestors:Lorg/apache/xml/utils/NodeVector;

.field m_ancestorsPos:I

.field m_markedPos:I

.field m_realStartNode:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 1587
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1590
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    #@7
    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@a
    .line 1589
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@c
    .line 1587
    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 5

    #@0
    .prologue
    .line 1627
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_isRestartable:Z

    #@3
    .line 1631
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    #@9
    .line 1633
    .local v0, "clone":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_startNode:I

    #@b
    iput v2, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_startNode:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1636
    return-object v0

    #@e
    .line 1639
    .end local v0    # "clone":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
    :catch_0
    move-exception v1

    #@f
    .line 1640
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    #@11
    const-string/jumbo v3, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    #@14
    const/4 v4, 0x0

    #@15
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2
.end method

.method public getStartNode()I
    .locals 1

    #@0
    .prologue
    .line 1607
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    #@2
    return v0
.end method

.method public gotoMark()V
    .locals 2

    #@0
    .prologue
    .line 1727
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@4
    .line 1728
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@6
    if-ltz v0, :cond_0

    #@8
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@a
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@c
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@f
    move-result v0

    #@10
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_currentNode:I

    #@12
    .line 1726
    return-void

    #@13
    .line 1729
    :cond_0
    const/4 v0, -0x1

    #@14
    goto :goto_0
.end method

.method public final isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1617
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()I
    .locals 4

    #@0
    .prologue
    .line 1712
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_currentNode:I

    #@2
    .line 1714
    .local v0, "next":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@4
    add-int/lit8 v1, v2, -0x1

    #@6
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@8
    .line 1716
    .local v1, "pos":I
    if-ltz v1, :cond_0

    #@a
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@c
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@e
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@11
    move-result v2

    #@12
    :goto_0
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_currentNode:I

    #@14
    .line 1719
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->returnNode(I)I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 1717
    :cond_0
    const/4 v2, -0x1

    #@1a
    goto :goto_0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    #@0
    .prologue
    .line 1696
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@a
    .line 1698
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@c
    if-ltz v0, :cond_0

    #@e
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@10
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@12
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@15
    move-result v0

    #@16
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_currentNode:I

    #@18
    .line 1701
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 1699
    :cond_0
    const/4 v0, -0x1

    #@1e
    goto :goto_0
.end method

.method public setMark()V
    .locals 1

    #@0
    .prologue
    .line 1723
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    #@4
    .line 1722
    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1655
    if-nez p1, :cond_0

    #@3
    .line 1656
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 1657
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    #@b
    .line 1659
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_isRestartable:Z

    #@d
    if-eqz v2, :cond_4

    #@f
    .line 1661
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@11
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@14
    move-result v0

    #@15
    .line 1663
    .local v0, "nodeID":I
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_includeSelf:Z

    #@17
    if-nez v2, :cond_1

    #@19
    if-eq p1, v1, :cond_1

    #@1b
    .line 1664
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1d
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@20
    move-result v0

    #@21
    .line 1665
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@23
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@26
    move-result p1

    #@27
    .line 1668
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_startNode:I

    #@29
    .line 1670
    :goto_0
    if-eq v0, v1, :cond_2

    #@2b
    .line 1671
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@2d
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@30
    .line 1672
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@32
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@35
    move-result v0

    #@36
    .line 1673
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@38
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@3b
    move-result p1

    #@3c
    goto :goto_0

    #@3d
    .line 1675
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@3f
    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@42
    move-result v2

    #@43
    add-int/lit8 v2, v2, -0x1

    #@45
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@47
    .line 1677
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@49
    if-ltz v2, :cond_3

    #@4b
    .line 1678
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@4d
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    #@4f
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@52
    move-result v1

    #@53
    .line 1677
    :cond_3
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->_currentNode:I

    #@55
    .line 1681
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@58
    move-result-object v1

    #@59
    return-object v1

    #@5a
    .line 1684
    .end local v0    # "nodeID":I
    :cond_4
    return-object p0
.end method
