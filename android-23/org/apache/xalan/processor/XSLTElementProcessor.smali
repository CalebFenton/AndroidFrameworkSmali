.class public Lorg/apache/xalan/processor/XSLTElementProcessor;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "XSLTElementProcessor.java"


# static fields
.field static final serialVersionUID:J = 0x4dae0941c545a1e5L


# instance fields
.field private m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

.field private m_savedLastOrder:Lorg/apache/xml/utils/IntStack;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "ch"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 201
    const-string/jumbo v0, "ER_CHARS_NOT_ALLOWED"

    #@4
    invoke-virtual {p1, v0, v1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@7
    .line 199
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 180
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    #@7
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->empty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequiredFound()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 184
    const-string/jumbo v0, "ER_REQUIRED_ELEM_NOT_FOUND"

    #@1a
    const/4 v1, 0x1

    #@1b
    new-array v1, v1, [Ljava/lang/Object;

    #@1d
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequiredElem()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    const/4 v3, 0x0

    #@26
    aput-object v2, v1, v3

    #@28
    invoke-virtual {p1, v0, v1, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@2b
    .line 178
    :cond_1
    return-void

    #@2c
    .line 181
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    #@32
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@35
    move-result v1

    #@36
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    #@39
    goto :goto_0
.end method

.method getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

    #@2
    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "ch"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    return-void
.end method

.method public notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    return-void
.end method

.method public processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    return-void
.end method

.method public resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V
    .locals 0
    .param p1, "def"    # Lorg/apache/xalan/processor/XSLTElementDef;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

    #@2
    .line 74
    return-void
.end method

.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;
    .locals 22
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "rawName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .param p4, "target"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p5, "throwError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@3
    move-result-object v13

    #@4
    .line 292
    .local v13, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    const/4 v2, 0x0

    #@5
    .line 293
    .local v2, "undefines":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@8
    move-result-object v6

    #@9
    if-eqz v6, :cond_0

    #@b
    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lorg/apache/xalan/templates/Stylesheet;->getCompatibleMode()Z

    #@12
    move-result v6

    #@13
    .line 293
    if-nez v6, :cond_4

    #@15
    .line 295
    :cond_0
    if-eqz p5, :cond_5

    #@17
    const/16 v17, 0x0

    #@19
    .line 296
    .local v17, "isCompatibleMode":Z
    :goto_0
    if-eqz v17, :cond_1

    #@1b
    .line 297
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    #@1d
    .end local v2    # "undefines":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@20
    .line 302
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    #@22
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 305
    .local v20, "processedDefs":Ljava/util/List;
    new-instance v15, Ljava/util/ArrayList;

    #@27
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 306
    .local v15, "errorDefs":Ljava/util/List;
    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    #@2d
    move-result v19

    #@2e
    .line 308
    .local v19, "nAttrs":I
    const/16 v16, 0x0

    #@30
    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    #@32
    move/from16 v1, v19

    #@34
    if-ge v0, v1, :cond_b

    #@36
    .line 310
    move-object/from16 v0, p3

    #@38
    move/from16 v1, v16

    #@3a
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 312
    .local v3, "attrUri":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@43
    move-result v6

    #@44
    if-nez v6, :cond_3

    #@46
    .line 313
    move-object/from16 v0, p3

    #@48
    move/from16 v1, v16

    #@4a
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    const-string/jumbo v7, "xmlns:"

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@54
    move-result v6

    #@55
    if-nez v6, :cond_2

    #@57
    .line 314
    move-object/from16 v0, p3

    #@59
    move/from16 v1, v16

    #@5b
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    const-string/jumbo v7, "xmlns"

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v6

    #@66
    .line 312
    if-eqz v6, :cond_3

    #@68
    .line 316
    :cond_2
    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    #@6b
    .line 318
    :cond_3
    move-object/from16 v0, p3

    #@6d
    move/from16 v1, v16

    #@6f
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    .line 319
    .local v4, "attrLocalName":Ljava/lang/String;
    invoke-virtual {v13, v3, v4}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@76
    move-result-object v5

    #@77
    .line 321
    .local v5, "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    if-nez v5, :cond_7

    #@79
    .line 323
    if-nez v17, :cond_6

    #@7b
    .line 327
    const-string/jumbo v6, "ER_ATTR_NOT_ALLOWED"

    #@7e
    const/4 v7, 0x2

    #@7f
    new-array v7, v7, [Ljava/lang/Object;

    #@81
    move-object/from16 v0, p3

    #@83
    move/from16 v1, v16

    #@85
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@88
    move-result-object v8

    #@89
    const/4 v9, 0x0

    #@8a
    aput-object v8, v7, v9

    #@8c
    const/4 v8, 0x1

    #@8d
    aput-object p2, v7, v8

    #@8f
    const/4 v8, 0x0

    #@90
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@95
    .line 308
    .end local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@97
    goto :goto_1

    #@98
    .line 293
    .end local v3    # "attrUri":Ljava/lang/String;
    .end local v4    # "attrLocalName":Ljava/lang/String;
    .end local v15    # "errorDefs":Ljava/util/List;
    .end local v16    # "i":I
    .end local v17    # "isCompatibleMode":Z
    .end local v19    # "nAttrs":I
    .end local v20    # "processedDefs":Ljava/util/List;
    .restart local v2    # "undefines":Lorg/xml/sax/helpers/AttributesImpl;
    :cond_4
    const/16 v17, 0x1

    #@9a
    .restart local v17    # "isCompatibleMode":Z
    goto/16 :goto_0

    #@9c
    .line 295
    .end local v17    # "isCompatibleMode":Z
    :cond_5
    const/16 v17, 0x1

    #@9e
    .restart local v17    # "isCompatibleMode":Z
    goto/16 :goto_0

    #@a0
    .line 334
    .end local v2    # "undefines":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v3    # "attrUri":Ljava/lang/String;
    .restart local v4    # "attrLocalName":Ljava/lang/String;
    .restart local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .restart local v15    # "errorDefs":Ljava/util/List;
    .restart local v16    # "i":I
    .restart local v19    # "nAttrs":I
    .restart local v20    # "processedDefs":Ljava/util/List;
    :cond_6
    move-object/from16 v0, p3

    #@a2
    move/from16 v1, v16

    #@a4
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    .line 335
    .end local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    move-object/from16 v0, p3

    #@aa
    move/from16 v1, v16

    #@ac
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    .line 336
    move-object/from16 v0, p3

    #@b2
    move/from16 v1, v16

    #@b4
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@b7
    move-result-object v7

    #@b8
    .line 333
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bb
    goto :goto_2

    #@bc
    .line 342
    .restart local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@bf
    move-result-object v6

    #@c0
    if-nez v6, :cond_8

    #@c2
    .line 343
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c4
    const-string/jumbo v7, "stylesheet processor null"

    #@c7
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ca
    .line 344
    :cond_8
    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    const-string/jumbo v7, "*"

    #@d1
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@d4
    move-result v6

    #@d5
    if-nez v6, :cond_9

    #@d7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {v6}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    #@de
    move-result v6

    #@df
    if-eqz v6, :cond_9

    #@e1
    .line 348
    const-string/jumbo v6, "ER_ATTR_NOT_ALLOWED"

    #@e4
    const/4 v7, 0x2

    #@e5
    new-array v7, v7, [Ljava/lang/Object;

    #@e7
    move-object/from16 v0, p3

    #@e9
    move/from16 v1, v16

    #@eb
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@ee
    move-result-object v8

    #@ef
    const/4 v9, 0x0

    #@f0
    aput-object v8, v7, v9

    #@f2
    const/4 v8, 0x1

    #@f3
    aput-object p2, v7, v8

    #@f5
    const/4 v8, 0x0

    #@f6
    move-object/from16 v0, p1

    #@f8
    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@fb
    goto :goto_2

    #@fc
    .line 357
    :cond_9
    move-object/from16 v0, p3

    #@fe
    move/from16 v1, v16

    #@100
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@103
    move-result-object v9

    #@104
    move-object/from16 v0, p3

    #@106
    move/from16 v1, v16

    #@108
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@10b
    move-result-object v10

    #@10c
    move-object/from16 v6, p1

    #@10e
    move-object v7, v3

    #@10f
    move-object v8, v4

    #@110
    move-object/from16 v11, p4

    #@112
    .line 356
    invoke-virtual/range {v5 .. v11}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@115
    move-result v21

    #@116
    .line 361
    .local v21, "success":Z
    if-eqz v21, :cond_a

    #@118
    .line 362
    move-object/from16 v0, v20

    #@11a
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11d
    goto/16 :goto_2

    #@11f
    .line 364
    :cond_a
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@122
    goto/16 :goto_2

    #@124
    .line 369
    .end local v3    # "attrUri":Ljava/lang/String;
    .end local v4    # "attrLocalName":Ljava/lang/String;
    .end local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v21    # "success":Z
    :cond_b
    invoke-virtual {v13}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@127
    move-result-object v12

    #@128
    .line 370
    .local v12, "attrDefs":[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v0, v12

    #@129
    move/from16 v18, v0

    #@12b
    .line 372
    .local v18, "nAttrDefs":I
    const/16 v16, 0x0

    #@12d
    :goto_3
    move/from16 v0, v16

    #@12f
    move/from16 v1, v18

    #@131
    if-ge v0, v1, :cond_f

    #@133
    .line 374
    aget-object v5, v12, v16

    #@135
    .line 375
    .restart local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    #@138
    move-result-object v14

    #@139
    .line 377
    .local v14, "defVal":Ljava/lang/String;
    if-eqz v14, :cond_c

    #@13b
    .line 379
    move-object/from16 v0, v20

    #@13d
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@140
    move-result v6

    #@141
    if-nez v6, :cond_c

    #@143
    .line 381
    move-object/from16 v0, p1

    #@145
    move-object/from16 v1, p4

    #@147
    invoke-virtual {v5, v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@14a
    .line 385
    :cond_c
    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    #@14d
    move-result v6

    #@14e
    if-eqz v6, :cond_d

    #@150
    .line 387
    move-object/from16 v0, v20

    #@152
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@155
    move-result v6

    #@156
    if-nez v6, :cond_d

    #@158
    invoke-interface {v15, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@15b
    move-result v6

    #@15c
    if-eqz v6, :cond_e

    #@15e
    .line 372
    :cond_d
    :goto_4
    add-int/lit8 v16, v16, 0x1

    #@160
    goto :goto_3

    #@161
    .line 390
    :cond_e
    const-string/jumbo v6, "ER_REQUIRES_ATTRIB"

    #@164
    const/4 v7, 0x2

    #@165
    new-array v7, v7, [Ljava/lang/Object;

    #@167
    const/4 v8, 0x0

    #@168
    aput-object p2, v7, v8

    #@16a
    .line 391
    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@16d
    move-result-object v8

    #@16e
    const/4 v9, 0x1

    #@16f
    aput-object v8, v7, v9

    #@171
    .line 389
    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@174
    move-result-object v6

    #@175
    .line 391
    const/4 v7, 0x0

    #@176
    .line 388
    move-object/from16 v0, p1

    #@178
    invoke-virtual {v0, v6, v7}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@17b
    goto :goto_4

    #@17c
    .line 395
    .end local v5    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v14    # "defVal":Ljava/lang/String;
    :cond_f
    return-object v2
.end method

.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 6
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "rawName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .param p4, "target"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;

    #@9
    .line 266
    return-void
.end method

.method public skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 163
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@6
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    #@b
    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    #@d
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@18
    .line 165
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@1b
    move-result-object v0

    #@1c
    const/4 v1, -0x1

    #@1d
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    #@20
    .line 159
    return-void
.end method

.method public startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .param p5, "notationName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    return-void
.end method
