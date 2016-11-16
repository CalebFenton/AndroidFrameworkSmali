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
.field private static final LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"


# instance fields
.field contentHandler:Lorg/xml/sax/ContentHandler;

.field dtdHandler:Lorg/xml/sax/DTDHandler;

.field entityResolver:Lorg/xml/sax/EntityResolver;

.field errorHandler:Lorg/xml/sax/ErrorHandler;

.field lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private processNamespacePrefixes:Z

.field private processNamespaces:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@6
    .line 50
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    #@9
    .line 38
    return-void
.end method

.method private parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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

    #@0
    .prologue
    .line 315
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    #@2
    iget-boolean v3, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@4
    move-object v1, p2

    #@5
    move-object v2, p0

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    #@b
    .line 316
    .local v0, "parser":Lorg/apache/harmony/xml/ExpatParser;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseDocument(Ljava/io/InputStream;)V

    #@e
    .line 313
    return-void
.end method

.method private parse(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    #@2
    .line 303
    const-string/jumbo v1, "UTF-16"

    #@5
    .line 305
    iget-boolean v3, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@7
    move-object v2, p0

    #@8
    move-object v4, p2

    #@9
    move-object v5, p3

    #@a
    .line 302
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    #@d
    .line 309
    .local v0, "parser":Lorg/apache/harmony/xml/ExpatParser;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseDocument(Ljava/io/Reader;)V

    #@10
    .line 301
    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    return-object v0
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
    .line 69
    if-nez p1, :cond_0

    #@2
    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 73
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 74
    const-string/jumbo v0, "http://xml.org/sax/features/external-general-entities"

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 73
    if-nez v0, :cond_1

    #@1d
    .line 75
    const-string/jumbo v0, "http://xml.org/sax/features/external-parameter-entities"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 73
    if-eqz v0, :cond_2

    #@26
    .line 76
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0

    #@28
    .line 79
    :cond_2
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 80
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@33
    return v0

    #@34
    .line 83
    :cond_3
    const-string/jumbo v0, "http://xml.org/sax/features/namespace-prefixes"

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 84
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    #@3f
    return v0

    #@40
    .line 87
    :cond_4
    const-string/jumbo v0, "http://xml.org/sax/features/string-interning"

    #@43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_5

    #@49
    .line 88
    const/4 v0, 0x1

    #@4a
    return v0

    #@4b
    .line 91
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@4d
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    return-object v0
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
    .line 135
    if-nez p1, :cond_0

    #@2
    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 139
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 140
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@16
    return-object v0

    #@17
    .line 143
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@19
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
.end method

.method public isNamespaceProcessingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@2
    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    new-instance v0, Lorg/xml/sax/InputSource;

    #@2
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/ExpatReader;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 319
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 6
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    iget-boolean v4, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    iget-boolean v4, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 258
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    #@a
    const-string/jumbo v5, "The \'namespace-prefix\' feature is not supported while the \'namespaces\' feature is enabled."

    #@d
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 264
    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@14
    move-result-object v2

    #@15
    .line 265
    .local v2, "reader":Ljava/io/Reader;
    if-eqz v2, :cond_1

    #@17
    .line 267
    :try_start_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {p0, v2, v4, v5}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 269
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@25
    .line 271
    return-void

    #@26
    .line 268
    :catchall_0
    move-exception v4

    #@27
    .line 269
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2a
    .line 268
    throw v4

    #@2b
    .line 275
    :cond_1
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    #@2e
    move-result-object v1

    #@2f
    .line 276
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 277
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@35
    .line 279
    :try_start_1
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-direct {p0, v1, v0, v4, v5}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@40
    .line 281
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 283
    return-void

    #@44
    .line 280
    :catchall_1
    move-exception v4

    #@45
    .line 281
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 280
    throw v4

    #@49
    .line 286
    :cond_2
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 287
    .local v3, "systemId":Ljava/lang/String;
    if-nez v3, :cond_3

    #@4f
    .line 288
    new-instance v4, Lorg/xml/sax/SAXException;

    #@51
    const-string/jumbo v5, "No input specified."

    #@54
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@57
    throw v4

    #@58
    .line 292
    :cond_3
    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    #@5b
    move-result-object v1

    #@5c
    .line 294
    :try_start_2
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-direct {p0, v1, v0, v4, v3}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@63
    .line 296
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@66
    .line 249
    return-void

    #@67
    .line 295
    :catchall_2
    move-exception v4

    #@68
    .line 296
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6b
    .line 295
    throw v4
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 181
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    .line 173
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 166
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    .line 165
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    .line 189
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
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
    .line 96
    if-nez p1, :cond_0

    #@2
    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 100
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 101
    const-string/jumbo v0, "http://xml.org/sax/features/external-general-entities"

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 100
    if-nez v0, :cond_1

    #@1d
    .line 102
    const-string/jumbo v0, "http://xml.org/sax/features/external-parameter-entities"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 100
    if-eqz v0, :cond_3

    #@26
    .line 103
    :cond_1
    if-eqz p2, :cond_2

    #@28
    .line 104
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Cannot enable "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 107
    :cond_2
    return-void

    #@43
    .line 111
    :cond_3
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_4

    #@4c
    .line 112
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@4e
    .line 113
    return-void

    #@4f
    .line 116
    :cond_4
    const-string/jumbo v0, "http://xml.org/sax/features/namespace-prefixes"

    #@52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_5

    #@58
    .line 117
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    #@5a
    .line 118
    return-void

    #@5b
    .line 121
    :cond_5
    const-string/jumbo v0, "http://xml.org/sax/features/string-interning"

    #@5e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_7

    #@64
    .line 122
    if-eqz p2, :cond_6

    #@66
    .line 124
    return-void

    #@67
    .line 126
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@69
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "Cannot disable "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0

    #@81
    .line 130
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@83
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@86
    throw v0
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    #@0
    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    .line 223
    return-void
.end method

.method public setNamespaceProcessingEnabled(Z)V
    .locals 0
    .param p1, "processNamespaces"    # Z

    #@0
    .prologue
    .line 246
    iput-boolean p1, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    #@2
    .line 245
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    if-nez p1, :cond_0

    #@2
    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 152
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3

    #@14
    .line 154
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    #@16
    if-nez v0, :cond_1

    #@18
    if-nez p2, :cond_2

    #@1a
    .line 155
    :cond_1
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    #@1c
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@1e
    .line 156
    return-void

    #@1f
    .line 158
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@21
    const-string/jumbo v1, "value doesn\'t implement org.xml.sax.ext.LexicalHandler"

    #@24
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 162
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@2a
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
.end method
