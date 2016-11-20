.class public abstract Ljavax/xml/parsers/SAXParserFactory;
.super Ljava/lang/Object;
.source "SAXParserFactory.java"


# instance fields
.field private namespaceAware:Z

.field private validating:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    iput-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    #@6
    .line 45
    iput-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    #@8
    .line 50
    return-void
.end method

.method public static newInstance()Ljavax/xml/parsers/SAXParserFactory;
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;-><init>()V

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/SAXParserFactory;
    .locals 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 78
    if-nez p0, :cond_0

    #@2
    .line 79
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@4
    const-string/jumbo v5, "factoryClassName == null"

    #@7
    invoke-direct {v4, v5}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 81
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object p1

    #@15
    .line 85
    :cond_1
    if-eqz p1, :cond_2

    #@17
    .line 86
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    .line 88
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljavax/xml/parsers/SAXParserFactory;

    #@21
    return-object v4

    #@22
    .line 87
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
    .line 93
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@28
    .line 94
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@2a
    invoke-direct {v4, v1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@2d
    throw v4

    #@2e
    .line 91
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    #@2f
    .line 92
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@31
    invoke-direct {v4, v2}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@34
    throw v4

    #@35
    .line 89
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    #@36
    .line 90
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@38
    invoke-direct {v4, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@3b
    throw v4
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 3

    #@0
    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This parser does not support specification \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 261
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 262
    const-string/jumbo v2, "\" version \""

    #@21
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 263
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 264
    const-string/jumbo v2, "\""

    #@38
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 259
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    #@0
    .prologue
    .line 165
    iget-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    #@2
    return v0
.end method

.method public isValidating()Z
    .locals 1

    #@0
    .prologue
    .line 177
    iget-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    #@2
    return v0
.end method

.method public isXIncludeAware()Z
    .locals 3

    #@0
    .prologue
    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This parser does not support specification \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 371
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 372
    const-string/jumbo v2, "\" version \""

    #@21
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 373
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 374
    const-string/jumbo v2, "\""

    #@38
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 369
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public abstract newSAXParser()Ljavax/xml/parsers/SAXParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public setNamespaceAware(Z)V
    .locals 0
    .param p1, "awareness"    # Z

    #@0
    .prologue
    .line 123
    iput-boolean p1, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    #@2
    .line 122
    return-void
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 3
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    #@0
    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This parser does not support specification \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 320
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 321
    const-string/jumbo v2, "\" version \""

    #@21
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 322
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 323
    const-string/jumbo v2, "\""

    #@38
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 318
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    #@0
    .prologue
    .line 153
    iput-boolean p1, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    #@2
    .line 152
    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This parser does not support specification \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 349
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 350
    const-string/jumbo v2, "\" version \""

    #@21
    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 351
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 352
    const-string/jumbo v2, "\""

    #@38
    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 347
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method
