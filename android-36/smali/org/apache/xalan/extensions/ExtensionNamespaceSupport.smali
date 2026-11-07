.class public Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
.super Ljava/lang/Object;
.source "ExtensionNamespaceSupport.java"


# instance fields
.field greylist m_args:[Ljava/lang/Object;

.field greylist m_handlerClass:Ljava/lang/String;

.field greylist m_namespace:Ljava/lang/String;

.field greylist m_sig:[Ljava/lang/Class;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    .line 45
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    .line 49
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    const/4 p1, 0x0

    .line 50
    :goto_12
    iget-object p2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length p3, p2

    if-ge p1, p3, :cond_28

    .line 52
    aget-object p2, p2, p1

    if-eqz p2, :cond_26

    .line 53
    iget-object p3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 56
    :cond_26
    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    :cond_28
    return-void
.end method


# virtual methods
.method public greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public greylist launch()Lorg/apache/xalan/extensions/ExtensionHandler;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_2a

    .line 83
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 86
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_26

    .line 88
    aget-object v0, v0, v1

    goto :goto_2a

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_35

    .line 95
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    return-object p0

    .line 97
    :cond_35
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string v0, "ExtensionHandler constructor not found"

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception p0

    .line 101
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
