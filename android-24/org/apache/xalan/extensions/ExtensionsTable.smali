.class public Lorg/apache/xalan/extensions/ExtensionsTable;
.super Ljava/lang/Object;
.source "ExtensionsTable.java"


# instance fields
.field public m_extensionFunctionNamespaces:Ljava/util/Hashtable;

.field private m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v4, Ljava/util/Hashtable;

    #@5
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@a
    .line 60
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@c
    .line 61
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@e
    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    #@11
    move-result-object v2

    #@12
    .line 62
    .local v2, "extensions":Ljava/util/Vector;
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@16
    move-result v4

    #@17
    if-ge v3, v4, :cond_1

    #@19
    .line 65
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@1f
    .line 66
    .local v1, "extNamespaceSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->launch()Lorg/apache/xalan/extensions/ExtensionHandler;

    #@22
    move-result-object v0

    #@23
    .line 67
    .local v0, "extHandler":Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v0, :cond_0

    #@25
    .line 68
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p0, v4, v0}, Lorg/apache/xalan/extensions/ExtensionsTable;->addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V

    #@2c
    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 58
    .end local v0    # "extHandler":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v1    # "extNamespaceSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    :cond_1
    return-void
.end method


# virtual methods
.method public addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "extNS"    # Lorg/apache/xalan/extensions/ExtensionHandler;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 94
    return-void
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const/4 v1, 0x0

    #@1
    .line 136
    .local v1, "isAvailable":Z
    if-eqz p1, :cond_0

    #@3
    .line 139
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    #@b
    .line 140
    .local v0, "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v0, :cond_0

    #@d
    .line 141
    invoke-virtual {v0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isElementAvailable(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    .line 143
    .end local v0    # "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v1    # "isAvailable":Z
    :cond_0
    return v1
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "argVec"    # Ljava/util/Vector;
    .param p4, "methodKey"    # Ljava/lang/Object;
    .param p5, "exprContext"    # Lorg/apache/xalan/extensions/ExpressionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    const/4 v3, 0x0

    #@1
    .line 167
    .local v3, "result":Ljava/lang/Object;
    if-eqz p1, :cond_0

    #@3
    .line 170
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lorg/apache/xalan/extensions/ExtensionHandler;

    #@b
    .line 171
    .local v2, "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v2, :cond_1

    #@d
    .line 175
    :try_start_0
    invoke-virtual {v2, p2, p3, p4, p5}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    .line 193
    .end local v2    # "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_0
    return-object v3

    #@12
    .line 183
    .restart local v2    # "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@13
    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@15
    invoke-direct {v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v4

    #@19
    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@1a
    .line 180
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    throw v1

    #@1b
    .line 189
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :cond_1
    new-instance v4, Lorg/apache/xpath/XPathProcessorException;

    #@1d
    const-string/jumbo v5, "ER_EXTENSION_FUNC_UNKNOWN"

    #@20
    const/4 v6, 0x2

    #@21
    new-array v6, v6, [Ljava/lang/Object;

    #@23
    const/4 v7, 0x0

    #@24
    aput-object p1, v6, v7

    #@26
    const/4 v7, 0x1

    #@27
    aput-object p2, v6, v7

    #@29
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-direct {v4, v5}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 10
    .param p1, "extFunction"    # Lorg/apache/xpath/functions/FuncExtFunction;
    .param p2, "argVec"    # Ljava/util/Vector;
    .param p3, "exprContext"    # Lorg/apache/xalan/extensions/ExpressionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    const/4 v4, 0x0

    #@1
    .line 213
    .local v4, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 214
    .local v3, "ns":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@7
    .line 217
    iget-object v5, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lorg/apache/xalan/extensions/ExtensionHandler;

    #@f
    .line 218
    .local v2, "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v2, :cond_1

    #@11
    .line 222
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v4

    #@15
    .line 239
    .end local v2    # "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_0
    return-object v4

    #@16
    .line 229
    .restart local v2    # "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@17
    .line 230
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@19
    invoke-direct {v5, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v5

    #@1d
    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@1e
    .line 226
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    throw v1

    #@1f
    .line 235
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :cond_1
    new-instance v5, Lorg/apache/xpath/XPathProcessorException;

    #@21
    const-string/jumbo v6, "ER_EXTENSION_FUNC_UNKNOWN"

    #@24
    .line 236
    const/4 v7, 0x2

    #@25
    new-array v7, v7, [Ljava/lang/Object;

    #@27
    const/4 v8, 0x0

    #@28
    aput-object v3, v7, v8

    #@2a
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    const/4 v9, 0x1

    #@2f
    aput-object v8, v7, v9

    #@31
    .line 235
    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-direct {v5, v6}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    #@38
    throw v5
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    const/4 v1, 0x0

    #@1
    .line 113
    .local v1, "isAvailable":Z
    if-eqz p1, :cond_0

    #@3
    .line 116
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    #@b
    .line 117
    .local v0, "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v0, :cond_0

    #@d
    .line 118
    invoke-virtual {v0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isFunctionAvailable(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    .line 120
    .end local v0    # "extNS":Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v1    # "isAvailable":Z
    :cond_0
    return v1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;
    .locals 1
    .param p1, "extns"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    #@8
    return-object v0
.end method
