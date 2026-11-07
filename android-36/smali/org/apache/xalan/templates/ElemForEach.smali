.class public Lorg/apache/xalan/templates/ElemForEach;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemForEach.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final greylist DEBUG:Z = false

.field static final whitelist serialVersionUID:J = 0x5384bb05f6cb70caL


# instance fields
.field public greylist m_doc_cache_off:Z

.field protected greylist m_selectExpression:Lorg/apache/xpath/Expression;

.field protected greylist m_sortElems:Ljava/util/Vector;

.field protected greylist m_xpath:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    .line 93
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    .line 191
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    .line 492
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 436
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x40

    if-ne v1, v0, :cond_f

    .line 440
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemSort;

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->setSortElem(Lorg/apache/xalan/templates/ElemSort;)V

    return-object p1

    .line 445
    :cond_f
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 6

    if-eqz p2, :cond_9

    .line 454
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_9

    .line 455
    invoke-interface {v0, p0, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 457
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 461
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 464
    :cond_1a
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 132
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 138
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 141
    :cond_14
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_2c

    .line 145
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p0

    .line 144
    invoke-virtual {v1, v0, p0}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void

    .line 149
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 162
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 165
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    .line 262
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    return-void

    :catchall_b
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    .line 267
    throw p0
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 472
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 246
    const-string p0, "for-each"

    return-object p0
.end method

.method public greylist getSelect()Lorg/apache/xpath/Expression;
    .registers 1

    .line 116
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getSortElem(I)Lorg/apache/xalan/templates/ElemSort;
    .registers 2

    .line 211
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemSort;

    return-object p0
.end method

.method public greylist getSortElemCount()I
    .registers 1

    .line 199
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method protected greylist getTemplateMatch()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x1c

    return p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 480
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 481
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 3

    .line 102
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    .line 106
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public greylist setSortElem(Lorg/apache/xalan/templates/ElemSort;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 223
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    .line 225
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 298
    new-instance p0, Lorg/apache/xalan/transformer/NodeSorter;

    invoke-direct {p0, p1}, Lorg/apache/xalan/transformer/NodeSorter;-><init>(Lorg/apache/xpath/XPathContext;)V

    const/4 v0, 0x1

    .line 299
    invoke-interface {p3, v0}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    const/4 v0, -0x1

    .line 300
    invoke-interface {p3, v0}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    .line 301
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 305
    :try_start_10
    invoke-virtual {p0, p3, p2, p1}, Lorg/apache/xalan/transformer/NodeSorter;->sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    const/4 p0, 0x0

    .line 306
    invoke-interface {p3, p0}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    return-object p3

    :catchall_1b
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 311
    throw p0
.end method

.method public greylist transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 328
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 330
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v0, v1}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    .line 336
    :try_start_e
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    const/4 v4, 0x0

    if-nez v3, :cond_15

    move-object v3, v4

    goto :goto_19

    .line 338
    :cond_15
    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v3

    :goto_19
    if-eqz v3, :cond_22

    .line 342
    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/xalan/templates/ElemForEach;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_91

    :cond_22
    :goto_22
    const/4 v3, -0x1

    .line 344
    invoke-virtual {v0, v3}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 346
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v5

    .line 348
    invoke-virtual {v0, v3}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 350
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v6

    .line 352
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 353
    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 354
    invoke-virtual {p1, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 358
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    const/high16 v7, -0x10000

    and-int/2addr v1, v7

    .line 362
    :cond_41
    :goto_41
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v8

    if-eq v3, v8, :cond_7e

    .line 364
    invoke-virtual {v5, v8}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 365
    invoke-virtual {v6, v8}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    and-int v9, v8, v7

    if-eq v9, v1, :cond_57

    .line 369
    invoke-virtual {v0, v8}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    move-object v4, v1

    move v1, v9

    .line 374
    :cond_57
    invoke-interface {v4, v8}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    .line 379
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_5c
    if-eqz v8, :cond_6a

    .line 382
    invoke-virtual {v0, v8}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 383
    invoke-virtual {p1, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 384
    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 380
    iget-object v8, v8, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_5c

    .line 397
    :cond_6a
    iget-boolean v8, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    if-eqz v8, :cond_41

    .line 405
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/xpath/SourceTreeManager;->removeDocumentFromCache(I)V

    const/4 v8, 0x0

    .line 406
    invoke-virtual {v0, v4, v8}, Lorg/apache/xpath/XPathContext;->release(Lorg/apache/xml/dtm/DTM;Z)Z
    :try_end_7d
    .catchall {:try_start_e .. :try_end_7d} :catchall_20

    goto :goto_41

    .line 412
    :cond_7e
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return-void

    .line 412
    :goto_91
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 418
    throw p0
.end method
