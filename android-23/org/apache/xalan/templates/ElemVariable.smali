.class public Lorg/apache/xalan/templates/ElemVariable;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemVariable.java"


# static fields
.field static final serialVersionUID:J = 0x7e713d70aea340adL


# instance fields
.field m_frameSize:I

.field protected m_index:I

.field private m_isTopLevel:Z

.field protected m_qname:Lorg/apache/xml/utils/QName;

.field private m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 67
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@6
    .line 166
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    #@9
    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1
    .param p1, "param"    # Lorg/apache/xalan/templates/ElemVariable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 67
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@6
    .line 166
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    #@9
    .line 224
    iget-object v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@b
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@d
    .line 225
    iget-object v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@f
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@11
    .line 226
    iget-boolean v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    #@13
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    #@15
    .line 221
    return-void
.end method

.method static rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 9
    .param p0, "varElem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 406
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4
    move-result-object v3

    #@5
    .line 410
    .local v3, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v3, :cond_1

    #@7
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@a
    move-result-object v6

    #@b
    if-nez v6, :cond_1

    #@d
    .line 412
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@10
    move-result v0

    #@11
    .line 414
    .local v0, "etype":I
    const/16 v6, 0x1e

    #@13
    if-ne v6, v0, :cond_0

    #@15
    move-object v4, v3

    #@16
    .line 416
    check-cast v4, Lorg/apache/xalan/templates/ElemValueOf;

    #@18
    .line 419
    .local v4, "valueof":Lorg/apache/xalan/templates/ElemValueOf;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemValueOf;->getDisableOutputEscaping()Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 420
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemValueOf;->getDOMBackPointer()Lorg/w3c/dom/Node;

    #@21
    move-result-object v6

    #@22
    if-nez v6, :cond_1

    #@24
    .line 422
    iput-object v7, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@26
    .line 424
    new-instance v6, Lorg/apache/xpath/XPath;

    #@28
    new-instance v7, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;

    #@2a
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemValueOf;->getSelect()Lorg/apache/xpath/XPath;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@31
    move-result-object v8

    #@32
    invoke-direct {v7, v8}, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;-><init>(Lorg/apache/xpath/Expression;)V

    #@35
    invoke-direct {v6, v7}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    #@38
    return-object v6

    #@39
    .line 427
    .end local v4    # "valueof":Lorg/apache/xalan/templates/ElemValueOf;
    :cond_0
    const/16 v6, 0x4e

    #@3b
    if-ne v6, v0, :cond_1

    #@3d
    move-object v1, v3

    #@3e
    .line 429
    check-cast v1, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@40
    .line 431
    .local v1, "lit":Lorg/apache/xalan/templates/ElemTextLiteral;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getDisableOutputEscaping()Z

    #@43
    move-result v6

    #@44
    if-nez v6, :cond_1

    #@46
    .line 432
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getDOMBackPointer()Lorg/w3c/dom/Node;

    #@49
    move-result-object v6

    #@4a
    if-nez v6, :cond_1

    #@4c
    .line 434
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 435
    .local v2, "str":Ljava/lang/String;
    new-instance v5, Lorg/apache/xpath/objects/XString;

    #@52
    invoke-direct {v5, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@55
    .line 437
    .local v5, "xstr":Lorg/apache/xpath/objects/XString;
    iput-object v7, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@57
    .line 439
    new-instance v6, Lorg/apache/xpath/XPath;

    #@59
    new-instance v7, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;

    #@5b
    invoke-direct {v7, v5}, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;-><init>(Lorg/apache/xpath/Expression;)V

    #@5e
    invoke-direct {v6, v7}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    #@61
    return-object v6

    #@62
    .line 444
    .end local v0    # "etype":I
    .end local v1    # "lit":Lorg/apache/xalan/templates/ElemTextLiteral;
    .end local v2    # "str":Ljava/lang/String;
    .end local v5    # "xstr":Lorg/apache/xpath/objects/XString;
    :cond_1
    return-object v7
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 477
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitVariableOrParamDecl(Lorg/apache/xalan/templates/ElemVariable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 519
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 521
    const-string/jumbo v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    #@8
    .line 522
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "xsl:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getNodeName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    const/4 v3, 0x0

    #@24
    aput-object v2, v1, v3

    #@26
    .line 521
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemVariable;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@29
    .line 523
    return-object v4

    #@2a
    .line 525
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 488
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@c
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@f
    .line 489
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@12
    .line 485
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
    .line 329
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 330
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    #@7
    move-result v3

    #@8
    .line 329
    if-eqz v3, :cond_0

    #@a
    .line 332
    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    #@d
    move-result-object v1

    #@e
    .line 333
    .local v1, "newSelect":Lorg/apache/xpath/XPath;
    if-eqz v1, :cond_0

    #@10
    .line 334
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@12
    .line 337
    .end local v1    # "newSelect":Lorg/apache/xpath/XPath;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@15
    move-result-object v0

    #@16
    .line 341
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@19
    move-result-object v2

    #@1a
    .line 342
    .local v2, "vnames":Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 343
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@20
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@23
    move-result v4

    #@24
    invoke-virtual {v3, v2, v4}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@27
    .line 347
    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@29
    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    #@2b
    if-nez v3, :cond_3

    #@2d
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 349
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@33
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->addVariableName(Lorg/apache/xml/utils/QName;)I

    #@36
    move-result v3

    #@37
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@3a
    move-result v4

    #@3b
    sub-int/2addr v3, v4

    #@3c
    iput v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    #@3e
    .line 361
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@41
    .line 326
    return-void

    #@42
    .line 351
    :cond_3
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@44
    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 356
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    #@4b
    goto :goto_0
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 372
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5
    instance-of v1, v1, Lorg/apache/xalan/templates/Stylesheet;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 374
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@c
    move-result-object v0

    #@d
    .line 375
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    #@10
    move-result v1

    #@11
    iput v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@13
    .line 376
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    #@16
    .line 369
    .end local v0    # "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v0

    #@8
    .line 245
    .local v0, "sourceNode":I
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    #@b
    move-result-object v1

    #@c
    .line 248
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@13
    move-result-object v2

    #@14
    iget v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    #@16
    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@19
    .line 240
    return-void
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    #@2
    return v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    #@0
    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    #@2
    return v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    const-string/jumbo v0, "variable"

    #@3
    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "sourceNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v2

    #@4
    .line 268
    .local v2, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@7
    .line 272
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 274
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@d
    invoke-virtual {v3, v2, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@10
    move-result-object v1

    #@11
    .line 276
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v3}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 313
    :goto_0
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@18
    .line 316
    return-object v1

    #@19
    .line 278
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1c
    move-result-object v3

    #@1d
    if-nez v3, :cond_1

    #@1f
    .line 280
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@21
    .restart local v1    # "var":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@22
    .line 299
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@24
    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 300
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    move-result v0

    #@2c
    .line 308
    .local v0, "df":I
    :goto_1
    :try_start_3
    new-instance v1, Lorg/apache/xpath/objects/XRTreeFrag;

    #@2e
    invoke-direct {v1, v0, v2, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@31
    .restart local v1    # "var":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@32
    .line 302
    .end local v0    # "df":I
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_2
    :try_start_4
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@35
    move-result v0

    #@36
    .restart local v0    # "df":I
    goto :goto_1

    #@37
    .line 304
    .end local v0    # "df":I
    :catchall_0
    move-exception v3

    #@38
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@39
    .line 312
    :catchall_1
    move-exception v3

    #@3a
    .line 313
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@3d
    .line 312
    throw v3
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 201
    const/16 v0, 0x49

    #@2
    return v0
.end method

.method public isPsuedoVar()Z
    .locals 3

    #@0
    .prologue
    .line 498
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 499
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
    .line 501
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

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
    .line 502
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 504
    :cond_0
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 454
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V

    #@3
    .line 452
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 77
    iput p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    #@2
    .line 75
    return-void
.end method

.method public setIsTopLevel(Z)V
    .locals 0
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    #@2
    .line 175
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    .line 142
    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "p"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 464
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@3
    .line 465
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    #@6
    .line 462
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2
    .line 106
    return-void
.end method
