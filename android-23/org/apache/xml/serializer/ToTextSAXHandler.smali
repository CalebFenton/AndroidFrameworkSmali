.class public final Lorg/apache/xml/serializer/ToTextSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToTextSAXHandler.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    #@3
    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "hdlr"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lex"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p3, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    #@3
    .line 67
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "XSLAttribute"    # Z

    #@0
    .prologue
    .line 191
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 4
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 355
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 357
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@12
    .line 359
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 361
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@19
    iget-object v2, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@1b
    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@1e
    .line 352
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "characters"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@5
    .line 374
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 375
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCharEvent([CII)V

    #@c
    .line 368
    :cond_0
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 90
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 92
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@12
    .line 94
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 95
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    #@19
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->comment([CII)V

    #@1c
    .line 87
    return-void
.end method

.method public comment([CII)V
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
    .line 83
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 84
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCommentEvent([CII)V

    #@7
    .line 81
    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
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
    .line 340
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->flushPending()V

    #@3
    .line 341
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@8
    .line 343
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 344
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndDoc()V

    #@f
    .line 338
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 54
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    #@7
    .line 51
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 64
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    #@7
    .line 61
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    return-void
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "arg0"    # [C
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    return-void
.end method

.method public indent(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 408
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 251
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "arg0"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 260
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .param p1, "escape"    # Z

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setIndent(Z)V
    .locals 0
    .param p1, "indent"    # Z

    #@0
    .prologue
    .line 157
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0
    .param p1, "format"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 164
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "output"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 171
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 178
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;)V

    #@3
    .line 328
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "elementNamespaceURI"    # Ljava/lang/String;
    .param p2, "elementLocalName"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 322
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->flushPending()V

    #@3
    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@6
    .line 279
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "shouldFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    const/4 v0, 0x0

    #@1
    return v0
.end method
