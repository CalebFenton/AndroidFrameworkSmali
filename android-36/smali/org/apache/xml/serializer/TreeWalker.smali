.class public final Lorg/apache/xml/serializer/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private final greylist m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private final greylist m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected final greylist m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field private final greylist m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field greylist nextIsRaw:Z


# direct methods
.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 3

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 6

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v1, 0x0

    .line 231
    iput-boolean v1, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    .line 91
    iput-object p1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 92
    instance-of v1, p1, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_19

    .line 93
    move-object v1, p1

    check-cast v1, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    goto :goto_1c

    :cond_19
    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 99
    :goto_1c
    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 100
    const-string p1, "dummy.xsl"

    const-string v1, "user.dir"

    if-eqz p2, :cond_29

    .line 101
    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_44

    .line 105
    :cond_29
    :try_start_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_44} :catch_44

    .line 112
    :catch_44
    :goto_44
    iget-object p2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_4d

    .line 113
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {p2, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 116
    :cond_4d
    :try_start_4d
    iget-object p2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_6a} :catch_6a

    .line 121
    :catch_6a
    new-instance p1, Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-direct {p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    return-void
.end method

.method private final greylist dispatachChars(Lorg/w3c/dom/Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_8

    .line 241
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->characters(Lorg/w3c/dom/Node;)V

    return-void

    .line 245
    :cond_8
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method


# virtual methods
.method protected greylist endNode(Lorg/w3c/dom/Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 451
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    goto/16 :goto_9a

    .line 513
    :cond_c
    check-cast p1, Lorg/w3c/dom/EntityReference;

    .line 515
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9a

    .line 517
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 519
    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    return-void

    .line 457
    :cond_1e
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v2, ""

    if-nez v0, :cond_29

    move-object v0, v2

    .line 460
    :cond_29
    iget-object v3, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v4, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    .line 461
    invoke-virtual {v4, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 462
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-interface {v3, v0, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v0, :cond_9a

    .line 468
    check-cast p1, Lorg/w3c/dom/Element;

    .line 469
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_47
    if-ltz v3, :cond_87

    .line 476
    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 477
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3a

    .line 478
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 481
    const-string v5, "xmlns"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    const-string v5, "xmlns:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_75

    :cond_68
    if-lez v4, :cond_84

    const/4 v5, 0x0

    .line 494
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 495
    iget-object v4, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_84

    :cond_75
    :goto_75
    if-gez v4, :cond_79

    move-object v1, v2

    goto :goto_7f

    :cond_79
    add-int/lit8 v4, v4, 0x1

    .line 489
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    :goto_7f
    iget-object v4, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_84
    :goto_84
    add-int/lit8 v3, v3, -0x1

    goto :goto_47

    .line 499
    :cond_87
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 501
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_94

    goto :goto_95

    :cond_94
    move-object v2, p1

    .line 504
    :goto_95
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public greylist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1

    .line 77
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method protected greylist startNode(Lorg/w3c/dom/Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 271
    instance-of v0, p1, Lorg/xml/sax/Locator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 273
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/Locator;

    .line 274
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 275
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 276
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_37

    .line 281
    :cond_2d
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 282
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 285
    :goto_37
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    const-string v3, ""

    if-eq v0, v2, :cond_d0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_9c

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8a

    const/4 v3, 0x7

    if-eq v0, v3, :cond_6b

    const/16 v2, 0x8

    if-eq v0, v2, :cond_51

    goto :goto_b3

    .line 289
    :cond_51
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_b3

    .line 293
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void

    .line 366
    :cond_6b
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .line 367
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string v1, "xslt-next-is-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 372
    iput-boolean v2, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    return-void

    .line 376
    :cond_7c
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-interface {p0, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_8a
    check-cast p1, Lorg/w3c/dom/EntityReference;

    .line 424
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_b3

    .line 426
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 427
    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_9c
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_a5

    .line 385
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_a6

    :cond_a5
    const/4 v0, 0x0

    :goto_a6
    if-eqz v1, :cond_ab

    .line 389
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 392
    :cond_ab
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    if-eqz v1, :cond_b3

    .line 397
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_b3
    :goto_b3
    return-void

    .line 406
    :cond_b4
    iget-boolean v0, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    if-eqz v0, :cond_cc

    .line 408
    iput-boolean v1, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    .line 410
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v1, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v0, v1, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 412
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p0, p1, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_cc
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    return-void

    .line 307
    :cond_d0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 312
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 314
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e0

    move-object v4, v3

    .line 317
    :cond_e0
    iget-object v5, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v5, v4, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_e5
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    move v4, v1

    :goto_ee
    if-ge v4, v2, :cond_137

    .line 329
    invoke-interface {v0, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 330
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3a

    .line 331
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 335
    const-string v8, "xmlns"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_121

    const-string v8, "xmlns:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10f

    goto :goto_121

    :cond_10f
    if-lez v7, :cond_134

    .line 349
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 350
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_134

    .line 352
    iget-object v7, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v7, v6, v5}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_134

    :cond_121
    :goto_121
    if-gez v7, :cond_125

    move-object v6, v3

    goto :goto_12b

    :cond_125
    add-int/lit8 v7, v7, 0x1

    .line 343
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    :goto_12b
    iget-object v7, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 346
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-interface {v7, v6, v5}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_134
    :goto_134
    add-int/lit8 v4, v4, 0x1

    goto :goto_ee

    .line 356
    :cond_137
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_140

    goto :goto_141

    :cond_140
    move-object v3, v1

    .line 359
    :goto_141
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    .line 360
    invoke-virtual {v2, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lorg/apache/xml/serializer/utils/AttList;

    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-direct {v4, v0, p0}, Lorg/apache/xml/serializer/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V

    .line 359
    invoke-interface {v1, v3, v2, p1, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist traverse(Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    move-object v0, p1

    :goto_6
    if-eqz v0, :cond_36

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 147
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_f
    if-nez v1, :cond_34

    .line 151
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_34

    .line 156
    :cond_1b
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_f

    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_2d
    if-eqz v0, :cond_32

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_32
    const/4 v0, 0x0

    goto :goto_6

    :cond_34
    :goto_34
    move-object v0, v1

    goto :goto_6

    .line 176
    :cond_36
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public greylist traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_5
    if-eqz p1, :cond_34

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 201
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_32

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    if-eqz p2, :cond_1c

    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_32

    .line 210
    :cond_1c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_e

    .line 214
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_30

    if-eqz p2, :cond_e

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_30
    const/4 p1, 0x0

    goto :goto_5

    :cond_32
    :goto_32
    move-object p1, v0

    goto :goto_5

    .line 227
    :cond_34
    iget-object p0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method
