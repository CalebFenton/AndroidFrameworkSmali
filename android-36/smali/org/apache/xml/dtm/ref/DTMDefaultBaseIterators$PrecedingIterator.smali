.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrecedingIterator"
.end annotation


# instance fields
.field protected greylist _markedDescendant:I

.field protected greylist _markedNode:I

.field protected greylist _markedsp:I

.field private final greylist _maxAncestors:I

.field protected greylist _oldsp:I

.field protected greylist _sp:I

.field protected greylist _stack:[I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1237
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    const/16 p1, 0x8

    .line 1241
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_maxAncestors:I

    .line 1247
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    return-void
.end method


# virtual methods
.method public greylist cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 5

    const/4 v0, 0x0

    .line 1273
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 1277
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    .line 1278
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    array-length v2, p0

    new-array v2, v2, [I

    .line 1279
    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1281
    iput-object v2, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_14} :catch_15

    return-object v1

    .line 1288
    :catch_15
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string v0, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist gotoMark()V
    .registers 2

    .line 1393
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedsp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    .line 1394
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public greylist isReverse()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist next()I
    .registers 4

    .line 1354
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1355
    :goto_6
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-ltz v0, :cond_3f

    .line 1358
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_34

    .line 1360
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1361
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_38

    .line 1362
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_34
    add-int/lit8 v0, v0, -0x1

    .line 1365
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    .line 1356
    :cond_38
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_6

    :cond_3f
    const/4 p0, -0x1

    return p0
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    .line 1381
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_oldsp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    .line 1383
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist setMark()V
    .registers 3

    .line 1387
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedsp:I

    .line 1388
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedNode:I

    .line 1389
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedDescendant:I

    return-void
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 7

    if-nez p1, :cond_8

    .line 1304
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1305
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_5a

    .line 1307
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1312
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 1313
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    .line 1315
    :cond_21
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 1316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    move v0, v1

    .line 1321
    :goto_29
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_48

    add-int/lit8 v2, v0, 0x1

    .line 1323
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    array-length v4, v3

    if-ne v2, v4, :cond_42

    add-int/lit8 v0, v0, 0x5

    .line 1325
    new-array v0, v0, [I

    .line 1326
    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    .line 1329
    :cond_42
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    aput p1, v0, v2

    move v0, v2

    goto :goto_29

    :cond_48
    if-lez v0, :cond_4c

    add-int/lit8 v0, v0, -0x1

    .line 1334
    :cond_4c
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    aget p1, p1, v0

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1336
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_oldsp:I

    .line 1338
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_5a
    return-object p0
.end method
