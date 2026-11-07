.class Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "DocumentBuilderImpl.java"


# static fields
.field private static blacklist dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# instance fields
.field private blacklist coalescing:Z

.field private blacklist entityResolver:Lorg/xml/sax/EntityResolver;

.field private blacklist errorHandler:Lorg/xml/sax/ErrorHandler;

.field private blacklist ignoreComments:Z

.field private blacklist ignoreElementContentWhitespace:Z

.field private blacklist namespaceAware:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    return-void
.end method

.method private blacklist appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V
    .registers 9
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "parent"    # Lorg/w3c/dom/Node;
    .param p3, "token"    # I
    .param p4, "text"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    return-void

    .line 343
    :cond_7
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    const/4 v1, 0x5

    if-nez v0, :cond_e

    if-eq p3, v1, :cond_22

    .line 344
    :cond_e
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 345
    .local v0, "lastChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_22

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    .line 346
    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Text;

    .line 347
    .local v1, "textNode":Lorg/w3c/dom/Text;
    invoke-interface {v1, p4}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 348
    return-void

    .line 352
    .end local v0    # "lastChild":Lorg/w3c/dom/Node;
    .end local v1    # "textNode":Lorg/w3c/dom/Text;
    :cond_22
    if-ne p3, v1, :cond_2a

    .line 353
    new-instance v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    invoke-direct {v0, p1, p4}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    goto :goto_2f

    .line 354
    :cond_2a
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-direct {v0, p1, p4}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 352
    :goto_2f
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 355
    return-void
.end method

