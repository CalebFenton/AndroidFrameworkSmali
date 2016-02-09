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
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 715
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    #@5
    .line 717
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    #@7
    .line 715
    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 758
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_last:I

    #@3
    if-eq v4, v6, :cond_0

    #@5
    .line 759
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_last:I

    #@7
    return v4

    #@8
    .line 761
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->setMark()V

    #@b
    .line 763
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_currentNode:I

    #@d
    .line 764
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    #@f
    .line 765
    .local v2, "nodeType":I
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_startNodeID:I

    #@11
    .line 767
    .local v3, "startNodeID":I
    const/4 v0, 0x0

    #@12
    .line 768
    .local v0, "last":I
    const/4 v4, 0x1

    #@13
    if-eq v2, v4, :cond_2

    #@15
    .line 769
    :goto_0
    if-eq v1, v6, :cond_4

    #@17
    if-eq v1, v3, :cond_4

    #@19
    .line 770
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1b
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@1e
    move-result v4

    #@1f
    if-ne v4, v2, :cond_1

    #@21
    .line 771
    add-int/lit8 v0, v0, 0x1

    #@23
    .line 773
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@25
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@28
    move-result v1

    #@29
    goto :goto_0

    #@2a
    .line 777
    :cond_2
    :goto_1
    if-eq v1, v6, :cond_4

    #@2c
    if-eq v1, v3, :cond_4

    #@2e
    .line 778
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@30
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@33
    move-result v4

    #@34
    const/16 v5, 0xe

    #@36
    if-lt v4, v5, :cond_3

    #@38
    .line 779
    add-int/lit8 v0, v0, 0x1

    #@3a
    .line 781
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3c
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@3f
    move-result v1

    #@40
    goto :goto_1

    #@41
    .line 785
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->gotoMark()V

    #@44
    .line 787
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_last:I

    #@46
    return v0
.end method

.method public next()I
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 727
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_currentNode:I

    #@3
    .line 729
    .local v0, "node":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    #@5
    .line 730
    .local v1, "nodeType":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_startNodeID:I

    #@7
    .line 732
    .local v2, "startNodeID":I
    const/4 v3, 0x1

    #@8
    if-eq v1, v3, :cond_0

    #@a
    .line 733
    :goto_0
    if-eq v0, v5, :cond_1

    #@c
    if-eq v0, v2, :cond_1

    #@e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@10
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@13
    move-result v3

    #@14
    if-eq v3, v1, :cond_1

    #@16
    .line 734
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@18
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    .line 738
    :cond_0
    :goto_1
    if-eq v0, v5, :cond_1

    #@1f
    if-eq v0, v2, :cond_1

    #@21
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@23
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@26
    move-result v3

    #@27
    const/16 v4, 0xe

    #@29
    if-ge v3, v4, :cond_1

    #@2b
    .line 739
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2d
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@30
    move-result v0

    #@31
    goto :goto_1

    #@32
    .line 743
    :cond_1
    if-eq v0, v5, :cond_2

    #@34
    if-ne v0, v2, :cond_3

    #@36
    .line 744
    :cond_2
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_currentNode:I

    #@38
    .line 745
    return v5

    #@39
    .line 748
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3b
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@3e
    move-result v3

    #@3f
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_currentNode:I

    #@41
    .line 749
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@43
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@46
    move-result v3

    #@47
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->returnNode(I)I

    #@4a
    move-result v3

    #@4b
    return v3
.end method
