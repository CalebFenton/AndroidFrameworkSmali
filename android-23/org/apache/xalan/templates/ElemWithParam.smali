.class public Lorg/apache/xalan/templates/ElemWithParam;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWithParam.java"


# static fields
.field static final serialVersionUID:J = -0xedaaa5c88e4d871L


# instance fields
.field m_index:I

.field private m_qname:Lorg/apache/xml/utils/QName;

.field m_qnameID:I

.field private m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 61
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@6
    .line 94
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    #@8
    .line 47
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 251
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 253
    const-string/jumbo v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    #@8
    .line 254
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
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getNodeName()Ljava/lang/String;

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
    .line 253
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemWithParam;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@29
    .line 255
    return-object v4

    #@2a
    .line 257
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
    .line 234
    if-eqz p2, :cond_0

    #@2
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 235
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@8
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@e
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@11
    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@14
    .line 232
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 153
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    #@7
    move-result v2

    #@8
    .line 152
    if-eqz v2, :cond_0

    #@a
    .line 155
    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    #@d
    move-result-object v0

    #@e
    .line 156
    .local v0, "newSelect":Lorg/apache/xpath/XPath;
    if-eqz v0, :cond_0

    #@10
    .line 157
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@12
    .line 159
    .end local v0    # "newSelect":Lorg/apache/xpath/XPath;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    #@18
    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    #@1b
    move-result v2

    #@1c
    iput v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    #@1e
    .line 160
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@21
    .line 162
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@28
    move-result-object v1

    #@29
    .line 163
    .local v1, "vnames":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 164
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2f
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@36
    move-result v3

    #@37
    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@3a
    .line 149
    :cond_1
    return-void
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, "with-param"

    #@3
    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

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
    .line 195
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v2

    #@4
    .line 197
    .local v2, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@7
    .line 201
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 203
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@d
    invoke-virtual {v3, v2, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@10
    move-result-object v1

    #@11
    .line 205
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v3}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 222
    :goto_0
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@18
    .line 225
    return-object v1

    #@19
    .line 207
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1c
    move-result-object v3

    #@1d
    if-nez v3, :cond_1

    #@1f
    .line 209
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@21
    .restart local v1    # "var":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@22
    .line 215
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    #@25
    move-result v0

    #@26
    .line 217
    .local v0, "df":I
    new-instance v1, Lorg/apache/xpath/objects/XRTreeFrag;

    #@28
    invoke-direct {v1, v0, v2, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .restart local v1    # "var":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@2c
    .line 221
    .end local v0    # "df":I
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v3

    #@2d
    .line 222
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@30
    .line 221
    throw v3
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 129
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    .line 104
    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "p"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 176
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@3
    .line 177
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    #@6
    .line 174
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    #@2
    .line 70
    return-void
.end method
