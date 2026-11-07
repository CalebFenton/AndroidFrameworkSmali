.class public Lorg/apache/xpath/axes/OneStepIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x402ab874e6139f8bL


# instance fields
.field protected greylist m_axis:I

.field protected greylist m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    .line 80
    iput-object p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 81
    iput p2, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 p1, -0x1

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    const/4 p3, -0x1

    .line 42
    iput p3, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    .line 60
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 62
    invoke-static {p1, p2}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 139
    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    .line 141
    iget-object p0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz p0, :cond_10

    .line 143
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_10
    return-object v0
.end method

.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 159
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    .line 160
    iget-object p0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iput-object p0, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-object v0
.end method

.method protected greylist countProximityPosition(I)V
    .registers 3

    .line 302
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_a

    .line 303
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    return-void

    .line 304
    :cond_a
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, p0

    if-ge p1, v0, :cond_15

    .line 305
    aget v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, p1

    :cond_15
    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 335
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 338
    :cond_8
    iget p0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/OneStepIterator;

    iget p1, p1, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    if-eq p0, p1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public greylist detach()V
    .registers 3

    .line 110
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_f

    .line 112
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 116
    :cond_c
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->detach()V

    :cond_f
    return-void
.end method

.method public greylist getAxis()I
    .registers 1

    .line 327
    iget p0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    return p0
.end method

.method public greylist getLength()I
    .registers 8

    .line 246
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_b

    .line 247
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getLength()I

    move-result p0

    return p0

    .line 250
    :cond_b
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    .line 253
    :goto_18
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    .line 258
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    const/4 v4, -0x1

    if-eq v4, v3, :cond_27

    if-eqz v0, :cond_27

    iget v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v5, v2, :cond_27

    return v3

    .line 263
    :cond_27
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    .line 266
    :try_start_2b
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/OneStepIterator;

    .line 268
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getRoot()I

    move-result v6

    .line 269
    invoke-virtual {v3, v6}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 270
    invoke-virtual {v5, v6, v3}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    .line 272
    iget v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v6, v5, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 276
    :goto_3f
    invoke-virtual {v5}, Lorg/apache/xpath/axes/BasicTestIterator;->nextNode()I

    move-result v6
    :try_end_43
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2b .. :try_end_43} :catch_48
    .catchall {:try_start_2b .. :try_end_43} :catchall_4c

    if-eq v4, v6, :cond_48

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 287
    :catch_48
    :cond_48
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_51

    :catchall_4c
    move-exception p0

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 288
    throw p0

    :goto_51
    if-eqz v0, :cond_59

    .line 289
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v0, v2, :cond_59

    .line 290
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    :cond_59
    return v1
.end method

.method protected greylist getNextNode()I
    .registers 2

    .line 125
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method protected greylist getProximityPosition(I)I
    .registers 7

    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_b

    .line 191
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result p0

    return p0

    :cond_b
    const/4 v0, -0x1

    if-gez p1, :cond_f

    return v0

    .line 199
    :cond_f
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v1, p1

    if-gtz v1, :cond_45

    .line 201
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    .line 204
    :try_start_19
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/axes/OneStepIterator;

    .line 206
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getRoot()I

    move-result v3

    .line 207
    invoke-virtual {v1, v3}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 208
    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    .line 211
    iput p1, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v3, 0x1

    .line 217
    :goto_2c
    invoke-virtual {v2}, Lorg/apache/xpath/axes/BasicTestIterator;->nextNode()I

    move-result v4

    if-eq v0, v4, :cond_35

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 222
    :cond_35
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v2, v0, p1

    add-int/2addr v2, v3

    aput v2, v0, p1
    :try_end_3c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_19 .. :try_end_3c} :catch_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_40

    .line 231
    :catch_3c
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_45

    :catchall_40
    move-exception p0

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 232
    throw p0

    .line 235
    :cond_45
    :goto_45
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget p0, p0, p1

    return p0
.end method

.method public greylist isReverseAxes()Z
    .registers 1

    .line 174
    iget-object p0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->isReverse()Z

    move-result p0

    return p0
.end method

.method public greylist reset()V
    .registers 1

    .line 314
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->reset()V

    .line 315
    iget-object p0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz p0, :cond_a

    .line 316
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_a
    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 3

    .line 95
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    .line 96
    iget p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_10

    .line 97
    iget-object p2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 98
    :cond_10
    iget-object p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    return-void
.end method
