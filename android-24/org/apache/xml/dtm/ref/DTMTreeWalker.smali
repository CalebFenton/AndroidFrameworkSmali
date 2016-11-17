.class public Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.super Ljava/lang/Object;
.source "DTMTreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dtm:Lorg/apache/xml/dtm/DTM;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    .line 196
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    #@9
    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V
    .locals 1
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    .line 196
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    #@9
    .line 93
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@b
    .line 94
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@d
    .line 91
    return-void
.end method

.method private final dispatachChars(I)V
    .locals 3
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v0, p1, v1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@8
    .line 202
    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .locals 8
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 366
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@6
    move-result v4

    #@7
    packed-switch v4, :pswitch_data_0

    #@a
    .line 363
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@b
    .line 369
    :pswitch_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@d
    invoke-interface {v4}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@10
    goto :goto_0

    #@11
    .line 372
    :pswitch_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@13
    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 373
    .local v1, "ns":Ljava/lang/String;
    if-nez v1, :cond_1

    #@19
    .line 374
    const-string/jumbo v1, ""

    #@1c
    .line 375
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1e
    .line 376
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@20
    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 377
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@26
    invoke-interface {v6, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 375
    invoke-interface {v4, v1, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 379
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@2f
    invoke-interface {v4, p1, v7}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    #@32
    move-result v2

    #@33
    .local v2, "nsn":I
    :goto_1
    const/4 v4, -0x1

    #@34
    if-eq v4, v2, :cond_0

    #@36
    .line 383
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@38
    invoke-interface {v4, v2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 385
    .local v3, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@3e
    invoke-interface {v4, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@41
    .line 380
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@43
    invoke-interface {v4, p1, v2, v7}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    #@46
    move-result v2

    #@47
    goto :goto_1

    #@48
    .line 392
    .end local v1    # "ns":Ljava/lang/String;
    .end local v2    # "nsn":I
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@4a
    instance-of v4, v4, Lorg/xml/sax/ext/LexicalHandler;

    #@4c
    if-eqz v4, :cond_0

    #@4e
    .line 394
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@50
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    #@52
    .line 396
    .local v0, "lh":Lorg/xml/sax/ext/LexicalHandler;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@54
    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-interface {v0, v4}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@5b
    goto :goto_0

    #@5c
    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getcontentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public setDTM(Lorg/apache/xml/dtm/DTM;)V
    .locals 0
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    .line 53
    return-void
.end method

.method public setcontentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 73
    return-void
.end method

.method protected startNode(I)V
    .locals 16
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    instance-of v2, v2, Lorg/apache/xml/utils/NodeConsumer;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 224
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@c
    move/from16 v0, p1

    #@e
    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@11
    move-result v2

    #@12
    packed-switch v2, :pswitch_data_0

    #@15
    .line 215
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@16
    .line 228
    :pswitch_1
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@1a
    move/from16 v0, p1

    #@1c
    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@1f
    move-result-object v7

    #@20
    .line 230
    .local v7, "data":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@24
    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 232
    move-object/from16 v0, p0

    #@2a
    iget-object v11, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2c
    check-cast v11, Lorg/xml/sax/ext/LexicalHandler;

    #@2e
    .line 233
    .local v11, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v7, v11}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    #@31
    goto :goto_0

    #@32
    .line 242
    .end local v7    # "data":Lorg/apache/xml/utils/XMLString;
    .end local v11    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :pswitch_2
    move-object/from16 v0, p0

    #@34
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@36
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@39
    goto :goto_0

    #@3a
    .line 245
    :pswitch_3
    move-object/from16 v0, p0

    #@3c
    iget-object v8, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@3e
    .line 247
    .local v8, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v2, 0x1

    #@3f
    move/from16 v0, p1

    #@41
    invoke-interface {v8, v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    #@44
    move-result v14

    #@45
    .local v14, "nsn":I
    :goto_1
    const/4 v2, -0x1

    #@46
    if-eq v2, v14, :cond_2

    #@48
    .line 251
    invoke-interface {v8, v14}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@4b
    move-result-object v15

    #@4c
    .line 253
    .local v15, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@50
    invoke-interface {v8, v14}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-interface {v2, v15, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@57
    .line 248
    const/4 v2, 0x1

    #@58
    move/from16 v0, p1

    #@5a
    invoke-interface {v8, v0, v14, v2}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    #@5d
    move-result v14

    #@5e
    goto :goto_1

    #@5f
    .line 259
    .end local v15    # "prefix":Ljava/lang/String;
    :cond_2
    move/from16 v0, p1

    #@61
    invoke-interface {v8, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@64
    move-result-object v13

    #@65
    .line 260
    .local v13, "ns":Ljava/lang/String;
    if-nez v13, :cond_3

    #@67
    .line 261
    const-string/jumbo v13, ""

    #@6a
    .line 265
    :cond_3
    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    #@6c
    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@6f
    .line 267
    .local v1, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    move/from16 v0, p1

    #@71
    invoke-interface {v8, v0}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@74
    move-result v9

    #@75
    .line 268
    .local v9, "i":I
    :goto_2
    const/4 v2, -0x1

    #@76
    .line 267
    if-eq v9, v2, :cond_4

    #@78
    .line 271
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 272
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    .line 273
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 274
    const-string/jumbo v5, "CDATA"

    #@87
    .line 275
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    .line 271
    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8e
    .line 269
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@91
    move-result v9

    #@92
    goto :goto_2

    #@93
    .line 279
    :cond_4
    move-object/from16 v0, p0

    #@95
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@97
    .line 280
    move-object/from16 v0, p0

    #@99
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@9b
    move/from16 v0, p1

    #@9d
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    .line 281
    move-object/from16 v0, p0

    #@a3
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@a5
    move/from16 v0, p1

    #@a7
    invoke-interface {v4, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    .line 279
    invoke-interface {v2, v13, v3, v4, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 286
    .end local v1    # "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v8    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v9    # "i":I
    .end local v13    # "ns":Ljava/lang/String;
    .end local v14    # "nsn":I
    :pswitch_4
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@b4
    move/from16 v0, p1

    #@b6
    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@b9
    move-result-object v12

    #@ba
    .line 289
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v2, "xslt-next-is-raw"

    #@bd
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v2

    #@c1
    if-eqz v2, :cond_5

    #@c3
    .line 291
    const/4 v2, 0x1

    #@c4
    move-object/from16 v0, p0

    #@c6
    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    #@c8
    goto/16 :goto_0

    #@ca
    .line 295
    :cond_5
    move-object/from16 v0, p0

    #@cc
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@ce
    .line 296
    move-object/from16 v0, p0

    #@d0
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@d2
    move/from16 v0, p1

    #@d4
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@d7
    move-result-object v3

    #@d8
    .line 295
    invoke-interface {v2, v12, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@db
    goto/16 :goto_0

    #@dd
    .line 302
    .end local v12    # "name":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    #@df
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@e1
    instance-of v10, v2, Lorg/xml/sax/ext/LexicalHandler;

    #@e3
    .line 303
    .local v10, "isLexH":Z
    if-eqz v10, :cond_7

    #@e5
    .line 304
    move-object/from16 v0, p0

    #@e7
    iget-object v11, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@e9
    check-cast v11, Lorg/xml/sax/ext/LexicalHandler;

    #@eb
    .line 306
    :goto_3
    if-eqz v10, :cond_6

    #@ed
    .line 308
    invoke-interface {v11}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@f0
    .line 311
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    #@f3
    .line 314
    if-eqz v10, :cond_1

    #@f5
    .line 316
    invoke-interface {v11}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 304
    :cond_7
    const/4 v11, 0x0

    #@fb
    .local v11, "lh":Lorg/xml/sax/ext/LexicalHandler;
    goto :goto_3

    #@fc
    .line 323
    .end local v10    # "isLexH":Z
    .end local v11    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :pswitch_6
    move-object/from16 v0, p0

    #@fe
    iget-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    #@100
    if-eqz v2, :cond_8

    #@102
    .line 325
    const/4 v2, 0x0

    #@103
    move-object/from16 v0, p0

    #@105
    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    #@107
    .line 327
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@10b
    const-string/jumbo v3, "javax.xml.transform.disable-output-escaping"

    #@10e
    const-string/jumbo v4, ""

    #@111
    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@114
    .line 328
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    #@117
    .line 329
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@11b
    const-string/jumbo v3, "javax.xml.transform.enable-output-escaping"

    #@11e
    const-string/jumbo v4, ""

    #@121
    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@124
    goto/16 :goto_0

    #@126
    .line 333
    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    #@129
    goto/16 :goto_0

    #@12b
    .line 339
    :pswitch_7
    move-object/from16 v0, p0

    #@12d
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12f
    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    #@131
    if-eqz v2, :cond_1

    #@133
    .line 341
    move-object/from16 v0, p0

    #@135
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@137
    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    #@139
    .line 342
    move-object/from16 v0, p0

    #@13b
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@13d
    move/from16 v0, p1

    #@13f
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@142
    move-result-object v3

    #@143
    .line 341
    invoke-interface {v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@146
    goto/16 :goto_0

    #@148
    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(I)V
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 110
    move v1, p1

    #@2
    .line 112
    .local v1, "top":I
    :goto_0
    if-eq v3, p1, :cond_5

    #@4
    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    #@7
    .line 115
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@9
    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@c
    move-result v0

    #@d
    .line 116
    .local v0, "nextNode":I
    :cond_0
    if-ne v3, v0, :cond_1

    #@f
    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    #@12
    .line 120
    if-ne v1, p1, :cond_2

    #@14
    .line 143
    :cond_1
    :goto_1
    move p1, v0

    #@15
    goto :goto_0

    #@16
    .line 123
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@18
    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@1b
    move-result v0

    #@1c
    .line 125
    if-ne v3, v0, :cond_0

    #@1e
    .line 127
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@20
    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@23
    move-result p1

    #@24
    .line 129
    if-eq v3, p1, :cond_3

    #@26
    if-ne v1, p1, :cond_0

    #@28
    .line 133
    :cond_3
    if-eq v3, p1, :cond_4

    #@2a
    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    #@2d
    .line 136
    :cond_4
    const/4 v0, -0x1

    #@2e
    .line 138
    goto :goto_1

    #@2f
    .line 106
    .end local v0    # "nextNode":I
    :cond_5
    return-void
.end method

.method public traverse(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "top"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 165
    :goto_0
    if-eq v2, p1, :cond_4

    #@3
    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    #@6
    .line 168
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@8
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@b
    move-result v0

    #@c
    .line 169
    .local v0, "nextNode":I
    :cond_0
    if-ne v2, v0, :cond_1

    #@e
    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    #@11
    .line 173
    if-eq v2, p2, :cond_2

    #@13
    if-ne p2, p1, :cond_2

    #@15
    .line 191
    :cond_1
    :goto_1
    move p1, v0

    #@16
    goto :goto_0

    #@17
    .line 176
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@19
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@1c
    move-result v0

    #@1d
    .line 178
    if-ne v2, v0, :cond_0

    #@1f
    .line 180
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@21
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@24
    move-result p1

    #@25
    .line 182
    if-eq v2, p1, :cond_3

    #@27
    if-eq v2, p2, :cond_0

    #@29
    if-ne p2, p1, :cond_0

    #@2b
    .line 184
    :cond_3
    const/4 v0, -0x1

    #@2c
    .line 186
    goto :goto_1

    #@2d
    .line 158
    .end local v0    # "nextNode":I
    :cond_4
    return-void
.end method
