.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescendantIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    .line 1511
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method protected final isDescendant(I)Z
    .locals 3
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1559
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@6
    move-result v1

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    #@9
    if-ge v1, v2, :cond_0

    #@b
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

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
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xd

    #@2
    const/4 v7, 0x3

    #@3
    const/4 v6, 0x2

    #@4
    const/4 v5, -0x1

    #@5
    .line 1569
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    #@7
    .line 1570
    .local v2, "startNode":I
    if-ne v2, v5, :cond_0

    #@9
    .line 1571
    return v5

    #@a
    .line 1574
    :cond_0
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_includeSelf:Z

    #@c
    if-eqz v4, :cond_1

    #@e
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    if-ne v4, v2, :cond_1

    #@14
    .line 1575
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@16
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@18
    add-int/lit8 v5, v5, 0x1

    #@1a
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@1c
    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@1f
    move-result v4

    #@20
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->returnNode(I)I

    #@23
    move-result v4

    #@24
    return v4

    #@25
    .line 1577
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@27
    .line 1582
    .local v1, "node":I
    if-nez v2, :cond_5

    #@29
    .line 1585
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2b
    .line 1586
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2d
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@30
    move-result v0

    #@31
    .line 1588
    .local v0, "eType":I
    if-ne v5, v0, :cond_3

    #@33
    .line 1589
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@35
    .line 1590
    return v5

    #@36
    .line 1592
    :cond_3
    if-eq v0, v7, :cond_2

    #@38
    .line 1593
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3a
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@3c
    aget-object v4, v4, v0

    #@3e
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@41
    move-result v3

    #@42
    .local v3, "type":I
    if-eq v3, v6, :cond_2

    #@44
    .line 1594
    if-eq v3, v8, :cond_2

    #@46
    .line 1609
    .end local v0    # "eType":I
    :cond_4
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@48
    .line 1610
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@4a
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@4d
    move-result v4

    #@4e
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->returnNode(I)I

    #@51
    move-result v4

    #@52
    return v4

    #@53
    .line 1598
    .end local v3    # "type":I
    :cond_5
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@55
    .line 1599
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@57
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@5a
    move-result v3

    #@5b
    .line 1601
    .restart local v3    # "type":I
    if-eq v5, v3, :cond_6

    #@5d
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->isDescendant(I)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_6

    #@63
    .line 1605
    if-eq v6, v3, :cond_5

    #@65
    if-eq v7, v3, :cond_5

    #@67
    .line 1606
    if-ne v8, v3, :cond_4

    #@69
    goto :goto_0

    #@6a
    .line 1602
    :cond_6
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@6c
    .line 1603
    return v5
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    #@0
    .prologue
    .line 1620
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    #@2
    .line 1622
    .local v0, "temp":Z
    const/4 v1, 0x1

    #@3
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    #@5
    .line 1624
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    #@9
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@10
    .line 1626
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    #@12
    .line 1628
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 1525
    if-nez p1, :cond_0

    #@2
    .line 1526
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 1527
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 1529
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@e
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@11
    move-result p1

    #@12
    .line 1530
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    #@14
    .line 1532
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_includeSelf:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1533
    add-int/lit8 p1, p1, -0x1

    #@1a
    .line 1535
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    #@1c
    .line 1537
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 1540
    :cond_2
    return-object p0
.end method
