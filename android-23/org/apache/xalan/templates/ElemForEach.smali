.class public Lorg/apache/xalan/templates/ElemForEach;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemForEach.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x5384bb05f6cb70caL


# instance fields
.field public m_doc_cache_off:Z

.field protected m_selectExpression:Lorg/apache/xpath/Expression;

.field protected m_sortElems:Ljava/util/Vector;

.field protected m_xpath:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 75
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    #@7
    .line 86
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@9
    .line 93
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    #@b
    .line 191
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@d
    .line 80
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 492
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    #@6
    .line 490
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 436
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 438
    .local v0, "type":I
    const/16 v1, 0x40

    #@6
    if-ne v1, v0, :cond_0

    #@8
    move-object v1, p1

    #@9
    .line 440
    check-cast v1, Lorg/apache/xalan/templates/ElemSort;

    #@b
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemForEach;->setSortElem(Lorg/apache/xalan/templates/ElemSort;)V

    #@e
    .line 442
    return-object p1

    #@f
    .line 445
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 3
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttributes"    # Z

    #@0
    .prologue
    .line 454
    if-eqz p2, :cond_0

    #@2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 455
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@8
    invoke-virtual {v2, p0, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@b
    .line 457
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    #@e
    move-result v1

    #@f
    .line 459
    .local v1, "length":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 461
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@19
    .line 459
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 464
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@1f
    .line 452
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 134
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    #@6
    move-result v1

    #@7
    .line 136
    .local v1, "length":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemSort;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@11
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 141
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@1b
    move-result-object v2

    #@1c
    .line 143
    .local v2, "vnames":Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 144
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@22
    .line 145
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@29
    move-result v4

    #@2a
    .line 144
    invoke-virtual {v3, v2, v4}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@2d
    .line 129
    :goto_1
    return-void

    #@2e
    .line 149
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@31
    move-result-object v3

    #@32
    iget-object v3, v3, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    #@34
    invoke-virtual {v3}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@37
    move-result-object v3

    #@38
    .line 148
    iput-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@3a
    goto :goto_1
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    #@3
    move-result v1

    #@4
    .line 160
    .local v1, "length":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 162
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@e
    .line 160
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 165
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@14
    .line 156
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    #@4
    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    #@a
    .line 256
    return-void

    #@b
    .line 265
    :catchall_0
    move-exception v0

    #@c
    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    #@f
    .line 265
    throw v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, "for-each"

    #@3
    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getSortElem(I)Lorg/apache/xalan/templates/ElemSort;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/templates/ElemSort;

    #@8
    return-object v0
.end method

.method public getSortElemCount()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method protected getTemplateMatch()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 0

    #@0
    .prologue
    .line 278
    return-object p0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 236
    const/16 v0, 0x1c

    #@2
    return v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 480
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 481
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@5
    .line 478
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 1
    .param p1, "xpath"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@6
    .line 106
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    #@8
    .line 100
    return-void
.end method

.method public setSortElem(Lorg/apache/xalan/templates/ElemSort;)V
    .locals 1
    .param p1, "sortElem"    # Lorg/apache/xalan/templates/ElemSort;

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 223
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@b
    .line 225
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 219
    return-void
.end method

.method public sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "keys"    # Ljava/util/Vector;
    .param p3, "sourceNodes"    # Lorg/apache/xml/dtm/DTMIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    new-instance v0, Lorg/apache/xalan/transformer/NodeSorter;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/xalan/transformer/NodeSorter;-><init>(Lorg/apache/xpath/XPathContext;)V

    #@5
    .line 299
    .local v0, "sorter":Lorg/apache/xalan/transformer/NodeSorter;
    const/4 v1, 0x1

    #@6
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    #@9
    .line 300
    const/4 v1, -0x1

    #@a
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    #@d
    .line 301
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    #@10
    .line 305
    :try_start_0
    invoke-virtual {v0, p3, p2, p1}, Lorg/apache/xalan/transformer/NodeSorter;->sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    #@13
    .line 306
    const/4 v1, 0x0

    #@14
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@1a
    .line 313
    return-object p3

    #@1b
    .line 309
    :catchall_0
    move-exception v1

    #@1c
    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@1f
    .line 309
    throw v1
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 13
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v10

    #@4
    .line 329
    .local v10, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v7

    #@8
    .line 330
    .local v7, "sourceNode":I
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    #@a
    invoke-virtual {v11, v10, v7}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@d
    move-result-object v8

    #@e
    .line 336
    .local v8, "sourceNodes":Lorg/apache/xml/dtm/DTMIterator;
    :try_start_0
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    #@10
    if-nez v11, :cond_3

    #@12
    .line 337
    const/4 v5, 0x0

    #@13
    .line 341
    :goto_0
    if-eqz v5, :cond_0

    #@15
    .line 342
    invoke-virtual {p0, v10, v5, v8}, Lorg/apache/xalan/templates/ElemForEach;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    #@18
    move-result-object v8

    #@19
    .line 344
    :cond_0
    const/4 v11, -0x1

    #@1a
    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@1d
    .line 346
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    #@20
    move-result-object v2

    #@21
    .line 348
    .local v2, "currentNodes":Lorg/apache/xml/utils/IntStack;
    const/4 v11, -0x1

    #@22
    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    #@25
    .line 350
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    #@28
    move-result-object v1

    #@29
    .line 352
    .local v1, "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    #@2c
    .line 353
    invoke-virtual {v10, v8}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    #@2f
    .line 354
    const/4 v11, 0x0

    #@30
    invoke-virtual {p1, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@33
    .line 358
    invoke-virtual {v10, v7}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@36
    move-result-object v4

    #@37
    .line 359
    .local v4, "dtm":Lorg/apache/xml/dtm/DTM;
    const/high16 v11, -0x10000

    #@39
    and-int v3, v7, v11

    #@3b
    .line 362
    .local v3, "docID":I
    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@3e
    move-result v0

    #@3f
    .local v0, "child":I
    const/4 v11, -0x1

    #@40
    if-eq v11, v0, :cond_5

    #@42
    .line 364
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    #@45
    .line 365
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    #@48
    .line 367
    const/high16 v11, -0x10000

    #@4a
    and-int/2addr v11, v0

    #@4b
    if-eq v11, v3, :cond_2

    #@4d
    .line 369
    invoke-virtual {v10, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@50
    move-result-object v4

    #@51
    .line 370
    const/high16 v11, -0x10000

    #@53
    and-int v3, v0, v11

    #@55
    .line 374
    :cond_2
    invoke-interface {v4, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@58
    move-result v6

    #@59
    .line 379
    .local v6, "nodeType":I
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemForEach;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5b
    .local v9, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2
    if-eqz v9, :cond_4

    #@5d
    .line 382
    invoke-virtual {v10, v9}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    #@60
    .line 383
    invoke-virtual {p1, v9}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@63
    .line 384
    invoke-virtual {v9, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@66
    .line 380
    iget-object v9, v9, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@68
    goto :goto_2

    #@69
    .line 338
    .end local v0    # "child":I
    .end local v1    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .end local v2    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .end local v3    # "docID":I
    .end local v4    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v6    # "nodeType":I
    .end local v9    # "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    invoke-virtual {p1, p0, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    #@6c
    move-result-object v5

    #@6d
    .local v5, "keys":Ljava/util/Vector;
    goto :goto_0

    #@6e
    .line 397
    .end local v5    # "keys":Ljava/util/Vector;
    .restart local v0    # "child":I
    .restart local v1    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v2    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v3    # "docID":I
    .restart local v4    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v6    # "nodeType":I
    .restart local v9    # "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_4
    iget-boolean v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    #@70
    if-eqz v11, :cond_1

    #@72
    .line 405
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    #@75
    move-result-object v11

    #@76
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@79
    move-result v12

    #@7a
    invoke-virtual {v11, v12}, Lorg/apache/xpath/SourceTreeManager;->removeDocumentFromCache(I)V

    #@7d
    .line 406
    const/4 v11, 0x0

    #@7e
    invoke-virtual {v10, v4, v11}, Lorg/apache/xpath/XPathContext;->release(Lorg/apache/xml/dtm/DTM;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    goto :goto_1

    #@82
    .line 411
    .end local v0    # "child":I
    .end local v1    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .end local v2    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .end local v3    # "docID":I
    .end local v4    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v6    # "nodeType":I
    .end local v9    # "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    :catchall_0
    move-exception v11

    #@83
    .line 412
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@86
    .line 413
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@89
    .line 414
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@8c
    .line 415
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@8f
    .line 416
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@92
    .line 417
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@95
    .line 411
    throw v11

    #@96
    .line 412
    .restart local v0    # "child":I
    .restart local v1    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v2    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v3    # "docID":I
    .restart local v4    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_5
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@99
    .line 413
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@9c
    .line 414
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@9f
    .line 415
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@a2
    .line 416
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@a5
    .line 417
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@a8
    .line 325
    return-void
.end method
