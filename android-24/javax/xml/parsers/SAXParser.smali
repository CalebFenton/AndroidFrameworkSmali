.class public abstract Ljavax/xml/parsers/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getParser()Lorg/xml/sax/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 3

    #@0
    .prologue
    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 490
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
    .line 491
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

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
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 492
    const-string/jumbo v2, "\" version \""

    #@21
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 493
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

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
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 494
    const-string/jumbo v2, "\""

    #@38
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 489
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public abstract getXMLReader()Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract isNamespaceAware()Z
.end method

.method public abstract isValidating()Z
.end method

.method public isXIncludeAware()Z
    .locals 3

    #@0
    .prologue
    .line 516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 517
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
    .line 518
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

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
    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 519
    const-string/jumbo v2, "\" version \""

    #@21
    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 520
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

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
    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 521
    const-string/jumbo v2, "\""

    #@38
    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 516
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    if-nez p1, :cond_0

    #@2
    .line 287
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "File cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Ljavax/xml/parsers/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 296
    .local v0, "escapedURI":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/InputSource;

    #@15
    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@18
    .line 297
    .local v1, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v1, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    #@1b
    .line 285
    return-void
.end method

.method public parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    if-nez p1, :cond_0

    #@2
    .line 316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "File cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 319
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Ljavax/xml/parsers/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 325
    .local v0, "escapedURI":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/InputSource;

    #@15
    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@18
    .line 326
    .local v1, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v1, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    #@1b
    .line 314
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    if-nez p1, :cond_0

    #@2
    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputStream cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 130
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 131
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    #@13
    .line 125
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;Ljava/lang/String;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    if-nez p1, :cond_0

    #@2
    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputStream cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 161
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 162
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@13
    .line 163
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    #@16
    .line 156
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    if-nez p1, :cond_0

    #@2
    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputStream cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 186
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 187
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    #@13
    .line 181
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    if-nez p1, :cond_0

    #@2
    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputStream cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 214
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 215
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@13
    .line 216
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    #@16
    .line 209
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/xml/sax/HandlerBase;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    if-nez p1, :cond_0

    #@2
    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "uri cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 241
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@10
    .line 242
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    #@13
    .line 236
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    if-nez p1, :cond_0

    #@2
    .line 262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "uri cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 265
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@10
    .line 266
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    #@13
    .line 260
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .locals 3
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    if-nez p1, :cond_0

    #@2
    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputSource cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 352
    :cond_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    #@e
    move-result-object v0

    #@f
    .line 353
    .local v0, "parser":Lorg/xml/sax/Parser;
    if-eqz p2, :cond_1

    #@11
    .line 354
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    #@14
    .line 355
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@17
    .line 356
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@1a
    .line 357
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@1d
    .line 359
    :cond_1
    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V

    #@20
    .line 347
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 3
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    if-nez p1, :cond_0

    #@2
    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputSource cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 383
    :cond_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    #@e
    move-result-object v0

    #@f
    .line 384
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    if-eqz p2, :cond_1

    #@11
    .line 385
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@14
    .line 386
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@17
    .line 387
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@1a
    .line 388
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@1d
    .line 390
    :cond_1
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@20
    .line 378
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This SAXParser, \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "\", does not support the reset functionality."

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 103
    const-string/jumbo v2, "  Specification \""

    #@24
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 103
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 103
    const-string/jumbo v2, "\""

    #@3b
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 104
    const-string/jumbo v2, " version \""

    #@42
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 104
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getClass()Ljava/lang/Class;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 104
    const-string/jumbo v2, "\""

    #@59
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method
