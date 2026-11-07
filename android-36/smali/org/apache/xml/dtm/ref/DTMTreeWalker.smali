.class public Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.super Ljava/lang/Object;
.source "DTMTreeWalker.java"


# instance fields
.field private greylist m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected greylist m_dtm:Lorg/apache/xml/dtm/DTM;

.field greylist nextIsRaw:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 93
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 94
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method

.method private final greylist dispatachChars(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    return-void
.end method


# virtual methods
.method protected greylist endNode(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    const/16 p1, 0x9

    if-eq v0, p1, :cond_11

    goto :goto_5f

    .line 369
    :cond_11
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void

    .line 392
    :cond_17
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_5f

    .line 394
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    .line 396
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    return-void

    .line 372
    :cond_29
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    .line 374
    const-string v0, ""

    .line 375
    :cond_33
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 376
    invoke-interface {v3, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 377
    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1, v1}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v0

    :goto_4a
    const/4 v2, -0x1

    if-eq v2, v0, :cond_5f

    .line 383
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1, v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v0

    goto :goto_4a

    :cond_5f
    :goto_5f
    return-void
.end method

.method public greylist getcontentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1

    .line 65
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public greylist setDTM(Lorg/apache/xml/dtm/DTM;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method

.method public greylist setcontentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method protected greylist startNode(I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/apache/xml/utils/NodeConsumer;

    .line 224
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_83

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_59

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a

    const/16 p1, 0x9

    if-eq v0, p1, :cond_24

    goto :goto_82

    .line 242
    :cond_24
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    return-void

    .line 228
    :cond_2a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    .line 230
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_82

    .line 232
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    .line 233
    invoke-interface {p1, p0}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void

    .line 286
    :cond_3c
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v1, "xslt-next-is-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 291
    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    return-void

    .line 295
    :cond_4d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 296
    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-interface {v1, v0, p0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_59
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_82

    .line 341
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 342
    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    .line 341
    invoke-interface {v0, p0}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    return-void

    .line 302
    :cond_6b
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_74

    .line 304
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    if-eqz v1, :cond_7a

    .line 308
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 311
    :cond_7a
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    if-eqz v1, :cond_82

    .line 316
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_82
    :goto_82
    return-void

    .line 323
    :cond_83
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    if-eqz v0, :cond_9c

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 327
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v0, v2, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    .line 329
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p0, p1, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_9c
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    return-void

    .line 245
    :cond_a0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 247
    invoke-interface {v0, p1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v3

    :goto_a6
    const/4 v4, -0x1

    if-eq v4, v3, :cond_bb

    .line 251
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    .line 253
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {v0, p1, v3, v2}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v3

    goto :goto_a6

    .line 259
    :cond_bb
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c2

    goto :goto_c3

    :cond_c2
    move-object v1, v2

    .line 264
    :goto_c3
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 267
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v2

    :goto_cc
    if-eq v2, v4, :cond_e8

    .line 271
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDATA"

    .line 275
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v2

    goto :goto_cc

    .line 279
    :cond_e8
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 280
    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 281
    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-interface {v0, v1, v2, p0, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist traverse(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move v0, p1

    :goto_1
    const/4 v1, -0x1

    if-eq v1, v0, :cond_30

    .line 114
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 115
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    :cond_d
    if-ne v1, v2, :cond_2e

    .line 118
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    if-ne p1, v0, :cond_15

    goto :goto_2e

    .line 123
    :cond_15
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 127
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    if-eq v1, v0, :cond_27

    if-ne p1, v0, :cond_d

    :cond_27
    if-eq v1, v0, :cond_2c

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    :cond_2c
    move v0, v1

    goto :goto_1

    :cond_2e
    :goto_2e
    move v0, v2

    goto :goto_1

    :cond_30
    return-void
.end method

.method public greylist traverse(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_2e

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 168
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v1

    :cond_c
    if-ne v0, v1, :cond_2c

    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    if-eq v0, p2, :cond_16

    if-ne p2, p1, :cond_16

    goto :goto_2c

    .line 176
    :cond_16
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 180
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    if-eq v0, p1, :cond_2a

    if-eq v0, p2, :cond_c

    if-ne p2, p1, :cond_c

    :cond_2a
    move p1, v0

    goto :goto_0

    :cond_2c
    :goto_2c
    move p1, v1

    goto :goto_0

    :cond_2e
    return-void
.end method
