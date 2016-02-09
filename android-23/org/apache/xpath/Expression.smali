.class public abstract Lorg/apache/xpath/Expression;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/XPathVisitable;


# static fields
.field static final serialVersionUID:J = 0x7d9a61c8dacacd6L


# instance fields
.field private m_parent:Lorg/apache/xpath/ExpressionNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@3
    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    .line 256
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@e
    .line 252
    return-object v0

    #@f
    .line 255
    :catchall_0
    move-exception v0

    #@10
    .line 256
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@13
    .line 255
    throw v0
.end method

.method public asIteratorRaw(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@3
    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    #@9
    .line 284
    .local v0, "nodeset":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .line 288
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@10
    .line 284
    return-object v1

    #@11
    .line 287
    .end local v0    # "nodeset":Lorg/apache/xpath/objects/XNodeSet;
    :catchall_0
    move-exception v1

    #@12
    .line 288
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@15
    .line 287
    throw v1
.end method

.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@7
    move-result-object v0

    #@8
    .line 226
    .local v0, "iter":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public assertion(ZLjava/lang/String;)V
    .locals 4
    .param p1, "b"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 417
    if-nez p1, :cond_0

    #@2
    .line 420
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@5
    .line 421
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p2, v2, v3

    #@b
    .line 419
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 423
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 414
    .end local v0    # "fMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract deepEquals(Lorg/apache/xpath/Expression;)Z
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 449
    .local v1, "fmsg":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    .line 451
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9
    move-result-object v0

    #@a
    .line 452
    .local v0, "eh":Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@c
    invoke-direct {v2, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@f
    .line 454
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@12
    .line 444
    .end local v0    # "eh":Ljavax/xml/transform/ErrorListener;
    .end local v2    # "te":Ljavax/xml/transform/TransformerException;
    :cond_0
    return-void
.end method

.method public abstract execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "currentNode"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "destructiveOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "obj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0, p2}, Lorg/apache/xpath/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    #@7
    .line 316
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@a
    .line 310
    return-void
.end method

.method public exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .locals 2
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 489
    const-string/jumbo v0, "exprAddChild method not implemented!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    #@7
    .line 487
    return-void
.end method

.method public exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 496
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public exprGetNumChildren()I
    .locals 1

    #@0
    .prologue
    .line 502
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@2
    return-object v0
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 2
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    .line 476
    if-eq p1, p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    const-string/jumbo v1, "Can not parent an expression to itself!"

    #@6
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    #@9
    .line 477
    iput-object p1, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@b
    .line 474
    return-void

    #@c
    .line 476
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public abstract fixupVariables(Ljava/util/Vector;I)V
.end method

.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 586
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 587
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@8
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getColumnNumber()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getExpressionOwner()Lorg/apache/xpath/ExpressionNode;
    .locals 2

    #@0
    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@3
    move-result-object v0

    #@4
    .line 465
    .local v0, "parent":Lorg/apache/xpath/ExpressionNode;
    :goto_0
    if-eqz v0, :cond_0

    #@6
    instance-of v1, v0, Lorg/apache/xpath/Expression;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 466
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@d
    move-result-object v0

    #@e
    goto :goto_0

    #@f
    .line 467
    :cond_0
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 564
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 565
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@8
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getLineNumber()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 520
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 521
    return-object v1

    #@6
    .line 522
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@8
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getPublicId()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 541
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 542
    return-object v1

    #@6
    .line 543
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    #@8
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getSystemId()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public isNodesetExpr()Z
    .locals 1

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final isSameClass(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 367
    if-nez p1, :cond_0

    #@3
    .line 368
    return v0

    #@4
    .line 370
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    if-ne v1, v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    return v0
.end method

.method public isStableNumber()Z
    .locals 1

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 394
    .local v1, "fmsg":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    .line 396
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9
    move-result-object v0

    #@a
    .line 399
    .local v0, "eh":Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@13
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@16
    .line 389
    .end local v0    # "eh":Ljavax/xml/transform/ErrorListener;
    :cond_0
    return-void
.end method

.method public xstr(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
