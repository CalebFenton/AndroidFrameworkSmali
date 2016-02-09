.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1415
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1417
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    #@7
    .line 1415
    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xe

    #@2
    const/4 v3, -0x1

    #@3
    .line 1427
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_currentNode:I

    #@5
    .line 1428
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    #@7
    .line 1430
    .local v2, "nodeType":I
    if-lt v2, v6, :cond_3

    #@9
    .line 1432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 1434
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@d
    if-gez v4, :cond_1

    #@f
    .line 1435
    const/4 v1, -0x1

    #@10
    .line 1475
    :goto_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_currentNode:I

    #@12
    .line 1477
    if-ne v1, v3, :cond_7

    #@14
    :goto_1
    return v3

    #@15
    .line 1437
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_stack:[I

    #@17
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@19
    aget v4, v4, v5

    #@1b
    if-lt v1, v4, :cond_2

    #@1d
    .line 1438
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@1f
    add-int/lit8 v4, v4, -0x1

    #@21
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@23
    if-gez v4, :cond_0

    #@25
    .line 1439
    const/4 v1, -0x1

    #@26
    .line 1440
    goto :goto_0

    #@27
    .line 1442
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@29
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@2c
    move-result v4

    #@2d
    if-ne v4, v2, :cond_0

    #@2f
    goto :goto_0

    #@30
    .line 1450
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@32
    .line 1452
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@34
    if-gez v4, :cond_4

    #@36
    .line 1453
    const/4 v1, -0x1

    #@37
    .line 1454
    goto :goto_0

    #@38
    .line 1455
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_stack:[I

    #@3a
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@3c
    aget v4, v4, v5

    #@3e
    if-lt v1, v4, :cond_5

    #@40
    .line 1456
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@42
    add-int/lit8 v4, v4, -0x1

    #@44
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    #@46
    if-gez v4, :cond_3

    #@48
    .line 1457
    const/4 v1, -0x1

    #@49
    .line 1458
    goto :goto_0

    #@4a
    .line 1461
    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4c
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@4f
    move-result v0

    #@50
    .line 1462
    .local v0, "expType":I
    if-ge v0, v6, :cond_6

    #@52
    .line 1463
    if-ne v0, v2, :cond_3

    #@54
    goto :goto_0

    #@55
    .line 1467
    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@57
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@59
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@5c
    move-result v4

    #@5d
    if-ne v4, v2, :cond_3

    #@5f
    goto :goto_0

    #@60
    .line 1477
    .end local v0    # "expType":I
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@62
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@65
    move-result v3

    #@66
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->returnNode(I)I

    #@69
    move-result v3

    #@6a
    goto :goto_1
.end method
