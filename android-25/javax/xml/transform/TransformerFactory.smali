.class public abstract Ljavax/xml/transform/TransformerFactory;
.super Ljava/lang/Object;
.source "TransformerFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance()Ljavax/xml/transform/TransformerFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "org.apache.xalan.processor.TransformerFactoryImpl"

    #@3
    .line 78
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljavax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-object v2

    #@e
    .line 79
    :catch_0
    move-exception v1

    #@f
    .line 80
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    #@11
    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    #@14
    throw v2
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/transform/TransformerFactory;
    .locals 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    if-nez p0, :cond_0

    #@2
    .line 94
    new-instance v4, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    #@4
    const-string/jumbo v5, "factoryClassName == null"

    #@7
    invoke-direct {v4, v5}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 96
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object p1

    #@15
    .line 100
    :cond_1
    if-eqz p1, :cond_2

    #@17
    .line 101
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    .line 103
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljavax/xml/transform/TransformerFactory;

    #@21
    return-object v4

    #@22
    .line 102
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v3

    #@26
    .restart local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    #@27
    .line 108
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@28
    .line 109
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    #@2a
    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@2d
    throw v4

    #@2e
    .line 106
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    #@2f
    .line 107
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    #@31
    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@34
    throw v4

    #@35
    .line 104
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    #@36
    .line 105
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    #@38
    invoke-direct {v4, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@3b
    throw v4
.end method


# virtual methods
.method public abstract getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getErrorListener()Ljavax/xml/transform/ErrorListener;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
.end method

.method public abstract getURIResolver()Ljavax/xml/transform/URIResolver;
.end method

.method public abstract newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer()Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setErrorListener(Ljavax/xml/transform/ErrorListener;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setURIResolver(Ljavax/xml/transform/URIResolver;)V
.end method
