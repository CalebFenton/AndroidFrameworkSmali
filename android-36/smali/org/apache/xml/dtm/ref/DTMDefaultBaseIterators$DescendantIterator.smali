.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescendantIterator"
.end annotation


# instance fields
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

    .line 1816
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method protected greylist isDescendant(I)Z
    .registers 3

    .line 1864
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-ge v0, p0, :cond_f

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public greylist next()I
    .registers 5

    .line 1874
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 1878
    :cond_6
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-eqz v2, :cond_1f

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    add-int/lit8 v3, v2, 0x1

    if-ne v3, v0, :cond_1f

    .line 1879
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 1881
    :cond_1f
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 1886
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v2

    if-eq v1, v2, :cond_49

    .line 1888
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->isDescendant(I)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_49

    :cond_32
    const/4 v3, 0x2

    if-eq v3, v2, :cond_21

    const/4 v3, 0x3

    if-eq v3, v2, :cond_21

    const/16 v3, 0xd

    if-eq v3, v2, :cond_21

    .line 1895
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1896
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 1889
    :cond_49
    :goto_49
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4

    .line 1906
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    const/4 v1, 0x1

    .line 1908
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 1910
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 1912
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-object p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 1831
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1832
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_20

    .line 1834
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1835
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 1837
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-eqz v0, :cond_1a

    add-int/lit8 p1, p1, -0x1

    .line 1840
    :cond_1a
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1842
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_20
    return-object p0
.end method
