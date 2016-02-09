.class public Lorg/apache/xalan/templates/ElemValueOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemValueOf.java"


# static fields
.field static final serialVersionUID:J = 0x30718f09b2e3a7e2L


# instance fields
.field private m_disableOutputEscaping:Z

.field private m_isDot:Z

.field private m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 55
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@7
    .line 61
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    #@9
    .line 101
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    #@b
    .line 47
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 270
    const-string/jumbo v0, "ER_CANNOT_ADD"

    #@3
    .line 271
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 272
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemValueOf;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    .line 270
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemValueOf;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    .line 275
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 284
    if-eqz p2, :cond_0

    #@2
    .line 285
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@a
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 286
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@10
    .line 282
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v0

    #@b
    .line 182
    .local v0, "vnames":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 183
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@11
    .line 184
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@18
    move-result v2

    #@19
    .line 183
    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@1c
    .line 175
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 10
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v6

    #@4
    .line 216
    .local v6, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    move-result-object v3

    #@8
    .line 221
    .local v3, "rth":Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_0
    invoke-virtual {v6, p0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@b
    .line 223
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@e
    move-result v0

    #@f
    .line 225
    .local v0, "current":I
    invoke-virtual {v6, v0, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@12
    .line 227
    iget-boolean v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 229
    const-string/jumbo v7, "javax.xml.transform.disable-output-escaping"

    #@19
    const-string/jumbo v8, ""

    #@1c
    .line 228
    invoke-interface {v3, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@1f
    .line 233
    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@21
    invoke-virtual {v7}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@24
    move-result-object v1

    #@25
    .line 235
    .local v1, "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {v1, v6, v3}, Lorg/apache/xpath/Expression;->executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 239
    :try_start_2
    iget-boolean v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    #@2a
    if-eqz v7, :cond_1

    #@2c
    .line 241
    const-string/jumbo v7, "javax.xml.transform.enable-output-escaping"

    #@2f
    const-string/jumbo v8, ""

    #@32
    .line 240
    invoke-interface {v3, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 243
    :cond_1
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@38
    .line 244
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@3b
    .line 212
    return-void

    #@3c
    .line 238
    .end local v1    # "expr":Lorg/apache/xpath/Expression;
    :catchall_0
    move-exception v7

    #@3d
    .line 239
    iget-boolean v8, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    #@3f
    if-eqz v8, :cond_2

    #@41
    .line 241
    const-string/jumbo v8, "javax.xml.transform.enable-output-escaping"

    #@44
    const-string/jumbo v9, ""

    #@47
    .line 240
    invoke-interface {v3, v8, v9}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 243
    :cond_2
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@4d
    .line 244
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@50
    .line 238
    throw v7
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@51
    .line 248
    .end local v0    # "current":I
    :catch_0
    move-exception v4

    #@52
    .line 249
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@54
    invoke-direct {v7, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@57
    throw v7

    #@58
    .line 251
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    #@59
    .line 252
    .local v2, "re":Ljava/lang/RuntimeException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@5b
    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    .line 253
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v5, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@61
    .line 254
    throw v5
.end method

.method public getDisableOutputEscaping()Z
    .locals 1

    #@0
    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    #@2
    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "value-of"

    #@3
    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 162
    const/16 v0, 0x1e

    #@2
    return v0
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 125
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    #@2
    .line 123
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 2
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 74
    if-eqz p1, :cond_0

    #@2
    .line 76
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 78
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@8
    const-string/jumbo v1, "."

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    :goto_0
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    #@11
    .line 81
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@13
    .line 71
    return-void

    #@14
    .line 78
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method
