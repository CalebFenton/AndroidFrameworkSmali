.class public Lorg/apache/xalan/templates/ElemExtensionCall;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemExtensionCall.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2c02dca9933f0c58L


# instance fields
.field greylist m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

.field greylist m_extns:Ljava/lang/String;

.field greylist m_lang:Ljava/lang/String;

.field greylist m_scriptSrc:Ljava/lang/String;

.field greylist m_srcURL:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    return-void
.end method

.method private greylist executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    if-eqz p0, :cond_21

    .line 157
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_1e

    .line 161
    :try_start_c
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 162
    move-object v0, p0

    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 166
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 167
    throw p0

    .line 155
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_21
    return-void
.end method

.method private greylist getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;
    .registers 7

    .line 116
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_33

    .line 120
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_30

    const/16 v2, 0x55

    .line 125
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 127
    move-object v2, v1

    check-cast v2, Lorg/apache/xalan/templates/ElemExtensionDecl;

    .line 129
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-object v2

    .line 123
    :cond_2b
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_f

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist hasFallbackChildren()Z
    .registers 3

    .line 180
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    if-eqz p0, :cond_11

    .line 183
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_e

    const/4 p0, 0x1

    return p0

    .line 181
    :cond_e
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected greylist accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 2

    .line 311
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitExtensionElement(Lorg/apache/xalan/templates/ElemExtensionCall;)Z

    move-result p0

    return p0
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    if-nez v0, :cond_1a

    .line 99
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 209
    :try_start_a
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 211
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xalan/extensions/ExtensionsTable;->get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;

    move-result-object v2
    :try_end_1b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_1b} :catch_9f
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_1b} :catch_a2

    if-nez v2, :cond_47

    .line 216
    :try_start_1d
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 218
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V

    return-void

    :catch_27
    move-exception v0

    move-object p0, v0

    move-object v5, p1

    goto/16 :goto_aa

    .line 222
    :cond_2c
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_CALL_TO_EXT_FAILED"

    .line 223
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNodeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 222
    invoke-static {v1, p0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_46
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d .. :try_end_46} :catch_27
    .catch Lorg/xml/sax/SAXException; {:try_start_1d .. :try_end_46} :catch_a2

    return-void

    .line 232
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_59

    move-object v7, p0

    move-object v4, p0

    move-object v5, p1

    .line 232
    :try_start_52
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/extensions/ExtensionHandler;->processElement(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/Stylesheet;Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_b1

    :catch_56
    move-exception v0

    :goto_57
    move-object p0, v0

    goto :goto_5d

    :catch_59
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    goto :goto_57

    .line 238
    :goto_5d
    :try_start_5d
    invoke-direct {v4}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 239
    invoke-direct {v4, v5}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V

    goto :goto_b1

    :catch_67
    move-exception v0

    :goto_68
    move-object p0, v0

    goto :goto_aa

    .line 242
    :cond_6a
    instance-of p1, p0, Ljavax/xml/transform/TransformerException;

    if-eqz p1, :cond_81

    .line 244
    check-cast p0, Ljavax/xml/transform/TransformerException;

    .line 245
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    if-nez p1, :cond_79

    .line 246
    invoke-virtual {p0, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 248
    :cond_79
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_b1

    .line 250
    :cond_81
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_92

    .line 252
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_b1

    .line 256
    :cond_92
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_9e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5d .. :try_end_9e} :catch_67
    .catch Lorg/xml/sax/SAXException; {:try_start_5d .. :try_end_9e} :catch_a2

    goto :goto_b1

    :catch_9f
    move-exception v0

    move-object v5, p1

    goto :goto_68

    :catch_a2
    move-exception v0

    move-object p0, v0

    .line 266
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 263
    :goto_aa
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_b1
    return-void

    :cond_b2
    move-object v4, p0

    .line 202
    new-instance p0, Ljavax/xml/transform/TransformerException;

    .line 205
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 203
    const-string v0, "ER_EXTENSION_ELEMENT_NOT_ALLOWED_IN_SECURE_PROCESSING"

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/apache/xalan/transformer/TransformerImpl;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 290
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 292
    invoke-virtual {p3}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    .line 295
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    .line 294
    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x4f

    return p0
.end method
