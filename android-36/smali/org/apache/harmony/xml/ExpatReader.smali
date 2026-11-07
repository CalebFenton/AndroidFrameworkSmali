.class public Lorg/apache/harmony/xml/ExpatReader;
.super Ljava/lang/Object;
.source "ExpatReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatReader$Feature;
    }
.end annotation


# static fields
.field private static final blacklist LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"


# instance fields
.field greylist contentHandler:Lorg/xml/sax/ContentHandler;

.field blacklist dtdHandler:Lorg/xml/sax/DTDHandler;

.field blacklist entityResolver:Lorg/xml/sax/EntityResolver;

.field blacklist errorHandler:Lorg/xml/sax/ErrorHandler;

.field blacklist lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private blacklist processNamespacePrefixes:Z

.field private blacklist processNamespaces:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    .line 73
    return-void
.end method

.method private blacklist parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 322
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    iget-boolean v3, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    move-object v2, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "charsetName":Ljava/lang/String;
    .end local p3    # "publicId":Ljava/lang/String;
    .end local p4    # "systemId":Ljava/lang/String;
    .local v1, "charsetName":Ljava/lang/String;
    .local v4, "publicId":Ljava/lang/String;
    .local v5, "systemId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v0, "parser":Lorg/apache/harmony/xml/ExpatParser;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseDocument(Ljava/io/InputStream;)V

    .line 325
    return-void
.end method

.method private blacklist parse(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 310
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    const-string v1, "UTF-16"

    iget-boolean v3, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "publicId":Ljava/lang/String;
    .end local p3    # "systemId":Ljava/lang/String;
    .local v4, "publicId":Ljava/lang/String;
    .local v5, "systemId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, "parser":Lorg/apache/harmony/xml/ExpatParser;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseDocument(Ljava/io/Reader;)V

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist test-api getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public whitelist test-api getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .line 186
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public whitelist test-api getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public whitelist test-api getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .line 202
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
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

    .line 77
    if-eqz p1, :cond_43

    .line 81
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 82
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 83
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_41

    .line 87
    :cond_1b
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 88
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    return v0

    .line 91
    :cond_26
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 92
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    return v0

    .line 95
    :cond_31
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 96
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_3b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_41
    :goto_41
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .line 212
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
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

    .line 143
    if-eqz p1, :cond_13

    .line 147
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    .line 151
    :cond_d
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isNamespaceProcessingEnabled()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)V
    .registers 3
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 328
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/ExpatReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 329
    return-void
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 8
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    if-nez v0, :cond_9

    goto :goto_11

    .line 266
    :cond_9
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "The \'namespace-prefix\' feature is not supported while the \'namespaces\' feature is enabled."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_11
    :goto_11
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 273
    .local v0, "reader":Ljava/io/Reader;
    if-eqz v0, :cond_2c

    .line 275
    :try_start_17
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_27

    .line 277
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_27
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 278
    throw v1

    .line 283
    :cond_2c
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 284
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_4b

    .line 287
    :try_start_36
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_46

    .line 289
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_46
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 290
    throw v3

    .line 294
    :cond_4b
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "systemId":Ljava/lang/String;
    if-eqz v3, :cond_66

    .line 300
    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 302
    :try_start_55
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v3}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_61

    .line 304
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :catchall_61
    move-exception v4

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 305
    throw v4

    .line 296
    :cond_66
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "No input specified."

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist test-api setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 190
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 191
    return-void
.end method

.method public whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .line 182
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 183
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 174
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 175
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 198
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 199
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 104
    if-eqz p1, :cond_77

    .line 108
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 109
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 110
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_5b

    .line 119
    :cond_1b
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 120
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    .line 121
    return-void

    .line 124
    :cond_26
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 125
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    .line 126
    return-void

    .line 129
    :cond_31
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 130
    if-eqz p2, :cond_3c

    .line 132
    return-void

    .line 134
    :cond_3c
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot disable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_55
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_5b
    :goto_5b
    if-nez p2, :cond_5e

    .line 115
    return-void

    .line 112
    :cond_5e
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .param p1, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .line 232
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 233
    return-void
.end method

.method public blacklist setNamespaceProcessingEnabled(Z)V
    .registers 2
    .param p1, "processNamespaces"    # Z

    .line 254
    iput-boolean p1, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    .line 255
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_25

    .line 160
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 162
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_19

    if-nez p2, :cond_11

    goto :goto_19

    .line 166
    :cond_11
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "value doesn\'t implement org.xml.sax.ext.LexicalHandler"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_19
    :goto_19
    move-object v0, p2

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 164
    return-void

    .line 170
    :cond_1f
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
