.class public final Lorg/apache/xml/serializer/ToXMLSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToXMLSAXHandler.java"


# instance fields
.field protected m_escapeSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    #@6
    .line 56
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    #@8
    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@d
    .line 57
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    #@10
    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    #@6
    .line 475
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    #@9
    .line 477
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    #@b
    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    #@e
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@10
    .line 471
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lex"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p3, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 485
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    #@6
    .line 487
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    #@9
    .line 489
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    #@b
    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    #@e
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@10
    .line 483
    return-void
.end method

.method private ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 685
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 688
    const-string/jumbo v0, ":"

    #@c
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v8

    #@10
    .local v8, "index":I
    if-gez v8, :cond_1

    #@12
    const/4 v9, 0x1

    #@13
    .line 689
    .local v9, "no_prefix":Z
    :goto_0
    if-eqz v9, :cond_2

    #@15
    const-string/jumbo v10, ""

    #@18
    .line 692
    .local v10, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_0

    #@1a
    .line 694
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@1c
    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    .line 696
    .local v7, "foundURI":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@22
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 682
    .end local v7    # "foundURI":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "no_prefix":Z
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    #@29
    .line 688
    .restart local v8    # "index":I
    :cond_1
    const/4 v9, 0x0

    #@2a
    .restart local v9    # "no_prefix":Z
    goto :goto_0

    #@2b
    .line 689
    :cond_2
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v10

    #@2f
    .restart local v10    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@30
    .line 698
    .restart local v7    # "foundURI":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v10, p1, v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@33
    .line 700
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getShouldOutputNSAttr()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    .line 704
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@3c
    .line 705
    if-eqz v9, :cond_4

    #@3e
    const-string/jumbo v2, "xmlns"

    #@41
    .line 706
    :goto_3
    if-eqz v9, :cond_5

    #@43
    const-string/jumbo v3, "xmlns"

    #@46
    .line 707
    :goto_4
    const-string/jumbo v4, "CDATA"

    #@49
    move-object v0, p0

    #@4a
    move-object v5, p1

    #@4b
    .line 703
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4e
    goto :goto_2

    #@4f
    :cond_4
    move-object v2, v10

    #@50
    .line 705
    goto :goto_3

    #@51
    .line 706
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "xmlns:"

    #@59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    goto :goto_4
.end method

