.class public Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;
.super Ljava/lang/Object;
.source "SAX1ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;,
        Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;
    }
.end annotation


# instance fields
.field final greylist xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor greylist <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .param p1, "xr"    # Lorg/xml/sax/XMLReader;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api parse(Ljava/lang/String;)V
    .registers 4
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catch_7
    move-exception v0

    .line 56
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 4
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 47
    nop

    .line 48
    return-void

    .line 45
    :catch_7
    move-exception v0

    .line 46
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 3
    .param p1, "h"    # Lorg/xml/sax/DTDHandler;

    .line 70
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 71
    return-void
.end method

.method public whitelist test-api setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .registers 4
    .param p1, "h"    # Lorg/xml/sax/DocumentHandler;

    .line 65
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;

    invoke-direct {v1, p1}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;-><init>(Lorg/xml/sax/DocumentHandler;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 66
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 3
    .param p1, "r"    # Lorg/xml/sax/EntityResolver;

    .line 75
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 76
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 3
    .param p1, "h"    # Lorg/xml/sax/ErrorHandler;

    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 81
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

    .line 89
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "TagSoup does not implement setLocale() method"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
