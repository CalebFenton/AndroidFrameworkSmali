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

    .line 1402
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 1403
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist getLast()I
    .registers 1

    .line 1504
    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    return p0
.end method

.method public greylist getNodeByPosition(I)I
    .registers 3

    if-lez p1, :cond_d

    .line 1492
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    if-gt p1, v0, :cond_d

    .line 1493
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 9

    if-nez p1, :cond_8

    .line 1418
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1419
    :cond_8
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    .line 1421
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_bd

    .line 1423
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1424
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 1427
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1428
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    return-object p0

    .line 1432
    :cond_1f
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    .line 1434
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v4, :cond_31

    .line 1435
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    .line 1436
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    .line 1439
    :cond_31
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/16 p1, 0xe

    if-lt v3, p1, :cond_69

    :goto_37
    if-eq v0, v2, :cond_ab

    .line 1443
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result p1

    if-ne p1, v3, :cond_62

    .line 1446
    iget p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v5, v4

    if-lt p1, v5, :cond_52

    mul-int/lit8 p1, p1, 0x2

    .line 1448
    new-array p1, p1, [I

    .line 1449
    array-length v5, v4

    invoke-static {v4, v1, p1, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1450
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    .line 1452
    :cond_52
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v5

    aput v5, p1, v4

    .line 1454
    :cond_62
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    goto :goto_37

    :cond_69
    :goto_69
    if-eq v0, v2, :cond_ab

    .line 1459
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    if-ge v4, p1, :cond_75

    if-eq v4, v3, :cond_83

    :cond_75
    if-lt v4, p1, :cond_a4

    .line 1461
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v4, v5, v4

    .line 1463
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v4

    if-ne v4, v3, :cond_a4

    .line 1464
    :cond_83
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v6, v5

    if-lt v4, v6, :cond_94

    mul-int/lit8 v4, v4, 0x2

    .line 1466
    new-array v4, v4, [I

    .line 1467
    array-length v6, v5

    invoke-static {v5, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1468
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    .line 1470
    :cond_94
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v6

    aput v6, v4, v5

    .line 1472
    :cond_a4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    goto :goto_69

    .line 1475
    :cond_ab
    iget p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_b7

    .line 1478
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    aget v2, v0, p1

    .line 1479
    :cond_b7
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1481
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_bd
    return-object p0
.end method
