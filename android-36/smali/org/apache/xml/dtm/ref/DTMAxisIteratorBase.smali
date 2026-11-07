.class public abstract Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
.super Ljava/lang/Object;
.source "DTMAxisIteratorBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMAxisIterator;


# instance fields
.field protected greylist _includeSelf:Z

.field protected greylist _isRestartable:Z

.field protected greylist _last:I

.field protected greylist _markedNode:I

.field protected greylist _position:I

.field protected greylist _startNode:I


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 52
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 57
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-void
.end method


# virtual methods
.method public greylist cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    .line 180
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 189
    new-instance v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getLast()I
    .registers 4

    .line 125
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 134
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 135
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->setMark()V

    .line 137
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 140
    :cond_d
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    .line 142
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 144
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->gotoMark()V

    .line 145
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 148
    :cond_1e
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    return p0
.end method

.method public greylist getNodeByPosition(I)I
    .registers 5

    const/4 v0, -0x1

    if-lez p1, :cond_1d

    .line 269
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getLast()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 272
    :cond_10
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v1

    if-eq v1, v0, :cond_1d

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getPosition()I

    move-result v2

    if-ne p1, v2, :cond_10

    return v1

    :cond_1d
    return v0
.end method

.method public greylist getPosition()I
    .registers 1

    .line 157
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    if-nez p0, :cond_5

    const/4 p0, 0x1

    :cond_5
    return p0
.end method

.method public greylist getStartNode()I
    .registers 1

    .line 73
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    return p0
.end method

.method public greylist includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    return-object p0
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isReverse()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    .line 83
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 87
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-interface {p0, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 89
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-object p0
.end method

.method protected final greylist resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    return-object p0
.end method

.method protected final greylist returnNode(I)I
    .registers 3

    .line 213
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    return p1
.end method

.method public greylist setRestartable(Z)V
    .registers 2

    .line 257
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-void
.end method
