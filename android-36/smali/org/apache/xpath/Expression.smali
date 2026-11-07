.class public abstract Lorg/apache/xpath/Expression;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/XPathVisitable;


# static fields
.field static final whitelist serialVersionUID:J = 0x7d9a61c8dacacd6L


# instance fields
.field private greylist m_parent:Lorg/apache/xpath/ExpressionNode;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 256
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object p0

    :catchall_f
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 257
    throw p0
.end method

.method public greylist asIteratorRaw(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 281
    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XNodeSet;

    .line 284
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_11

    .line 288
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object p0

    :catchall_11
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 289
    throw p0
.end method

.method public greylist asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 226
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result p0

    return p0
.end method

.method public greylist assertion(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 419
    :cond_3
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 423
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p0

    return p0
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract greylist deepEquals(Lorg/apache/xpath/Expression;)Z
.end method

.method public greylist error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 447
    invoke-static {p2, p3}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_12

    .line 451
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    .line 452
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 454
    invoke-interface {p1, p3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_12
    return-void
.end method

.method public abstract greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 315
    invoke-virtual {p0, p2}, Lorg/apache/xpath/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    return-void
.end method

.method public greylist exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .registers 3

    const/4 p1, 0x0

    .line 489
    const-string p2, "exprAddChild method not implemented!"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist exprGetNumChildren()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .registers 1

    .line 482
    iget-object p0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    return-object p0
.end method

.method public greylist exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .registers 4

    if-eq p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 476
    :goto_5
    const-string v1, "Can not parent an expression to itself!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 477
    iput-object p1, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    return-void
.end method

.method public abstract greylist fixupVariables(Ljava/util/Vector;I)V
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 1

    .line 585
    iget-object p0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 587
    :cond_6
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public greylist getExpressionOwner()Lorg/apache/xpath/ExpressionNode;
    .registers 2

    .line 464
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_f

    .line 465
    instance-of v0, p0, Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_f

    .line 466
    invoke-interface {p0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    goto :goto_4

    :cond_f
    return-object p0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 1

    .line 563
    iget-object p0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 565
    :cond_6
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 1

    .line 520
    iget-object p0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 522
    :cond_6
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 541
    iget-object p0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 543
    :cond_6
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist isNodesetExpr()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected final greylist isSameClass(Lorg/apache/xpath/Expression;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 370
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0
.end method

.method public greylist isStableNumber()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist num(Lorg/apache/xpath/XPathContext;)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    return-wide p0
.end method

.method public greylist warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 392
    invoke-static {p2, p3}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_16

    .line 396
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    .line 399
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_16
    return-void
.end method

.method public greylist xstr(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0
.end method
