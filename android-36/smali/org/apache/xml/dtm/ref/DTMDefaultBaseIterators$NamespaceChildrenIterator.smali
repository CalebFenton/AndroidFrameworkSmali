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
.field private final greylist _nsType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 526
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 527
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_nsType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 561
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    const/4 v2, -0x2

    if-ne v2, v0, :cond_15

    .line 563
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    goto :goto_1b

    .line 564
    :cond_15
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    :goto_1b
    if-eq v0, v1, :cond_3b

    .line 567
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v3, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->_nsType:I

    if-ne v2, v3, :cond_34

    .line 568
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 570
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 566
    :cond_34
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_1b

    :cond_3b
    return v1
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 542
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 543
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_19

    .line 545
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, -0x2

    .line 546
    :goto_13
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 548
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_19
    return-object p0
.end method
