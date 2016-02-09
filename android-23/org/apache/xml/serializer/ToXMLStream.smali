.class public Lorg/apache/xml/serializer/ToXMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToXMLStream.java"


# instance fields
.field private m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    #@3
    .line 51
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    #@5
    const-string/jumbo v1, "xml"

    #@8
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    #@b
    move-result-object v0

    #@c
    .line 50
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    #@e
    .line 58
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@12
    .line 60
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->initCDATA()V

    #@15
    .line 62
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    #@17
    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    #@1a
    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@1c
    .line 56
    return-void
.end method

.method private getXMLVersion()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 617
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getVersion()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 618
    .local v4, "xmlVersion":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@6
    const-string/jumbo v5, "1.0"

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 620
    :cond_0
    const-string/jumbo v4, "1.0"

    #@12
    .line 644
    :goto_0
    return-object v4

    #@13
    .line 622
    :cond_1
    const-string/jumbo v5, "1.1"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 624
    const-string/jumbo v4, "1.1"

    #@1f
    goto :goto_0

    #@20
    .line 628
    :cond_2
    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@22
    .line 629
    const-string/jumbo v6, "ER_XML_VERSION_NOT_SUPPORTED"

    #@25
    const/4 v7, 0x1

    #@26
    new-array v7, v7, [Ljava/lang/Object;

    #@28
    const/4 v8, 0x0

    #@29
    aput-object v4, v7, v8

    #@2b
    .line 628
    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 633
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->getTransformer()Ljavax/xml/transform/Transformer;

    #@32
    move-result-object v3

    #@33
    .line 634
    .local v3, "tran":Ljavax/xml/transform/Transformer;
    invoke-virtual {v3}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@36
    move-result-object v1

    #@37
    .line 636
    .local v1, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_3

    #@39
    iget-object v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@3b
    if-eqz v5, :cond_3

    #@3d
    .line 637
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@3f
    iget-object v6, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@41
    invoke-direct {v5, v2, v6}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@44
    invoke-interface {v1, v5}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 642
    .end local v1    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v3    # "tran":Ljavax/xml/transform/Transformer;
    :goto_1
    const-string/jumbo v4, "1.0"

    #@4a
    goto :goto_0

    #@4b
    .line 639
    .restart local v1    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .restart local v3    # "tran":Ljavax/xml/transform/Transformer;
    :cond_3
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4d
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@50
    goto :goto_1

    #@51
    .line 641
    .end local v1    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v3    # "tran":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    #@52
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private resetToXMLStream()V
    .locals 0

    #@0
    .prologue
    .line 603
    return-void
.end method


# virtual methods
.method public CopyFrom(Lorg/apache/xml/serializer/ToXMLStream;)V
    .locals 2
    .param p1, "xmlListener"    # Lorg/apache/xml/serializer/ToXMLStream;

    #@0
    .prologue
    .line 74
    iget-object v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    #@2
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setWriter(Ljava/io/Writer;)V

    #@5
    .line 78
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 79
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToXMLStream;->setEncoding(Ljava/lang/String;)V

    #@c
    .line 81
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getOmitXMLDeclaration()Z

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setOmitXMLDeclaration(Z)V

    #@13
    .line 83
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    #@15
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    #@17
    .line 84
    iget-object v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@19
    iput-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@1b
    .line 85
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_isprevtext:Z

    #@1d
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_isprevtext:Z

    #@1f
    .line 86
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    #@21
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    #@23
    .line 87
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getIndentAmount()I

    #@26
    move-result v1

    #@27
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setIndentAmount(I)V

    #@2a
    .line 88
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z

    #@2c
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z

    #@2e
    .line 89
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_needToOutputDocTypeDecl:Z

    #@30
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToOutputDocTypeDecl:Z

    #@32
    .line 90
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypeSystem()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setDoctypeSystem(Ljava/lang/String;)V

    #@39
    .line 91
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypePublic()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setDoctypePublic(Ljava/lang/String;)V

    #@40
    .line 92
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getStandalone()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setStandalone(Ljava/lang/String;)V

    #@47
    .line 93
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToXMLStream;->getMediaType()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToXMLStream;->setMediaType(Ljava/lang/String;)V

    #@4e
    .line 94
    iget-object v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@50
    iput-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@52
    .line 95
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_spaceBeforeClose:Z

    #@54
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_spaceBeforeClose:Z

    #@56
    .line 96
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToXMLStream;->m_cdataStartCalled:Z

    #@58
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_cdataStartCalled:Z

    #@5a
    .line 71
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "xslAttribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    iget-object v7, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v7, v7, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v7, :cond_2

    #@6
    .line 441
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToXMLStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@9
    move-result v6

    #@a
    .line 451
    .local v6, "was_added":Z
    if-eqz v6, :cond_0

    #@c
    if-eqz p6, :cond_1

    #@e
    .line 468
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToXMLStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@11
    .line 437
    .end local v6    # "was_added":Z
    :goto_1
    return-void

    #@12
    .line 451
    .restart local v6    # "was_added":Z
    :cond_1
    const-string/jumbo v7, "xmlns"

    #@15
    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v7

    #@19
    if-nez v7, :cond_0

    #@1b
    .line 454
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToXMLStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 458
    .local v3, "prefixUsed":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@21
    .line 459
    if-eqz p3, :cond_0

    #@23
    .line 460
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v7

    #@27
    if-nez v7, :cond_0

    #@29
    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    const-string/jumbo v8, ":"

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object p3

    #@41
    goto :goto_0

    #@42
    .line 486
    .end local v3    # "prefixUsed":Ljava/lang/String;
    .end local v6    # "was_added":Z
    :cond_2
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@44
    .line 487
    const-string/jumbo v8, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    #@47
    const/4 v9, 0x1

    #@48
    new-array v9, v9, [Ljava/lang/Object;

    #@4a
    const/4 v10, 0x0

    #@4b
    aput-object p2, v9, v10

    #@4d
    .line 486
    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 491
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->getTransformer()Ljavax/xml/transform/Transformer;

    #@54
    move-result-object v5

    #@55
    .line 492
    .local v5, "tran":Ljavax/xml/transform/Transformer;
    invoke-virtual {v5}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@58
    move-result-object v1

    #@59
    .line 496
    .local v1, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_3

    #@5b
    iget-object v7, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@5d
    if-eqz v7, :cond_3

    #@5f
    .line 497
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@61
    iget-object v8, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@63
    invoke-direct {v7, v2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@66
    invoke-interface {v1, v7}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    goto :goto_1

    #@6a
    .line 501
    .end local v1    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v5    # "tran":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    #@6b
    .line 507
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@6d
    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@70
    .line 508
    .local v4, "se":Lorg/xml/sax/SAXException;
    throw v4

    #@71
    .line 499
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    .restart local v1    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .restart local v5    # "tran":Ljavax/xml/transform/Transformer;
    :cond_3
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@73
    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    #@76
    goto :goto_1
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 389
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToXMLStream;->patchName(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 390
    .local v1, "patchedName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    #@c
    .line 391
    .local v2, "writer":Ljava/io/Writer;
    and-int/lit8 v3, p3, 0x1

    #@e
    if-lez v3, :cond_1

    #@10
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    #@12
    iget-boolean v3, v3, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 399
    const/16 v3, 0x20

    #@18
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@1b
    .line 400
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    .line 401
    const-string/jumbo v3, "=\""

    #@21
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@24
    .line 402
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 403
    const/16 v3, 0x22

    #@29
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@2c
    .line 382
    .end local v1    # "patchedName":Ljava/lang/String;
    .end local v2    # "writer":Ljava/io/Writer;
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 407
    .restart local v1    # "patchedName":Ljava/lang/String;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    const/16 v3, 0x20

    #@2f
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@32
    .line 408
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@35
    .line 409
    const-string/jumbo v3, "=\""

    #@38
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3b
    .line 410
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/xml/serializer/ToXMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 411
    const/16 v3, 0x22

    #@44
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 413
    .end local v1    # "patchedName":Ljava/lang/String;
    .end local v2    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@49
    .line 414
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@4b
    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@4e
    throw v3
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushPending()V

    #@3
    .line 187
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_isprevtext:Z

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushWriter()V

    #@e
    .line 201
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 202
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    #@15
    .line 184
    :cond_1
    return-void

    #@16
    .line 191
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 194
    :catch_0
    move-exception v0

    #@1b
    .line 195
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@1d
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@20
    throw v1
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
    .line 518
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 516
    return-void
.end method

.method public endPreserving()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    #@b
    .line 233
    return-void

    #@c
    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@e
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    #@11
    move-result v0

    #@12
    goto :goto_0
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 348
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->closeStartTag()V

    #@9
    .line 349
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@b
    const/4 v3, 0x0

    #@c
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@e
    .line 354
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->shouldIndent()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 355
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->indent()V

    #@17
    .line 357
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    #@19
    .line 358
    .local v1, "writer":Ljava/io/Writer;
    const/16 v2, 0x26

    #@1b
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@1e
    .line 359
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21
    .line 360
    const/16 v2, 0x3b

    #@23
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 367
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEntityReference(Ljava/lang/String;)V

    #@2d
    .line 344
    :cond_2
    return-void

    #@2e
    .line 363
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@2f
    .line 364
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@31
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@34
    throw v2
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 537
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@8
    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@a
    invoke-static {v1}, Lorg/apache/xml/serializer/ToXMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 538
    .local v0, "prefix1":Ljava/lang/String;
    if-nez v0, :cond_0

    #@10
    const-string/jumbo v1, ""

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 544
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@1b
    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@1d
    .line 547
    .end local v0    # "prefix1":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToXMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@21
    .line 548
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_inEntityRef:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 255
    return-void

    #@5
    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->flushPending()V

    #@8
    .line 259
    const-string/jumbo v3, "javax.xml.transform.disable-output-escaping"

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 261
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startNonEscaping()V

    #@14
    .line 333
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 334
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 252
    :cond_1
    return-void

    #@1c
    .line 263
    :cond_2
    const-string/jumbo v3, "javax.xml.transform.enable-output-escaping"

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_3

    #@25
    .line 265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->endNonEscaping()V

    #@28
    goto :goto_0

    #@29
    .line 271
    :cond_3
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2b
    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@2d
    if-eqz v3, :cond_9

    #@2f
    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->closeStartTag()V

    #@32
    .line 274
    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@34
    const/4 v4, 0x0

    #@35
    iput-boolean v4, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@37
    .line 279
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->shouldIndent()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_5

    #@3d
    .line 280
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->indent()V

    #@40
    .line 282
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    #@42
    .line 283
    .local v2, "writer":Ljava/io/Writer;
    const-string/jumbo v3, "<?"

    #@45
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@48
    .line 284
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4b
    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4e
    move-result v3

    #@4f
    if-lez v3, :cond_6

    #@51
    .line 287
    const/4 v3, 0x0

    #@52
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v3

    #@56
    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_a

    #@5c
    .line 290
    :cond_6
    :goto_2
    const-string/jumbo v3, "?>"

    #@5f
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@62
    move-result v1

    #@63
    .line 292
    .local v1, "indexOfQLT":I
    if-ltz v1, :cond_b

    #@65
    .line 296
    if-lez v1, :cond_7

    #@67
    .line 298
    const/4 v3, 0x0

    #@68
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6f
    .line 301
    :cond_7
    const-string/jumbo v3, "? >"

    #@72
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@75
    .line 303
    add-int/lit8 v3, v1, 0x2

    #@77
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@7a
    move-result v4

    #@7b
    if-ge v3, v4, :cond_8

    #@7d
    .line 305
    add-int/lit8 v3, v1, 0x2

    #@7f
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@86
    .line 313
    :cond_8
    :goto_3
    const/16 v3, 0x3f

    #@88
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@8b
    .line 314
    const/16 v3, 0x3e

    #@8d
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@90
    .line 325
    const/4 v3, 0x1

    #@91
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    goto :goto_0

    #@94
    .line 328
    .end local v1    # "indexOfQLT":I
    .end local v2    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@95
    .line 329
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@97
    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@9a
    throw v3

    #@9b
    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToCallStartDocument:Z

    #@9d
    if-eqz v3, :cond_4

    #@9f
    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startDocumentInternal()V

    #@a2
    goto :goto_1

    #@a3
    .line 288
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_a
    const/16 v3, 0x20

    #@a5
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@a8
    goto :goto_2

    #@a9
    .line 310
    .restart local v1    # "indexOfQLT":I
    :cond_b
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@ac
    goto :goto_3
.end method

.method protected pushNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    .line 562
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@4
    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@6
    .line 561
    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 564
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToXMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 565
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 569
    :catch_0
    move-exception v0

    #@12
    .line 572
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public reset()Z
    .locals 2

    #@0
    .prologue
    .line 583
    const/4 v0, 0x0

    #@1
    .line 584
    .local v0, "wasReset":Z
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 589
    const/4 v0, 0x1

    #@8
    .line 591
    :cond_0
    return v0
.end method

.method public startDocumentInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 111
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToCallStartDocument:Z

    #@3
    if-eqz v5, :cond_2

    #@5
    .line 113
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@8
    .line 114
    iput-boolean v6, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToCallStartDocument:Z

    #@a
    .line 116
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_inEntityRef:Z

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 117
    return-void

    #@f
    .line 119
    :cond_0
    const/4 v5, 0x1

    #@10
    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_needToOutputDocTypeDecl:Z

    #@12
    .line 120
    iput-boolean v6, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_startNewLine:Z

    #@14
    .line 125
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getXMLVersion()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 126
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getOmitXMLDeclaration()Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_2

    #@1e
    .line 128
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getEncoding()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 131
    .local v1, "encoding":Ljava/lang/String;
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_standaloneWasSpecified:Z

    #@28
    if-eqz v5, :cond_3

    #@2a
    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, " standalone=\""

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getStandalone()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, "\""

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 142
    .local v2, "standalone":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_writer:Ljava/io/Writer;

    #@4b
    .line 143
    .local v4, "writer":Ljava/io/Writer;
    const-string/jumbo v5, "<?xml version=\""

    #@4e
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@51
    .line 144
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@54
    .line 145
    const-string/jumbo v5, "\" encoding=\""

    #@57
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5a
    .line 146
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5d
    .line 147
    const/16 v5, 0x22

    #@5f
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    #@62
    .line 148
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@65
    .line 149
    const-string/jumbo v5, "?>"

    #@68
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6b
    .line 150
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_doIndent:Z

    #@6d
    if-eqz v5, :cond_2

    #@6f
    .line 151
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_standaloneWasSpecified:Z

    #@71
    if-nez v5, :cond_1

    #@73
    .line 152
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypePublic()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    if-eqz v5, :cond_4

    #@79
    .line 163
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_lineSep:[C

    #@7b
    iget v6, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_lineSepLen:I

    #@7d
    const/4 v7, 0x0

    #@7e
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 108
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "standalone":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/Writer;
    :cond_2
    return-void

    #@82
    .line 137
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, ""

    #@85
    .restart local v2    # "standalone":Ljava/lang/String;
    goto :goto_0

    #@86
    .line 153
    .restart local v4    # "writer":Ljava/io/Writer;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getDoctypeSystem()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@89
    move-result-object v5

    #@8a
    if-eqz v5, :cond_2

    #@8c
    goto :goto_1

    #@8d
    .line 168
    .end local v4    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@8e
    .line 169
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/xml/sax/SAXException;

    #@90
    invoke-direct {v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@93
    throw v5
.end method

.method public startPreserving()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 221
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    #@6
    .line 223
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_ispreserve:Z

    #@8
    .line 217
    return-void
.end method