.method private resetToXMLSAXHandler()V
    .locals 1

    #@0
    .prologue
    .line 771
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    #@3
    .line 769
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "XSLAttribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 738
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 740
    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 741
    const/4 v6, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move-object v3, p3

    #@e
    move-object v4, p4

    #@f
    move-object v5, p5

    #@10
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@13
    .line 736
    :cond_0
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
    .line 146
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 463
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 465
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    #@12
    .line 467
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 468
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    #@19
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->characters([CII)V

    #@1c
    .line 460
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 516
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToCallStartDocument:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 518
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startDocumentInternal()V

    #@8
    .line 519
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToCallStartDocument:Z

    #@a
    .line 522
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@c
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 524
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->closeStartTag()V

    #@13
    .line 525
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@15
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@17
    .line 528
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@19
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    #@1b
    if-eqz v0, :cond_2

    #@1d
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 542
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@23
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@26
    .line 545
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 546
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->fireCharEvent([CII)V

    #@2d
    .line 512
    :cond_3
    return-void

    #@2e
    .line 529
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 531
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@34
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@37
    .line 535
    const/4 v0, 0x1

    #@38
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    #@3a
    goto :goto_0
.end method

.method public closeCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 227
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@a
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@d
    .line 235
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    #@10
    .line 222
    return-void
.end method

.method protected closeStartTag()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 196
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3
    const/4 v3, 0x0

    #@4
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@6
    .line 198
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@8
    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@a
    invoke-static {v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 199
    .local v0, "localName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@10
    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 202
    .local v1, "uri":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToCallStartDocument:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 204
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startDocumentInternal()V

    #@1e
    .line 206
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@20
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@22
    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@24
    iget-object v4, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@26
    invoke-interface {v2, v1, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@29
    .line 209
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@2b
    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    #@2e
    .line 211
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 212
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@34
    invoke-interface {v2, v5}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    #@37
    .line 193
    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 1
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
    .line 403
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@3
    .line 404
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 405
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@c
    .line 407
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 408
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCommentEvent([CII)V

    #@13
    .line 401
    :cond_1
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
    .line 153
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
    .line 414
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 445
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@9
    .line 442
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
    .line 180
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@3
    .line 183
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@8
    .line 185
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 186
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndDoc()V

    #@f
    .line 177
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
    const/4 v0, 0x0

    #@1
    .line 555
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 553
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@3
    .line 247
    if-nez p1, :cond_0

    #@5
    .line 249
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_3

    #@b
    .line 250
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@d
    iget-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@f
    .line 255
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    #@11
    .line 257
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@13
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@15
    if-eqz v0, :cond_4

    #@17
    .line 258
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@19
    iget-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@1b
    .line 263
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 265
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 266
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    #@27
    .line 271
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@29
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2b
    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@2d
    .line 272
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@2f
    .line 271
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    #@32
    .line 273
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@34
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@36
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@38
    .line 242
    return-void

    #@39
    .line 252
    :cond_3
    const/4 v0, 0x1

    #@3a
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    #@3d
    move-result-object p1

    #@3e
    goto :goto_0

    #@3f
    .line 260
    :cond_4
    invoke-static {p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object p2

    #@43
    goto :goto_1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
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
    .line 161
    return-void
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
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
    .line 293
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@5
    .line 291
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
    .line 87
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
    .line 169
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 569
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    .line 567
    return-void
.end method

.method protected popNamespace(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespace(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 601
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@a
    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 602
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 606
    :catch_0
    move-exception v0

    #@10
    .line 609
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
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
    .line 580
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@3
    .line 583
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 587
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 588
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 578
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    #@0
    .prologue
    .line 756
    const/4 v0, 0x0

    #@1
    .line 757
    .local v0, "wasReset":Z
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->reset()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 759
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->resetToXMLSAXHandler()V

    #@a
    .line 760
    const/4 v0, 0x1

    #@b
    .line 762
    :cond_0
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
    .line 95
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "arg0"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@5
    .line 299
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 3
    .param p1, "escape"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    #@2
    .line 105
    .local v0, "oldEscapeSetting":Z
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    #@4
    .line 107
    if-eqz p1, :cond_0

    #@6
    .line 108
    const-string/jumbo v1, "javax.xml.transform.enable-output-escaping"

    #@9
    const-string/jumbo v2, ""

    #@c
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 113
    :goto_0
    return v0

    #@10
    .line 110
    :cond_0
    const-string/jumbo v1, "javax.xml.transform.disable-output-escaping"

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    goto :goto_0
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0
    .param p1, "format"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 119
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "output"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 126
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    #@5
    .line 307
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 622
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 624
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@7
    .line 625
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 626
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@d
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@10
    .line 631
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    #@13
    .line 612
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 508
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@4
    .line 506
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
    .line 502
    const/4 v0, 0x0

    #@1
    .line 501
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@4
    .line 499
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    .line 646
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@3
    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@6
    .line 650
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToOutputDocTypeDecl:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 652
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getDoctypeSystem()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 653
    .local v1, "doctypeSystem":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@10
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 655
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getDoctypePublic()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 656
    .local v0, "doctypePublic":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1a
    .line 657
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@1c
    invoke-interface {v2, p3, v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 662
    .end local v0    # "doctypePublic":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@20
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToOutputDocTypeDecl:Z

    #@22
    .line 664
    .end local v1    # "doctypeSystem":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@24
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2a
    .line 668
    if-eqz p1, :cond_2

    #@2c
    .line 669
    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 672
    :cond_2
    if-eqz p4, :cond_3

    #@31
    .line 673
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    #@34
    .line 677
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@36
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->isCdataSection()Z

    #@39
    move-result v3

    #@3a
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    #@3c
    .line 644
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 454
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@9
    .line 451
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
    .line 320
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    .line 318
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
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
    .line 348
    if-eqz p3, :cond_1

    #@2
    .line 350
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    #@5
    .line 352
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@9
    add-int/lit8 v10, v0, 0x1

    #@b
    .line 359
    .local v10, "pushDepth":I
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@d
    invoke-virtual {v0, p1, p2, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    #@10
    move-result v11

    #@11
    .line 361
    .local v11, "pushed":Z
    if-eqz v11, :cond_0

    #@13
    .line 363
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@15
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 365
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getShouldOutputNSAttr()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 374
    const-string/jumbo v0, ""

    #@21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 376
    const-string/jumbo v2, "xmlns"

    #@2a
    .line 377
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@2d
    const-string/jumbo v4, "CDATA"

    #@30
    const/4 v6, 0x0

    #@31
    move-object v0, p0

    #@32
    move-object v3, v2

    #@33
    move-object v5, p2

    #@34
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@37
    .line 394
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return v11

    #@38
    .line 357
    .end local v10    # "pushDepth":I
    .end local v11    # "pushed":Z
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3a
    iget v10, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@3c
    .restart local v10    # "pushDepth":I
    goto :goto_0

    #@3d
    .line 381
    .restart local v11    # "pushed":Z
    :cond_2
    const-string/jumbo v0, ""

    #@40
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_0

    #@46
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v1, "xmlns:"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 389
    .restart local v2    # "name":Ljava/lang/String;
    const-string/jumbo v4, "http://www.w3.org/2000/xmlns/"

    #@5d
    const-string/jumbo v7, "CDATA"

    #@60
    const/4 v9, 0x0

    #@61
    move-object v3, p0

    #@62
    move-object v5, p1

    #@63
    move-object v6, v2

    #@64
    move-object v8, p2

    #@65
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@68
    goto :goto_1
.end method
