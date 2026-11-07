.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedChildrenIterator"
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

    .line 231
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 232
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist getNodeByPosition(I)I
    .registers 7

    const/4 v0, -0x1

    if-gtz p1, :cond_4

    return v0

    .line 313
    :cond_4
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 316
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_29

    :goto_c
    if-eq v1, v0, :cond_28

    .line 319
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-ne v3, v2, :cond_21

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_21

    .line 322
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 325
    :cond_21
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    goto :goto_c

    :cond_28
    return v0

    :cond_29
    :goto_29
    if-eq v1, v0, :cond_47

    .line 331
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_40

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_40

    .line 334
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 336
    :cond_40
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    goto :goto_29

    :cond_47
    return v0
.end method

.method public greylist next()I
    .registers 5

    .line 268
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 272
    :cond_6
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    :goto_b
    if-eq v0, v1, :cond_30

    .line 275
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-eq v3, v2, :cond_30

    .line 276
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_b

    :cond_1c
    :goto_1c
    if-eq v0, v1, :cond_30

    .line 287
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_29

    goto :goto_30

    .line 291
    :cond_29
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_1c

    :cond_30
    :goto_30
    if-ne v0, v1, :cond_35

    .line 296
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1

    .line 299
    :cond_35
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 300
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 247
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 248
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_22

    .line 250
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    goto :goto_1c

    .line 253
    :cond_12
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    :goto_1c
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 255
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_22
    return-object p0
.end method
