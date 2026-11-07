.class public abstract Ljavax/xml/validation/SchemaFactory;
.super Ljava/lang/Object;
.source "SchemaFactory.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .registers 4
    .param p0, "schemaLanguage"    # Ljava/lang/String;

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 184
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_10

    .line 187
    const-class v1, Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 190
    :cond_10
    new-instance v1, Ljavax/xml/validation/SchemaFactoryFinder;

    invoke-direct {v1, v0}, Ljavax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, p0}, Ljavax/xml/validation/SchemaFactoryFinder;->newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v1

    .line 191
    .local v1, "f":Ljavax/xml/validation/SchemaFactory;
    if-eqz v1, :cond_1c

    .line 194
    return-object v1

    .line 192
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/validation/SchemaFactory;
    .registers 6
    .param p0, "schemaLanguage"    # Ljava/lang/String;
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 206
    if-eqz p0, :cond_4c

    .line 208
    if-eqz p1, :cond_44

    .line 211
    if-nez p2, :cond_e

    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 215
    :cond_e
    if-eqz p2, :cond_15

    .line 216
    :try_start_10
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_19

    .line 217
    :cond_15
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_19
    nop

    .line 218
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/validation/SchemaFactory;

    .line 219
    .local v1, "result":Ljavax/xml/validation/SchemaFactory;
    if-eqz v1, :cond_29

    invoke-virtual {v1, p0}, Ljavax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 222
    return-object v1

    .line 220
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "schemaLanguage":Ljava/lang/String;
    .end local p1    # "factoryClassName":Ljava/lang/String;
    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    throw v2
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_2f} :catch_3d
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_2f} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_2f} :catch_2f

    .line 227
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "result":Ljavax/xml/validation/SchemaFactory;
    .restart local p0    # "schemaLanguage":Ljava/lang/String;
    .restart local p1    # "factoryClassName":Ljava/lang/String;
    .restart local p2    # "classLoader":Ljava/lang/ClassLoader;
    :catch_2f
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 223
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3d
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 209
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factoryClassName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "schemaLanguage == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 269
    if-nez p1, :cond_a

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 375
    if-nez p1, :cond_a

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
.end method

.method public abstract whitelist test-api isSchemaLanguageSupported(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api newSchema()Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public whitelist test-api newSchema(Ljava/io/File;)Ljavax/xml/validation/Schema;
    .registers 3
    .param p1, "schema"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 543
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api newSchema(Ljava/net/URL;)Ljavax/xml/validation/Schema;
    .registers 4
    .param p1, "schema"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 559
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .registers 4
    .param p1, "schema"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 527
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 317
    if-nez p1, :cond_a

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 344
    if-nez p1, :cond_a

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
.end method
