.class public Lorg/apache/xml/serializer/ToTextStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToTextStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    #@3
    .line 44
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 586
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
    .line 524
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    return-void
.end method

.method public cdata([CII)V
    .locals 2
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
    .line 382
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    #@2
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    #@5
    .line 383
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 384
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCDATAEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 378
    :cond_0
    return-void

    #@d
    .line 387
    :catch_0
    move-exception v0

    #@e
    .line 388
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@10
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@13
    throw v1
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 574
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 576
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@12
    .line 578
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 579
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@19
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->characters([CII)V

    #@1c
    .line 571
    return-void
.end method

.method public characters([CII)V
    .locals 2
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
    .line 199
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    #@3
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->inTemporaryOutputState()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 215
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_writer:Ljava/io/Writer;

    #@b
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    #@e
    .line 222
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 223
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCharEvent([CII)V

    #@15
    .line 196
    :cond_0
    return-void

    #@16
    .line 219
    :cond_1
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    #@18
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 226
    :catch_0
    move-exception v0

    #@1d
    .line 227
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@1f
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@22
    throw v1
.end method

.method public charactersRaw([CII)V
    .locals 2
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
    .line 248
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    #@2
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 243
    return-void

    #@6
    .line 251
    :catch_0
    move-exception v0

    #@7
    .line 252
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@9
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c
    throw v1
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
    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 473
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 475
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@12
    .line 477
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 478
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    #@19
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->comment([CII)V

    #@1c
    .line 470
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
    .line 497
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    #@3
    .line 498
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 499
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCommentEvent([CII)V

    #@a
    .line 494
    :cond_0
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
    .line 532
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
    .line 88
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    #@3
    .line 89
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushWriter()V

    #@6
    .line 90
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 91
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    #@d
    .line 86
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
    .line 542
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 543
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    #@7
    .line 540
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 167
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    #@7
    .line 164
    :cond_0
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 512
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEntityReference(Ljava/lang/String;)V

    #@7
    .line 509
    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 630
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    #@7
    .line 631
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    #@a
    .line 626
    :cond_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
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
    .line 424
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    #@2
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 419
    return-void

    #@6
    .line 427
    :catch_0
    move-exception v0

    #@7
    .line 428
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@9
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c
    throw v1
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
    .line 621
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
    .line 455
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    #@3
    .line 457
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 458
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 452
    :cond_0
    return-void
.end method

.method protected startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    #@6
    .line 63
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 555
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 556
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    #@7
    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 559
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    #@e
    .line 560
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->firePseudoAttributes()V

    #@11
    .line 563
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    #@7
    .line 133
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->firePseudoAttributes()V

    #@a
    .line 135
    :cond_0
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
    .line 612
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
    .line 607
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method writeNormalizedChars([CIIZ)V
    .locals 13
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "useLineSep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->getEncoding()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 278
    .local v3, "encoding":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/xml/serializer/ToTextStream;->m_writer:Ljava/io/Writer;

    #@6
    .line 279
    .local v8, "writer":Ljava/io/Writer;
    add-int v4, p2, p3

    #@8
    .line 282
    .local v4, "end":I
    const/16 v0, 0xa

    #@a
    .line 288
    .local v0, "S_LINEFEED":C
    move v5, p2

    #@b
    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    #@d
    .line 289
    aget-char v1, p1, v5

    #@f
    .line 291
    .local v1, "c":C
    const/16 v9, 0xa

    #@11
    if-ne v9, v1, :cond_0

    #@13
    if-eqz p4, :cond_0

    #@15
    .line 292
    iget-object v9, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSep:[C

    #@17
    iget v10, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepLen:I

    #@19
    const/4 v11, 0x0

    #@1a
    invoke-virtual {v8, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    #@1d
    .line 288
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 294
    :cond_0
    iget-object v9, p0, Lorg/apache/xml/serializer/ToTextStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@22
    invoke-virtual {v9, v1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_1

    #@28
    .line 295
    invoke-virtual {v8, v1}, Ljava/io/Writer;->write(I)V

    #@2b
    goto :goto_1

    #@2c
    .line 297
    :cond_1
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    #@2f
    move-result v9

    #@30
    if-eqz v9, :cond_3

    #@32
    .line 298
    invoke-virtual {p0, v1, p1, v5, v4}, Lorg/apache/xml/serializer/ToTextStream;->writeUTF16Surrogate(C[CII)I

    #@35
    move-result v2

    #@36
    .line 299
    .local v2, "codePoint":I
    if-eqz v2, :cond_2

    #@38
    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 303
    .local v6, "integralValue":Ljava/lang/String;
    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@3e
    .line 304
    const-string/jumbo v10, "ER_ILLEGAL_CHARACTER"

    #@41
    .line 305
    const/4 v11, 0x2

    #@42
    new-array v11, v11, [Ljava/lang/Object;

    #@44
    const/4 v12, 0x0

    #@45
    aput-object v6, v11, v12

    #@47
    const/4 v12, 0x1

    #@48
    aput-object v3, v11, v12

    #@4a
    .line 303
    invoke-virtual {v9, v10, v11}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 310
    .local v7, "msg":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@50
    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    .line 313
    .end local v6    # "integralValue":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@55
    goto :goto_1

    #@56
    .line 318
    .end local v2    # "codePoint":I
    :cond_3
    if-eqz v3, :cond_4

    #@58
    .line 324
    const/16 v9, 0x26

    #@5a
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    #@5d
    .line 325
    const/16 v9, 0x23

    #@5f
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    #@62
    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@69
    .line 327
    const/16 v9, 0x3b

    #@6b
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    #@6e
    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    .line 332
    .restart local v6    # "integralValue":Ljava/lang/String;
    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@74
    .line 333
    const-string/jumbo v10, "ER_ILLEGAL_CHARACTER"

    #@77
    .line 334
    const/4 v11, 0x2

    #@78
    new-array v11, v11, [Ljava/lang/Object;

    #@7a
    const/4 v12, 0x0

    #@7b
    aput-object v6, v11, v12

    #@7d
    const/4 v12, 0x1

    #@7e
    aput-object v3, v11, v12

    #@80
    .line 332
    invoke-virtual {v9, v10, v11}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    .line 339
    .restart local v7    # "msg":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@86
    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@89
    goto :goto_1

    #@8a
    .line 344
    .end local v6    # "integralValue":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v1}, Ljava/io/Writer;->write(I)V

    #@8d
    goto :goto_1

    #@8e
    .line 275
    .end local v1    # "c":C
    :cond_5
    return-void
.end method
