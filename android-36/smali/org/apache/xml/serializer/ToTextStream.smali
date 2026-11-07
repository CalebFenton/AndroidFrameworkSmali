.class public Lorg/apache/xml/serializer/ToTextStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToTextStream.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

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

.method public greylist addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist cdata([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 382
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    .line 383
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_c

    .line 384
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCDATAEvent([CII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p0

    .line 388
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist characters(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 574
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 576
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 578
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 579
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->characters([CII)V

    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 203
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->inTemporaryOutputState()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 215
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_14

    .line 219
    :cond_f
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    .line 222
    :goto_14
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1b

    .line 223
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 227
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist charactersRaw([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 248
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 252
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist comment(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 473
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 475
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 477
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 478
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->comment([CII)V

    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 498
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_a

    .line 499
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_a
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

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 89
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushWriter()V

    .line 90
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 91
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireEndDoc()V

    :cond_d
    return-void
.end method

.method public greylist endElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 543
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

    .line 166
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_7

    .line 167
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public greylist entityReference(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 512
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public greylist flushPending()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 628
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_a

    .line 630
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_a
    return-void
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 424
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 428
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
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

    .line 455
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 457
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_a

    .line 458
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method protected greylist startDocumentInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 555
    iget-boolean p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz p1, :cond_7

    .line 556
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    .line 558
    :cond_7
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_11

    .line 559
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_11
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_a

    .line 132
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_a
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

.method greylist writeNormalizedChars([CIIZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    add-int/2addr p3, p2

    :goto_7
    if-ge p2, p3, :cond_7c

    .line 289
    aget-char v2, p1, p2

    const/16 v3, 0xa

    if-ne v3, v2, :cond_1a

    if-eqz p4, :cond_1a

    .line 292
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_79

    .line 294
    :cond_1a
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v3, v2}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 295
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_79

    .line 297
    :cond_26
    invoke-static {v2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v3

    const-string v4, "ER_ILLEGAL_CHARACTER"

    if-eqz v3, :cond_4a

    .line 298
    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    move-result v2

    if-eqz v2, :cond_47

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    sget-object v3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 310
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_47
    add-int/lit8 p2, p2, 0x1

    goto :goto_79

    :cond_4a
    if-eqz v0, :cond_76

    const/16 v3, 0x26

    .line 324
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    const/16 v3, 0x23

    .line 325
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3b

    .line 327
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    sget-object v3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 339
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 344
    :cond_76
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    :goto_79
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_7c
    return-void
.end method
