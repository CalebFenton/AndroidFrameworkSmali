.class public Lorg/apache/xpath/functions/FuncExtFunction;
.super Lorg/apache/xpath/functions/Function;
.source "FuncExtFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x481c4f9119667baeL


# instance fields
.field greylist m_argVec:Ljava/util/Vector;

.field greylist m_extensionName:Ljava/lang/String;

.field greylist m_methodKey:Ljava/lang/Object;

.field greylist m_namespace:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 167
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    .line 169
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_methodKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public greylist callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 5

    const/4 v0, 0x0

    .line 285
    :goto_1
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 287
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/Expression;

    .line 288
    new-instance v2, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;

    invoke-direct {v2, p0, v1}, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;-><init>(Lorg/apache/xpath/functions/FuncExtFunction;Lorg/apache/xpath/Expression;)V

    invoke-interface {v1, v2, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method public greylist checkNumberArgs(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 192
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 193
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_2a

    .line 197
    iget-object v4, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/Expression;

    .line 199
    invoke-virtual {v4, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    .line 203
    invoke-virtual {v4, v2}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 204
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 207
    :cond_2a
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/ExtensionsProvider;

    .line 208
    invoke-interface {v1, p0, v0}, Lorg/apache/xpath/ExtensionsProvider;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 212
    invoke-static {p0, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 216
    :cond_3b
    new-instance p0, Lorg/apache/xpath/objects/XNull;

    invoke-direct {p0}, Lorg/apache/xpath/objects/XNull;-><init>()V

    return-object p0

    .line 186
    :cond_41
    new-instance p1, Ljavax/xml/transform/TransformerException;

    .line 189
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncExtFunction;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 187
    const-string v0, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .registers 5

    .line 303
    invoke-super {p0, p1}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 305
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 309
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/Expression;

    .line 311
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    .line 88
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    if-eqz v0, :cond_19

    .line 90
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 94
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/Expression;

    .line 96
    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public greylist getArg(I)Lorg/apache/xpath/Expression;
    .registers 3

    if-ltz p1, :cond_13

    .line 138
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 139
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/Expression;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getArgCount()I
    .registers 1

    .line 151
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public greylist getFunctionName()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getMethodKey()Ljava/lang/Object;
    .registers 1

    .line 128
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_methodKey:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 323
    const-string p0, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 327
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setArg(Lorg/apache/xpath/Expression;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 235
    iget-object p2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 335
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 338
    :cond_28
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    return-object p0
.end method
