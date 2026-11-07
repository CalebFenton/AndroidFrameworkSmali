.class public Lorg/apache/xalan/processor/ProcessorLRE;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorLRE.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x14ae5165319c871cL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method

.method private greylist declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z
    .registers 6

    .line 358
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getDeclaredPrefixes()Ljava/util/List;

    move-result-object p0

    .line 359
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p1, :cond_23

    .line 363
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 364
    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return v0
.end method


# virtual methods
.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 345
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v1, :cond_13

    .line 347
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getIsLiteralResultAsStylesheet()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 349
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    .line 353
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected greylist getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 322
    new-instance p0, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getSchema()Lorg/apache/xalan/processor/XSLTSchema;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    .line 323
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    .line 324
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    :cond_1f
    return-object p0
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    .line 75
    const-string v6, "stylesheet"

    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    :try_start_10
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v8

    if-nez v8, :cond_12f

    .line 83
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v8

    .line 84
    const-string v12, "xsl:stylesheet"

    .line 85
    invoke-virtual {v2, v7, v6, v12}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v12

    .line 88
    invoke-virtual {v2, v8}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    :try_end_23
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_23} :catch_218

    .line 93
    :try_start_23
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/processor/ProcessorLRE;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v15
    :try_end_27
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_23 .. :try_end_27} :catch_128
    .catch Ljavax/xml/transform/TransformerException; {:try_start_23 .. :try_end_27} :catch_218

    .line 102
    :try_start_27
    new-instance v8, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v8}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    .line 103
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v13

    if-eqz v13, :cond_4e

    .line 106
    invoke-interface {v13}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v14

    invoke-virtual {v8, v14}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 107
    invoke-interface {v13}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v14

    invoke-virtual {v8, v14}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 108
    invoke-interface {v13}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 109
    invoke-interface {v13}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 111
    :cond_4e
    invoke-virtual {v15, v8}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 112
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v13

    invoke-virtual {v15, v13}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    .line 113
    invoke-virtual {v2, v15}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 117
    new-instance v16, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct/range {v16 .. v16}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 118
    new-instance v13, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v13}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 119
    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v14

    const/4 v10, 0x0

    :goto_6a
    if-ge v10, v14, :cond_d3

    .line 123
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v18

    .line 124
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v11, :cond_95

    .line 127
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_95

    .line 130
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v20

    .line 131
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v21

    const/16 v17, 0x0

    move-object/from16 v19, v18

    .line 129
    invoke-virtual/range {v16 .. v21}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    move-object/from16 v11, v16

    move/from16 v16, v14

    goto :goto_cb

    :cond_95
    move-object/from16 v17, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move/from16 v16, v14

    .line 133
    const-string v14, "xmlns:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_af

    const-string v14, "xmlns"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b8

    .line 134
    :cond_af
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    move-object/from16 v9, v17

    goto :goto_cb

    .line 142
    :cond_b8
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v20

    .line 143
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v21

    .line 144
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v13

    .line 141
    invoke-virtual/range {v17 .. v22}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_27 .. :try_end_c9} :catch_218

    move-object/from16 v9, v17

    :goto_cb
    add-int/lit8 v10, v10, 0x1

    move-object v13, v9

    move/from16 v14, v16

    move-object/from16 v16, v11

    goto :goto_6a

    :cond_d3
    move-object v9, v13

    move-object/from16 v11, v16

    .line 154
    :try_start_d6
    invoke-virtual {v12, v2, v6, v11, v15}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_107

    .line 176
    :try_start_d9
    invoke-virtual {v2, v15}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 178
    new-instance v0, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    .line 180
    invoke-virtual {v0, v8}, Lorg/apache/xalan/templates/ElemTemplate;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 182
    invoke-virtual {v1, v2, v0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 184
    new-instance v13, Lorg/apache/xpath/XPath;

    const-string v14, "/"

    .line 185
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v18

    const/16 v17, 0x1

    move-object/from16 v16, v15

    invoke-direct/range {v13 .. v18}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 187
    invoke-virtual {v0, v13}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 190
    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 192
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v8

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_132

    :catch_107
    move-exception v0

    .line 166
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getDeclaredPrefixes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_11b

    .line 167
    invoke-direct {v1, v15}, Lorg/apache/xalan/processor/ProcessorLRE;->declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z

    move-result v1

    if-nez v1, :cond_115

    goto :goto_11b

    .line 173
    :cond_115
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 169
    :cond_11b
    :goto_11b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "WG_OLD_XSLT_NS"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_128
    move-exception v0

    .line 97
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_12f
    move-object v9, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 196
    :goto_132
    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v7

    .line 197
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v23, 0x0

    :goto_13e
    if-eqz v8, :cond_177

    .line 206
    instance-of v12, v8, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v12, :cond_14c

    .line 208
    move-object v11, v8

    check-cast v11, Lorg/apache/xalan/templates/ElemLiteralResult;

    .line 210
    invoke-virtual {v11, v3}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v11

    goto :goto_16f

    .line 212
    :cond_14c
    instance-of v12, v8, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v12, :cond_16f

    .line 214
    move-object v11, v8

    check-cast v11, Lorg/apache/xalan/templates/Stylesheet;

    .line 216
    invoke-virtual {v11, v3}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16e

    if-eqz v3, :cond_16e

    .line 218
    const-string v12, "http://xml.apache.org/xalan"

    .line 219
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16b

    const-string v12, "http://xml.apache.org/xslt"

    .line 220
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16e

    :cond_16b
    const/16 v23, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v10, 0x1

    :cond_16f
    :goto_16f
    if-eqz v11, :cond_172

    goto :goto_177

    .line 233
    :cond_172
    invoke-virtual {v8}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v8
    :try_end_176
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d9 .. :try_end_176} :catch_218

    goto :goto_13e

    .line 240
    :cond_177
    :goto_177
    const-string v8, "ER_FAILED_CREATING_ELEMLITRSLT"

    if-eqz v11, :cond_189

    .line 244
    :try_start_17b
    new-instance v7, Lorg/apache/xalan/templates/ElemExtensionCall;

    invoke-direct {v7}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    goto :goto_1a1

    :catch_181
    move-exception v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1d9

    :catch_185
    move-exception v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1e0

    :cond_189
    if-eqz v23, :cond_192

    .line 248
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_1a1

    :cond_192
    if-eqz v10, :cond_19b

    .line 254
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_19a
    .catch Ljava/lang/InstantiationException; {:try_start_17b .. :try_end_19a} :catch_185
    .catch Ljava/lang/IllegalAccessException; {:try_start_17b .. :try_end_19a} :catch_181
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17b .. :try_end_19a} :catch_218

    goto :goto_1a1

    .line 258
    :cond_19b
    :try_start_19b
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7
    :try_end_19f
    .catch Ljava/lang/InstantiationException; {:try_start_19b .. :try_end_19f} :catch_1dd
    .catch Ljava/lang/IllegalAccessException; {:try_start_19b .. :try_end_19f} :catch_181
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19b .. :try_end_19f} :catch_218

    :try_start_19f
    check-cast v7, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_1a1
    .catch Ljava/lang/InstantiationException; {:try_start_19f .. :try_end_1a1} :catch_185
    .catch Ljava/lang/IllegalAccessException; {:try_start_19f .. :try_end_1a1} :catch_181
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19f .. :try_end_1a1} :catch_218

    .line 261
    :goto_1a1
    :try_start_1a1
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 262
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 263
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v10

    invoke-virtual {v7, v10, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    .line 265
    instance-of v0, v7, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v0, :cond_1e3

    .line 267
    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    .line 268
    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-virtual {v0, v4}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    .line 269
    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-virtual {v0, v5}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    .line 270
    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemLiteralResult;->setIsLiteralResultAsStylesheet(Z)V
    :try_end_1d2
    .catch Ljava/lang/InstantiationException; {:try_start_1a1 .. :try_end_1d2} :catch_1d6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a1 .. :try_end_1d2} :catch_1d3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a1 .. :try_end_1d2} :catch_218

    goto :goto_1e3

    :catch_1d3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_1d9

    :catch_1d6
    move-exception v0

    const/4 v6, 0x0

    goto :goto_1e0

    .line 280
    :goto_1d9
    :try_start_1d9
    invoke-virtual {v2, v8, v6, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1e3

    :catch_1dd
    move-exception v0

    const/4 v6, 0x0

    move-object v7, v6

    .line 276
    :goto_1e0
    invoke-virtual {v2, v8, v6, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 283
    :cond_1e3
    :goto_1e3
    invoke-virtual {v1, v2, v5, v9, v7}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    if-nez v11, :cond_214

    .line 286
    instance-of v0, v7, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v0, :cond_214

    .line 288
    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    .line 289
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 295
    new-instance v7, Lorg/apache/xalan/templates/ElemExtensionCall;

    invoke-direct {v7}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    .line 297
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 298
    invoke-virtual {v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    .line 299
    invoke-virtual {v7, v3}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v7, v4}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v7, v5}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v2, v5, v9, v7}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 306
    :cond_214
    invoke-virtual {v1, v2, v7}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_217
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d9 .. :try_end_217} :catch_218

    return-void

    :catch_218
    move-exception v0

    .line 310
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
