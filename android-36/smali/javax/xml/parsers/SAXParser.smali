.class public abstract Ljavax/xml/parsers/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getParser()Lorg/xml/sax/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public whitelist test-api getSchema()Ljavax/xml/validation/Schema;
    .registers 4

    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
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

    .line 493
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

.method public abstract whitelist test-api getXMLReader()Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isNamespaceAware()Z
.end method

.method public abstract whitelist test-api isValidating()Z
.end method

.method public whitelist test-api isXIncludeAware()Z
    .registers 4

    .line 516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
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

    .line 520
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

.method public whitelist test-api parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V
    .registers 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_13

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/parsers/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "escapedURI":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v1, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 298
    return-void

    .line 287
    .end local v0    # "escapedURI":Ljava/lang/String;
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    if-eqz p1, :cond_13

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/parsers/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "escapedURI":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v1, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 327
    return-void

    .line 316
    .end local v0    # "escapedURI":Ljava/lang/String;
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    if-eqz p1, :cond_b

    .line 130
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 131
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 132
    return-void

    .line 127
    .end local v0    # "input":Lorg/xml/sax/InputSource;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;Ljava/lang/String;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    if-eqz p1, :cond_e

    .line 161
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 162
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 164
    return-void

    .line 158
    .end local v0    # "input":Lorg/xml/sax/InputSource;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    if-eqz p1, :cond_b

    .line 186
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 188
    return-void

    .line 183
    .end local v0    # "input":Lorg/xml/sax/InputSource;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    if-eqz p1, :cond_e

    .line 214
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 215
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 217
    return-void

    .line 211
    .end local v0    # "input":Lorg/xml/sax/InputSource;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Lorg/xml/sax/HandlerBase;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    if-eqz p1, :cond_b

    .line 241
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 243
    return-void

    .line 238
    .end local v0    # "input":Lorg/xml/sax/InputSource;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    if-eqz p1, :cond_b

    .line 265
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 267
    return-void

    .line 262
    .end local v0    # "input":Lorg/xml/sax/InputSource;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .registers 5
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    if-eqz p1, :cond_18

    .line 352
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    .line 353
    .local v0, "parser":Lorg/xml/sax/Parser;
    if-eqz p2, :cond_14

    .line 354
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 355
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 356
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 357
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 359
    :cond_14
    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V

    .line 360
    return-void

    .line 349
    .end local v0    # "parser":Lorg/xml/sax/Parser;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputSource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 5
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    if-eqz p1, :cond_18

    .line 383
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 384
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    if-eqz p2, :cond_14

    .line 385
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 386
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 387
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 388
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 390
    :cond_14
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 391
    return-void

    .line 380
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputSource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api reset()V
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This SAXParser, \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", does not support the reset functionality.  Specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
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

    .line 104
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

.method public abstract whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method
