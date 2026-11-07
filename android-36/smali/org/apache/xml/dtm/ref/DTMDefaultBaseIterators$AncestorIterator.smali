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
.field greylist m_ancestors:Lorg/apache/xml/utils/NodeVector;

.field greylist m_ancestorsPos:I

.field greylist m_markedPos:I

.field greylist m_realStartNode:I

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

    .line 1587
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1589
    new-instance p1, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {p1}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    return-void
.end method


# virtual methods
.method public greylist cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    const/4 v0, 0x0

    .line 1627
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 1631
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    .line 1633
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p0, v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    .line 1640
    :catch_e
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string v0, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getStartNode()I
    .registers 1

    .line 1607
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    return p0
.end method

.method public greylist gotoMark()V
    .registers 3

    .line 1727
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_d

    .line 1728
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 1729
    :goto_e
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public final greylist isReverse()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist next()I
    .registers 4

    .line 1712
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1714
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v1, :cond_11

    .line 1716
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    .line 1717
    :goto_12
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1719
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    .line 1696
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_13

    .line 1698
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    .line 1699
    :goto_14
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1701
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist setMark()V
    .registers 2

    .line 1723
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    return-void
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 5

    if-nez p1, :cond_8

    .line 1656
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1657
    :cond_8
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    .line 1659
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_55

    .line 1661
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1663
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    const/4 v2, -0x1

    if-nez v1, :cond_27

    if-eq p1, v2, :cond_27

    .line 1664
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    .line 1665
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    .line 1668
    :cond_27
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    :goto_29
    if-eq v0, v2, :cond_3d

    .line 1671
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 1672
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    .line 1673
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    goto :goto_29

    .line 1675
    :cond_3d
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_4f

    .line 1678
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v2

    .line 1679
    :cond_4f
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1681
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_55
    return-object p0
.end method
