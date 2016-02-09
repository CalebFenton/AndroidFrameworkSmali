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
.field protected _markedDescendant:I

.field protected _markedNode:I

.field protected _markedsp:I

.field private final _maxAncestors:I

.field protected _oldsp:I

.field protected _sp:I

.field protected _stack:[I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    const/16 v0, 0x8

    #@2
    .line 1237
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@7
    .line 1241
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_maxAncestors:I

    #@9
    .line 1247
    new-array v0, v0, [I

    #@b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@d
    .line 1237
    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1273
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_isRestartable:Z

    #@3
    .line 1277
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    #@9
    .line 1278
    .local v0, "clone":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@b
    array-length v3, v3

    #@c
    new-array v2, v3, [I

    #@e
    .line 1279
    .local v2, "stackCopy":[I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@10
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@12
    array-length v4, v4

    #@13
    const/4 v5, 0x0

    #@14
    const/4 v6, 0x0

    #@15
    invoke-static {v3, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 1281
    iput-object v2, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1284
    return-object v0

    #@1b
    .line 1287
    .end local v0    # "clone":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;
    .end local v2    # "stackCopy":[I
    :catch_0
    move-exception v1

    #@1c
    .line 1288
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Lorg/apache/xml/dtm/DTMException;

    #@1e
    const-string/jumbo v4, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    #@21
    const/4 v5, 0x0

    #@22
    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3
.end method

.method public gotoMark()V
    .locals 1

    #@0
    .prologue
    .line 1393
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedsp:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@4
    .line 1394
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedNode:I

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@8
    .line 1392
    return-void
.end method

.method public isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1263
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 1354
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@6
    .line 1355
    :goto_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@8
    .line 1354
    if-ltz v0, :cond_2

    #@a
    .line 1358
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@e
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@10
    aget v1, v1, v2

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 1360
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@16
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@18
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    #@1b
    move-result v0

    #@1c
    const/4 v1, 0x2

    #@1d
    if-eq v0, v1, :cond_1

    #@1f
    .line 1361
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@21
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@23
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    #@26
    move-result v0

    #@27
    const/16 v1, 0xd

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    .line 1362
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2d
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@2f
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@32
    move-result v0

    #@33
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->returnNode(I)I

    #@36
    move-result v0

    #@37
    return v0

    #@38
    .line 1365
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@3a
    add-int/lit8 v0, v0, -0x1

    #@3c
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@3e
    .line 1356
    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@40
    add-int/lit8 v0, v0, 0x1

    #@42
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@44
    goto :goto_0

    #@45
    .line 1367
    :cond_2
    const/4 v0, -0x1

    #@46
    return v0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    #@0
    .prologue
    .line 1381
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_oldsp:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@4
    .line 1383
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setMark()V
    .locals 2

    #@0
    .prologue
    .line 1387
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedsp:I

    #@4
    .line 1388
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedNode:I

    #@8
    .line 1389
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@a
    const/4 v1, 0x0

    #@b
    aget v0, v0, v1

    #@d
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_markedDescendant:I

    #@f
    .line 1386
    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1303
    if-nez p1, :cond_0

    #@3
    .line 1304
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 1305
    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_isRestartable:Z

    #@b
    if-eqz v3, :cond_5

    #@d
    .line 1307
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@f
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@12
    move-result p1

    #@13
    .line 1312
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@15
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    #@18
    move-result v3

    #@19
    const/4 v4, 0x2

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 1313
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1e
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@21
    move-result p1

    #@22
    .line 1315
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_startNode:I

    #@24
    .line 1316
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@26
    const/4 v0, 0x0

    #@27
    .local v0, "index":I
    aput p1, v3, v5

    #@29
    .line 1320
    move v1, p1

    #@2a
    .line 1321
    .local v1, "parent":I
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2c
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@2f
    move-result v1

    #@30
    const/4 v3, -0x1

    #@31
    if-eq v1, v3, :cond_3

    #@33
    .line 1323
    add-int/lit8 v0, v0, 0x1

    #@35
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@37
    array-length v3, v3

    #@38
    if-ne v0, v3, :cond_2

    #@3a
    .line 1325
    add-int/lit8 v3, v0, 0x4

    #@3c
    new-array v2, v3, [I

    #@3e
    .line 1326
    .local v2, "stack":[I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@40
    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@43
    .line 1327
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@45
    .line 1329
    .end local v2    # "stack":[I
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@47
    aput v1, v3, v0

    #@49
    goto :goto_0

    #@4a
    .line 1331
    :cond_3
    if-lez v0, :cond_4

    #@4c
    .line 1332
    add-int/lit8 v0, v0, -0x1

    #@4e
    .line 1334
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    #@50
    aget v3, v3, v0

    #@52
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_currentNode:I

    #@54
    .line 1336
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    #@56
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_oldsp:I

    #@58
    .line 1338
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@5b
    move-result-object v3

    #@5c
    return-object v3

    #@5d
    .line 1341
    .end local v0    # "index":I
    .end local v1    # "parent":I
    :cond_5
    return-object p0
.end method
