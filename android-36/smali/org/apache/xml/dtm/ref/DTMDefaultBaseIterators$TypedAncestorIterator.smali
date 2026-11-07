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
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1749
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1750
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 7

    if-nez p1, :cond_8

    .line 1765
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1766
    :cond_8
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    .line 1768
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_87

    .line 1770
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1771
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    .line 1773
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    const/4 v3, -0x1

    if-nez v2, :cond_23

    if-eq p1, v3, :cond_23

    .line 1774
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    .line 1777
    :cond_23
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/16 p1, 0xe

    if-lt v1, p1, :cond_45

    :goto_29
    if-eq v0, v3, :cond_6f

    .line 1781
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    if-ne p1, v1, :cond_3e

    .line 1784
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 1786
    :cond_3e
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    goto :goto_29

    :cond_45
    :goto_45
    if-eq v0, v3, :cond_6f

    .line 1790
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v2

    if-lt v2, p1, :cond_59

    .line 1792
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 1793
    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-eq v4, v1, :cond_5d

    :cond_59
    if-ge v2, p1, :cond_68

    if-ne v2, v1, :cond_68

    .line 1795
    :cond_5d
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 1797
    :cond_68
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    goto :goto_45

    .line 1800
    :cond_6f
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_81

    .line 1803
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    .line 1804
    :cond_81
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1806
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_87
    return-object p0
.end method
