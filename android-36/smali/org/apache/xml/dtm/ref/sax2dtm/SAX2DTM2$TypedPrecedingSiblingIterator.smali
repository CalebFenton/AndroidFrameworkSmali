.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingSiblingIterator"
.end annotation


# instance fields
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
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

    .line 716
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 717
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist getLast()I
    .registers 7

    .line 758
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 761
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->setMark()V

    .line 763
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 764
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    .line 765
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_28

    :goto_13
    if-eq v0, v1, :cond_3f

    if-eq v0, v3, :cond_3f

    .line 770
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    if-ne v4, v2, :cond_21

    add-int/lit8 v5, v5, 0x1

    .line 773
    :cond_21
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_13

    :cond_28
    :goto_28
    if-eq v0, v1, :cond_3f

    if-eq v0, v3, :cond_3f

    .line 778
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/16 v4, 0xe

    if-lt v2, v4, :cond_38

    add-int/lit8 v5, v5, 0x1

    .line 781
    :cond_38
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_28

    .line 785
    :cond_3f
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->gotoMark()V

    .line 787
    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    return v5
.end method

.method public greylist next()I
    .registers 6

    .line 727
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 729
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    .line 730
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v3, :cond_1d

    :goto_a
    if-eq v0, v4, :cond_32

    if-eq v0, v2, :cond_32

    .line 733
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-eq v3, v1, :cond_32

    .line 734
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_a

    :cond_1d
    :goto_1d
    if-eq v0, v4, :cond_32

    if-eq v0, v2, :cond_32

    .line 738
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    const/16 v3, 0xe

    if-ge v1, v3, :cond_32

    .line 739
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_1d

    :cond_32
    if-eq v0, v4, :cond_4a

    if-ne v0, v2, :cond_37

    goto :goto_4a

    .line 748
    :cond_37
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 749
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 744
    :cond_4a
    :goto_4a
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v4
.end method
