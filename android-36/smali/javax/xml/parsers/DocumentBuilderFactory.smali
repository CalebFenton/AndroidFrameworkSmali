.class public abstract Ljavax/xml/parsers/DocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DocumentBuilderFactory.java"


# instance fields
.field private greylist-max-o coalescing:Z

.field private greylist-max-o expandEntityRef:Z

.field private greylist-max-o ignoreComments:Z

.field private greylist-max-o namespaceAware:Z

.field private greylist-max-o validating:Z

.field private greylist-max-o whitespace:Z


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    .line 36
    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    .line 37
    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    .line 39
    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    .line 40
    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    .line 43
    return-void
.end method

.method public static whitelist test-api newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 1

    .line 54
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 4
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 66
    if-eqz p0, :cond_34

    .line 69
    if-nez p1, :cond_c

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 73
    :cond_c
    if-eqz p1, :cond_13

    .line 74
    :try_start_e
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_17

    .line 75
    :cond_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_17
    nop

    .line 76
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1e} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v1

    .line 81
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1f
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_26
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2d
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_34
    new-instance v0, Ljavax/xml/parsers/FactoryConfigurationError;

    const-string v1, "factoryClassName == null"

    invoke-direct {v0, v1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public whitelist test-api getSchema()Ljavax/xml/validation/Schema;
    .registers 4

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
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

    .line 369
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

.method public whitelist test-api isCoalescing()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    return v0
.end method

.method public whitelist test-api isExpandEntityReferences()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    return v0
.end method

.method public whitelist test-api isIgnoringComments()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    return v0
.end method

.method public whitelist test-api isIgnoringElementContentWhitespace()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    return v0
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    return v0
.end method

.method public whitelist test-api isValidating()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    return v0
.end method

.method public whitelist test-api isXIncludeAware()Z
    .registers 4

    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
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

    .line 486
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

.method public abstract whitelist test-api newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public whitelist test-api setCoalescing(Z)V
    .registers 2
    .param p1, "coalescing"    # Z

    .line 198
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    .line 199
    return-void
.end method

.method public whitelist test-api setExpandEntityReferences(Z)V
    .registers 2
    .param p1, "expandEntityRef"    # Z

    .line 171
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    .line 172
    return-void
.end method

.method public abstract whitelist test-api setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public whitelist test-api setIgnoringComments(Z)V
    .registers 2
    .param p1, "ignoreComments"    # Z

    .line 183
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    .line 184
    return-void
.end method

.method public whitelist test-api setIgnoringElementContentWhitespace(Z)V
    .registers 2
    .param p1, "whitespace"    # Z

    .line 158
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    .line 159
    return-void
.end method

.method public whitelist test-api setNamespaceAware(Z)V
    .registers 2
    .param p1, "awareness"    # Z

    .line 109
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    .line 110
    return-void
.end method

.method public whitelist test-api setSchema(Ljavax/xml/validation/Schema;)V
    .registers 5
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .line 431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
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

    .line 435
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

    .line 139
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    .line 140
    return-void
.end method

.method public whitelist test-api setXIncludeAware(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
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

    .line 464
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
