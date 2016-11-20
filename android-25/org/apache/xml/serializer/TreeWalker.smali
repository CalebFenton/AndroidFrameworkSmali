.class public final Lorg/apache/xml/serializer/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private final m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private final m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected final m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field private final m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    #@4
    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 4
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 68
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    #@6
    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@b
    .line 231
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    #@e
    .line 91
    iput-object p1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@10
    .line 92
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    instance-of v1, v1, Lorg/apache/xml/serializer/SerializationHandler;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 93
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@18
    check-cast v1, Lorg/apache/xml/serializer/SerializationHandler;

    #@1a
    iput-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@1c
    .line 99
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1e
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@20
    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@23
    .line 100
    if-eqz p2, :cond_2

    #@25
    .line 101
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@27
    invoke-virtual {v1, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@2a
    .line 112
    :goto_1
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 113
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@30
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@32
    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@35
    .line 116
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "user.dir"

    #@3f
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    const-string/jumbo v3, "dummy.xsl"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@5b
    .line 121
    :goto_2
    new-instance v1, Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@5d
    invoke-direct {v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;-><init>()V

    #@60
    iput-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@62
    .line 88
    return-void

    #@63
    .line 96
    :cond_1
    iput-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@65
    goto :goto_0

    #@66
    .line 105
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@68
    new-instance v2, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v3, "user.dir"

    #@70
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    const-string/jumbo v3, "dummy.xsl"

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@8c
    goto :goto_1

    #@8d
    .line 107
    :catch_0
    move-exception v0

    #@8e
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_1

    #@8f
    .line 118
    .end local v0    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@90
    .restart local v0    # "se":Ljava/lang/SecurityException;
    goto :goto_2
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 241
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@6
    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    #@9
    .line 237
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-void

    #@a
    .line 245
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    #@c
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 246
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v1, v2, v4, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@1e
    goto :goto_0
.end method


# virtual methods
.method protected endNode(Lorg/w3c/dom/Node;)V
    .locals 16
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v13

    #@4
    packed-switch v13, :pswitch_data_0

    #@7
    .line 448
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 457
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v13, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@11
    move-result-object v10

    #@12
    .line 458
    .local v10, "ns":Ljava/lang/String;
    if-nez v10, :cond_1

    #@14
    .line 459
    const-string/jumbo v10, ""

    #@17
    .line 460
    :cond_1
    move-object/from16 v0, p0

    #@19
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1b
    .line 461
    move-object/from16 v0, p0

    #@1d
    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-virtual {v14, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@24
    move-result-object v14

    #@25
    .line 462
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@28
    move-result-object v15

    #@29
    .line 460
    invoke-interface {v13, v10, v14, v15}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 464
    move-object/from16 v0, p0

    #@2e
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@30
    if-nez v13, :cond_0

    #@32
    move-object/from16 v5, p1

    #@34
    .line 468
    check-cast v5, Lorg/w3c/dom/Element;

    #@36
    .line 469
    .local v5, "elem_node":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@39
    move-result-object v3

    #@3a
    .line 470
    .local v3, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@3d
    move-result v9

    #@3e
    .line 474
    .local v9, "nAttrs":I
    add-int/lit8 v7, v9, -0x1

    #@40
    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_6

    #@42
    .line 476
    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@45
    move-result-object v1

    #@46
    .line 477
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 478
    .local v2, "attrName":Ljava/lang/String;
    const/16 v13, 0x3a

    #@4c
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    #@4f
    move-result v4

    #@50
    .line 481
    .local v4, "colon":I
    const-string/jumbo v13, "xmlns"

    #@53
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v13

    #@57
    if-nez v13, :cond_2

    #@59
    const-string/jumbo v13, "xmlns:"

    #@5c
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5f
    move-result v13

    #@60
    if-eqz v13, :cond_5

    #@62
    .line 486
    :cond_2
    if-gez v4, :cond_4

    #@64
    .line 487
    const-string/jumbo v11, ""

    #@67
    .line 491
    .local v11, "prefix":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6b
    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@6e
    .line 474
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x1

    #@70
    goto :goto_1

    #@71
    .line 489
    :cond_4
    add-int/lit8 v13, v4, 0x1

    #@73
    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@76
    move-result-object v11

    #@77
    .restart local v11    # "prefix":Ljava/lang/String;
    goto :goto_2

    #@78
    .line 493
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_5
    if-lez v4, :cond_3

    #@7a
    .line 494
    const/4 v13, 0x0

    #@7b
    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7e
    move-result-object v11

    #@7f
    .line 495
    .restart local v11    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@81
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@83
    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@86
    goto :goto_3

    #@87
    .line 499
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_6
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    #@8a
    move-result-object v12

    #@8b
    .line 500
    .local v12, "uri":Ljava/lang/String;
    if-eqz v12, :cond_0

    #@8d
    .line 501
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    .line 502
    .restart local v11    # "prefix":Ljava/lang/String;
    if-nez v11, :cond_7

    #@93
    .line 503
    const-string/jumbo v11, ""

    #@96
    .line 504
    :cond_7
    move-object/from16 v0, p0

    #@98
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@9a
    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@9d
    goto/16 :goto_0

    #@9f
    .end local v3    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "elem_node":Lorg/w3c/dom/Element;
    .end local v7    # "i":I
    .end local v9    # "nAttrs":I
    .end local v10    # "ns":Ljava/lang/String;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v6, p1

    #@a1
    .line 513
    check-cast v6, Lorg/w3c/dom/EntityReference;

    #@a3
    .line 515
    .local v6, "eref":Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    #@a5
    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@a7
    instance-of v13, v13, Lorg/xml/sax/ext/LexicalHandler;

    #@a9
    if-eqz v13, :cond_0

    #@ab
    .line 517
    move-object/from16 v0, p0

    #@ad
    iget-object v8, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@af
    check-cast v8, Lorg/xml/sax/ext/LexicalHandler;

    #@b1
    .line 519
    .local v8, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v6}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@b4
    move-result-object v13

    #@b5
    invoke-interface {v8, v13}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@b8
    goto/16 :goto_0

    #@ba
    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 27
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    move-object/from16 v0, p1

    #@2
    instance-of v0, v0, Lorg/xml/sax/Locator;

    #@4
    move/from16 v22, v0

    #@6
    if-eqz v22, :cond_1

    #@8
    move-object/from16 v15, p1

    #@a
    .line 273
    check-cast v15, Lorg/xml/sax/Locator;

    #@c
    .line 274
    .local v15, "loc":Lorg/xml/sax/Locator;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@10
    move-object/from16 v22, v0

    #@12
    invoke-interface {v15}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@15
    move-result v23

    #@16
    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@19
    .line 275
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@1d
    move-object/from16 v22, v0

    #@1f
    invoke-interface {v15}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@22
    move-result v23

    #@23
    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@26
    .line 276
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@2a
    move-object/from16 v22, v0

    #@2c
    invoke-interface {v15}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@2f
    move-result-object v23

    #@30
    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    #@33
    .line 277
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@37
    move-object/from16 v22, v0

    #@39
    invoke-interface {v15}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@3c
    move-result-object v23

    #@3d
    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@40
    .line 285
    .end local v15    # "loc":Lorg/xml/sax/Locator;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@43
    move-result v22

    #@44
    packed-switch v22, :pswitch_data_0

    #@47
    .line 258
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    #@48
    .line 281
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@4c
    move-object/from16 v22, v0

    #@4e
    const/16 v23, 0x0

    #@50
    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@53
    .line 282
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@57
    move-object/from16 v22, v0

    #@59
    const/16 v23, 0x0

    #@5b
    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@5e
    goto :goto_0

    #@5f
    .line 289
    :pswitch_1
    check-cast p1, Lorg/w3c/dom/Comment;

    #@61
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    #@64
    move-result-object v9

    #@65
    .line 291
    .local v9, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@69
    move-object/from16 v22, v0

    #@6b
    move-object/from16 v0, v22

    #@6d
    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    #@6f
    move/from16 v22, v0

    #@71
    if-eqz v22, :cond_0

    #@73
    .line 293
    move-object/from16 v0, p0

    #@75
    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@77
    check-cast v14, Lorg/xml/sax/ext/LexicalHandler;

    #@79
    .line 295
    .local v14, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    #@7c
    move-result-object v22

    #@7d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@80
    move-result v23

    #@81
    const/16 v24, 0x0

    #@83
    move-object/from16 v0, v22

    #@85
    move/from16 v1, v24

    #@87
    move/from16 v2, v23

    #@89
    invoke-interface {v14, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@8c
    goto :goto_1

    #@8d
    .end local v9    # "data":Ljava/lang/String;
    .end local v14    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    move-object/from16 v10, p1

    #@8f
    .line 307
    check-cast v10, Lorg/w3c/dom/Element;

    #@91
    .line 312
    .local v10, "elem_node":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    #@94
    move-result-object v21

    #@95
    .line 313
    .local v21, "uri":Ljava/lang/String;
    if-eqz v21, :cond_3

    #@97
    .line 314
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    #@9a
    move-result-object v20

    #@9b
    .line 315
    .local v20, "prefix":Ljava/lang/String;
    if-nez v20, :cond_2

    #@9d
    .line 316
    const-string/jumbo v20, ""

    #@a0
    .line 317
    :cond_2
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@a4
    move-object/from16 v22, v0

    #@a6
    move-object/from16 v0, v22

    #@a8
    move-object/from16 v1, v20

    #@aa
    move-object/from16 v2, v21

    #@ac
    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    .line 320
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@b2
    move-result-object v7

    #@b3
    .line 321
    .local v7, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@b6
    move-result v16

    #@b7
    .line 327
    .local v16, "nAttrs":I
    const/4 v12, 0x0

    #@b8
    .local v12, "i":I
    :goto_2
    move/from16 v0, v16

    #@ba
    if-ge v12, v0, :cond_8

    #@bc
    .line 329
    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@bf
    move-result-object v5

    #@c0
    .line 330
    .local v5, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@c3
    move-result-object v6

    #@c4
    .line 331
    .local v6, "attrName":Ljava/lang/String;
    const/16 v22, 0x3a

    #@c6
    move/from16 v0, v22

    #@c8
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    #@cb
    move-result v8

    #@cc
    .line 335
    .local v8, "colon":I
    const-string/jumbo v22, "xmlns"

    #@cf
    move-object/from16 v0, v22

    #@d1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v22

    #@d5
    if-nez v22, :cond_4

    #@d7
    const-string/jumbo v22, "xmlns:"

    #@da
    move-object/from16 v0, v22

    #@dc
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@df
    move-result v22

    #@e0
    if-eqz v22, :cond_7

    #@e2
    .line 340
    :cond_4
    if-gez v8, :cond_6

    #@e4
    .line 341
    const-string/jumbo v20, ""

    #@e7
    .line 345
    .restart local v20    # "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@eb
    move-object/from16 v22, v0

    #@ed
    .line 346
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@f0
    move-result-object v23

    #@f1
    .line 345
    move-object/from16 v0, v22

    #@f3
    move-object/from16 v1, v20

    #@f5
    move-object/from16 v2, v23

    #@f7
    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@fa
    .line 327
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    #@fc
    goto :goto_2

    #@fd
    .line 343
    :cond_6
    add-int/lit8 v22, v8, 0x1

    #@ff
    move/from16 v0, v22

    #@101
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@104
    move-result-object v20

    #@105
    .restart local v20    # "prefix":Ljava/lang/String;
    goto :goto_3

    #@106
    .line 348
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_7
    if-lez v8, :cond_5

    #@108
    .line 349
    const/16 v22, 0x0

    #@10a
    move/from16 v0, v22

    #@10c
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10f
    move-result-object v20

    #@110
    .line 350
    .restart local v20    # "prefix":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@113
    move-result-object v21

    #@114
    .line 351
    if-eqz v21, :cond_5

    #@116
    .line 352
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@11a
    move-object/from16 v22, v0

    #@11c
    move-object/from16 v0, v22

    #@11e
    move-object/from16 v1, v20

    #@120
    move-object/from16 v2, v21

    #@122
    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@125
    goto :goto_4

    #@126
    .line 356
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v8    # "colon":I
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@128
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@12a
    move-object/from16 v22, v0

    #@12c
    move-object/from16 v0, v22

    #@12e
    move-object/from16 v1, p1

    #@130
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@133
    move-result-object v18

    #@134
    .line 357
    .local v18, "ns":Ljava/lang/String;
    if-nez v18, :cond_9

    #@136
    .line 358
    const-string/jumbo v18, ""

    #@139
    .line 359
    :cond_9
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@13d
    move-object/from16 v22, v0

    #@13f
    .line 360
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@143
    move-object/from16 v23, v0

    #@145
    move-object/from16 v0, v23

    #@147
    move-object/from16 v1, p1

    #@149
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@14c
    move-result-object v23

    #@14d
    .line 361
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@150
    move-result-object v24

    #@151
    .line 362
    new-instance v25, Lorg/apache/xml/serializer/utils/AttList;

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    #@157
    move-object/from16 v26, v0

    #@159
    move-object/from16 v0, v25

    #@15b
    move-object/from16 v1, v26

    #@15d
    invoke-direct {v0, v7, v1}, Lorg/apache/xml/serializer/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V

    #@160
    .line 359
    move-object/from16 v0, v22

    #@162
    move-object/from16 v1, v18

    #@164
    move-object/from16 v2, v23

    #@166
    move-object/from16 v3, v24

    #@168
    move-object/from16 v4, v25

    #@16a
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@16d
    goto/16 :goto_1

    #@16f
    .end local v7    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "elem_node":Lorg/w3c/dom/Element;
    .end local v12    # "i":I
    .end local v16    # "nAttrs":I
    .end local v18    # "ns":Ljava/lang/String;
    .end local v21    # "uri":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v19, p1

    #@171
    .line 366
    check-cast v19, Lorg/w3c/dom/ProcessingInstruction;

    #@173
    .line 367
    .local v19, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    #@176
    move-result-object v17

    #@177
    .line 370
    .local v17, "name":Ljava/lang/String;
    const-string/jumbo v22, "xslt-next-is-raw"

    #@17a
    move-object/from16 v0, v17

    #@17c
    move-object/from16 v1, v22

    #@17e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@181
    move-result v22

    #@182
    if-eqz v22, :cond_a

    #@184
    .line 372
    const/16 v22, 0x1

    #@186
    move/from16 v0, v22

    #@188
    move-object/from16 v1, p0

    #@18a
    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    #@18c
    goto/16 :goto_1

    #@18e
    .line 376
    :cond_a
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@192
    move-object/from16 v22, v0

    #@194
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    #@197
    move-result-object v23

    #@198
    .line 377
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    #@19b
    move-result-object v24

    #@19c
    .line 376
    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@19f
    goto/16 :goto_1

    #@1a1
    .line 383
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_4
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1a5
    move-object/from16 v22, v0

    #@1a7
    move-object/from16 v0, v22

    #@1a9
    instance-of v13, v0, Lorg/xml/sax/ext/LexicalHandler;

    #@1ab
    .line 384
    .local v13, "isLexH":Z
    if-eqz v13, :cond_c

    #@1ad
    .line 385
    move-object/from16 v0, p0

    #@1af
    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1b1
    check-cast v14, Lorg/xml/sax/ext/LexicalHandler;

    #@1b3
    .line 387
    :goto_5
    if-eqz v13, :cond_b

    #@1b5
    .line 389
    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@1b8
    .line 392
    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@1bb
    .line 395
    if-eqz v13, :cond_0

    #@1bd
    .line 397
    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@1c0
    goto/16 :goto_1

    #@1c2
    .line 385
    :cond_c
    const/4 v14, 0x0

    #@1c3
    .local v14, "lh":Lorg/xml/sax/ext/LexicalHandler;
    goto :goto_5

    #@1c4
    .line 406
    .end local v13    # "isLexH":Z
    .end local v14    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :pswitch_5
    move-object/from16 v0, p0

    #@1c6
    iget-boolean v0, v0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    #@1c8
    move/from16 v22, v0

    #@1ca
    if-eqz v22, :cond_d

    #@1cc
    .line 408
    const/16 v22, 0x0

    #@1ce
    move/from16 v0, v22

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    #@1d4
    .line 410
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1d8
    move-object/from16 v22, v0

    #@1da
    const-string/jumbo v23, "javax.xml.transform.disable-output-escaping"

    #@1dd
    const-string/jumbo v24, ""

    #@1e0
    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@1e3
    .line 411
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@1e6
    .line 412
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1ea
    move-object/from16 v22, v0

    #@1ec
    const-string/jumbo v23, "javax.xml.transform.enable-output-escaping"

    #@1ef
    const-string/jumbo v24, ""

    #@1f2
    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@1f5
    goto/16 :goto_1

    #@1f7
    .line 416
    :cond_d
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@1fa
    goto/16 :goto_1

    #@1fc
    :pswitch_6
    move-object/from16 v11, p1

    #@1fe
    .line 422
    check-cast v11, Lorg/w3c/dom/EntityReference;

    #@200
    .line 424
    .local v11, "eref":Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@204
    move-object/from16 v22, v0

    #@206
    move-object/from16 v0, v22

    #@208
    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    #@20a
    move/from16 v22, v0

    #@20c
    if-eqz v22, :cond_0

    #@20e
    .line 426
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@212
    move-object/from16 v22, v0

    #@214
    check-cast v22, Lorg/xml/sax/ext/LexicalHandler;

    #@216
    .line 427
    invoke-interface {v11}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@219
    move-result-object v23

    #@21a
    .line 426
    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@21d
    goto/16 :goto_1

    #@21f
    .line 285
    nop

    #@220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@5
    .line 141
    move-object v1, p1

    #@6
    .line 143
    .local v1, "top":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz p1, :cond_5

    #@8
    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    #@b
    .line 147
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@e
    move-result-object v0

    #@f
    .line 149
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v0, :cond_1

    #@11
    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@14
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 174
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    move-object p1, v0

    #@1b
    goto :goto_0

    #@1c
    .line 156
    .restart local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@1f
    move-result-object v0

    #@20
    .line 158
    if-nez v0, :cond_0

    #@22
    .line 160
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@25
    move-result-object p1

    #@26
    .line 162
    if-eqz p1, :cond_3

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 164
    :cond_3
    if-eqz p1, :cond_4

    #@30
    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@33
    .line 167
    :cond_4
    const/4 v0, 0x0

    #@34
    .line 169
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    goto :goto_1

    #@35
    .line 176
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@37
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@3a
    .line 136
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .param p2, "top"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@5
    .line 197
    :goto_0
    if-eqz p1, :cond_4

    #@7
    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    #@a
    .line 201
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@d
    move-result-object v0

    #@e
    .line 203
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v0, :cond_1

    #@10
    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@13
    .line 207
    if-eqz p2, :cond_2

    #@15
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 225
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    move-object p1, v0

    #@1c
    goto :goto_0

    #@1d
    .line 210
    .restart local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@20
    move-result-object v0

    #@21
    .line 212
    if-nez v0, :cond_0

    #@23
    .line 214
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@26
    move-result-object p1

    #@27
    .line 216
    if-eqz p1, :cond_3

    #@29
    if-eqz p2, :cond_0

    #@2b
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 218
    :cond_3
    const/4 v0, 0x0

    #@32
    .line 220
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    goto :goto_1

    #@33
    .line 227
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@35
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@38
    .line 192
    return-void
.end method
