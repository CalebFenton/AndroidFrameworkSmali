.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
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
    .line 1401
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    #@5
    .line 1403
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    #@7
    .line 1401
    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 1

    #@0
    .prologue
    .line 1504
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@2
    return v0
.end method

.method public getNodeByPosition(I)I
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1492
    if-lez p1, :cond_0

    #@2
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@4
    if-gt p1, v0, :cond_0

    #@6
    .line 1493
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@8
    add-int/lit8 v1, p1, -0x1

    #@a
    aget v0, v0, v1

    #@c
    return v0

    #@d
    .line 1496
    :cond_0
    const/4 v0, -0x1

    #@e
    return v0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 10
    .param p1, "node"    # I

    #@0
    .prologue
    const/16 v9, 0xe

    #@2
    const/4 v4, -0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 1417
    if-nez p1, :cond_0

    #@6
    .line 1418
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@8
    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@b
    move-result p1

    #@c
    .line 1419
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_realStartNode:I

    #@e
    .line 1421
    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_isRestartable:Z

    #@10
    if-eqz v5, :cond_b

    #@12
    .line 1423
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@14
    invoke-virtual {v5, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@17
    move-result v2

    #@18
    .line 1424
    .local v2, "nodeID":I
    iput v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@1a
    .line 1426
    if-ne v2, v4, :cond_1

    #@1c
    .line 1427
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_currentNode:I

    #@1e
    .line 1428
    iput v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    #@20
    .line 1429
    return-object p0

    #@21
    .line 1432
    :cond_1
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    #@23
    .line 1434
    .local v3, "nodeType":I
    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_includeSelf:Z

    #@25
    if-nez v5, :cond_2

    #@27
    .line 1435
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@29
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@2c
    move-result v2

    #@2d
    .line 1436
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2f
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@32
    move-result p1

    #@33
    .line 1439
    :cond_2
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_startNode:I

    #@35
    .line 1441
    if-lt v3, v9, :cond_5

    #@37
    .line 1442
    :goto_0
    if-eq v2, v4, :cond_9

    #@39
    .line 1443
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3b
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@3e
    move-result v0

    #@3f
    .line 1445
    .local v0, "eType":I
    if-ne v0, v3, :cond_4

    #@41
    .line 1446
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@43
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@45
    array-length v6, v6

    #@46
    if-lt v5, v6, :cond_3

    #@48
    .line 1448
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@4a
    mul-int/lit8 v5, v5, 0x2

    #@4c
    new-array v1, v5, [I

    #@4e
    .line 1449
    .local v1, "newAncestors":[I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@50
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@52
    array-length v6, v6

    #@53
    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@56
    .line 1450
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@58
    .line 1452
    .end local v1    # "newAncestors":[I
    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@5a
    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@5c
    add-int/lit8 v7, v6, 0x1

    #@5e
    iput v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@60
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@62
    invoke-virtual {v7, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@65
    move-result v7

    #@66
    aput v7, v5, v6

    #@68
    .line 1454
    :cond_4
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@6a
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@6d
    move-result v2

    #@6e
    goto :goto_0

    #@6f
    .line 1458
    .end local v0    # "eType":I
    :cond_5
    :goto_1
    if-eq v2, v4, :cond_9

    #@71
    .line 1459
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@73
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@76
    move-result v0

    #@77
    .line 1461
    .restart local v0    # "eType":I
    if-ge v0, v9, :cond_8

    #@79
    if-ne v0, v3, :cond_8

    #@7b
    .line 1464
    :goto_2
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@7d
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@7f
    array-length v6, v6

    #@80
    if-lt v5, v6, :cond_6

    #@82
    .line 1466
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@84
    mul-int/lit8 v5, v5, 0x2

    #@86
    new-array v1, v5, [I

    #@88
    .line 1467
    .restart local v1    # "newAncestors":[I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@8a
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@8c
    array-length v6, v6

    #@8d
    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@90
    .line 1468
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@92
    .line 1470
    .end local v1    # "newAncestors":[I
    :cond_6
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@94
    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@96
    add-int/lit8 v7, v6, 0x1

    #@98
    iput v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@9a
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@9c
    invoke-virtual {v7, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@9f
    move-result v7

    #@a0
    aput v7, v5, v6

    #@a2
    .line 1472
    :cond_7
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@a4
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@a7
    move-result v2

    #@a8
    goto :goto_1

    #@a9
    .line 1462
    :cond_8
    if-lt v0, v9, :cond_7

    #@ab
    .line 1463
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@ad
    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@af
    aget-object v5, v5, v0

    #@b1
    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@b4
    move-result v5

    #@b5
    if-ne v5, v3, :cond_7

    #@b7
    goto :goto_2

    #@b8
    .line 1475
    .end local v0    # "eType":I
    :cond_9
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    #@ba
    add-int/lit8 v5, v5, -0x1

    #@bc
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    #@be
    .line 1477
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    #@c0
    if-ltz v5, :cond_a

    #@c2
    .line 1478
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    #@c4
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    #@c6
    aget v4, v4, v5

    #@c8
    .line 1477
    :cond_a
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_currentNode:I

    #@ca
    .line 1481
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@cd
    move-result-object v4

    #@ce
    return-object v4

    #@cf
    .line 1484
    .end local v2    # "nodeID":I
    .end local v3    # "nodeType":I
    :cond_b
    return-object p0
.end method
