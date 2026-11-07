.class public Lorg/apache/xalan/templates/ElemVariable;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemVariable.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x7e713d70aea340adL


# instance fields
.field greylist m_frameSize:I

.field protected greylist m_index:I

.field private greylist m_isTopLevel:Z

.field protected greylist m_qname:Lorg/apache/xml/utils/QName;

.field private greylist m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    .line 224
    iget-object v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 225
    iget-object v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    .line 226
    iget-boolean p1, p1, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    return-void
.end method

.method static greylist rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 410
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-nez v2, :cond_60

    .line 412
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v3, v2, :cond_38

    .line 416
    check-cast v0, Lorg/apache/xalan/templates/ElemValueOf;

    .line 419
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemValueOf;->getDisableOutputEscaping()Z

    move-result v2

    if-nez v2, :cond_60

    .line 420
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getDOMBackPointer()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_60

    .line 422
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 424
    new-instance p0, Lorg/apache/xpath/XPath;

    new-instance v1, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemValueOf;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-direct {p0, v1}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    return-object p0

    :cond_38
    const/16 v3, 0x4e

    if-ne v3, v2, :cond_60

    .line 429
    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    .line 431
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getDisableOutputEscaping()Z

    move-result v2

    if-nez v2, :cond_60

    .line 432
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getDOMBackPointer()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_60

    .line 434
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v2, Lorg/apache/xpath/objects/XString;

    invoke-direct {v2, v0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 437
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 439
    new-instance p0, Lorg/apache/xpath/XPath;

    new-instance v0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;

    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-direct {p0, v0}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    return-object p0

    :cond_60
    return-object v1
.end method


# virtual methods
.method protected greylist accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 2

    .line 477
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitVariableOrParamDecl(Lorg/apache/xalan/templates/ElemVariable;)Z

    move-result p0

    return p0
.end method

.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 519
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_24

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xsl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 521
    const-string v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 525
    :cond_24
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    .line 487
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_d

    .line 488
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 489
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-nez v0, :cond_12

    .line 330
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 332
    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 334
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 337
    :cond_12
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_25

    .line 343
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 347
    :cond_25
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v2, v1, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v2, :cond_3b

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    if-eqz v2, :cond_3b

    .line 349
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->addVariableName(Lorg/apache/xml/utils/QName;)I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    goto :goto_42

    .line 351
    :cond_3b
    instance-of v1, v1, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v1, :cond_42

    .line 356
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    .line 361
    :cond_42
    :goto_42
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public greylist endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 371
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 372
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v0, v0, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v0, :cond_16

    .line 374
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    .line 376
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    :cond_16
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 245
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p1

    iget p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    return-void
.end method

.method public greylist getIndex()I
    .registers 1

    .line 87
    iget p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    return p0
.end method

.method public greylist getIsTopLevel()Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    return p0
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 159
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 211
    const-string p0, "variable"

    return-object p0
.end method

.method public greylist getSelect()Lorg/apache/xpath/XPath;
    .registers 1

    .line 123
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 272
    :try_start_7
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_16

    .line 274
    invoke-virtual {v1, v0, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    goto :goto_34

    :catchall_14
    move-exception p0

    goto :goto_38

    .line 278
    :cond_16
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p2

    if-nez p2, :cond_1f

    .line 280
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_34

    .line 299
    :cond_1f
    iget-object p2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of p2, p2, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz p2, :cond_2a

    .line 300
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result p1

    goto :goto_2e

    .line 302
    :cond_2a
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result p1

    .line 308
    :goto_2e
    new-instance p2, Lorg/apache/xpath/objects/XRTreeFrag;

    invoke-direct {p2, p1, v0, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_14

    move-object p0, p2

    .line 313
    :goto_34
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-object p0

    :goto_38
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 314
    throw p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x49

    return p0
.end method

.method public greylist isPsuedoVar()Z
    .registers 3

    .line 498
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 499
    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 501
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 454
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V

    return-void
.end method

.method public greylist setIndex(I)V
    .registers 2

    .line 77
    iput p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    return-void
.end method

.method public greylist setIsTopLevel(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    return-void
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 2

    .line 464
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    const/4 p0, 0x1

    .line 465
    iput-boolean p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return-void
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-void
.end method
