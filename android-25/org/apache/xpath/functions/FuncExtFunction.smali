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
.field static final serialVersionUID:J = 0x481c4f9119667baeL


# instance fields
.field m_argVec:Ljava/util/Vector;

.field m_extensionName:Ljava/lang/String;

.field m_methodKey:Ljava/lang/Object;

.field m_namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "extensionName"    # Ljava/lang/String;
    .param p3, "methodKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    #@3
    .line 72
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@a
    .line 169
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    #@c
    .line 170
    iput-object p2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    #@e
    .line 171
    iput-object p3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_methodKey:Ljava/lang/Object;

    #@10
    .line 166
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 3
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 285
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 287
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/xpath/Expression;

    #@11
    .line 288
    .local v0, "exp":Lorg/apache/xpath/Expression;
    new-instance v2, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;

    #@13
    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;-><init>(Lorg/apache/xpath/functions/FuncExtFunction;Lorg/apache/xpath/Expression;)V

    #@16
    invoke-virtual {v0, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@19
    .line 285
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 283
    .end local v0    # "exp":Lorg/apache/xpath/Expression;
    :cond_0
    return-void
.end method

.method public checkNumberArgs(I)V
    .locals 0
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 13
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 185
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    #@4
    move-result v8

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 186
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@9
    .line 188
    const-string/jumbo v9, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    #@c
    .line 189
    const/4 v10, 0x1

    #@d
    new-array v10, v10, [Ljava/lang/Object;

    #@f
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncExtFunction;->toString()Ljava/lang/String;

    #@12
    move-result-object v11

    #@13
    aput-object v11, v10, v12

    #@15
    .line 187
    invoke-static {v9, v10}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v9

    #@19
    .line 186
    invoke-direct {v8, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v8

    #@1d
    .line 192
    :cond_0
    new-instance v1, Ljava/util/Vector;

    #@1f
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@22
    .line 193
    .local v1, "argVec":Ljava/util/Vector;
    iget-object v8, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@24
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@27
    move-result v4

    #@28
    .line 195
    .local v4, "nArgs":I
    const/4 v3, 0x0

    #@29
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@2b
    .line 197
    iget-object v8, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@2d
    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/apache/xpath/Expression;

    #@33
    .line 199
    .local v0, "arg":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@36
    move-result-object v7

    #@37
    .line 203
    .local v7, "xobj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v7, v12}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    #@3a
    .line 204
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3d
    .line 195
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 207
    .end local v0    # "arg":Lorg/apache/xpath/Expression;
    .end local v7    # "xobj":Lorg/apache/xpath/objects/XObject;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Lorg/apache/xpath/ExtensionsProvider;

    #@46
    .line 208
    .local v2, "extProvider":Lorg/apache/xpath/ExtensionsProvider;
    invoke-interface {v2, p0, v1}, Lorg/apache/xpath/ExtensionsProvider;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;

    #@49
    move-result-object v6

    #@4a
    .line 210
    .local v6, "val":Ljava/lang/Object;
    if-eqz v6, :cond_2

    #@4c
    .line 212
    invoke-static {v6, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@4f
    move-result-object v5

    #@50
    .line 219
    .local v5, "result":Lorg/apache/xpath/objects/XObject;
    :goto_1
    return-object v5

    #@51
    .line 216
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    :cond_2
    new-instance v5, Lorg/apache/xpath/objects/XNull;

    #@53
    invoke-direct {v5}, Lorg/apache/xpath/objects/XNull;-><init>()V

    #@56
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_1
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 4
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    .line 303
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 305
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@8
    move-result v2

    #@9
    .line 307
    .local v2, "nArgs":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 309
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lorg/apache/xpath/Expression;

    #@14
    .line 311
    .local v0, "arg":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@17
    .line 307
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 300
    .end local v0    # "arg":Lorg/apache/xpath/Expression;
    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 4
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 88
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 90
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@6
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@9
    move-result v2

    #@a
    .line 92
    .local v2, "nArgs":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 94
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lorg/apache/xpath/Expression;

    #@15
    .line 96
    .local v0, "arg":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@18
    .line 92
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 85
    .end local v0    # "arg":Lorg/apache/xpath/Expression;
    .end local v1    # "i":I
    .end local v2    # "nArgs":I
    :cond_0
    return-void
.end method

.method public getArg(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 138
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_0

    #@a
    .line 139
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xpath/Expression;

    #@12
    return-object v0

    #@13
    .line 141
    :cond_0
    const/4 v0, 0x0

    #@14
    return-object v0
.end method

.method public getArgCount()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMethodKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_methodKey:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@3
    .line 325
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const-string/jumbo v3, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    .line 323
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 327
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 1
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 236
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@8
    .line 233
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_0

    #@c
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "{"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "}"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    #@32
    return-object v0
.end method
