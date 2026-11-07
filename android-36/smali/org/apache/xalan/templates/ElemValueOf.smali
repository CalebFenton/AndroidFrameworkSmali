.class public Lorg/apache/xalan/templates/ElemValueOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemValueOf.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x30718f09b2e3a7e2L


# instance fields
.field private greylist m_disableOutputEscaping:Z

.field private greylist m_isDot:Z

.field private greylist m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    .line 101
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 271
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemValueOf;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 270
    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_d

    .line 285
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 286
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 178
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 182
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_1a

    .line 184
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    .line 183
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1a
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 215
    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    .line 221
    :try_start_a
    invoke-virtual {v1, p0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 223
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    .line 225
    invoke-virtual {v1, v2, v2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 227
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_16} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_16} :catch_20

    const-string v3, ""

    if-eqz v2, :cond_22

    .line 228
    :try_start_1a
    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_1a .. :try_end_1f} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_22

    :catch_20
    move-exception p1

    goto :goto_48

    .line 233
    :cond_22
    :goto_22
    :try_start_22
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v2}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v1, p1}, Lorg/apache/xpath/Expression;->executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_39

    .line 239
    :try_start_2b
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v2, :cond_32

    .line 240
    invoke-interface {p1, v0, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_32
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 244
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-void

    :catchall_39
    move-exception v2

    .line 239
    iget-boolean v4, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v4, :cond_41

    .line 240
    invoke-interface {p1, v0, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_41
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 244
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 245
    throw v2
    :try_end_48
    .catch Lorg/xml/sax/SAXException; {:try_start_2b .. :try_end_48} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_48} :catch_20

    .line 252
    :goto_48
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 253
    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 254
    throw v0

    :catch_51
    move-exception p0

    .line 249
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist getDisableOutputEscaping()Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 194
    const-string p0, "value-of"

    return-object p0
.end method

.method public greylist getSelect()Lorg/apache/xpath/XPath;
    .registers 1

    .line 94
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x1e

    return p0
.end method

.method public greylist setDisableOutputEscaping(Z)V
    .registers 2

    .line 125
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 76
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 78
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    .line 81
    :cond_15
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void
.end method
