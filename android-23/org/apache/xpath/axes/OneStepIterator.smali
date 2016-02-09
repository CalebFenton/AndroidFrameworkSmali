.class public Lorg/apache/xpath/axes/OneStepIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIterator.java"


# static fields
.field static final serialVersionUID:J = 0x402ab874e6139f8bL


# instance fields
.field protected m_axis:I

.field protected m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V
    .locals 2
    .param p1, "iterator"    # Lorg/apache/xml/dtm/DTMAxisIterator;
    .param p2, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    #@4
    .line 42
    const/4 v1, -0x1

    #@5
    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@7
    .line 80
    iput-object p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@9
    .line 81
    iput p2, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@b
    .line 82
    const/4 v0, -0x1

    #@c
    .line 83
    .local v0, "whatToShow":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/OneStepIterator;->initNodeTest(I)V

    #@f
    .line 76
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@3
    .line 42
    const/4 v1, -0x1

    #@4
    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@6
    .line 60
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@9
    move-result v0

    #@a
    .line 62
    .local v0, "firstStepPos":I
    invoke-static {p1, v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@10
    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    #@6
    .line 141
    .local v0, "clone":Lorg/apache/xpath/axes/OneStepIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 143
    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@c
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@f
    move-result-object v1

    #@10
    iput-object v1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@12
    .line 145
    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    #@6
    .line 160
    .local v0, "clone":Lorg/apache/xpath/axes/OneStepIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@8
    iput-object v1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@a
    .line 162
    return-object v0
.end method

.method protected countProximityPosition(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 303
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->countProximityPosition(I)V

    #@9
    .line 300
    :cond_0
    :goto_0
    return-void

    #@a
    .line 304
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_proximityPositions:[I

    #@c
    array-length v0, v0

    #@d
    if-ge p1, v0, :cond_0

    #@f
    .line 305
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_proximityPositions:[I

    #@11
    aget v1, v0, p1

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    aput v1, v0, p1

    #@17
    goto :goto_0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 335
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 336
    return v2

    #@8
    .line 338
    :cond_0
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@a
    check-cast p1, Lorg/apache/xpath/axes/OneStepIterator;

    #@c
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget v1, p1, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 339
    return v2

    #@11
    .line 341
    :cond_1
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public detach()V
    .locals 2

    #@0
    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_allowDetach:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 112
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@6
    const/4 v1, -0x1

    #@7
    if-le v0, v1, :cond_0

    #@9
    .line 113
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@c
    .line 116
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->detach()V

    #@f
    .line 108
    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 327
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    .line 246
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_0

    #@8
    .line 247
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->getLength()I

    #@b
    move-result v8

    #@c
    return v8

    #@d
    .line 250
    :cond_0
    iget-object v8, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@f
    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    #@12
    move-result-object v8

    #@13
    if-ne p0, v8, :cond_1

    #@15
    const/4 v3, 0x1

    #@16
    .line 253
    .local v3, "isPredicateTest":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getPredicateCount()I

    #@19
    move-result v5

    #@1a
    .line 258
    .local v5, "predCount":I
    iget v8, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_length:I

    #@1c
    if-eq v9, v8, :cond_2

    #@1e
    if-eqz v3, :cond_2

    #@20
    iget v8, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_predicateIndex:I

    #@22
    if-ge v8, v10, :cond_2

    #@24
    .line 259
    iget v8, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_length:I

    #@26
    return v8

    #@27
    .line 250
    .end local v3    # "isPredicateTest":Z
    .end local v5    # "predCount":I
    :cond_1
    const/4 v3, 0x0

    #@28
    .restart local v3    # "isPredicateTest":Z
    goto :goto_0

    #@29
    .line 261
    .restart local v5    # "predCount":I
    :cond_2
    const/4 v2, 0x0

    #@2a
    .line 263
    .local v2, "count":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@2d
    move-result-object v7

    #@2e
    .line 266
    .local v7, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    #@34
    .line 268
    .local v0, "clone":Lorg/apache/xpath/axes/OneStepIterator;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getRoot()I

    #@37
    move-result v6

    #@38
    .line 269
    .local v6, "root":I
    invoke-virtual {v7, v6}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@3b
    .line 270
    invoke-virtual {v0, v6, v7}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    #@3e
    .line 272
    iget v8, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_predicateIndex:I

    #@40
    iput v8, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_predCount:I

    #@42
    .line 276
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xpath/axes/OneStepIterator;->nextNode()I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    move-result v4

    #@46
    .local v4, "next":I
    if-eq v9, v4, :cond_3

    #@48
    .line 278
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 287
    :cond_3
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@4e
    .line 289
    .end local v0    # "clone":Lorg/apache/xpath/axes/OneStepIterator;
    .end local v4    # "next":I
    .end local v6    # "root":I
    :goto_2
    if-eqz v3, :cond_4

    #@50
    iget v8, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_predicateIndex:I

    #@52
    if-ge v8, v10, :cond_4

    #@54
    .line 290
    iput v2, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_length:I

    #@56
    .line 292
    :cond_4
    return v2

    #@57
    .line 282
    :catch_0
    move-exception v1

    #@58
    .line 287
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@5b
    goto :goto_2

    #@5c
    .line 286
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v8

    #@5d
    .line 287
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@60
    .line 286
    throw v8
.end method

.method protected getNextNode()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_lastFetched:I

    #@8
    return v0
.end method

.method protected getProximityPosition(I)I
    .locals 8
    .param p1, "predicateIndex"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 191
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->getProximityPosition(I)I

    #@a
    move-result v6

    #@b
    return v6

    #@c
    .line 196
    :cond_0
    if-gez p1, :cond_1

    #@e
    .line 197
    return v7

    #@f
    .line 199
    :cond_1
    iget-object v6, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_proximityPositions:[I

    #@11
    aget v6, v6, p1

    #@13
    if-gtz v6, :cond_3

    #@15
    .line 201
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@18
    move-result-object v5

    #@19
    .line 204
    .local v5, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    #@1f
    .line 206
    .local v0, "clone":Lorg/apache/xpath/axes/OneStepIterator;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getRoot()I

    #@22
    move-result v4

    #@23
    .line 207
    .local v4, "root":I
    invoke-virtual {v5, v4}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@26
    .line 208
    invoke-virtual {v0, v4, v5}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    #@29
    .line 211
    iput p1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_predCount:I

    #@2b
    .line 214
    const/4 v2, 0x1

    #@2c
    .line 217
    .local v2, "count":I
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xpath/axes/OneStepIterator;->nextNode()I

    #@2f
    move-result v3

    #@30
    .local v3, "next":I
    if-eq v7, v3, :cond_2

    #@32
    .line 219
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 222
    :cond_2
    iget-object v6, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_proximityPositions:[I

    #@37
    aget v7, v6, p1

    #@39
    add-int/2addr v7, v2

    #@3a
    aput v7, v6, p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 231
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@3f
    .line 235
    .end local v0    # "clone":Lorg/apache/xpath/axes/OneStepIterator;
    .end local v2    # "count":I
    .end local v3    # "next":I
    .end local v4    # "root":I
    .end local v5    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_proximityPositions:[I

    #@41
    aget v6, v6, p1

    #@43
    return v6

    #@44
    .line 225
    .restart local v5    # "xctxt":Lorg/apache/xpath/XPathContext;
    :catch_0
    move-exception v1

    #@45
    .line 231
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@48
    goto :goto_1

    #@49
    .line 230
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v6

    #@4a
    .line 231
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@4d
    .line 230
    throw v6
.end method

.method public isReverseAxes()Z
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->isReverse()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 314
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->reset()V

    #@3
    .line 315
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 316
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@9
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@c
    .line 311
    :cond_0
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 96
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@5
    const/4 v1, -0x1

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 97
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@a
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    #@c
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@12
    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@14
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_context:I

    #@16
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@19
    .line 93
    return-void
.end method