.method private blacklist parse(Lcom/android/org/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V
    .registers 22
    .param p1, "parser"    # Lcom/android/org/kxml2/io/KXmlParser;
    .param p2, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p3, "node"    # Lorg/w3c/dom/Node;
    .param p4, "endToken"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getEventType()I

    move-result v4

    .line 189
    .local v4, "token":I
    :goto_c
    move/from16 v5, p4

    if-eq v4, v5, :cond_144

    const/4 v6, 0x1

    if-eq v4, v6, :cond_144

    .line 190
    const/16 v6, 0x8

    const-string v7, ""

    if-ne v4, v6, :cond_3e

    .line 195
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "text":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 199
    .local v8, "dot":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2c

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_2d

    :cond_2c
    move-object v10, v6

    .line 200
    .local v10, "target":Ljava/lang/String;
    :goto_2d
    if-eq v8, v9, :cond_35

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "data":Ljava/lang/String;
    :cond_35
    invoke-virtual {v2, v10, v7}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 204
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "dot":I
    .end local v10    # "target":Ljava/lang/String;
    goto/16 :goto_13e

    :cond_3e
    const/16 v6, 0xa

    if-ne v4, v6, :cond_58

    .line 205
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getRootElementName()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getPublicId()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "publicId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getSystemId()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "systemId":Ljava/lang/String;
    new-instance v9, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    invoke-direct {v9, v2, v6, v7, v8}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 210
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "publicId":Ljava/lang/String;
    .end local v8    # "systemId":Ljava/lang/String;
    goto/16 :goto_13e

    :cond_58
    const/16 v6, 0x9

    if-ne v4, v6, :cond_6d

    .line 215
    iget-boolean v6, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    if-nez v6, :cond_13e

    .line 216
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_13e

    .line 218
    :cond_6d
    const/4 v6, 0x7

    if-ne v4, v6, :cond_7f

    .line 224
    iget-boolean v6, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    if-nez v6, :cond_13e

    if-eq v2, v3, :cond_13e

    .line 225
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v3, v4, v6}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    goto/16 :goto_13e

    .line 227
    :cond_7f
    const/4 v6, 0x4

    if-eq v4, v6, :cond_137

    const/4 v6, 0x5

    if-ne v4, v6, :cond_87

    goto/16 :goto_137

    .line 234
    :cond_87
    const/4 v6, 0x6

    if-ne v4, v6, :cond_a3

    .line 240
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "entity":Ljava/lang/String;
    nop

    .line 246
    invoke-direct {v0, v6}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolvePredefinedOrCharacterEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "resolved":Ljava/lang/String;
    if-eqz v7, :cond_9a

    .line 248
    invoke-direct {v0, v2, v3, v4, v7}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    goto/16 :goto_136

    .line 250
    :cond_9a
    invoke-virtual {v2, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_136

    .line 252
    .end local v6    # "entity":Ljava/lang/String;
    .end local v7    # "resolved":Ljava/lang/String;
    :cond_a3
    const/4 v6, 0x2

    if-ne v4, v6, :cond_136

    .line 261
    iget-boolean v6, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    if-eqz v6, :cond_103

    .line 263
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "namespace":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 268
    const/4 v6, 0x0

    .line 272
    :cond_bd
    invoke-virtual {v2, v6, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v11

    .line 273
    .local v11, "element":Lorg/w3c/dom/Element;
    invoke-interface {v11, v10}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 274
    invoke-interface {v3, v11}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 276
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c8
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeCount()I

    move-result v13

    if-ge v12, v13, :cond_f7

    .line 278
    invoke-virtual {v1, v12}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "attrNamespace":Ljava/lang/String;
    invoke-virtual {v1, v12}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, "attrPrefix":Ljava/lang/String;
    invoke-virtual {v1, v12}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v12}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "attrValue":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e5

    .line 284
    const/4 v13, 0x0

    .line 288
    :cond_e5
    invoke-virtual {v2, v13, v15}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v5

    .line 289
    .local v5, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5, v14}, Lorg/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    .line 290
    invoke-interface {v5, v8}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 291
    invoke-interface {v11, v5}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 276
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    .end local v8    # "attrValue":Ljava/lang/String;
    .end local v13    # "attrNamespace":Ljava/lang/String;
    .end local v14    # "attrPrefix":Ljava/lang/String;
    .end local v15    # "attrName":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, p4

    goto :goto_c8

    .line 295
    .end local v12    # "i":I
    :cond_f7
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->nextToken()I

    move-result v4

    .line 296
    const/4 v5, 0x3

    invoke-direct {v0, v1, v2, v11, v5}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lcom/android/org/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    .line 299
    invoke-virtual {v1, v5, v6, v9}, Lcom/android/org/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    goto :goto_13e

    .line 303
    :cond_103
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v6

    .line 307
    .local v6, "element":Lorg/w3c/dom/Element;
    invoke-interface {v3, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 309
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_10f
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeCount()I

    move-result v9

    if-ge v8, v9, :cond_12a

    .line 311
    invoke-virtual {v1, v8}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/android/org/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, "attrValue":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v11

    .line 316
    .local v11, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v11, v10}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 317
    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 309
    .end local v9    # "attrName":Ljava/lang/String;
    .end local v10    # "attrValue":Ljava/lang/String;
    .end local v11    # "attr":Lorg/w3c/dom/Attr;
    add-int/lit8 v8, v8, 0x1

    goto :goto_10f

    .line 321
    .end local v8    # "i":I
    :cond_12a
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->nextToken()I

    move-result v4

    .line 322
    const/4 v8, 0x3

    invoke-direct {v0, v1, v2, v6, v8}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lcom/android/org/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    .line 325
    invoke-virtual {v1, v8, v7, v5}, Lcom/android/org/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13e

    .line 252
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    :cond_136
    :goto_136
    goto :goto_13e

    .line 233
    :cond_137
    :goto_137
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    .line 329
    :cond_13e
    :goto_13e
    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->nextToken()I

    move-result v4

    goto/16 :goto_c

    .line 331
    :cond_144
    return-void
.end method

