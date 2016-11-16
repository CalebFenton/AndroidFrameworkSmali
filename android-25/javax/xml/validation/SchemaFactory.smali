.class public abstract Ljavax/xml/validation/SchemaFactory;
.super Ljava/lang/Object;
.source "SchemaFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 3
    .param p0, "schemaLanguage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 184
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@a
    .line 187
    const-class v2, Ljavax/xml/validation/SchemaFactory;

    #@c
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v0

    #@10
    .line 190
    :cond_0
    new-instance v2, Ljavax/xml/validation/SchemaFactoryFinder;

    #@12
    invoke-direct {v2, v0}, Ljavax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    #@15
    invoke-virtual {v2, p0}, Ljavax/xml/validation/SchemaFactoryFinder;->newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    #@18
    move-result-object v1

    #@19
    .line 191
    .local v1, "f":Ljavax/xml/validation/SchemaFactory;
    if-nez v1, :cond_1

    #@1b
    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 194
    :cond_1
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/validation/SchemaFactory;
    .locals 7
    .param p0, "schemaLanguage"    # Ljava/lang/String;
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 206
    if-nez p0, :cond_0

    #@2
    .line 207
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "schemaLanguage == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 208
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 209
    new-instance v5, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v6, "factoryClassName == null"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 211
    :cond_1
    if-nez p2, :cond_2

    #@18
    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object p2

    #@20
    .line 215
    :cond_2
    if-eqz p2, :cond_3

    #@22
    .line 216
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@25
    move-result-object v4

    #@26
    .line 218
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljavax/xml/validation/SchemaFactory;

    #@2c
    .line 219
    .local v3, "result":Ljavax/xml/validation/SchemaFactory;
    if-eqz v3, :cond_4

    #@2e
    invoke-virtual {v3, p0}, Ljavax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_4

    #@34
    .line 222
    return-object v3

    #@35
    .line 217
    .end local v3    # "result":Ljavax/xml/validation/SchemaFactory;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@38
    move-result-object v4

    #@39
    .restart local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    #@3a
    .line 220
    .restart local v3    # "result":Ljavax/xml/validation/SchemaFactory;
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3c
    invoke-direct {v5, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@40
    .line 223
    .end local v3    # "result":Ljavax/xml/validation/SchemaFactory;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@41
    .line 224
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@43
    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@46
    throw v5

    #@47
    .line 227
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@48
    .line 228
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4a
    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@4d
    throw v5

    #@4e
    .line 225
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    #@4f
    .line 226
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@51
    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v5
.end method


# virtual methods
.method public abstract getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    if-nez p1, :cond_0

    #@2
    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 272
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    if-nez p1, :cond_0

    #@2
    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 378
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public abstract getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
.end method

.method public abstract isSchemaLanguageSupported(Ljava/lang/String;)Z
.end method

.method public abstract newSchema()Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public newSchema(Ljava/io/File;)Ljavax/xml/validation/Schema;
    .locals 1
    .param p1, "schema"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    #@2
    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    #@5
    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public newSchema(Ljava/net/URL;)Ljavax/xml/validation/Schema;
    .locals 2
    .param p1, "schema"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 559
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    #@2
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 2
    .param p1, "schema"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 527
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljavax/xml/transform/Source;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public abstract newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    if-nez p1, :cond_0

    #@2
    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 320
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    if-nez p1, :cond_0

    #@2
    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 347
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public abstract setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
.end method
