.class public Lorg/apache/xpath/operations/Variable;
.super Lorg/apache/xpath/Expression;
.source "Variable.java"

# interfaces
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field static final serialVersionUID:J = -0x3c28ed22ed41f899L


# instance fields
.field private m_fixUpWasCalled:Z

.field protected m_index:I

.field protected m_isGlobal:Z

.field protected m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 42
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@4
    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    #@6
    .line 105
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    #@8
    .line 42
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 348
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z

    #@3
    .line 346
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/Variable;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 356
    return v2

    #@8
    .line 358
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@a
    move-object v0, p1

    #@b
    check-cast v0, Lorg/apache/xpath/operations/Variable;

    #@d
    iget-object v0, v0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@f
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 359
    return v2

    #@16
    .line 363
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    #@19
    move-result-object v0

    #@1a
    check-cast p1, Lorg/apache/xpath/operations/Variable;

    #@1c
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {p1}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    #@1f
    move-result-object v1

    #@20
    if-eq v0, v1, :cond_2

    #@22
    .line 364
    return v2

    #@23
    .line 366
    :cond_2
    const/4 v0, 0x1

    #@24
    return v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "destructiveOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@3
    move-result-object v1

    #@4
    .line 211
    .local v1, "xprefixResolver":Lorg/apache/xml/utils/PrefixResolver;
    iget-boolean v2, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 213
    iget-boolean v2, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 214
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@f
    move-result-object v2

    #@10
    iget v3, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    #@12
    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    #@15
    move-result-object v0

    #@16
    .line 222
    .local v0, "result":Lorg/apache/xpath/objects/XObject;
    :goto_0
    if-nez v0, :cond_0

    #@18
    .line 225
    const-string/jumbo v2, "WG_ILLEGAL_VARIABLE_REFERENCE"

    #@1b
    .line 226
    const/4 v3, 0x1

    #@1c
    new-array v3, v3, [Ljava/lang/Object;

    #@1e
    iget-object v4, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@20
    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    const/4 v5, 0x0

    #@25
    aput-object v4, v3, v5

    #@27
    .line 225
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/operations/Variable;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2a
    .line 231
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    #@2c
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@33
    .line 234
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    :cond_0
    return-object v0

    #@34
    .line 216
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@37
    move-result-object v2

    #@38
    iget v3, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    #@3a
    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    #@3d
    move-result-object v0

    #@3e
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@3f
    .line 219
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@42
    move-result-object v2

    #@43
    iget-object v3, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@45
    invoke-virtual {v2, p1, v3}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    #@48
    move-result-object v0

    #@49
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 9
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 119
    iput-boolean v6, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    #@4
    .line 120
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@7
    move-result v3

    #@8
    .line 122
    .local v3, "sz":I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@b
    move-result v5

    #@c
    add-int/lit8 v0, v5, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@10
    .line 124
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lorg/apache/xml/utils/QName;

    #@16
    .line 126
    .local v2, "qn":Lorg/apache/xml/utils/QName;
    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@18
    invoke-virtual {v2, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    .line 129
    if-ge v0, p2, :cond_0

    #@20
    .line 131
    iput-boolean v6, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    #@22
    .line 132
    iput v0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    #@24
    .line 139
    :goto_1
    return-void

    #@25
    .line 136
    :cond_0
    sub-int v5, v0, p2

    #@27
    iput v5, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    #@29
    goto :goto_1

    #@2a
    .line 122
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 143
    .end local v2    # "qn":Lorg/apache/xml/utils/QName;
    :cond_2
    const-string/jumbo v5, "ER_COULD_NOT_FIND_VAR"

    #@30
    .line 144
    new-array v6, v6, [Ljava/lang/Object;

    #@32
    iget-object v7, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@34
    invoke-virtual {v7}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    aput-object v7, v6, v8

    #@3a
    .line 143
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 146
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@40
    invoke-direct {v4, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@43
    .line 148
    .local v4, "te":Ljavax/xml/transform/TransformerException;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@45
    invoke-direct {v5, v4}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@48
    throw v5
.end method

.method public getAnalysisBits()I
    .locals 4

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    #@3
    move-result-object v1

    #@4
    .line 327
    .local v1, "vvar":Lorg/apache/xalan/templates/ElemVariable;
    if-eqz v1, :cond_0

    #@6
    .line 329
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    #@9
    move-result-object v2

    #@a
    .line 330
    .local v2, "xpath":Lorg/apache/xpath/XPath;
    if-eqz v2, :cond_0

    #@c
    .line 332
    invoke-virtual {v2}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@f
    move-result-object v0

    #@10
    .line 333
    .local v0, "expr":Lorg/apache/xpath/Expression;
    if-eqz v0, :cond_0

    #@12
    instance-of v3, v0, Lorg/apache/xpath/axes/PathComponent;

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 335
    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    #@18
    .end local v0    # "expr":Lorg/apache/xpath/Expression;
    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 339
    .end local v2    # "xpath":Lorg/apache/xpath/XPath;
    :cond_0
    const/high16 v3, 0x4000000

    #@1f
    return v3
.end method

.method public getElemVariable()Lorg/apache/xalan/templates/ElemVariable;
    .locals 6

    #@0
    .prologue
    .line 269
    const/4 v3, 0x0

    #@1
    .line 270
    .local v3, "vvar":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    #@4
    move-result-object v0

    #@5
    .line 272
    .local v0, "owner":Lorg/apache/xpath/ExpressionNode;
    if-eqz v0, :cond_1

    #@7
    instance-of v4, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    if-eqz v4, :cond_1

    #@b
    move-object v1, v0

    #@c
    .line 276
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@e
    .line 278
    .local v1, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v4, v1, Lorg/apache/xalan/templates/Stylesheet;

    #@10
    if-nez v4, :cond_0

    #@12
    .line 280
    :goto_0
    if-eqz v1, :cond_0

    #@14
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    #@17
    move-result-object v4

    #@18
    instance-of v4, v4, Lorg/apache/xalan/templates/Stylesheet;

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 300
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    .line 301
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@21
    move-result-object v4

    #@22
    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@24
    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    #@27
    move-result-object v3

    #@28
    .line 303
    .end local v1    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v3    # "vvar":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-object v3

    #@29
    .line 282
    .restart local v1    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v3    # "vvar":Lorg/apache/xalan/templates/ElemVariable;
    :cond_2
    move-object v2, v1

    #@2a
    .line 284
    .local v2, "savedprev":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_5

    #@30
    .line 286
    instance-of v4, v1, Lorg/apache/xalan/templates/ElemVariable;

    #@32
    if-eqz v4, :cond_3

    #@34
    move-object v3, v1

    #@35
    .line 288
    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    #@37
    .line 290
    .local v3, "vvar":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@3a
    move-result-object v4

    #@3b
    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@3d
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_4

    #@43
    .line 292
    return-object v3

    #@44
    .line 294
    :cond_4
    const/4 v3, 0x0

    #@45
    .local v3, "vvar":Lorg/apache/xalan/templates/ElemVariable;
    goto :goto_1

    #@46
    .line 297
    :cond_5
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@49
    move-result-object v1

    #@4a
    goto :goto_0
.end method

.method public getGlobal()Z
    .locals 1

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    #@2
    return v0
.end method

.method public getQName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public isPsuedoVarRef()Z
    .locals 3

    #@0
    .prologue
    .line 377
    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 378
    .local v0, "ns":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v1, "http://xml.apache.org/xalan/psuedovar"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 380
    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@13
    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "#"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 381
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 383
    :cond_0
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public isStableNumber()Z
    .locals 1

    #@0
    .prologue
    .line 317
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 68
    iput p1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    #@2
    .line 66
    return-void
.end method

.method public setIsGlobal(Z)V
    .locals 0
    .param p1, "isGlobal"    # Z

    #@0
    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    #@2
    .line 86
    return-void
.end method

.method public setQName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    .line 158
    return-void
.end method
