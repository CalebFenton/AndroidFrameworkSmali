.class public abstract Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
.super Ljava/lang/Object;
.source "DTMAxisIteratorBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMAxisIterator;


# instance fields
.field protected _includeSelf:Z

.field protected _isRestartable:Z

.field protected _last:I

.field protected _markedNode:I

.field protected _position:I

.field protected _startNode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 36
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    #@7
    .line 41
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@9
    .line 52
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    #@b
    .line 57
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    #@d
    .line 63
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    #@10
    .line 29
    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    #@0
    .prologue
    .line 180
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;

    #@6
    .line 182
    .local v0, "clone":Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
    const/4 v2, 0x0

    #@7
    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 185
    return-object v0

    #@a
    .line 188
    .end local v0    # "clone":Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
    :catch_0
    move-exception v1

    #@b
    .line 189
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@d
    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@10
    throw v2
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 253
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getLast()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 125
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    #@3
    if-ne v1, v2, :cond_1

    #@5
    .line 134
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@7
    .line 135
    .local v0, "temp":I
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->setMark()V

    #@a
    .line 137
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@d
    .line 140
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    #@13
    .line 142
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->next()I

    #@16
    move-result v1

    #@17
    if-ne v1, v2, :cond_0

    #@19
    .line 144
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->gotoMark()V

    #@1c
    .line 145
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@1e
    .line 148
    .end local v0    # "temp":I
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    #@20
    return v1
.end method

.method public getNodeByPosition(I)I
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 268
    if-lez p1, :cond_2

    #@3
    .line 269
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->isReverse()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getLast()I

    #@c
    move-result v2

    #@d
    sub-int/2addr v2, p1

    #@e
    add-int/lit8 v1, v2, 0x1

    #@10
    .line 272
    .local v1, "pos":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->next()I

    #@13
    move-result v0

    #@14
    .local v0, "node":I
    if-eq v0, v3, :cond_2

    #@16
    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getPosition()I

    #@19
    move-result v2

    #@1a
    if-ne v1, v2, :cond_0

    #@1c
    .line 274
    return v0

    #@1d
    .line 270
    .end local v0    # "node":I
    .end local v1    # "pos":I
    :cond_1
    move v1, p1

    #@1e
    .restart local v1    # "pos":I
    goto :goto_0

    #@1f
    .line 278
    .end local v1    # "pos":I
    :cond_2
    return v3
.end method

.method public getPosition()I
    .locals 1

    #@0
    .prologue
    .line 157
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@8
    goto :goto_0
.end method

.method public getStartNode()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    #@2
    return v0
.end method

.method public includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    #@0
    .prologue
    .line 106
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    #@3
    .line 108
    return-object p0
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 242
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    #@2
    .line 85
    .local v0, "temp":Z
    const/4 v1, 0x1

    #@3
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    #@5
    .line 87
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    #@7
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@a
    .line 89
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    #@c
    .line 91
    return-object p0
.end method

.method protected final resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    #@0
    .prologue
    .line 229
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@3
    .line 231
    return-object p0
.end method

.method protected final returnNode(I)I
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 213
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    #@6
    .line 215
    return p1
.end method

.method public setRestartable(Z)V
    .locals 0
    .param p1, "isRestartable"    # Z

    #@0
    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    #@2
    .line 256
    return-void
.end method
