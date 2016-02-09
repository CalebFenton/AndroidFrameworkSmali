.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrecedingSiblingIterator"
.end annotation


# instance fields
.field protected _startNodeID:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    .line 612
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method public isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 627
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 684
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@3
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNodeID:I

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@9
    if-ne v1, v3, :cond_1

    #@b
    .line 686
    :cond_0
    return v3

    #@c
    .line 690
    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@e
    .line 691
    .local v0, "node":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@10
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@16
    .line 693
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@18
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->returnNode(I)I

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 641
    if-nez p1, :cond_0

    #@3
    .line 642
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 643
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_5

    #@d
    .line 645
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNode:I

    #@f
    .line 646
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@11
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@14
    move-result p1

    #@15
    .end local p1    # "node":I
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNodeID:I

    #@17
    .line 648
    .restart local p1    # "node":I
    if-ne p1, v2, :cond_1

    #@19
    .line 650
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@1b
    .line 651
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 654
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@22
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@25
    move-result v0

    #@26
    .line 655
    .local v0, "type":I
    const/4 v1, 0x2

    #@27
    if-eq v1, v0, :cond_2

    #@29
    .line 656
    const/16 v1, 0xd

    #@2b
    if-ne v1, v0, :cond_3

    #@2d
    .line 658
    :cond_2
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@2f
    .line 670
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 663
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@36
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@39
    move-result v1

    #@3a
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@3c
    .line 664
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@3e
    if-eq v2, v1, :cond_4

    #@40
    .line 665
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@42
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@44
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@47
    move-result v1

    #@48
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@4a
    goto :goto_0

    #@4b
    .line 667
    :cond_4
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_currentNode:I

    #@4d
    goto :goto_0

    #@4e
    .line 673
    .end local v0    # "type":I
    :cond_5
    return-object p0
.end method
