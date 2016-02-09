.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    .line 361
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 362
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    #@7
    .line 359
    return-void
.end method


# virtual methods
.method public next()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xe

    #@2
    const/4 v4, -0x1

    #@3
    .line 372
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_startNode:I

    #@5
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_currentNode:I

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 373
    return v4

    #@a
    .line 375
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_startNode:I

    #@c
    .line 376
    .local v1, "node":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@10
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@13
    move-result v3

    #@14
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@17
    move-result v0

    #@18
    .line 378
    .local v0, "expType":I
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_currentNode:I

    #@1a
    .line 380
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    #@1c
    if-lt v2, v5, :cond_1

    #@1e
    .line 381
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    #@20
    if-ne v2, v0, :cond_3

    #@22
    .line 382
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    #@25
    move-result v2

    #@26
    return v2

    #@27
    .line 386
    :cond_1
    if-ge v0, v5, :cond_2

    #@29
    .line 387
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    #@2b
    if-ne v0, v2, :cond_3

    #@2d
    .line 388
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    #@30
    move-result v2

    #@31
    return v2

    #@32
    .line 392
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@34
    iget-object v2, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@36
    aget-object v2, v2, v0

    #@38
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@3b
    move-result v2

    #@3c
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    #@3e
    if-ne v2, v3, :cond_3

    #@40
    .line 393
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    #@43
    move-result v2

    #@44
    return v2

    #@45
    .line 398
    :cond_3
    return v4
.end method
