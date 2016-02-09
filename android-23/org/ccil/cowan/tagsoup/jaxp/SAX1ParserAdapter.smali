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
.field final xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "xr"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 51
    return-void

    #@6
    .line 55
    :catch_0
    move-exception v0

    #@7
    .line 56
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@9
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c
    throw v1
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 41
    return-void

    #@6
    .line 45
    :catch_0
    move-exception v0

    #@7
    .line 46
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@9
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c
    throw v1
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 1
    .param p1, "h"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@5
    .line 68
    return-void
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 2
    .param p1, "h"    # Lorg/xml/sax/DocumentHandler;

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@2
    new-instance v1, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;

    #@4
    invoke-direct {v1, p1}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;-><init>(Lorg/xml/sax/DocumentHandler;)V

    #@7
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@a
    .line 63
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1
    .param p1, "r"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@5
    .line 73
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "h"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@5
    .line 78
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@2
    const-string/jumbo v1, "TagSoup does not implement setLocale() method"

    #@5
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
