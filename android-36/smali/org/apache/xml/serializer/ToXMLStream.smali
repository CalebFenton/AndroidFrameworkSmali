.class public Lorg/apache/xml/serializer/ToXMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToXMLStream.java"


# instance fields
.field private greylist m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    .line 50
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v1, "xml"

    .line 51
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 58
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 60
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->initCDATA()V

    .line 62
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method private greylist getXMLVersion()Ljava/lang/String;
    .registers 5

    .line 617
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 618
    const-string v1, "1.0"

    if-eqz v0, :cond_42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_42

    .line 622
    :cond_f
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v2

    .line 628
    :cond_18
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 633
    :try_start_24
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 634
    invoke-virtual {v2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 636
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v3, :cond_3d

    .line 637
    new-instance v3, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v3, v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_42

    .line 639
    :cond_3d
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    :goto_42
    return-object v1
.end method

.method private greylist resetToXMLStream()V
    .registers 1

    .line 0
    return-void
.end method


# virtual methods
.method public greylist CopyFrom(Lorg/apache/xml/serializer/ToXMLStream;)V
    .registers 3

    .line 74
    iget-object v0, p1, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->setWriter(Ljava/io/Writer;)V

    .line 78
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getOmitXMLDeclaration()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOmitXMLDeclaration(Z)V

    .line 83
    iget-boolean v0, p1, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 84
    iget-object v0, p1, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 85
    iget-boolean v0, p1, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 86
    iget-boolean v0, p1, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 87
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToStream;->getIndentAmount()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->setIndentAmount(I)V

    .line 88
    iget-boolean v0, p1, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 89
    iget-boolean v0, p1, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 90
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->setDoctypeSystem(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->setDoctypePublic(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getStandalone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->setStandalone(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->setMediaType(Ljava/lang/String;)V

    .line 94
    iget-object v0, p1, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 95
    iget-boolean v0, p1, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 96
    iget-boolean p1, p1, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_3a

    .line 441
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    if-nez p6, :cond_36

    .line 451
    const-string v0, "xmlns"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 454
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 460
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 464
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 468
    :cond_36
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void

    .line 486
    :cond_3a
    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 491
    :try_start_46
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    .line 492
    invoke-virtual {p2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_5f

    .line 496
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz p3, :cond_5f

    .line 497
    new-instance p3, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {p3, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 499
    :cond_5f
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_64
    .catch Ljavax/xml/transform/TransformerException; {:try_start_46 .. :try_end_64} :catch_65

    return-void

    :catch_65
    move-exception v0

    move-object p0, v0

    .line 507
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 508
    throw p1
.end method

.method public greylist addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_47

    .line 389
    :try_start_6
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_40

    and-int/lit8 p3, p3, 0x1

    const/16 v1, 0x22

    .line 391
    const-string v2, "=\""

    const/16 v3, 0x20

    if-lez p3, :cond_2c

    :try_start_16
    iget-object p3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean p3, p3, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz p3, :cond_2c

    .line 399
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    .line 400
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-void

    .line 407
    :cond_2c
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    .line 408
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/xml/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    .line 414
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_47
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 187
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_16

    .line 191
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_16

    :catch_f
    move-exception p0

    .line 195
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 199
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushWriter()V

    .line 201
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_20

    .line 202
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireEndDoc()V

    :cond_20
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

    .line 518
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist endPreserving()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result v0

    :goto_10
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    return-void
.end method

.method public greylist entityReference(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_e

    .line 348
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 349
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 354
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 355
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 357
    :cond_17
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v1, 0x26

    .line 358
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 359
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3b

    .line 360
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_2e

    .line 367
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_2d

    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_2d
    return-void

    :catch_2e
    move-exception p0

    .line 364
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 537
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 538
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 544
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_1a
    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 254
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_6

    goto/16 :goto_9e

    .line 257
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 259
    const-string v0, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 261
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    goto/16 :goto_97

    .line 263
    :cond_16
    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    goto/16 :goto_97

    .line 271
    :cond_23
    :try_start_23
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 274
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_39

    .line 276
    :cond_32
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_39

    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startDocumentInternal()V

    .line 279
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 280
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 282
    :cond_42
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 283
    const-string v2, "<?"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_61

    .line 287
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_61

    const/16 v2, 0x20

    .line 288
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 290
    :cond_61
    const-string v2, "?>"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_87

    if-lez v2, :cond_72

    .line 298
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 301
    :cond_72
    const-string v1, "? >"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    .line 303
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_8a

    .line 305
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8a

    .line 310
    :cond_87
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    const/16 v1, 0x3f

    .line 313
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    const/16 v1, 0x3e

    .line 314
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_97} :catch_9f

    .line 333
    :goto_97
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_9e

    .line 334
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    :goto_9e
    return-void

    :catch_9f
    move-exception p0

    .line 329
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method protected greylist pushNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 564
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_f} :catch_11

    const/4 p0, 0x1

    return p0

    :catch_11
    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public greylist reset()Z
    .registers 1

    .line 584
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result p0

    return p0
.end method

.method public greylist startDocumentInternal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_8a

    .line 113
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 116
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v1, :cond_10

    goto/16 :goto_8a

    :cond_10
    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 120
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 125
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getXMLVersion()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getOmitXMLDeclaration()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 128
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-eqz v3, :cond_46

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " standalone=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getStandalone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_48

    .line 137
    :cond_46
    const-string v3, ""

    .line 142
    :goto_48
    :try_start_48
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 143
    const-string v5, "<?xml version=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    const-string v1, "\" encoding=\""

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x22

    .line 147
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(I)V

    .line 148
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    const-string v1, "?>"

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v1, :cond_8a

    .line 151
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-nez v1, :cond_7b

    .line 152
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7b

    .line 153
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 163
    :cond_7b
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v4, v1, v0, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_82} :catch_83

    return-void

    :catch_83
    move-exception p0

    .line 169
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_8a
    :goto_8a
    return-void
.end method

.method public greylist startPreserving()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    .line 223
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    return-void
.end method
