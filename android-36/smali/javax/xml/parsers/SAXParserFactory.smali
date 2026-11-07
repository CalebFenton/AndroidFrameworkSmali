.class public abstract Ljavax/xml/parsers/SAXParserFactory;
.super Ljava/lang/Object;
.source "SAXParserFactory.java"


# instance fields
.field private greylist-max-o namespaceAware:Z

.field private greylist-max-o validating:Z


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    .line 45
    iput-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    .line 52
    return-void
.end method

.method public static whitelist test-api newInstance()Ljavax/xml/parsers/SAXParserFactory;
    .registers 1

    .line 66
    new-instance v0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/SAXParserFactory;
    .registers 4
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 78
    if-eqz p0, :cond_34

    .line 81
    if-nez p1, :cond_c

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 85
    :cond_c
    if-eqz p1, :cond_13

    .line 86
    :try_start_e
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_17

    .line 87
    :cond_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_17
    nop

    .line 88
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/parsers/SAXParserFactory;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1e} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v1

    .line 93
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1f
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_26
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2d
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_34
    new-instance v0, Ljavax/xml/parsers/FactoryConfigurationError;

    const-string v1, "factoryClassName == null"

    invoke-direct {v0, v1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public whitelist test-api getSchema()Ljavax/xml/validation/Schema;
    .registers 4

    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    return v0
.end method

.method public whitelist test-api isValidating()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    return v0
.end method

.method public whitelist test-api isXIncludeAware()Z
    .registers 4

    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api newSAXParser()Ljavax/xml/parsers/SAXParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public whitelist test-api setNamespaceAware(Z)V
    .registers 2
    .param p1, "awareness"    # Z

    .line 123
    iput-boolean p1, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    .line 124
    return-void
.end method

.method public whitelist test-api setSchema(Ljavax/xml/validation/Schema;)V
    .registers 5
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setValidating(Z)V
    .registers 2
    .param p1, "validating"    # Z

    .line 153
    iput-boolean p1, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    .line 154
    return-void
.end method

.method public whitelist test-api setXIncludeAware(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
