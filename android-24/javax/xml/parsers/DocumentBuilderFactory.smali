.class public abstract Ljavax/xml/parsers/DocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DocumentBuilderFactory.java"


# instance fields
.field private coalescing:Z

.field private expandEntityRef:Z

.field private ignoreComments:Z

.field private namespaceAware:Z

.field private validating:Z

.field private whitespace:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    #@6
    .line 36
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    #@8
    .line 37
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    #@a
    .line 38
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    #@d
    .line 39
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    #@f
    .line 40
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    #@11
    .line 42
    return-void
.end method

.method public static newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 1

    #@0
    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;-><init>()V

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 66
    if-nez p0, :cond_0

    #@2
    .line 67
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@4
    const-string/jumbo v5, "factoryClassName == null"

    #@7
    invoke-direct {v4, v5}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 69
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object p1

    #@15
    .line 73
    :cond_1
    if-eqz p1, :cond_2

    #@17
    .line 74
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    .line 76
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljavax/xml/parsers/DocumentBuilderFactory;

    #@21
    return-object v4

    #@22
    .line 75
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
    .line 81
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@28
    .line 82
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@2a
    invoke-direct {v4, v1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@2d
    throw v4

    #@2e
    .line 79
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    #@2f
    .line 80
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@31
    invoke-direct {v4, v2}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@34
    throw v4

    #@35
    .line 77
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    #@36
    .line 78
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljavax/xml/parsers/FactoryConfigurationError;

    #@38
    invoke-direct {v4, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    #@3b
    throw v4
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 3

    #@0
    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 377
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
    .line 378
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 379
    const-string/jumbo v2, "\" version \""

    #@21
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 380
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 381
    const-string/jumbo v2, "\""

    #@38
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 376
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public isCoalescing()Z
    .locals 1

    #@0
    .prologue
    .line 273
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    #@2
    return v0
.end method

.method public isExpandEntityReferences()Z
    .locals 1

    #@0
    .prologue
    .line 247
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    #@2
    return v0
.end method

.method public isIgnoringComments()Z
    .locals 1

    #@0
    .prologue
    .line 259
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    #@2
    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .locals 1

    #@0
    .prologue
    .line 235
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    #@2
    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    #@0
    .prologue
    .line 210
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    #@2
    return v0
.end method

.method public isValidating()Z
    .locals 1

    #@0
    .prologue
    .line 222
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    #@2
    return v0
.end method

.method public isXIncludeAware()Z
    .locals 3

    #@0
    .prologue
    .line 493
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 494
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
    .line 495
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 496
    const-string/jumbo v2, "\" version \""

    #@21
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 497
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 498
    const-string/jumbo v2, "\""

    #@38
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 493
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public abstract newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setCoalescing(Z)V
    .locals 0
    .param p1, "coalescing"    # Z

    #@0
    .prologue
    .line 198
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    #@2
    .line 197
    return-void
.end method

.method public setExpandEntityReferences(Z)V
    .locals 0
    .param p1, "expandEntityRef"    # Z

    #@0
    .prologue
    .line 171
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    #@2
    .line 170
    return-void
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public setIgnoringComments(Z)V
    .locals 0
    .param p1, "ignoreComments"    # Z

    #@0
    .prologue
    .line 183
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    #@2
    .line 182
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0
    .param p1, "whitespace"    # Z

    #@0
    .prologue
    .line 158
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    #@2
    .line 157
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 0
    .param p1, "awareness"    # Z

    #@0
    .prologue
    .line 109
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    #@2
    .line 108
    return-void
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 3
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    #@0
    .prologue
    .line 442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 443
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
    .line 444
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 445
    const-string/jumbo v2, "\" version \""

    #@21
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 446
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 447
    const-string/jumbo v2, "\""

    #@38
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 442
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    #@0
    .prologue
    .line 139
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    #@2
    .line 138
    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 3
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 472
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
    .line 473
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 474
    const-string/jumbo v2, "\" version \""

    #@21
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 475
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getClass()Ljava/lang/Class;

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
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 476
    const-string/jumbo v2, "\""

    #@38
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 471
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method
