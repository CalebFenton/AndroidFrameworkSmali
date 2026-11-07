.class public Lorg/apache/xalan/processor/XSLTElementProcessor;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "XSLTElementProcessor.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4dae0941c545a1e5L


# instance fields
.field private greylist m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

.field private greylist m_savedLastOrder:Lorg/apache/xml/utils/IntStack;


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 201
    const-string p0, "ER_CHARS_NOT_ALLOWED"

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 180
    iget-object p2, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lorg/apache/xml/utils/IntStack;->empty()Z

    move-result p2

    if-nez p2, :cond_17

    .line 181
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    .line 183
    :cond_17
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequiredFound()Z

    move-result p2

    if-nez p2, :cond_33

    .line 184
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequiredElem()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    const-string p3, "ER_REQUIRED_ELEM_NOT_FOUND"

    invoke-virtual {p1, p3, p0, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_33
    return-void
.end method

.method greylist getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;
    .registers 1

    .line 66
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

    return-object p0
.end method

.method public greylist ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    return-void
.end method

.method public greylist processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

    return-void
.end method

.method greylist setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v9

    .line 293
    invoke-virtual {v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 294
    invoke-virtual {v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getCompatibleMode()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    if-nez p5, :cond_1f

    :cond_1c
    const/4 v0, 0x1

    move v11, v0

    goto :goto_20

    :cond_1f
    const/4 v11, 0x0

    :goto_20
    const/4 v12, 0x0

    if-eqz v11, :cond_2a

    .line 297
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    move-object v13, v0

    goto :goto_2b

    :cond_2a
    move-object v13, v12

    .line 302
    :goto_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {v8}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v3, :cond_e8

    .line 310
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 312
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_62

    .line 313
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    const-string v14, "xmlns:"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 314
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    const-string v14, "xmlns"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 316
    :cond_60
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    :cond_62
    move-object v14, v5

    .line 318
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v15

    move-object v5, v0

    .line 319
    invoke-virtual {v9, v14, v15}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v0

    .line 321
    const-string v6, "ER_ATTR_NOT_ALLOWED"

    if-nez v0, :cond_92

    if-nez v11, :cond_82

    .line 327
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0, v12}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_7d
    move-object v12, v2

    move v14, v3

    move v15, v4

    move-object v10, v5

    goto :goto_e0

    .line 334
    :cond_82
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v16

    .line 335
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v17

    .line 336
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    .line 333
    invoke-virtual/range {v13 .. v18}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 342
    :cond_92
    invoke-virtual {v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v16

    if-nez v16, :cond_9f

    .line 343
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "stylesheet processor null"

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    :cond_9f
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "*"

    invoke-virtual {v10, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c2

    invoke-virtual {v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 348
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v0, v10}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_7d

    .line 357
    :cond_c2
    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    move-object v10, v5

    invoke-interface {v8, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v12, v2

    move-object v2, v14

    move v14, v3

    move-object v3, v15

    move v15, v4

    move-object v4, v6

    move-object/from16 v6, p4

    .line 356
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 362
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    .line 364
    :cond_dd
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e0
    add-int/lit8 v4, v15, 0x1

    move-object v0, v10

    move-object v2, v12

    move v3, v14

    const/4 v12, 0x0

    goto/16 :goto_3a

    :cond_e8
    move-object v10, v0

    move-object v12, v2

    .line 369
    invoke-virtual {v9}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v0

    .line 370
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f0
    if-ge v3, v2, :cond_131

    .line 374
    aget-object v4, v0, v3

    .line 375
    invoke-virtual {v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_106

    .line 379
    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_106

    move-object/from16 v6, p4

    .line 381
    invoke-virtual {v4, v1, v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    goto :goto_108

    :cond_106
    move-object/from16 v6, p4

    .line 385
    :goto_108
    invoke-virtual {v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 387
    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12d

    invoke-interface {v12, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12d

    .line 391
    invoke-virtual {v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 389
    const-string v5, "ER_REQUIRES_ATTRIB"

    invoke-static {v5, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 388
    invoke-virtual {v1, v4, v5}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12e

    :cond_12d
    const/4 v5, 0x0

    :goto_12e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    :cond_131
    return-object v13
.end method

.method greylist setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 268
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;

    return-void
.end method

.method public greylist skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 162
    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    if-nez p1, :cond_b

    .line 163
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    .line 164
    :cond_b
    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 165
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    return-void
.end method

.method public greylist startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    return-void
.end method
