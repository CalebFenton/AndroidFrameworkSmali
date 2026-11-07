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
.field private static final greylist m_blocksize:I = 0x20


# instance fields
.field greylist m_ancestors:[I

.field greylist m_ancestorsPos:I

.field greylist m_markedPos:I

.field greylist m_realStartNode:I

.field greylist m_size:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1216
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    const/16 p1, 0x20

    .line 1222
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    const/4 p1, 0x0

    .line 1225
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    return-void
.end method


# virtual methods
.method public greylist cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    const/4 v0, 0x0

    .line 1262
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 1266
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;

    .line 1268
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p0, v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    .line 1275
    :catch_e
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string v0, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getStartNode()I
    .registers 1

    .line 1242
    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    return p0
.end method

.method public greylist gotoMark()V
    .registers 3

    .line 1380
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_markedPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_b

    .line 1381
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    aget v0, v1, v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    .line 1382
    :goto_c
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public final greylist isReverse()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist next()I
    .registers 4

    .line 1365
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1367
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v1, :cond_f

    .line 1369
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    aget v1, v2, v1

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    .line 1370
    :goto_10
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1372
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    .line 1349
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_d

    .line 1351
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    aget v0, v1, v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 1352
    :goto_e
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1354
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist setMark()V
    .registers 2

    .line 1376
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_markedPos:I

    return-void
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 8

    if-nez p1, :cond_8

    .line 1291
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1292
    :cond_8
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    .line 1294
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_6d

    .line 1296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1297
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 1300
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1301
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    return-object p0

    .line 1307
    :cond_1f
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v3, :cond_2f

    .line 1308
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    .line 1309
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    .line 1312
    :cond_2f
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    :goto_31
    if-eq v0, v2, :cond_5b

    .line 1316
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v5, v4

    if-lt v3, v5, :cond_44

    mul-int/lit8 v3, v3, 0x2

    .line 1318
    new-array v3, v3, [I

    .line 1319
    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1320
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    .line 1323
    :cond_44
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    aput p1, v3, v4

    .line 1324
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    .line 1325
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    goto :goto_31

    .line 1328
    :cond_5b
    iget p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_67

    .line 1331
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    aget v2, v0, p1

    .line 1332
    :cond_67
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1334
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_6d
    return-object p0
.end method
