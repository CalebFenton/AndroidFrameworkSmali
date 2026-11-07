.class public final Lorg/apache/xml/serializer/ToTextSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToTextSAXHandler.java"


# direct methods
.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 0
    return-void
.end method

.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist characters(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 355
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 357
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 359
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 361
    iget-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p1, p0, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 374
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_c

    .line 375
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    :cond_c
    return-void
.end method

.method public greylist comment(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 92
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 94
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 95
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->comment([CII)V

    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 84
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_7
    return-void
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 341
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 343
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 344
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireEndDoc()V

    :cond_f
    return-void
.end method

.method public greylist endElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 54
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_7

    .line 64
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist getOutputFormat()Ljava/util/Properties;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist indent(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 254
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public greylist reset()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist serialize(Lorg/w3c/dom/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setEscaping(Z)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist setIndent(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setOutputFormat(Ljava/util/Properties;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setWriter(Ljava/io/Writer;)V
    .registers 2

    .line 0
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist startElement(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 330
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;)V

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 324
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method
