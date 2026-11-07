.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
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

    .line 755
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 756
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 757
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 6

    .line 767
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 770
    :cond_8
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    .line 772
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v3

    .line 774
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_1d

    if-ne v1, v3, :cond_35

    .line 778
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1d
    if-ge v3, v4, :cond_26

    if-ne v3, v1, :cond_35

    .line 783
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 786
    :cond_26
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v3

    if-ne v3, v1, :cond_35

    .line 787
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_35
    return v2
.end method
