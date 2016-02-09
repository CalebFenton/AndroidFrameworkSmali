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
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 1816
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method protected isDescendant(I)Z
    .locals 3
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1864
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@3
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@6
    move-result v1

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    #@9
    if-ge v1, v2, :cond_0

    #@b
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    #@d
    if-ne v1, p1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1874
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    #@3
    if-ne v2, v4, :cond_0

    #@5
    .line 1875
    return v4

    #@6
    .line 1878
    :cond_0
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_includeSelf:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@c
    add-int/lit8 v2, v2, 0x1

    #@e
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 1879
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@14
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@16
    add-int/lit8 v3, v3, 0x1

    #@18
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@1a
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->returnNode(I)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 1881
    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@25
    .line 1885
    .local v0, "node":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@27
    .line 1886
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@29
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    #@2c
    move-result v1

    #@2d
    .line 1888
    .local v1, "type":I
    if-eq v4, v1, :cond_3

    #@2f
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->isDescendant(I)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_3

    #@35
    .line 1892
    const/4 v2, 0x2

    #@36
    if-eq v2, v1, :cond_2

    #@38
    const/4 v2, 0x3

    #@39
    if-eq v2, v1, :cond_2

    #@3b
    .line 1893
    const/16 v2, 0xd

    #@3d
    if-eq v2, v1, :cond_2

    #@3f
    .line 1895
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@41
    .line 1896
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@43
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@46
    move-result v2

    #@47
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->returnNode(I)I

    #@4a
    move-result v2

    #@4b
    return v2

    #@4c
    .line 1889
    :cond_3
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@4e
    .line 1890
    return v4
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    #@0
    .prologue
    .line 1906
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    #@2
    .line 1908
    .local v0, "temp":Z
    const/4 v1, 0x1

    #@3
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    #@5
    .line 1910
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    #@9
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@10
    .line 1912
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    #@12
    .line 1914
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 1830
    if-nez p1, :cond_0

    #@2
    .line 1831
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 1832
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 1834
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@e
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@11
    move-result p1

    #@12
    .line 1835
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    #@14
    .line 1837
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_includeSelf:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1838
    add-int/lit8 p1, p1, -0x1

    #@1a
    .line 1840
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    #@1c
    .line 1842
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 1845
    :cond_2
    return-object p0
.end method
