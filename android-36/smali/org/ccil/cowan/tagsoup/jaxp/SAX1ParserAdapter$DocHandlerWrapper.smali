.class final Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;
.super Ljava/lang/Object;
.source "SAX1ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DocHandlerWrapper"
.end annotation


# instance fields
.field final greylist docHandler:Lorg/xml/sax/DocumentHandler;

.field final greylist mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;


# direct methods
.method constructor greylist <init>(Lorg/xml/sax/DocumentHandler;)V
    .registers 3
    .param p1, "h"    # Lorg/xml/sax/DocumentHandler;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    .line 111
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    .line 112
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

    .line 117
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    .line 118
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    .line 124
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

    .line 129
    if-nez p3, :cond_3

    .line 130
    move-object p3, p2

    .line 132
    :cond_3
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p3}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 138
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

    .line 143
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    .line 144
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

    .line 149
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 154
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 155
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    .line 166
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 172
    if-nez p3, :cond_3

    .line 173
    move-object p3, p2

    .line 176
    :cond_3
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    invoke-virtual {v0, p4}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 177
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->docHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$DocHandlerWrapper;->mAttrWrapper:Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;

    invoke-interface {v0, p3, v1}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 178
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 183
    return-void
.end method
