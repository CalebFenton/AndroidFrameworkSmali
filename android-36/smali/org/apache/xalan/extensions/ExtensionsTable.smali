.class public Lorg/apache/xalan/extensions/ExtensionsTable;
.super Ljava/lang/Object;
.source "ExtensionsTable.java"


# instance fields
.field public greylist m_extensionFunctionNamespaces:Ljava/util/Hashtable;

.field private greylist m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    .line 60
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 61
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object p1

    const/4 v0, 0x0

    .line 62
    :goto_11
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    .line 66
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->launch()Lorg/apache/xalan/extensions/ExtensionHandler;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 68
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/extensions/ExtensionsTable;->addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2d
    return-void
.end method


# virtual methods
.method public greylist addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V
    .registers 3

    .line 96
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 138
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    .line 139
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz p0, :cond_11

    .line 141
    invoke-virtual {p0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isElementAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public greylist extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_2a

    .line 169
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    .line 170
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz p0, :cond_1a

    .line 175
    :try_start_c
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_10} :catch_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 184
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_18
    move-exception p0

    .line 180
    throw p0

    .line 189
    :cond_1a
    new-instance p0, Lorg/apache/xpath/XPathProcessorException;

    const-string p3, "ER_EXTENSION_FUNC_UNKNOWN"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 216
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz p0, :cond_1e

    .line 222
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 230
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1c
    move-exception p0

    .line 226
    throw p0

    .line 235
    :cond_1e
    new-instance p0, Lorg/apache/xpath/XPathProcessorException;

    .line 236
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 235
    const-string p2, "ER_EXTENSION_FUNC_UNKNOWN"

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 115
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    .line 116
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz p0, :cond_11

    .line 118
    invoke-virtual {p0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isFunctionAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public greylist get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;
    .registers 2

    .line 82
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    return-object p0
.end method
