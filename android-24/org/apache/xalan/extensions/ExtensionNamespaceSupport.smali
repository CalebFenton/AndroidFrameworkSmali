.class public Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
.super Ljava/lang/Object;
.source "ExtensionNamespaceSupport.java"


# instance fields
.field m_args:[Ljava/lang/Object;

.field m_handlerClass:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_sig:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "handlerClass"    # Ljava/lang/String;
    .param p3, "constructorArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 36
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    #@6
    .line 37
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    #@8
    .line 38
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    #@a
    .line 39
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@c
    .line 45
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    #@e
    .line 46
    iput-object p2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    #@10
    .line 47
    iput-object p3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@12
    .line 49
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@14
    array-length v1, v1

    #@15
    new-array v1, v1, [Ljava/lang/Class;

    #@17
    iput-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    #@19
    .line 50
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@1c
    array-length v1, v1

    #@1d
    if-ge v0, v1, :cond_1

    #@1f
    .line 52
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@21
    aget-object v1, v1, v0

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 53
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    #@27
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@29
    aget-object v2, v2, v0

    #@2b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v1, v0

    #@31
    .line 50
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 56
    :cond_0
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    #@36
    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public launch()Lorg/apache/xalan/extensions/ExtensionHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    const/4 v4, 0x0

    #@1
    .line 76
    .local v4, "handler":Lorg/apache/xalan/extensions/ExtensionHandler;
    :try_start_0
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    #@3
    invoke-static {v6}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    .line 77
    .local v0, "cl":Ljava/lang/Class;
    const/4 v1, 0x0

    #@8
    .line 79
    .local v1, "con":Ljava/lang/reflect/Constructor;
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 80
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    #@e
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v1

    #@12
    .line 94
    .end local v1    # "con":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    #@14
    .line 95
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@16
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    .end local v4    # "handler":Lorg/apache/xalan/extensions/ExtensionHandler;
    check-cast v4, Lorg/apache/xalan/extensions/ExtensionHandler;

    #@1c
    .line 103
    .local v4, "handler":Lorg/apache/xalan/extensions/ExtensionHandler;
    return-object v4

    #@1d
    .line 83
    .restart local v1    # "con":Ljava/lang/reflect/Constructor;
    .local v4, "handler":Lorg/apache/xalan/extensions/ExtensionHandler;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    #@20
    move-result-object v2

    #@21
    .line 84
    .local v2, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    #@22
    .local v5, "i":I
    :goto_1
    array-length v6, v2

    #@23
    if-ge v5, v6, :cond_0

    #@25
    .line 86
    aget-object v6, v2, v5

    #@27
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@2a
    move-result-object v6

    #@2b
    array-length v6, v6

    #@2c
    iget-object v7, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    #@2e
    array-length v7, v7

    #@2f
    if-ne v6, v7, :cond_2

    #@31
    .line 88
    aget-object v1, v2, v5

    #@33
    .local v1, "con":Ljava/lang/reflect/Constructor;
    goto :goto_0

    #@34
    .line 84
    .local v1, "con":Ljava/lang/reflect/Constructor;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@36
    goto :goto_1

    #@37
    .line 97
    .end local v1    # "con":Ljava/lang/reflect/Constructor;
    .end local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v5    # "i":I
    :cond_3
    new-instance v6, Ljavax/xml/transform/TransformerException;

    #@39
    const-string/jumbo v7, "ExtensionHandler constructor not found"

    #@3c
    invoke-direct {v6, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 100
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v4    # "handler":Lorg/apache/xalan/extensions/ExtensionHandler;
    :catch_0
    move-exception v3

    #@41
    .line 101
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    #@43
    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@46
    throw v6
.end method
