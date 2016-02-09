.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AncestorIterator"
.end annotation


# static fields
.field private static final m_blocksize:I = 0x20


# instance fields
.field m_ancestors:[I

.field m_ancestorsPos:I

.field m_markedPos:I

.field m_realStartNode:I

.field m_size:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    .line 1216
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1222
    const/16 v0, 0x20

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@b
    .line 1225
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@e
    .line 1216
    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 5

    #@0
    .prologue
    .line 1262
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_isRestartable:Z

    #@3
    .line 1266
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;

    #@9
    .line 1268
    .local v0, "clone":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_startNode:I

    #@b
    iput v2, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_startNode:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1271
    return-object v0

    #@e
    .line 1274
    .end local v0    # "clone":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
    :catch_0
    move-exception v1

    #@f
    .line 1275
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    #@11
    const-string/jumbo v3, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    #@14
    const/4 v4, 0x0

    #@15
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2
.end method

.method public getStartNode()I
    .locals 1

    #@0
    .prologue
    .line 1242
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    #@2
    return v0
.end method

.method public gotoMark()V
    .locals 2

    #@0
    .prologue
    .line 1380
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_markedPos:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@4
    .line 1381
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@6
    if-ltz v0, :cond_0

    #@8
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@a
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@c
    aget v0, v0, v1

    #@e
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_currentNode:I

    #@10
    .line 1379
    return-void

    #@11
    .line 1382
    :cond_0
    const/4 v0, -0x1

    #@12
    goto :goto_0
.end method

.method public final isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1252
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()I
    .locals 4

    #@0
    .prologue
    .line 1365
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_currentNode:I

    #@2
    .line 1367
    .local v0, "next":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@4
    add-int/lit8 v1, v2, -0x1

    #@6
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@8
    .line 1369
    .local v1, "pos":I
    if-ltz v1, :cond_0

    #@a
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@c
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@e
    aget v2, v2, v3

    #@10
    :goto_0
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_currentNode:I

    #@12
    .line 1372
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->returnNode(I)I

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1370
    :cond_0
    const/4 v2, -0x1

    #@18
    goto :goto_0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    #@0
    .prologue
    .line 1349
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@6
    .line 1351
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@8
    if-ltz v0, :cond_0

    #@a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@c
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@e
    aget v0, v0, v1

    #@10
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_currentNode:I

    #@12
    .line 1354
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 1352
    :cond_0
    const/4 v0, -0x1

    #@18
    goto :goto_0
.end method

.method public setMark()V
    .locals 1

    #@0
    .prologue
    .line 1376
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_markedPos:I

    #@4
    .line 1375
    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1290
    if-nez p1, :cond_0

    #@4
    .line 1291
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@6
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@9
    move-result p1

    #@a
    .line 1292
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    #@c
    .line 1294
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_isRestartable:Z

    #@e
    if-eqz v3, :cond_6

    #@10
    .line 1296
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@12
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@15
    move-result v1

    #@16
    .line 1297
    .local v1, "nodeID":I
    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@18
    .line 1299
    if-ne v1, v2, :cond_1

    #@1a
    .line 1300
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_currentNode:I

    #@1c
    .line 1301
    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@1e
    .line 1302
    return-object p0

    #@1f
    .line 1307
    :cond_1
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_includeSelf:Z

    #@21
    if-nez v3, :cond_2

    #@23
    .line 1308
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@25
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@28
    move-result v1

    #@29
    .line 1309
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2b
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@2e
    move-result p1

    #@2f
    .line 1312
    :cond_2
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_startNode:I

    #@31
    .line 1314
    :goto_0
    if-eq v1, v2, :cond_4

    #@33
    .line 1316
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@35
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@37
    array-length v4, v4

    #@38
    if-lt v3, v4, :cond_3

    #@3a
    .line 1318
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@3c
    mul-int/lit8 v3, v3, 0x2

    #@3e
    new-array v0, v3, [I

    #@40
    .line 1319
    .local v0, "newAncestors":[I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@42
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@44
    array-length v4, v4

    #@45
    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@48
    .line 1320
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@4a
    .line 1323
    .end local v0    # "newAncestors":[I
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@4c
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@4e
    add-int/lit8 v5, v4, 0x1

    #@50
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@52
    aput p1, v3, v4

    #@54
    .line 1324
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@56
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@59
    move-result v1

    #@5a
    .line 1325
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5c
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@5f
    move-result p1

    #@60
    goto :goto_0

    #@61
    .line 1328
    :cond_4
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    #@63
    add-int/lit8 v3, v3, -0x1

    #@65
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@67
    .line 1330
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@69
    if-ltz v3, :cond_5

    #@6b
    .line 1331
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    #@6d
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    #@6f
    aget v2, v2, v3

    #@71
    .line 1330
    :cond_5
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->_currentNode:I

    #@73
    .line 1334
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@76
    move-result-object v2

    #@77
    return-object v2

    #@78
    .line 1337
    .end local v1    # "nodeID":I
    :cond_6
    return-object p0
.end method
