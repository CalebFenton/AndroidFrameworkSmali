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
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 230
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 232
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    #@7
    .line 230
    return-void
.end method


# virtual methods
.method public getNodeByPosition(I)I
    .locals 6
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 310
    if-gtz p1, :cond_0

    #@3
    .line 311
    return v5

    #@4
    .line 313
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_currentNode:I

    #@6
    .line 314
    .local v0, "node":I
    const/4 v2, 0x0

    #@7
    .line 316
    .local v2, "pos":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    #@9
    .line 317
    .local v1, "nodeType":I
    const/4 v3, 0x1

    #@a
    if-eq v1, v3, :cond_4

    #@c
    .line 318
    :goto_0
    if-eq v0, v5, :cond_2

    #@e
    .line 319
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@10
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@13
    move-result v3

    #@14
    if-ne v3, v1, :cond_1

    #@16
    .line 320
    add-int/lit8 v2, v2, 0x1

    #@18
    .line 321
    if-ne v2, p1, :cond_1

    #@1a
    .line 322
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1c
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 325
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@23
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    .line 327
    :cond_2
    return v5

    #@29
    .line 336
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2b
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@2e
    move-result v0

    #@2f
    .line 330
    :cond_4
    if-eq v0, v5, :cond_5

    #@31
    .line 331
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@33
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@36
    move-result v3

    #@37
    const/16 v4, 0xe

    #@39
    if-lt v3, v4, :cond_3

    #@3b
    .line 332
    add-int/lit8 v2, v2, 0x1

    #@3d
    .line 333
    if-ne v2, p1, :cond_3

    #@3f
    .line 334
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@41
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@44
    move-result v3

    #@45
    return v3

    #@46
    .line 338
    :cond_5
    return v5
.end method

.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 268
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_currentNode:I

    #@3
    .line 269
    .local v1, "node":I
    if-ne v1, v4, :cond_0

    #@5
    .line 270
    return v4

    #@6
    .line 272
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    #@8
    .line 274
    .local v2, "nodeType":I
    const/4 v3, 0x1

    #@9
    if-eq v2, v3, :cond_2

    #@b
    .line 275
    :goto_0
    if-eq v1, v4, :cond_3

    #@d
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@f
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@12
    move-result v3

    #@13
    if-eq v3, v2, :cond_3

    #@15
    .line 276
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@17
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@1a
    move-result v1

    #@1b
    goto :goto_0

    #@1c
    .line 291
    .local v0, "eType":I
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1e
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@21
    move-result v1

    #@22
    .line 286
    .end local v0    # "eType":I
    :cond_2
    if-eq v1, v4, :cond_3

    #@24
    .line 287
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@26
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@29
    move-result v0

    #@2a
    .line 288
    .restart local v0    # "eType":I
    const/16 v3, 0xe

    #@2c
    if-lt v0, v3, :cond_1

    #@2e
    .line 295
    .end local v0    # "eType":I
    :cond_3
    if-ne v1, v4, :cond_4

    #@30
    .line 296
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_currentNode:I

    #@32
    .line 297
    return v4

    #@33
    .line 299
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@35
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@38
    move-result v3

    #@39
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_currentNode:I

    #@3b
    .line 300
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3d
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@40
    move-result v3

    #@41
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->returnNode(I)I

    #@44
    move-result v3

    #@45
    return v3
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 246
    if-nez p1, :cond_0

    #@3
    .line 247
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 248
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 250
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_startNode:I

    #@f
    .line 251
    if-ne p1, v0, :cond_1

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_currentNode:I

    #@13
    .line 255
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 253
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1c
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_startNode:I

    #@1e
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 258
    :cond_2
    return-object p0
.end method
