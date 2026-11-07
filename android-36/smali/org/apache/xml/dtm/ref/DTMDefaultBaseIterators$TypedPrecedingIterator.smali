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
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
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

    .line 1416
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1417
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 7

    .line 1427
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1428
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    const/4 v2, -0x1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_27

    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 1434
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v3, :cond_11

    :goto_f
    move v0, v2

    goto :goto_50

    .line 1437
    :cond_11
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    aget v4, v4, v3

    if-lt v0, v4, :cond_1e

    add-int/lit8 v3, v3, -0x1

    .line 1438
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v3, :cond_9

    goto :goto_f

    .line 1442
    :cond_1e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    if-ne v3, v1, :cond_9

    goto :goto_50

    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 1452
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v4, :cond_2e

    goto :goto_f

    .line 1455
    :cond_2e
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    aget v5, v5, v4

    if-lt v0, v5, :cond_3b

    add-int/lit8 v4, v4, -0x1

    .line 1456
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v4, :cond_27

    goto :goto_f

    .line 1461
    :cond_3b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v4

    if-ge v4, v3, :cond_46

    if-ne v4, v1, :cond_27

    goto :goto_50

    .line 1467
    :cond_46
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v1, :cond_27

    .line 1475
    :goto_50
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v0, v2, :cond_55

    return v2

    .line 1477
    :cond_55
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method
