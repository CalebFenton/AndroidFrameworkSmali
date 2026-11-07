.class public Lorg/apache/xalan/templates/ElemWithParam;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWithParam.java"


# static fields
.field static final whitelist serialVersionUID:J = -0xedaaa5c88e4d871L


# instance fields
.field greylist m_index:I

.field private greylist m_qname:Lorg/apache/xml/utils/QName;

.field greylist m_qnameID:I

.field private greylist m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 94
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 251
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_24

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xsl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 253
    const-string v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 257
    :cond_24
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_f

    .line 234
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_f

    .line 235
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 236
    :cond_f
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-nez v0, :cond_12

    .line 153
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 155
    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 157
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 159
    :cond_12
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    .line 160
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 162
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 163
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_38

    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_38
    return-void
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 117
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 140
    const-string p0, "with-param"

    return-object p0
.end method

.method public greylist getSelect()Lorg/apache/xpath/XPath;
    .registers 1

    .line 84
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 201
    :try_start_7
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_16

    .line 203
    invoke-virtual {v1, v0, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    goto :goto_29

    :catchall_14
    move-exception p0

    goto :goto_2d

    .line 207
    :cond_16
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p2

    if-nez p2, :cond_1f

    .line 209
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_29

    .line 215
    :cond_1f
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result p1

    .line 217
    new-instance p2, Lorg/apache/xpath/objects/XRTreeFrag;

    invoke-direct {p2, p1, v0, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_14

    move-object p0, p2

    .line 222
    :goto_29
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-object p0

    :goto_2d
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 223
    throw p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 2

    .line 176
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    const/4 p0, 0x1

    .line 177
    iput-boolean p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return-void
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-void
.end method
