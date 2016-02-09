.class public Lorg/apache/xpath/functions/FunctionDef1Arg;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FunctionDef1Arg.java"


# static fields
.field static final serialVersionUID:J = 0x2044bb739a495690L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public Arg0IsNodesetExpr()Z
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@8
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->isNodesetExpr()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

    #@9
    move-result v0

    #@a
    goto :goto_0
.end method

.method public checkNumberArgs(I)V
    .locals 1
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    const/4 v0, 0x1

    #@1
    if-le p1, v0, :cond_0

    #@3
    .line 144
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;->reportWrongNumberArgs()V

    #@6
    .line 141
    :cond_0
    return-void
.end method

.method protected getArg0AsNode(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v0

    #@8
    .line 55
    :goto_0
    return v0

    #@9
    .line 56
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@b
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->asNode(Lorg/apache/xpath/XPathContext;)I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method protected getArg0AsNumber(Lorg/apache/xpath/XPathContext;)D
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    if-nez v3, :cond_1

    #@4
    .line 119
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v0

    #@8
    .line 120
    .local v0, "currentNode":I
    const/4 v3, -0x1

    #@9
    if-ne v3, v0, :cond_0

    #@b
    .line 121
    const-wide/16 v4, 0x0

    #@d
    return-wide v4

    #@e
    .line 124
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@11
    move-result-object v1

    #@12
    .line 125
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@15
    move-result-object v2

    #@16
    .line 126
    .local v2, "str":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    #@19
    move-result-wide v4

    #@1a
    return-wide v4

    #@1b
    .line 131
    .end local v0    # "currentNode":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "str":Lorg/apache/xml/utils/XMLString;
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@1d
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->num()D

    #@24
    move-result-wide v4

    #@25
    return-wide v4
.end method

.method protected getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 86
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v0

    #@8
    .line 87
    .local v0, "currentNode":I
    const/4 v2, -0x1

    #@9
    if-ne v2, v0, :cond_0

    #@b
    .line 88
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@d
    return-object v2

    #@e
    .line 91
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@11
    move-result-object v1

    #@12
    .line 92
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 97
    .end local v0    # "currentNode":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    #@19
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@20
    move-result-object v2

    #@21
    return-object v2
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    #@2
    const-string/jumbo v1, "ER_ZERO_OR_ONE"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method
