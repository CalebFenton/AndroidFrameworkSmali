.class public Lorg/apache/xalan/templates/ElemExtensionCall;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemExtensionCall.java"


# static fields
.field static final serialVersionUID:J = 0x2c02dca9933f0c58L


# instance fields
.field m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

.field m_extns:Ljava/lang/String;

.field m_lang:Ljava/lang/String;

.field m_scriptSrc:Ljava/lang/String;

.field m_srcURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@6
    .line 38
    return-void
.end method

.method private executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .local v1, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_1

    #@4
    .line 157
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@7
    move-result v2

    #@8
    const/16 v3, 0x39

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 161
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@f
    .line 162
    move-object v0, v1

    #@10
    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    #@12
    move-object v2, v0

    #@13
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 166
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@19
    .line 155
    :cond_0
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1b
    goto :goto_0

    #@1c
    .line 165
    :catchall_0
    move-exception v2

    #@1d
    .line 166
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@20
    .line 165
    throw v2

    #@21
    .line 152
    :cond_1
    return-void
.end method

.method private getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;
    .locals 10
    .param p1, "stylesheet"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .param p2, "namespace"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 115
    const/4 v1, 0x0

    #@2
    .line 116
    .local v1, "decl":Lorg/apache/xalan/templates/ElemExtensionDecl;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    #@5
    move-result v5

    #@6
    .line 118
    .local v5, "n":I
    const/4 v3, 0x0

    #@7
    .end local v1    # "decl":Lorg/apache/xalan/templates/ElemExtensionDecl;
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    #@9
    .line 120
    invoke-virtual {p1, v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@c
    move-result-object v4

    #@d
    .line 122
    .local v4, "imported":Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    move-result-object v0

    #@11
    .local v0, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_1
    if-eqz v0, :cond_1

    #@13
    .line 125
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@16
    move-result v7

    #@17
    const/16 v8, 0x55

    #@19
    if-ne v8, v7, :cond_0

    #@1b
    move-object v1, v0

    #@1c
    .line 127
    check-cast v1, Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@1e
    .line 129
    .local v1, "decl":Lorg/apache/xalan/templates/ElemExtensionDecl;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    .line 130
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 132
    .local v2, "declNamespace":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v7

    #@2a
    if-eqz v7, :cond_0

    #@2c
    .line 134
    return-object v1

    #@2d
    .line 123
    .end local v1    # "decl":Lorg/apache/xalan/templates/ElemExtensionDecl;
    .end local v2    # "declNamespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@30
    move-result-object v0

    #@31
    goto :goto_1

    #@32
    .line 118
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@34
    goto :goto_0

    #@35
    .line 140
    .end local v0    # "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v4    # "imported":Lorg/apache/xalan/templates/Stylesheet;
    :cond_2
    return-object v9
.end method

.method private hasFallbackChildren()Z
    .locals 3

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .local v0, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_1

    #@4
    .line 183
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x39

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 184
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 181
    :cond_0
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    goto :goto_0

    #@11
    .line 187
    :cond_1
    const/4 v1, 0x0

    #@12
    return v1
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 311
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitExtensionElement(Lorg/apache/xalan/templates/ElemExtensionCall;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 94
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getNamespace()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    #@9
    .line 95
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    #@b
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@11
    .line 98
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 99
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    #@1e
    .line 91
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 12
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 201
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 202
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@e
    .line 204
    const-string/jumbo v3, "ER_EXTENSION_ELEMENT_NOT_ALLOWED_IN_SECURE_PROCESSING"

    #@11
    .line 205
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getRawName()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    aput-object v5, v4, v6

    #@19
    .line 203
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 202
    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 209
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    #@28
    .line 211
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    #@2b
    move-result-object v9

    #@2c
    .line 212
    .local v9, "etable":Lorg/apache/xalan/extensions/ExtensionsTable;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    #@2e
    invoke-virtual {v9, v2}, Lorg/apache/xalan/extensions/ExtensionsTable;->get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;

    #@31
    move-result-object v1

    #@32
    .line 214
    .local v1, "nsh":Lorg/apache/xalan/extensions/ExtensionHandler;
    if-nez v1, :cond_2

    #@34
    .line 216
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 218
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@3d
    .line 227
    :goto_0
    return-void

    #@3e
    .line 222
    :cond_1
    new-instance v11, Ljavax/xml/transform/TransformerException;

    #@40
    .line 223
    const-string/jumbo v2, "ER_CALL_TO_EXT_FAILED"

    #@43
    const/4 v3, 0x1

    #@44
    new-array v3, v3, [Ljava/lang/Object;

    #@46
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getNodeName()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    const/4 v5, 0x0

    #@4b
    aput-object v4, v3, v5

    #@4d
    .line 222
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-direct {v11, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@54
    .line 224
    .local v11, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@57
    move-result-object v2

    #@58
    invoke-interface {v2, v11}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    #@5b
    goto :goto_0

    #@5c
    .line 262
    .end local v1    # "nsh":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v9    # "etable":Lorg/apache/xalan/extensions/ExtensionsTable;
    .end local v11    # "te":Ljavax/xml/transform/TransformerException;
    :catch_0
    move-exception v8

    #@5d
    .line 263
    .local v8, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@60
    move-result-object v2

    #@61
    invoke-interface {v2, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@64
    .line 199
    .end local v8    # "e":Ljavax/xml/transform/TransformerException;
    :goto_1
    return-void

    #@65
    .line 232
    .restart local v1    # "nsh":Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v9    # "etable":Lorg/apache/xalan/extensions/ExtensionsTable;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getLocalName()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 233
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@6c
    move-result-object v5

    #@6d
    move-object v3, p0

    #@6e
    move-object v4, p1

    #@6f
    move-object v6, p0

    #@70
    .line 232
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/extensions/ExtensionHandler;->processElement(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/Stylesheet;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    #@73
    goto :goto_1

    #@74
    .line 236
    :catch_1
    move-exception v7

    #@75
    .line 238
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_3

    #@7b
    .line 239
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    #@7e
    goto :goto_1

    #@7f
    .line 265
    .end local v1    # "nsh":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "etable":Lorg/apache/xalan/extensions/ExtensionsTable;
    :catch_2
    move-exception v10

    #@80
    .line 266
    .local v10, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@82
    invoke-direct {v2, v10}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@85
    throw v2

    #@86
    .line 242
    .end local v10    # "se":Lorg/xml/sax/SAXException;
    .restart local v1    # "nsh":Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "etable":Lorg/apache/xalan/extensions/ExtensionsTable;
    :cond_3
    :try_start_3
    instance-of v2, v7, Ljavax/xml/transform/TransformerException;

    #@88
    if-eqz v2, :cond_5

    #@8a
    .line 244
    move-object v0, v7

    #@8b
    check-cast v0, Ljavax/xml/transform/TransformerException;

    #@8d
    move-object v11, v0

    #@8e
    .line 245
    .restart local v11    # "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@91
    move-result-object v2

    #@92
    if-nez v2, :cond_4

    #@94
    .line 246
    invoke-virtual {v11, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@97
    .line 248
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9a
    move-result-object v2

    #@9b
    invoke-interface {v2, v11}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@9e
    goto :goto_1

    #@9f
    .line 250
    .end local v11    # "te":Ljavax/xml/transform/TransformerException;
    :cond_5
    instance-of v2, v7, Ljava/lang/RuntimeException;

    #@a1
    if-eqz v2, :cond_6

    #@a3
    .line 252
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@a6
    move-result-object v2

    #@a7
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@a9
    invoke-direct {v3, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@ac
    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@af
    goto :goto_1

    #@b0
    .line 256
    :cond_6
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@b3
    move-result-object v2

    #@b4
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@b6
    invoke-direct {v3, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@b9
    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    #@bc
    goto :goto_1
.end method

.method public getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/apache/xalan/transformer/TransformerImpl;)Ljava/lang/String;
    .locals 4
    .param p1, "rawName"    # Ljava/lang/String;
    .param p2, "sourceNode"    # Lorg/w3c/dom/Node;
    .param p3, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 288
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    #@4
    move-result-object v0

    #@5
    .line 290
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 292
    invoke-virtual {p3}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@14
    move-result-object v1

    #@15
    .line 295
    .local v1, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@18
    move-result v2

    #@19
    .line 294
    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 299
    .end local v1    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_0
    return-object v3
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 70
    const/16 v0, 0x4f

    #@2
    return v0
.end method
