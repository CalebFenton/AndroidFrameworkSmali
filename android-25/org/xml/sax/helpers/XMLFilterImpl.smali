.class public Lorg/xml/sax/helpers/XMLFilterImpl;
.super Ljava/lang/Object;
.source "XMLFilterImpl.java"

# interfaces
.implements Lorg/xml/sax/XMLFilter;
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private locator:Lorg/xml/sax/Locator;

.field private parent:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 703
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@6
    .line 704
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    #@8
    .line 705
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@a
    .line 706
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@c
    .line 707
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@e
    .line 708
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@10
    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 703
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@6
    .line 704
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    #@8
    .line 705
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@a
    .line 706
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@c
    .line 707
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@e
    .line 708
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@10
    .line 89
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    #@13
    .line 87
    return-void
.end method

.method private setupParse()V
    .locals 2

    #@0
    .prologue
    .line 688
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 689
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v1, "No parent for filter"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 691
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@f
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@12
    .line 692
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@14
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@17
    .line 693
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@19
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1c
    .line 694
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@1e
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@21
    .line 686
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 563
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@9
    .line 560
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 472
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@9
    .line 469
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 544
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 545
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 542
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 505
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@9
    .line 502
    :cond_0
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 652
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@9
    .line 649
    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 668
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@9
    .line 665
    :cond_0
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 177
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 179
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Feature: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public getParent()Lorg/xml/sax/XMLReader;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 223
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 225
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Property: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 581
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@9
    .line 578
    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 401
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 398
    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    new-instance v0, Lorg/xml/sax/InputSource;

    #@2
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 347
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setupParse()V

    #@3
    .line 332
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@5
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 329
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 598
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 595
    :cond_0
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 374
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 375
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@7
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 377
    :cond_0
    return-object v1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 279
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 259
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    .line 257
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 440
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    #@2
    .line 441
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 442
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@8
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@b
    .line 438
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    .line 235
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 303
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    .line 301
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
    .line 152
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 153
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@9
    .line 150
    return-void

    #@a
    .line 155
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Feature: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    .line 112
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
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
    .line 200
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 201
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 198
    return-void

    #@a
    .line 203
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Property: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 614
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    #@9
    .line 611
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 457
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@9
    .line 454
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 526
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@9
    .line 523
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 489
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 486
    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 421
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 418
    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 636
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    #@9
    .line 633
    :cond_0
    return-void
.end method
