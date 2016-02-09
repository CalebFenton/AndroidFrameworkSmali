.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1748
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1750
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    #@7
    .line 1748
    return-void
.end method


# virtual methods
.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7
    .param p1, "node"    # I

    #@0
    .prologue
    const/16 v6, 0xe

    #@2
    const/4 v3, -0x1

    #@3
    .line 1764
    if-nez p1, :cond_0

    #@5
    .line 1765
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@7
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@a
    move-result p1

    #@b
    .line 1766
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_realStartNode:I

    #@d
    .line 1768
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_isRestartable:Z

    #@f
    if-eqz v4, :cond_8

    #@11
    .line 1770
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@13
    invoke-virtual {v4, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@16
    move-result v1

    #@17
    .line 1771
    .local v1, "nodeID":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    #@19
    .line 1773
    .local v2, "nodeType":I
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_includeSelf:Z

    #@1b
    if-nez v4, :cond_1

    #@1d
    if-eq p1, v3, :cond_1

    #@1f
    .line 1774
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@21
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@24
    move-result v1

    #@25
    .line 1777
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_startNode:I

    #@27
    .line 1779
    if-lt v2, v6, :cond_3

    #@29
    .line 1780
    :goto_0
    if-eq v1, v3, :cond_6

    #@2b
    .line 1781
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2d
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@30
    move-result v0

    #@31
    .line 1783
    .local v0, "eType":I
    if-ne v0, v2, :cond_2

    #@33
    .line 1784
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@35
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@37
    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@3a
    move-result v5

    #@3b
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@3e
    .line 1786
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@40
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@43
    move-result v1

    #@44
    goto :goto_0

    #@45
    .line 1789
    .end local v0    # "eType":I
    :cond_3
    :goto_1
    if-eq v1, v3, :cond_6

    #@47
    .line 1790
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@49
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@4c
    move-result v0

    #@4d
    .line 1792
    .restart local v0    # "eType":I
    if-lt v0, v6, :cond_5

    #@4f
    .line 1793
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@51
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@53
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@56
    move-result v4

    #@57
    if-ne v4, v2, :cond_5

    #@59
    .line 1795
    :goto_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@5b
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5d
    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@60
    move-result v5

    #@61
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@64
    .line 1797
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@66
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@69
    move-result v1

    #@6a
    goto :goto_1

    #@6b
    .line 1794
    :cond_5
    if-ge v0, v6, :cond_4

    #@6d
    if-ne v0, v2, :cond_4

    #@6f
    goto :goto_2

    #@70
    .line 1800
    .end local v0    # "eType":I
    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@72
    invoke-virtual {v4}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@75
    move-result v4

    #@76
    add-int/lit8 v4, v4, -0x1

    #@78
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestorsPos:I

    #@7a
    .line 1802
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestorsPos:I

    #@7c
    if-ltz v4, :cond_7

    #@7e
    .line 1803
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    #@80
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestorsPos:I

    #@82
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@85
    move-result v3

    #@86
    .line 1802
    :cond_7
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_currentNode:I

    #@88
    .line 1806
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@8b
    move-result-object v3

    #@8c
    return-object v3

    #@8d
    .line 1809
    .end local v1    # "nodeID":I
    .end local v2    # "nodeType":I
    :cond_8
    return-object p0
.end method
