.class public final Lorg/apache/xml/serializer/ToXMLSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToXMLSAXHandler.java"


# instance fields
.field protected greylist m_escapeSetting:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 56
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 57
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->initCDATA()V

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 3

    .line 473
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 475
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->initCDATA()V

    .line 477
    new-instance p1, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {p1}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .registers 4

    .line 485
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 487
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->initCDATA()V

    .line 489
    new-instance p1, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {p1}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method private greylist ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_5d

    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5d

    .line 688
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eqz v2, :cond_19

    .line 689
    const-string p2, ""

    goto :goto_1d

    :cond_19
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_1d
    if-eqz p2, :cond_5d

    .line 694
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 696
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 698
    :cond_2d
    invoke-virtual {p0, p2, p1, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 700
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getShouldOutputNSAttr()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 705
    const-string v0, "xmlns"

    if-eqz v2, :cond_3c

    move-object v5, v0

    goto :goto_3d

    :cond_3c
    move-object v5, p2

    :goto_3d
    if-eqz v2, :cond_41

    :goto_3f
    move-object v6, v0

    goto :goto_53

    .line 706
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :goto_53
    const-string v7, "CDATA"

    const/4 v9, 0x0

    .line 703
    const-string v4, "http://www.w3.org/2000/xmlns/"

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_5d
    return-void
.end method

.method private greylist resetToXMLSAXHandler()V
    .registers 2

    const/4 v0, 0x1

    .line 771
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    return-void
.end method


# virtual methods
.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 738
    iget-object p6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean p6, p6, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz p6, :cond_13

    .line 740
    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 741
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_13
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

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 463
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 465
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 467
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 468
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->characters([CII)V

    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 516
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 518
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->startDocumentInternal()V

    .line 519
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 522
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_17

    .line 524
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->closeStartTag()V

    .line 525
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 528
    :cond_17
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2b

    .line 531
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 542
    :cond_2b
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 545
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_37

    .line 546
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    :cond_37
    return-void
.end method

.method public greylist closeCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v1, :cond_b

    .line 227
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_b
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    return-void
.end method

.method protected greylist closeStartTag()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 198
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_1b

    .line 204
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->startDocumentInternal()V

    .line 206
    :cond_1b
    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v2, v1, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 209
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 211
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz p0, :cond_33

    const/4 v0, 0x0

    .line 212
    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    :cond_33
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 404
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_a

    .line 405
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 407
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_11

    .line 408
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_11
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

    .line 444
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 445
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_7
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 183
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 185
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 186
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

    const/4 v0, 0x0

    .line 555
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    if-nez p1, :cond_11

    .line 249
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-eqz p1, :cond_c

    goto :goto_11

    :cond_c
    const/4 p1, 0x1

    .line 252
    invoke-virtual {p0, p3, p1}, Lorg/apache/xml/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_11
    :goto_11
    if-nez p2, :cond_1e

    .line 257
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p2, p2, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-eqz p2, :cond_1a

    goto :goto_1e

    .line 260
    :cond_1a
    invoke-static {p3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_2a

    .line 266
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    .line 271
    :cond_2a
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget p2, p2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    iget-object p3, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1, p2, p3}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    .line 273
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

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

    .line 293
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method protected greylist popNamespace(Ljava/lang/String;)Z
    .registers 3

    .line 599
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 601
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 583
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 588
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public greylist reset()Z
    .registers 2

    .line 757
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->reset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 759
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->resetToXMLSAXHandler()V

    const/4 p0, 0x1

    return p0

    :cond_b
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

    .line 301
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public greylist setEscaping(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 105
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 107
    const-string v1, ""

    if-eqz p1, :cond_e

    .line 108
    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 110
    :cond_e
    const-string p1, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return v0
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

    .line 309
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 622
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v0, :cond_11

    .line 624
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 625
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_11

    .line 626
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    const/4 v0, 0x1

    .line 631
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_11
    return-void
.end method

.method public greylist startElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 650
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v0, :cond_20

    .line 652
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 653
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1d

    .line 655
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    .line 657
    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, p3, v1, v0}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v0, 0x0

    .line 662
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 664
    :cond_20
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    if-eqz p1, :cond_2d

    .line 669
    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz p4, :cond_32

    .line 673
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 677
    :cond_32
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->isCdataSection()Z

    move-result p0

    iput-boolean p0, p1, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 453
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 454
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public greylist startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_c

    .line 350
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 352
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 357
    :cond_c
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    .line 359
    :goto_10
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v3, p1, p2, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 363
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getShouldOutputNSAttr()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 374
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 377
    const-string v4, "CDATA"

    const/4 v6, 0x0

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    move-object v3, v2

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    return v7

    .line 381
    :cond_39
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    const-string v4, "CDATA"

    const/4 v6, 0x0

    const-string v1, "http://www.w3.org/2000/xmlns/"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_5b
    return v7
.end method