.method private blacklist resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "base"    # I

    .line 420
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 422
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 424
    :cond_10
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 425
    .local v1, "surrogatePair":[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v2

    .line 427
    .end local v0    # "codePoint":I
    .end local v1    # "surrogatePair":[C
    :catch_1a
    move-exception v0

    .line 428
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist resolvePredefinedOrCharacterEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "entityName"    # Ljava/lang/String;

    .line 397
    const-string v0, "#x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 398
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 399
    :cond_14
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_28
    const-string v0, "lt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 404
    const-string v0, "<"

    return-object v0

    .line 405
    :cond_33
    const-string v0, "gt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 406
    const-string v0, ">"

    return-object v0

    .line 407
    :cond_3e
    const-string v0, "amp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 408
    const-string v0, "&"

    return-object v0

    .line 409
    :cond_49
    const-string v0, "apos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 410
    const-string v0, "\'"

    return-object v0

    .line 411
    :cond_54
    const-string v0, "quot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 412
    const-string v0, "\""

    return-object v0

    .line 414
    :cond_5f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .line 72
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-object v0
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    return v0
.end method

.method public whitelist test-api isValidating()Z
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api newDocument()Lorg/w3c/dom/Document;
    .registers 3

    .line 87
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .registers 14
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_c9

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "namespaceURI":Ljava/lang/String;
    const/4 v3, 0x0

    .line 98
    .local v3, "qualifiedName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 99
    .local v4, "doctype":Lorg/w3c/dom/DocumentType;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "inputEncoding":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "systemId":Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    sget-object v1, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    move-object v1, v0

    .line 103
    .local v1, "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    invoke-virtual {v1, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/android/org/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lcom/android/org/kxml2/io/KXmlParser;-><init>()V

    move-object v7, v0

    .line 107
    .local v7, "parser":Lcom/android/org/kxml2/io/KXmlParser;
    :try_start_1e
    invoke-virtual {v7}, Lcom/android/org/kxml2/io/KXmlParser;->keepNamespaceAttributes()V

    .line 108
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v8, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    invoke-virtual {v7, v0, v8}, Lcom/android/org/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_37

    .line 111
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v7, v0, v5}, Lcom/android/org/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_5b

    .line 112
    :cond_37
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 113
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/org/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    goto :goto_5b

    .line 114
    :cond_45
    if-eqz v6, :cond_75

    .line 115
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 117
    .local v9, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 119
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v7, v10, v5}, Lcom/android/org/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    .end local v0    # "url":Ljava/net/URL;
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    nop

    .line 124
    :goto_5b
    invoke-virtual {v7}, Lcom/android/org/kxml2/io/KXmlParser;->nextToken()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_6d

    .line 128
    invoke-direct {p0, v7, v1, v1, v9}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lcom/android/org/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    .line 130
    invoke-virtual {v7, v9, v8, v8}, Lcom/android/org/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_68} :catch_7f
    .catchall {:try_start_1e .. :try_end_68} :catchall_7d

    .line 155
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    nop

    .line 158
    return-object v1

    .line 125
    :cond_6d
    :try_start_6d
    new-instance v0, Lorg/xml/sax/SAXParseException;

    const-string v9, "Unexpected end of document"

    invoke-direct {v0, v9, v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .end local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v5    # "inputEncoding":Ljava/lang/String;
    .end local v6    # "systemId":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .end local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .end local p1    # "source":Lorg/xml/sax/InputSource;
    throw v0

    .line 121
    .restart local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .restart local v2    # "namespaceURI":Ljava/lang/String;
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v5    # "inputEncoding":Ljava/lang/String;
    .restart local v6    # "systemId":Ljava/lang/String;
    .restart local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .restart local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .restart local p1    # "source":Lorg/xml/sax/InputSource;
    :cond_75
    new-instance v0, Lorg/xml/sax/SAXParseException;

    const-string v9, "InputSource needs a stream, reader or URI"

    invoke-direct {v0, v9, v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .end local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v5    # "inputEncoding":Ljava/lang/String;
    .end local v6    # "systemId":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .end local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .end local p1    # "source":Lorg/xml/sax/InputSource;
    throw v0
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_7d} :catch_7f
    .catchall {:try_start_6d .. :try_end_7d} :catchall_7d

    .line 155
    .restart local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .restart local v2    # "namespaceURI":Ljava/lang/String;
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v5    # "inputEncoding":Ljava/lang/String;
    .restart local v6    # "systemId":Ljava/lang/String;
    .restart local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .restart local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .restart local p1    # "source":Lorg/xml/sax/InputSource;
    :catchall_7d
    move-exception v0

    goto :goto_c5

    .line 131
    :catch_7f
    move-exception v0

    .line 132
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_80
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v8

    .line 133
    .local v8, "detail":Ljava/lang/Throwable;
    instance-of v9, v8, Ljava/io/IOException;

    if-nez v9, :cond_c1

    .line 136
    instance-of v9, v8, Ljava/lang/RuntimeException;

    if-nez v9, :cond_bd

    .line 140
    new-instance v9, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 142
    .local v9, "locator":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v9, v6}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 145
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getColumnNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 147
    new-instance v10, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 149
    .local v10, "newEx":Lorg/xml/sax/SAXParseException;
    iget-object v11, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v11, :cond_bb

    .line 150
    iget-object v11, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v11, v10}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 153
    :cond_bb
    nop

    .end local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v5    # "inputEncoding":Ljava/lang/String;
    .end local v6    # "systemId":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .end local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .end local p1    # "source":Lorg/xml/sax/InputSource;
    throw v10

    .line 137
    .end local v9    # "locator":Lorg/xml/sax/helpers/LocatorImpl;
    .end local v10    # "newEx":Lorg/xml/sax/SAXParseException;
    .restart local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .restart local v2    # "namespaceURI":Ljava/lang/String;
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v5    # "inputEncoding":Ljava/lang/String;
    .restart local v6    # "systemId":Ljava/lang/String;
    .restart local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .restart local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .restart local p1    # "source":Lorg/xml/sax/InputSource;
    :cond_bd
    move-object v9, v8

    check-cast v9, Ljava/lang/RuntimeException;

    .end local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v5    # "inputEncoding":Ljava/lang/String;
    .end local v6    # "systemId":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .end local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .end local p1    # "source":Lorg/xml/sax/InputSource;
    throw v9

    .line 134
    .restart local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .restart local v2    # "namespaceURI":Ljava/lang/String;
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v5    # "inputEncoding":Ljava/lang/String;
    .restart local v6    # "systemId":Ljava/lang/String;
    .restart local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .restart local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .restart local p1    # "source":Lorg/xml/sax/InputSource;
    :cond_c1
    move-object v9, v8

    check-cast v9, Ljava/io/IOException;

    .end local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v5    # "inputEncoding":Ljava/lang/String;
    .end local v6    # "systemId":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .end local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .end local p1    # "source":Lorg/xml/sax/InputSource;
    throw v9
    :try_end_c5
    .catchall {:try_start_80 .. :try_end_c5} :catchall_7d

    .line 155
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "detail":Ljava/lang/Throwable;
    .restart local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .restart local v2    # "namespaceURI":Ljava/lang/String;
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v5    # "inputEncoding":Ljava/lang/String;
    .restart local v6    # "systemId":Ljava/lang/String;
    .restart local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    .restart local p0    # "this":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    .restart local p1    # "source":Lorg/xml/sax/InputSource;
    :goto_c5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    throw v0

    .line 93
    .end local v1    # "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v5    # "inputEncoding":Ljava/lang/String;
    .end local v6    # "systemId":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/org/kxml2/io/KXmlParser;
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 64
    iput-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 65
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    .line 67
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    .line 68
    return-void
.end method

.method public blacklist setCoalescing(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 375
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    .line 376
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 359
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 360
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 364
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 365
    return-void
.end method

.method public blacklist setIgnoreComments(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 371
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    .line 372
    return-void
.end method

.method public blacklist setIgnoreElementContentWhitespace(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 382
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    .line 383
    return-void
.end method

.method public blacklist setNamespaceAware(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 389
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    .line 390
    return-void
.end method
