.class public abstract Ljavax/xml/transform/TransformerFactory;
.super Ljava/lang/Object;
.source "TransformerFactory.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api newInstance()Ljavax/xml/transform/TransformerFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .line 76
    const-string v0, "org.apache.xalan.processor.TransformerFactoryImpl"

    .line 78
    .local v0, "className":Ljava/lang/String;
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/TransformerFactory;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-object v1

    .line 79
    :catch_d
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/transform/TransformerFactory;
    .registers 4
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_34

    .line 96
    if-nez p1, :cond_c

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 100
    :cond_c
    if-eqz p1, :cond_13

    .line 101
    :try_start_e
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_17

    .line 102
    :cond_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_17
    nop

    .line 103
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/TransformerFactory;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1e} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v1

    .line 108
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1f
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 106
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_26
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 104
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2d
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_34
    new-instance v0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    const-string v1, "factoryClassName == null"

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getErrorListener()Ljavax/xml/transform/ErrorListener;
.end method

.method public abstract whitelist test-api getFeature(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api getURIResolver()Ljavax/xml/transform/URIResolver;
.end method

.method public abstract whitelist test-api newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newTransformer()Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract whitelist test-api setErrorListener(Ljavax/xml/transform/ErrorListener;)V
.end method

.method public abstract whitelist test-api setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setURIResolver(Ljavax/xml/transform/URIResolver;)V
.end method
