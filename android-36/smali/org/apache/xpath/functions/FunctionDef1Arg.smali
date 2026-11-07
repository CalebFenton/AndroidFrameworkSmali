.class public Lorg/apache/xpath/functions/FunctionDef1Arg;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FunctionDef1Arg.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2044bb739a495690L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist Arg0IsNodesetExpr()Z
    .registers 1

    .line 65
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->isNodesetExpr()Z

    move-result p0

    return p0
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

    move-result p0

    return p0
.end method

.method public greylist checkNumberArgs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    .line 144
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;->reportWrongNumberArgs()V

    :cond_6
    return-void
.end method

.method protected greylist getArg0AsNode(Lorg/apache/xpath/XPathContext;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez p0, :cond_9

    .line 56
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    return p0
.end method

.method protected greylist getArg0AsNumber(Lorg/apache/xpath/XPathContext;)D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez p0, :cond_1b

    .line 119
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    const/4 v0, -0x1

    if-ne v0, p0, :cond_e

    const-wide/16 p0, 0x0

    return-wide p0

    .line 124
    :cond_e
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 125
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide p0

    return-wide p0

    .line 131
    :cond_1b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    return-wide p0
.end method

.method protected greylist getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez p0, :cond_17

    .line 86
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    const/4 v0, -0x1

    if-ne v0, p0, :cond_e

    .line 88
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 91
    :cond_e
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 92
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 97
    :cond_17
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 154
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "ER_ZERO_OR_ONE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
