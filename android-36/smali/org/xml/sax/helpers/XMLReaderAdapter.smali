.class public Lorg/xml/sax/helpers/XMLReaderAdapter;
.super Ljava/lang/Object;
.source "XMLReaderAdapter.java"

# interfaces
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;
    }
.end annotation


# instance fields
.field greylist documentHandler:Lorg/xml/sax/DocumentHandler;

.field greylist qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

.field greylist xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xml/sax/helpers/XMLReaderAdapter;->setup(Lorg/xml/sax/XMLReader;)V

    .line 76
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .param p1, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLReaderAdapter;->setup(Lorg/xml/sax/XMLReader;)V

    .line 92
    return-void
.end method

.method private greylist setup(Lorg/xml/sax/XMLReader;)V
    .registers 4
    .param p1, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .line 104
    if-eqz p1, :cond_c

    .line 107
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 108
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    invoke-direct {v0}, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    .line 109
    return-void

    .line 105
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "XMLReader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist setupXMLReader()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 240
    :try_start_8
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_10} :catch_11

    .line 244
    goto :goto_12

    .line 242
    :catch_11
    move-exception v0

    .line 245
    :goto_12
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 376
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    .line 377
    :cond_9
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    .line 295
    :cond_9
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 358
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p3}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    .line 359
    :cond_9
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 318
    return-void
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 394
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    .line 395
    :cond_9
    return-void
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

    .line 204
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLReaderAdapter;->parse(Lorg/xml/sax/InputSource;)V

    .line 205
    return-void
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 3
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLReaderAdapter;->setupXMLReader()V

    .line 227
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 228
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_9
    return-void
.end method

.method public whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .line 155
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 156
    return-void
.end method

.method public whitelist test-api setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/DocumentHandler;

    .line 170
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    .line 171
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 263
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 265
    :cond_9
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 3
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 143
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 144
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 182
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 183
    return-void
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 131
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "setLocale not supported"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 425
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    .line 280
    :cond_9
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_10

    .line 337
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    invoke-virtual {v0, p4}, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 338
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    invoke-interface {v0, p3, v1}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 340
    :cond_10
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 307
    return-void
.end method
