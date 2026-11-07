.class public Lorg/apache/xml/utils/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private greylist m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected greylist m_dh:Lorg/apache/xml/utils/DOMHelper;

.field private greylist m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field greylist nextIsRaw:Z


# direct methods
.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 57
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v1, 0x0

    .line 262
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 127
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p1, :cond_17

    .line 129
    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 132
    :cond_17
    :try_start_17
    iget-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dummy.xsl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_38} :catch_38

    .line 137
    :catch_38
    new-instance p1, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {p1}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;)V
    .registers 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 57
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v1, 0x0

    .line 262
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 109
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 110
    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 113
    :try_start_15
    iget-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dummy.xsl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_36} :catch_36

    .line 117
    :catch_36
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 57
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v1, 0x0

    .line 262
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 87
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 88
    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    if-eqz p3, :cond_1d

    .line 90
    iget-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {p1, p3}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_3e

    .line 94
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dummy.xsl"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_3e} :catch_3e

    .line 99
    :catch_3e
    :goto_3e
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void
.end method

.method private final greylist dispatachChars(Lorg/w3c/dom/Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v1, :cond_c

    .line 272
    check-cast v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    return-void

    .line 276
    :cond_c
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 456
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    goto :goto_74

    .line 494
    :cond_b
    check-cast p1, Lorg/w3c/dom/EntityReference;

    .line 496
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_74

    .line 498
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 500
    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    return-void

    .line 462
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 463
    const-string v1, ""

    if-nez v0, :cond_28

    move-object v0, v1

    .line 465
    :cond_28
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    .line 466
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 470
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v0, :cond_74

    .line 474
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 475
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 477
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 483
    :cond_5c
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_66

    move-object v3, v1

    goto :goto_6c

    :cond_66
    add-int/lit8 v4, v4, 0x1

    .line 484
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 486
    :goto_6c
    iget-object v4, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_74
    :goto_74
    return-void
.end method

.method public greylist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1

    .line 66
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method protected greylist startNode(Lorg/w3c/dom/Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/apache/xml/utils/NodeConsumer;

    if-eqz v1, :cond_b

    .line 294
    check-cast v0, Lorg/apache/xml/utils/NodeConsumer;

    invoke-interface {v0, p1}, Lorg/apache/xml/utils/NodeConsumer;->setOriginatingNode(Lorg/w3c/dom/Node;)V

    .line 297
    :cond_b
    instance-of v0, p1, Lorg/xml/sax/Locator;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 299
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/Locator;

    .line 300
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 301
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 302
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_42

    .line 307
    :cond_38
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 308
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 311
    :goto_42
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v3, :cond_db

    const/4 v4, 0x3

    if-eq v0, v4, :cond_bf

    const/4 v2, 0x4

    if-eq v0, v2, :cond_a7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_95

    const/4 v2, 0x7

    if-eq v0, v2, :cond_76

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5c

    goto :goto_be

    .line 315
    :cond_5c
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object p1

    .line 317
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_be

    .line 319
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void

    .line 371
    :cond_76
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .line 372
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "xslt-next-is-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 377
    iput-boolean v3, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    return-void

    .line 381
    :cond_87
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    .line 381
    invoke-interface {p0, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_95
    check-cast p1, Lorg/w3c/dom/EntityReference;

    .line 429
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_be

    .line 431
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 432
    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    return-void

    .line 388
    :cond_a7
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_b0

    .line 390
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    if-eqz v1, :cond_b6

    .line 394
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 397
    :cond_b6
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    if-eqz v1, :cond_be

    .line 402
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_be
    :goto_be
    return-void

    .line 411
    :cond_bf
    iget-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    if-eqz v0, :cond_d7

    .line 413
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 415
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v1, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 417
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p0, p1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 421
    :cond_d7
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    return-void

    .line 333
    :cond_db
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    :goto_e6
    if-ge v1, v3, :cond_11c

    .line 339
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 340
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 343
    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_100

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 350
    :cond_100
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_10a

    move-object v5, v2

    goto :goto_110

    :cond_10a
    add-int/lit8 v6, v6, 0x1

    .line 351
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 353
    :goto_110
    iget-object v6, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 354
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-interface {v6, v5, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    .line 361
    :cond_11c
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_125

    goto :goto_126

    :cond_125
    move-object v2, v1

    .line 364
    :goto_126
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    .line 365
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lorg/apache/xml/utils/AttList;

    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-direct {v4, v0, p0}, Lorg/apache/xml/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V

    .line 364
    invoke-interface {v1, v2, v3, p1, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist traverse(Lorg/w3c/dom/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V

    .line 158
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

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

    .line 226
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_5
    if-eqz p1, :cond_34

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 232
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_32

    .line 236
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    if-eqz p2, :cond_1c

    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_32

    .line 241
    :cond_1c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_e

    .line 245
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_30

    if-eqz p2, :cond_e

    .line 247
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

    .line 258
    :cond_34
    iget-object p0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public greylist traverseFragment(Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_31

    .line 177
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 179
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_2f

    .line 183
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_2f

    .line 188
    :cond_16
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_a

    .line 192
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_28
    if-eqz v0, :cond_2d

    .line 197
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1

    :cond_2f
    :goto_2f
    move-object v0, v1

    goto :goto_1

    :cond_31
    return-void
.end method
