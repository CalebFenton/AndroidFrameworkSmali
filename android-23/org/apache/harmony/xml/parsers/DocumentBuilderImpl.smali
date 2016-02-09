.class Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "DocumentBuilderImpl.java"


# static fields
.field private static dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# instance fields
.field private coalescing:Z

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private ignoreComments:Z

.field private ignoreElementContentWhitespace:Z

.field private namespaceAware:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@6
    .line 49
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    #@3
    return-void
.end method

.method private appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V
    .locals 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "parent"    # Lorg/w3c/dom/Node;
    .param p3, "token"    # I
    .param p4, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    .line 338
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 339
    return-void

    #@8
    .line 342
    :cond_0
    iget-boolean v2, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    #@a
    if-nez v2, :cond_1

    #@c
    if-eq p3, v4, :cond_2

    #@e
    .line 343
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    #@11
    move-result-object v0

    #@12
    .line 344
    .local v0, "lastChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    #@14
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@17
    move-result v2

    #@18
    const/4 v3, 0x3

    #@19
    if-ne v2, v3, :cond_2

    #@1b
    move-object v1, v0

    #@1c
    .line 345
    check-cast v1, Lorg/w3c/dom/Text;

    #@1e
    .line 346
    .local v1, "textNode":Lorg/w3c/dom/Text;
    invoke-interface {v1, p4}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    #@21
    .line 347
    return-void

    #@22
    .line 351
    .end local v0    # "lastChild":Lorg/w3c/dom/Node;
    .end local v1    # "textNode":Lorg/w3c/dom/Text;
    :cond_2
    if-ne p3, v4, :cond_3

    #@24
    .line 352
    new-instance v2, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@26
    invoke-direct {v2, p1, p4}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@29
    .line 351
    :goto_0
    invoke-interface {p2, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@2c
    .line 336
    return-void

    #@2d
    .line 353
    :cond_3
    new-instance v2, Lorg/apache/harmony/xml/dom/TextImpl;

    #@2f
    invoke-direct {v2, p1, p4}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@32
    goto :goto_0
.end method

.method private parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V
    .locals 26
    .param p1, "parser"    # Lorg/kxml2/io/KXmlParser;
    .param p2, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p3, "node"    # Lorg/w3c/dom/Node;
    .param p4, "endToken"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getEventType()I

    #@3
    move-result v23

    #@4
    .line 188
    .local v23, "token":I
    :goto_0
    move/from16 v0, v23

    #@6
    move/from16 v1, p4

    #@8
    if-eq v0, v1, :cond_11

    #@a
    const/16 v24, 0x1

    #@c
    move/from16 v0, v23

    #@e
    move/from16 v1, v24

    #@10
    if-eq v0, v1, :cond_11

    #@12
    .line 189
    const/16 v24, 0x8

    #@14
    move/from16 v0, v23

    #@16
    move/from16 v1, v24

    #@18
    if-ne v0, v1, :cond_3

    #@1a
    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@1d
    move-result-object v22

    #@1e
    .line 196
    .local v22, "text":Ljava/lang/String;
    const/16 v24, 0x20

    #@20
    move-object/from16 v0, v22

    #@22
    move/from16 v1, v24

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@27
    move-result v11

    #@28
    .line 198
    .local v11, "dot":I
    const/16 v24, -0x1

    #@2a
    move/from16 v0, v24

    #@2c
    if-eq v11, v0, :cond_1

    #@2e
    const/16 v24, 0x0

    #@30
    move-object/from16 v0, v22

    #@32
    move/from16 v1, v24

    #@34
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v21

    #@38
    .line 199
    .local v21, "target":Ljava/lang/String;
    :goto_1
    const/16 v24, -0x1

    #@3a
    move/from16 v0, v24

    #@3c
    if-eq v11, v0, :cond_2

    #@3e
    add-int/lit8 v24, v11, 0x1

    #@40
    move-object/from16 v0, v22

    #@42
    move/from16 v1, v24

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    .line 201
    .local v10, "data":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    #@4a
    move-object/from16 v1, v21

    #@4c
    invoke-virtual {v0, v1, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    #@4f
    move-result-object v24

    #@50
    move-object/from16 v0, p3

    #@52
    move-object/from16 v1, v24

    #@54
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@57
    .line 328
    .end local v10    # "data":Ljava/lang/String;
    .end local v11    # "dot":I
    .end local v21    # "target":Ljava/lang/String;
    .end local v22    # "text":Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    #@5a
    move-result v23

    #@5b
    goto :goto_0

    #@5c
    .line 198
    .restart local v11    # "dot":I
    .restart local v22    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v21, v22

    #@5e
    .restart local v21    # "target":Ljava/lang/String;
    goto :goto_1

    #@5f
    .line 199
    :cond_2
    const-string/jumbo v10, ""

    #@62
    .restart local v10    # "data":Ljava/lang/String;
    goto :goto_2

    #@63
    .line 203
    .end local v10    # "data":Ljava/lang/String;
    .end local v11    # "dot":I
    .end local v21    # "target":Ljava/lang/String;
    .end local v22    # "text":Ljava/lang/String;
    :cond_3
    const/16 v24, 0xa

    #@65
    move/from16 v0, v23

    #@67
    move/from16 v1, v24

    #@69
    if-ne v0, v1, :cond_4

    #@6b
    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getRootElementName()Ljava/lang/String;

    #@6e
    move-result-object v15

    #@6f
    .line 205
    .local v15, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getPublicId()Ljava/lang/String;

    #@72
    move-result-object v18

    #@73
    .line 206
    .local v18, "publicId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getSystemId()Ljava/lang/String;

    #@76
    move-result-object v20

    #@77
    .line 207
    .local v20, "systemId":Ljava/lang/String;
    new-instance v24, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    #@79
    move-object/from16 v0, v24

    #@7b
    move-object/from16 v1, p2

    #@7d
    move-object/from16 v2, v18

    #@7f
    move-object/from16 v3, v20

    #@81
    invoke-direct {v0, v1, v15, v2, v3}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@84
    move-object/from16 v0, p2

    #@86
    move-object/from16 v1, v24

    #@88
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@8b
    goto :goto_3

    #@8c
    .line 209
    .end local v15    # "name":Ljava/lang/String;
    .end local v18    # "publicId":Ljava/lang/String;
    .end local v20    # "systemId":Ljava/lang/String;
    :cond_4
    const/16 v24, 0x9

    #@8e
    move/from16 v0, v23

    #@90
    move/from16 v1, v24

    #@92
    if-ne v0, v1, :cond_5

    #@94
    .line 214
    move-object/from16 v0, p0

    #@96
    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    #@98
    move/from16 v24, v0

    #@9a
    if-nez v24, :cond_0

    #@9c
    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@9f
    move-result-object v24

    #@a0
    move-object/from16 v0, p2

    #@a2
    move-object/from16 v1, v24

    #@a4
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    #@a7
    move-result-object v24

    #@a8
    move-object/from16 v0, p3

    #@aa
    move-object/from16 v1, v24

    #@ac
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@af
    goto :goto_3

    #@b0
    .line 217
    :cond_5
    const/16 v24, 0x7

    #@b2
    move/from16 v0, v23

    #@b4
    move/from16 v1, v24

    #@b6
    if-ne v0, v1, :cond_6

    #@b8
    .line 223
    move-object/from16 v0, p0

    #@ba
    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    #@bc
    move/from16 v24, v0

    #@be
    if-nez v24, :cond_0

    #@c0
    move-object/from16 v0, p2

    #@c2
    move-object/from16 v1, p3

    #@c4
    if-eq v0, v1, :cond_0

    #@c6
    .line 224
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@c9
    move-result-object v24

    #@ca
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, p2

    #@ce
    move-object/from16 v2, p3

    #@d0
    move/from16 v3, v23

    #@d2
    move-object/from16 v4, v24

    #@d4
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    #@d7
    goto :goto_3

    #@d8
    .line 226
    :cond_6
    const/16 v24, 0x4

    #@da
    move/from16 v0, v23

    #@dc
    move/from16 v1, v24

    #@de
    if-eq v0, v1, :cond_7

    #@e0
    const/16 v24, 0x5

    #@e2
    move/from16 v0, v23

    #@e4
    move/from16 v1, v24

    #@e6
    if-ne v0, v1, :cond_8

    #@e8
    .line 232
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    #@eb
    move-result-object v24

    #@ec
    move-object/from16 v0, p0

    #@ee
    move-object/from16 v1, p2

    #@f0
    move-object/from16 v2, p3

    #@f2
    move/from16 v3, v23

    #@f4
    move-object/from16 v4, v24

    #@f6
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    #@f9
    goto/16 :goto_3

    #@fb
    .line 233
    :cond_8
    const/16 v24, 0x6

    #@fd
    move/from16 v0, v23

    #@ff
    move/from16 v1, v24

    #@101
    if-ne v0, v1, :cond_b

    #@103
    .line 239
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    #@106
    move-result-object v13

    #@107
    .line 241
    .local v13, "entity":Ljava/lang/String;
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@10b
    move-object/from16 v24, v0

    #@10d
    if-eqz v24, :cond_9

    #@10f
    .line 245
    :cond_9
    move-object/from16 v0, p0

    #@111
    invoke-direct {v0, v13}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolvePredefinedOrCharacterEntity(Ljava/lang/String;)Ljava/lang/String;

    #@114
    move-result-object v19

    #@115
    .line 246
    .local v19, "resolved":Ljava/lang/String;
    if-eqz v19, :cond_a

    #@117
    .line 247
    move-object/from16 v0, p0

    #@119
    move-object/from16 v1, p2

    #@11b
    move-object/from16 v2, p3

    #@11d
    move/from16 v3, v23

    #@11f
    move-object/from16 v4, v19

    #@121
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    #@124
    goto/16 :goto_3

    #@126
    .line 249
    :cond_a
    move-object/from16 v0, p2

    #@128
    invoke-virtual {v0, v13}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    #@12b
    move-result-object v24

    #@12c
    move-object/from16 v0, p3

    #@12e
    move-object/from16 v1, v24

    #@130
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@133
    goto/16 :goto_3

    #@135
    .line 251
    .end local v13    # "entity":Ljava/lang/String;
    .end local v19    # "resolved":Ljava/lang/String;
    :cond_b
    const/16 v24, 0x2

    #@137
    move/from16 v0, v23

    #@139
    move/from16 v1, v24

    #@13b
    if-ne v0, v1, :cond_0

    #@13d
    .line 260
    move-object/from16 v0, p0

    #@13f
    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    #@141
    move/from16 v24, v0

    #@143
    if-eqz v24, :cond_f

    #@145
    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    #@148
    move-result-object v16

    #@149
    .line 263
    .local v16, "namespace":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    #@14c
    move-result-object v15

    #@14d
    .line 264
    .restart local v15    # "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getPrefix()Ljava/lang/String;

    #@150
    move-result-object v17

    #@151
    .line 266
    .local v17, "prefix":Ljava/lang/String;
    const-string/jumbo v24, ""

    #@154
    move-object/from16 v0, v24

    #@156
    move-object/from16 v1, v16

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v24

    #@15c
    if-eqz v24, :cond_c

    #@15e
    .line 267
    const/16 v16, 0x0

    #@160
    .line 271
    .end local v16    # "namespace":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p2

    #@162
    move-object/from16 v1, v16

    #@164
    invoke-virtual {v0, v1, v15}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@167
    move-result-object v12

    #@168
    .line 272
    .local v12, "element":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    #@16a
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    #@16d
    .line 273
    move-object/from16 v0, p3

    #@16f
    invoke-interface {v0, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@172
    .line 275
    const/4 v14, 0x0

    #@173
    .local v14, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getAttributeCount()I

    #@176
    move-result v24

    #@177
    move/from16 v0, v24

    #@179
    if-ge v14, v0, :cond_e

    #@17b
    .line 277
    move-object/from16 v0, p1

    #@17d
    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeNamespace(I)Ljava/lang/String;

    #@180
    move-result-object v7

    #@181
    .line 278
    .local v7, "attrNamespace":Ljava/lang/String;
    move-object/from16 v0, p1

    #@183
    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributePrefix(I)Ljava/lang/String;

    #@186
    move-result-object v8

    #@187
    .line 279
    .local v8, "attrPrefix":Ljava/lang/String;
    move-object/from16 v0, p1

    #@189
    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    #@18c
    move-result-object v6

    #@18d
    .line 280
    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@18f
    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    #@192
    move-result-object v9

    #@193
    .line 282
    .local v9, "attrValue":Ljava/lang/String;
    const-string/jumbo v24, ""

    #@196
    move-object/from16 v0, v24

    #@198
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19b
    move-result v24

    #@19c
    if-eqz v24, :cond_d

    #@19e
    .line 283
    const/4 v7, 0x0

    #@19f
    .line 287
    .end local v7    # "attrNamespace":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p2

    #@1a1
    invoke-virtual {v0, v7, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@1a4
    move-result-object v5

    #@1a5
    .line 288
    .local v5, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5, v8}, Lorg/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    #@1a8
    .line 289
    invoke-interface {v5, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    #@1ab
    .line 290
    invoke-interface {v12, v5}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@1ae
    .line 275
    add-int/lit8 v14, v14, 0x1

    #@1b0
    goto :goto_4

    #@1b1
    .line 294
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v8    # "attrPrefix":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    #@1b4
    move-result v23

    #@1b5
    .line 295
    const/16 v24, 0x3

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, p1

    #@1bb
    move-object/from16 v2, p2

    #@1bd
    move/from16 v3, v24

    #@1bf
    invoke-direct {v0, v1, v2, v12, v3}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    #@1c2
    .line 298
    const/16 v24, 0x3

    #@1c4
    move-object/from16 v0, p1

    #@1c6
    move/from16 v1, v24

    #@1c8
    move-object/from16 v2, v16

    #@1ca
    invoke-virtual {v0, v1, v2, v15}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@1cd
    goto/16 :goto_3

    #@1cf
    .line 302
    .end local v12    # "element":Lorg/w3c/dom/Element;
    .end local v14    # "i":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "prefix":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    #@1d2
    move-result-object v15

    #@1d3
    .line 305
    .restart local v15    # "name":Ljava/lang/String;
    move-object/from16 v0, p2

    #@1d5
    invoke-virtual {v0, v15}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@1d8
    move-result-object v12

    #@1d9
    .line 306
    .restart local v12    # "element":Lorg/w3c/dom/Element;
    move-object/from16 v0, p3

    #@1db
    invoke-interface {v0, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@1de
    .line 308
    const/4 v14, 0x0

    #@1df
    .restart local v14    # "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getAttributeCount()I

    #@1e2
    move-result v24

    #@1e3
    move/from16 v0, v24

    #@1e5
    if-ge v14, v0, :cond_10

    #@1e7
    .line 310
    move-object/from16 v0, p1

    #@1e9
    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    #@1ec
    move-result-object v6

    #@1ed
    .line 311
    .restart local v6    # "attrName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1ef
    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    #@1f2
    move-result-object v9

    #@1f3
    .line 314
    .restart local v9    # "attrValue":Ljava/lang/String;
    move-object/from16 v0, p2

    #@1f5
    invoke-virtual {v0, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@1f8
    move-result-object v5

    #@1f9
    .line 315
    .restart local v5    # "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    #@1fc
    .line 316
    invoke-interface {v12, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@1ff
    .line 308
    add-int/lit8 v14, v14, 0x1

    #@201
    goto :goto_5

    #@202
    .line 320
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    #@205
    move-result v23

    #@206
    .line 321
    const/16 v24, 0x3

    #@208
    move-object/from16 v0, p0

    #@20a
    move-object/from16 v1, p1

    #@20c
    move-object/from16 v2, p2

    #@20e
    move/from16 v3, v24

    #@210
    invoke-direct {v0, v1, v2, v12, v3}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    #@213
    .line 324
    const-string/jumbo v24, ""

    #@216
    const/16 v25, 0x3

    #@218
    move-object/from16 v0, p1

    #@21a
    move/from16 v1, v25

    #@21c
    move-object/from16 v2, v24

    #@21e
    invoke-virtual {v0, v1, v2, v15}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@221
    goto/16 :goto_3

    #@223
    .line 178
    .end local v12    # "element":Lorg/w3c/dom/Element;
    .end local v14    # "i":I
    .end local v15    # "name":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "base"    # I

    #@0
    .prologue
    .line 419
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    .line 420
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 421
    int-to-char v3, v0

    #@b
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    return-object v3

    #@10
    .line 423
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    #@13
    move-result-object v2

    #@14
    .line 424
    .local v2, "surrogatePair":[C
    new-instance v3, Ljava/lang/String;

    #@16
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v3

    #@1a
    .line 426
    .end local v0    # "codePoint":I
    .end local v2    # "surrogatePair":[C
    :catch_0
    move-exception v1

    #@1b
    .line 427
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method private resolvePredefinedOrCharacterEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 396
    const-string/jumbo v0, "#x"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 397
    const/4 v0, 0x2

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const/16 v1, 0x10

    #@10
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 398
    :cond_0
    const-string/jumbo v0, "#"

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 399
    const/4 v0, 0x1

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    const/16 v1, 0xa

    #@25
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 402
    :cond_1
    const-string/jumbo v0, "lt"

    #@2d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 403
    const-string/jumbo v0, "<"

    #@36
    return-object v0

    #@37
    .line 404
    :cond_2
    const-string/jumbo v0, "gt"

    #@3a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 405
    const-string/jumbo v0, ">"

    #@43
    return-object v0

    #@44
    .line 406
    :cond_3
    const-string/jumbo v0, "amp"

    #@47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 407
    const-string/jumbo v0, "&"

    #@50
    return-object v0

    #@51
    .line 408
    :cond_4
    const-string/jumbo v0, "apos"

    #@54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_5

    #@5a
    .line 409
    const-string/jumbo v0, "\'"

    #@5d
    return-object v0

    #@5e
    .line 410
    :cond_5
    const-string/jumbo v0, "quot"

    #@61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_6

    #@67
    .line 411
    const-string/jumbo v0, "\""

    #@6a
    return-object v0

    #@6b
    .line 413
    :cond_6
    const/4 v0, 0x0

    #@6c
    return-object v0
.end method


# virtual methods
.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    #@0
    .prologue
    .line 72
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@2
    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    #@0
    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    #@2
    return v0
.end method

.method public isValidating()Z
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@3
    invoke-virtual {v0, v1, v1, v1}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 15
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v13, "source == null"

    #@7
    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 96
    :cond_0
    const/4 v2, 0x0

    #@c
    .line 97
    .local v2, "namespaceURI":Ljava/lang/String;
    const/4 v3, 0x0

    #@d
    .line 98
    .local v3, "qualifiedName":Ljava/lang/String;
    const/4 v4, 0x0

    #@e
    .line 99
    .local v4, "doctype":Lorg/w3c/dom/DocumentType;
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 100
    .local v5, "inputEncoding":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@15
    move-result-object v10

    #@16
    .line 101
    .local v10, "systemId":Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@18
    .line 102
    sget-object v1, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@1a
    .line 101
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    #@1d
    .line 103
    .local v0, "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    invoke-virtual {v0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    #@20
    .line 105
    new-instance v9, Lorg/kxml2/io/KXmlParser;

    #@22
    invoke-direct {v9}, Lorg/kxml2/io/KXmlParser;-><init>()V

    #@25
    .line 107
    .local v9, "parser":Lorg/kxml2/io/KXmlParser;
    :try_start_0
    invoke-virtual {v9}, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes()V

    #@28
    .line 108
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@2b
    iget-boolean v13, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    #@2d
    invoke-virtual {v9, v1, v13}, Lorg/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V

    #@30
    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    #@33
    move-result-object v1

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 111
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v9, v1, v5}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@3d
    .line 124
    :goto_0
    invoke-virtual {v9}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    #@40
    move-result v1

    #@41
    const/4 v13, 0x1

    #@42
    if-ne v1, v13, :cond_4

    #@44
    .line 125
    new-instance v1, Lorg/xml/sax/SAXParseException;

    #@46
    const-string/jumbo v13, "Unexpected end of document"

    #@49
    const/4 v14, 0x0

    #@4a
    invoke-direct {v1, v13, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@4d
    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 131
    :catch_0
    move-exception v6

    #@4f
    .line 132
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    #@52
    move-result-object v1

    #@53
    instance-of v1, v1, Ljava/io/IOException;

    #@55
    if-eqz v1, :cond_5

    #@57
    .line 133
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Ljava/io/IOException;

    #@5d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    .line 153
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v1

    #@5f
    .line 154
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@62
    .line 153
    throw v1

    #@63
    .line 112
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@66
    move-result-object v1

    #@67
    if-eqz v1, :cond_2

    #@69
    .line 113
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v9, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    #@70
    goto :goto_0

    #@71
    .line 114
    :cond_2
    if-eqz v10, :cond_3

    #@73
    .line 115
    new-instance v11, Ljava/net/URL;

    #@75
    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@78
    .line 116
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@7b
    move-result-object v12

    #@7c
    .line 117
    .local v12, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    #@7f
    .line 119
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v9, v1, v5}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@86
    goto :goto_0

    #@87
    .line 121
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "urlConnection":Ljava/net/URLConnection;
    :cond_3
    new-instance v1, Lorg/xml/sax/SAXParseException;

    #@89
    const-string/jumbo v13, "InputSource needs a stream, reader or URI"

    #@8c
    const/4 v14, 0x0

    #@8d
    invoke-direct {v1, v13, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@90
    throw v1

    #@91
    .line 128
    :cond_4
    const/4 v1, 0x1

    #@92
    invoke-direct {p0, v9, v0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    #@95
    .line 130
    const/4 v1, 0x1

    #@96
    const/4 v13, 0x0

    #@97
    const/4 v14, 0x0

    #@98
    invoke-virtual {v9, v1, v13, v14}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9b
    .line 154
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@9e
    .line 157
    return-object v0

    #@9f
    .line 135
    .restart local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    #@a2
    move-result-object v1

    #@a3
    instance-of v1, v1, Ljava/lang/RuntimeException;

    #@a5
    if-eqz v1, :cond_6

    #@a7
    .line 136
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    #@aa
    move-result-object v1

    #@ab
    check-cast v1, Ljava/lang/RuntimeException;

    #@ad
    throw v1

    #@ae
    .line 139
    :cond_6
    new-instance v7, Lorg/xml/sax/helpers/LocatorImpl;

    #@b0
    invoke-direct {v7}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@b3
    .line 141
    .local v7, "locator":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v7, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    #@ba
    .line 142
    invoke-virtual {v7, v10}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@bd
    .line 143
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getLineNumber()I

    #@c0
    move-result v1

    #@c1
    invoke-virtual {v7, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@c4
    .line 144
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getColumnNumber()I

    #@c7
    move-result v1

    #@c8
    invoke-virtual {v7, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@cb
    .line 146
    new-instance v8, Lorg/xml/sax/SAXParseException;

    #@cd
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@d0
    move-result-object v1

    #@d1
    invoke-direct {v8, v1, v7}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@d4
    .line 148
    .local v8, "newEx":Lorg/xml/sax/SAXParseException;
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@d6
    if-eqz v1, :cond_7

    #@d8
    .line 149
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@da
    invoke-interface {v1, v8}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@dd
    .line 152
    :cond_7
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 62
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    #@4
    .line 63
    iput-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@6
    .line 64
    iput-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@8
    .line 65
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    #@a
    .line 66
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    #@c
    .line 67
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    #@e
    .line 61
    return-void
.end method

.method public setCoalescing(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 374
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    #@2
    .line 373
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 358
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    .line 357
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 363
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    .line 362
    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 370
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    #@2
    .line 369
    return-void
.end method

.method public setIgnoreElementContentWhitespace(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 381
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    #@2
    .line 380
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    #@2
    .line 387
    return-void
.end method
