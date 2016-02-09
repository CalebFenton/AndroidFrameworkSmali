.class public Lorg/apache/xalan/processor/ProcessorLRE;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorLRE.java"


# static fields
.field static final serialVersionUID:J = -0x14ae5165319c871cL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@3
    return-void
.end method

.method private declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z
    .locals 6
    .param p1, "stylesheet"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 358
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getDeclaredPrefixes()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 359
    .local v1, "declaredPrefixes":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    .line 361
    .local v3, "n":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@b
    .line 363
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@11
    .line 364
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    const-string/jumbo v5, "http://www.w3.org/1999/XSL/Transform"

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 365
    const/4 v4, 0x1

    #@1f
    return v4

    #@20
    .line 361
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 367
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_1
    const/4 v4, 0x0

    #@24
    return v4
.end method


# virtual methods
.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 343
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 345
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 347
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@a
    .end local v0    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getIsLiteralResultAsStylesheet()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 349
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@13
    .line 353
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 340
    return-void
.end method

.method protected getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    .locals 3
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getSchema()Lorg/apache/xalan/processor/XSLTSchema;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    #@11
    .line 323
    .local v0, "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 324
    const/4 v1, 0x1

    #@1c
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    #@1f
    .line 326
    :cond_0
    return-object v0
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 43
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
    .line 75
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v33

    #@4
    .line 76
    .local v33, "p":Lorg/apache/xalan/templates/ElemTemplateElement;
    const/16 v21, 0x0

    #@6
    .line 77
    .local v21, "excludeXSLDecl":Z
    const/16 v27, 0x0

    #@8
    .line 79
    .local v27, "isLREAsStyleSheet":Z
    if-nez v33, :cond_7

    #@a
    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@d
    move-result-object v31

    #@e
    .line 85
    .local v31, "lreProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    const-string/jumbo v6, "http://www.w3.org/1999/XSL/Transform"

    #@11
    const-string/jumbo v8, "stylesheet"

    #@14
    .line 86
    const-string/jumbo v11, "xsl:stylesheet"

    #@17
    .line 85
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v6, v8, v11}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@1c
    move-result-object v38

    #@1d
    .line 88
    .local v38, "stylesheetProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    move-object/from16 v0, p1

    #@1f
    move-object/from16 v1, v31

    #@21
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    .line 93
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/processor/ProcessorLRE;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result-object v37

    #@28
    .line 102
    .local v37, "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    :try_start_2
    new-instance v36, Lorg/apache/xml/utils/SAXSourceLocator;

    #@2a
    invoke-direct/range {v36 .. v36}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    #@2d
    .line 103
    .local v36, "slocator":Lorg/apache/xml/utils/SAXSourceLocator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@30
    move-result-object v29

    #@31
    .line 104
    .local v29, "locator":Lorg/xml/sax/Locator;
    if-eqz v29, :cond_0

    #@33
    .line 106
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@36
    move-result v6

    #@37
    move-object/from16 v0, v36

    #@39
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    #@3c
    .line 107
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@3f
    move-result v6

    #@40
    move-object/from16 v0, v36

    #@42
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    #@45
    .line 108
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    move-object/from16 v0, v36

    #@4b
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    #@4e
    .line 109
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    move-object/from16 v0, v36

    #@54
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    #@57
    .line 111
    :cond_0
    move-object/from16 v0, v37

    #@59
    move-object/from16 v1, v36

    #@5b
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@5e
    .line 112
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@61
    move-result-object v6

    #@62
    move-object/from16 v0, v37

    #@64
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/Stylesheet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    #@67
    .line 113
    move-object/from16 v0, p1

    #@69
    move-object/from16 v1, v37

    #@6b
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@6e
    .line 115
    const/16 v27, 0x1

    #@70
    .line 117
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    #@72
    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@75
    .line 118
    .local v5, "stylesheetAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    new-instance v30, Lorg/xml/sax/helpers/AttributesImpl;

    #@77
    invoke-direct/range {v30 .. v30}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@7a
    .line 119
    .local v30, "lreAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-interface/range {p5 .. p5}, Lorg/xml/sax/Attributes;->getLength()I

    #@7d
    move-result v32

    #@7e
    .line 121
    .local v32, "n":I
    const/16 v22, 0x0

    #@80
    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    #@82
    move/from16 v1, v32

    #@84
    if-ge v0, v1, :cond_5

    #@86
    .line 123
    move-object/from16 v0, p5

    #@88
    move/from16 v1, v22

    #@8a
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@8d
    move-result-object v7

    #@8e
    .line 124
    .local v7, "attrLocalName":Ljava/lang/String;
    move-object/from16 v0, p5

    #@90
    move/from16 v1, v22

    #@92
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@95
    move-result-object v9

    #@96
    .line 125
    .local v9, "attrUri":Ljava/lang/String;
    move-object/from16 v0, p5

    #@98
    move/from16 v1, v22

    #@9a
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@9d
    move-result-object v42

    #@9e
    .line 127
    .local v42, "value":Ljava/lang/String;
    if-eqz v9, :cond_2

    #@a0
    const-string/jumbo v6, "http://www.w3.org/1999/XSL/Transform"

    #@a3
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_2

    #@a9
    .line 130
    move-object/from16 v0, p5

    #@ab
    move/from16 v1, v22

    #@ad
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    .line 131
    .end local v9    # "attrUri":Ljava/lang/String;
    move-object/from16 v0, p5

    #@b3
    move/from16 v1, v22

    #@b5
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@b8
    move-result-object v10

    #@b9
    .line 129
    const/4 v6, 0x0

    #@ba
    move-object v8, v7

    #@bb
    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@be
    .line 121
    :cond_1
    :goto_1
    add-int/lit8 v22, v22, 0x1

    #@c0
    goto :goto_0

    #@c1
    .line 96
    .end local v5    # "stylesheetAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v7    # "attrLocalName":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v29    # "locator":Lorg/xml/sax/Locator;
    .end local v30    # "lreAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v32    # "n":I
    .end local v36    # "slocator":Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v37    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    .end local v42    # "value":Ljava/lang/String;
    :catch_0
    move-exception v41

    #@c2
    .line 97
    .local v41, "tfe":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    #@c4
    move-object/from16 v0, v41

    #@c6
    invoke-direct {v6, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@c9
    throw v6
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    #@ca
    .line 309
    .end local v21    # "excludeXSLDecl":Z
    .end local v27    # "isLREAsStyleSheet":Z
    .end local v31    # "lreProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v33    # "p":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v38    # "stylesheetProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v41    # "tfe":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v39

    #@cb
    .line 310
    .local v39, "te":Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@cd
    move-object/from16 v0, v39

    #@cf
    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@d2
    throw v6

    #@d3
    .line 133
    .end local v39    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v5    # "stylesheetAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v7    # "attrLocalName":Ljava/lang/String;
    .restart local v9    # "attrUri":Ljava/lang/String;
    .restart local v21    # "excludeXSLDecl":Z
    .restart local v22    # "i":I
    .restart local v27    # "isLREAsStyleSheet":Z
    .restart local v29    # "locator":Lorg/xml/sax/Locator;
    .restart local v30    # "lreAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v31    # "lreProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v32    # "n":I
    .restart local v33    # "p":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v36    # "slocator":Lorg/apache/xml/utils/SAXSourceLocator;
    .restart local v37    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    .restart local v38    # "stylesheetProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v42    # "value":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string/jumbo v6, "xmlns:"

    #@d6
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d9
    move-result v6

    #@da
    if-nez v6, :cond_3

    #@dc
    .line 134
    const-string/jumbo v6, "xmlns"

    #@df
    .line 133
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result v6

    #@e3
    if-eqz v6, :cond_4

    #@e5
    .line 134
    :cond_3
    const-string/jumbo v6, "http://www.w3.org/1999/XSL/Transform"

    #@e8
    move-object/from16 v0, v42

    #@ea
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v6

    #@ee
    .line 133
    if-nez v6, :cond_1

    #@f0
    .line 142
    :cond_4
    move-object/from16 v0, p5

    #@f2
    move/from16 v1, v22

    #@f4
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@f7
    move-result-object v11

    #@f8
    .line 143
    move-object/from16 v0, p5

    #@fa
    move/from16 v1, v22

    #@fc
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@ff
    move-result-object v12

    #@100
    .line 144
    move-object/from16 v0, p5

    #@102
    move/from16 v1, v22

    #@104
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@107
    move-result-object v13

    #@108
    move-object/from16 v8, v30

    #@10a
    move-object v10, v7

    #@10b
    .line 141
    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    #@10e
    goto :goto_1

    #@10f
    .line 148
    .end local v7    # "attrLocalName":Ljava/lang/String;
    .end local v9    # "attrUri":Ljava/lang/String;
    .end local v42    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 p5, v30

    #@111
    .line 154
    :try_start_4
    const-string/jumbo v6, "stylesheet"

    #@114
    move-object/from16 v0, v38

    #@116
    move-object/from16 v1, p1

    #@118
    move-object/from16 v2, v37

    #@11a
    invoke-virtual {v0, v1, v6, v5, v2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_1

    #@11d
    .line 176
    :try_start_5
    move-object/from16 v0, p1

    #@11f
    move-object/from16 v1, v37

    #@121
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@124
    .line 178
    new-instance v40, Lorg/apache/xalan/templates/ElemTemplate;

    #@126
    invoke-direct/range {v40 .. v40}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@129
    .line 179
    .local v40, "template":Lorg/apache/xalan/templates/ElemTemplate;
    if-eqz v36, :cond_6

    #@12b
    .line 180
    move-object/from16 v0, v40

    #@12d
    move-object/from16 v1, v36

    #@12f
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplate;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@132
    .line 182
    :cond_6
    move-object/from16 v0, p0

    #@134
    move-object/from16 v1, p1

    #@136
    move-object/from16 v2, v40

    #@138
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorLRE;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@13b
    .line 184
    new-instance v10, Lorg/apache/xpath/XPath;

    #@13d
    const-string/jumbo v11, "/"

    #@140
    .line 185
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@143
    move-result-object v6

    #@144
    invoke-virtual {v6}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@147
    move-result-object v15

    #@148
    .line 184
    const/4 v14, 0x1

    #@149
    move-object/from16 v12, v37

    #@14b
    move-object/from16 v13, v37

    #@14d
    invoke-direct/range {v10 .. v15}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@150
    .line 187
    .local v10, "rootMatch":Lorg/apache/xpath/XPath;
    move-object/from16 v0, v40

    #@152
    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    #@155
    .line 190
    move-object/from16 v0, v37

    #@157
    move-object/from16 v1, v40

    #@159
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    #@15c
    .line 192
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@15f
    move-result-object v33

    #@160
    .line 193
    const/16 v21, 0x1

    #@162
    .line 196
    .end local v5    # "stylesheetAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v10    # "rootMatch":Lorg/apache/xpath/XPath;
    .end local v22    # "i":I
    .end local v29    # "locator":Lorg/xml/sax/Locator;
    .end local v30    # "lreAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v31    # "lreProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v32    # "n":I
    .end local v36    # "slocator":Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v37    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    .end local v38    # "stylesheetProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v40    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorLRE;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@165
    move-result-object v17

    #@166
    .line 197
    .local v17, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;

    #@169
    move-result-object v16

    #@16a
    .line 198
    .local v16, "classObject":Ljava/lang/Class;
    const/16 v26, 0x0

    #@16c
    .line 199
    .local v26, "isExtension":Z
    const/16 v25, 0x0

    #@16e
    .line 200
    .local v25, "isComponentDecl":Z
    const/16 v28, 0x0

    #@170
    .line 202
    .end local v26    # "isExtension":Z
    .local v28, "isUnknownTopLevel":Z
    :goto_2
    if-eqz v33, :cond_9

    #@172
    .line 206
    move-object/from16 v0, v33

    #@174
    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@176
    if-eqz v6, :cond_d

    #@178
    .line 208
    move-object/from16 v0, v33

    #@17a
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@17c
    move-object/from16 v34, v0

    #@17e
    .line 210
    .local v34, "parentElem":Lorg/apache/xalan/templates/ElemLiteralResult;
    move-object/from16 v0, v34

    #@180
    move-object/from16 v1, p2

    #@182
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_1

    #@185
    move-result v26

    #@186
    .line 230
    .end local v34    # "parentElem":Lorg/apache/xalan/templates/ElemLiteralResult;
    :cond_8
    :goto_3
    if-eqz v26, :cond_10

    #@188
    .line 236
    :cond_9
    const/16 v19, 0x0

    #@18a
    .line 240
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v26, :cond_11

    #@18c
    .line 244
    :try_start_6
    new-instance v20, Lorg/apache/xalan/templates/ElemExtensionCall;

    #@18e
    invoke-direct/range {v20 .. v20}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    #@191
    .local v20, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    move-object/from16 v19, v20

    #@193
    .line 261
    .end local v20    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@196
    move-result-object v6

    #@197
    move-object/from16 v0, v19

    #@199
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@19c
    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@19f
    move-result-object v6

    #@1a0
    move-object/from16 v0, v19

    #@1a2
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@1a5
    .line 263
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@1a8
    move-result-object v6

    #@1a9
    move-object/from16 v0, v19

    #@1ab
    move/from16 v1, v21

    #@1ad
    invoke-virtual {v0, v6, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    #@1b0
    .line 265
    move-object/from16 v0, v19

    #@1b2
    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1b4
    if-eqz v6, :cond_a

    #@1b6
    .line 267
    move-object/from16 v0, v19

    #@1b8
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1ba
    move-object v6, v0

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    #@1c0
    .line 268
    move-object/from16 v0, v19

    #@1c2
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1c4
    move-object v6, v0

    #@1c5
    move-object/from16 v0, p3

    #@1c7
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    #@1ca
    .line 269
    move-object/from16 v0, v19

    #@1cc
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1ce
    move-object v6, v0

    #@1cf
    move-object/from16 v0, p4

    #@1d1
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    #@1d4
    .line 270
    move-object/from16 v0, v19

    #@1d6
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1d8
    move-object v6, v0

    #@1d9
    move/from16 v0, v27

    #@1db
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setIsLiteralResultAsStylesheet(Z)V
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_1

    #@1de
    .line 283
    .end local v19    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_a
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    #@1e0
    move-object/from16 v1, p1

    #@1e2
    move-object/from16 v2, p4

    #@1e4
    move-object/from16 v3, p5

    #@1e6
    move-object/from16 v4, v19

    #@1e8
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/processor/ProcessorLRE;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@1eb
    .line 286
    if-nez v26, :cond_b

    #@1ed
    move-object/from16 v0, v19

    #@1ef
    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1f1
    if-eqz v6, :cond_b

    #@1f3
    .line 289
    move-object/from16 v0, v19

    #@1f5
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1f7
    move-object v6, v0

    #@1f8
    move-object/from16 v0, p2

    #@1fa
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    #@1fd
    move-result v26

    #@1fe
    .line 291
    .local v26, "isExtension":Z
    if-eqz v26, :cond_b

    #@200
    .line 295
    new-instance v19, Lorg/apache/xalan/templates/ElemExtensionCall;

    #@202
    invoke-direct/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    #@205
    .line 297
    .restart local v19    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@208
    move-result-object v6

    #@209
    move-object/from16 v0, v19

    #@20b
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@20e
    .line 298
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@211
    move-result-object v6

    #@212
    move-object/from16 v0, v19

    #@214
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    #@217
    .line 299
    move-object/from16 v0, v19

    #@219
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@21b
    move-object v6, v0

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    #@221
    .line 300
    move-object/from16 v0, v19

    #@223
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@225
    move-object v6, v0

    #@226
    move-object/from16 v0, p3

    #@228
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    #@22b
    .line 301
    move-object/from16 v0, v19

    #@22d
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@22f
    move-object v6, v0

    #@230
    move-object/from16 v0, p4

    #@232
    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    #@235
    .line 302
    move-object/from16 v0, p0

    #@237
    move-object/from16 v1, p1

    #@239
    move-object/from16 v2, p4

    #@23b
    move-object/from16 v3, p5

    #@23d
    move-object/from16 v4, v19

    #@23f
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/processor/ProcessorLRE;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@242
    .line 306
    .end local v19    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v26    # "isExtension":Z
    :cond_b
    move-object/from16 v0, p0

    #@244
    move-object/from16 v1, p1

    #@246
    move-object/from16 v2, v19

    #@248
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorLRE;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@24b
    .line 70
    return-void

    #@24c
    .line 158
    .end local v16    # "classObject":Ljava/lang/Class;
    .end local v17    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v25    # "isComponentDecl":Z
    .end local v28    # "isUnknownTopLevel":Z
    .restart local v5    # "stylesheetAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v22    # "i":I
    .restart local v29    # "locator":Lorg/xml/sax/Locator;
    .restart local v30    # "lreAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v31    # "lreProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v32    # "n":I
    .restart local v36    # "slocator":Lorg/apache/xml/utils/SAXSourceLocator;
    .restart local v37    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    .restart local v38    # "stylesheetProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    :catch_2
    move-exception v18

    #@24d
    .line 166
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/xalan/templates/Stylesheet;->getDeclaredPrefixes()Ljava/util/List;

    #@250
    move-result-object v6

    #@251
    if-eqz v6, :cond_c

    #@253
    .line 167
    move-object/from16 v0, p0

    #@255
    move-object/from16 v1, v37

    #@257
    invoke-direct {v0, v1}, Lorg/apache/xalan/processor/ProcessorLRE;->declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z

    #@25a
    move-result v6

    #@25b
    if-eqz v6, :cond_c

    #@25d
    .line 173
    new-instance v6, Lorg/xml/sax/SAXException;

    #@25f
    move-object/from16 v0, v18

    #@261
    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@264
    throw v6

    #@265
    .line 169
    :cond_c
    new-instance v6, Lorg/xml/sax/SAXException;

    #@267
    const-string/jumbo v8, "WG_OLD_XSLT_NS"

    #@26a
    const/4 v11, 0x0

    #@26b
    invoke-static {v8, v11}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26e
    move-result-object v8

    #@26f
    invoke-direct {v6, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@272
    throw v6

    #@273
    .line 212
    .end local v5    # "stylesheetAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v22    # "i":I
    .end local v29    # "locator":Lorg/xml/sax/Locator;
    .end local v30    # "lreAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v31    # "lreProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v32    # "n":I
    .end local v36    # "slocator":Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v37    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    .end local v38    # "stylesheetProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v16    # "classObject":Ljava/lang/Class;
    .restart local v17    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .restart local v25    # "isComponentDecl":Z
    .restart local v28    # "isUnknownTopLevel":Z
    :cond_d
    move-object/from16 v0, v33

    #@275
    instance-of v6, v0, Lorg/apache/xalan/templates/Stylesheet;

    #@277
    if-eqz v6, :cond_8

    #@279
    .line 214
    move-object/from16 v0, v33

    #@27b
    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    #@27d
    move-object/from16 v35, v0

    #@27f
    .line 216
    .local v35, "parentElem":Lorg/apache/xalan/templates/Stylesheet;
    move-object/from16 v0, v35

    #@281
    move-object/from16 v1, p2

    #@283
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    #@286
    move-result v26

    #@287
    .line 218
    .restart local v26    # "isExtension":Z
    if-nez v26, :cond_f

    #@289
    if-eqz p2, :cond_f

    #@28b
    .line 219
    const-string/jumbo v6, "http://xml.apache.org/xalan"

    #@28e
    move-object/from16 v0, p2

    #@290
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@293
    move-result v6

    #@294
    if-nez v6, :cond_e

    #@296
    .line 220
    const-string/jumbo v6, "http://xml.apache.org/xslt"

    #@299
    move-object/from16 v0, p2

    #@29b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29e
    move-result v6

    #@29f
    .line 218
    if-eqz v6, :cond_f

    #@2a1
    .line 222
    :cond_e
    const/16 v25, 0x1

    #@2a3
    goto/16 :goto_3

    #@2a5
    .line 226
    :cond_f
    const/16 v28, 0x1

    #@2a7
    goto/16 :goto_3

    #@2a9
    .line 233
    .end local v26    # "isExtension":Z
    .end local v35    # "parentElem":Lorg/apache/xalan/templates/Stylesheet;
    :cond_10
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_1

    #@2ac
    move-result-object v33

    #@2ad
    goto/16 :goto_2

    #@2af
    .line 246
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_11
    if-eqz v25, :cond_12

    #@2b1
    .line 248
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2b4
    move-result-object v6

    #@2b5
    move-object v0, v6

    #@2b6
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2b8
    move-object/from16 v19, v0

    #@2ba
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    goto/16 :goto_4

    #@2bc
    .line 250
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_12
    if-eqz v28, :cond_13

    #@2be
    .line 254
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2c1
    move-result-object v6

    #@2c2
    move-object v0, v6

    #@2c3
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2c5
    move-object/from16 v19, v0

    #@2c7
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    goto/16 :goto_4

    #@2c9
    .line 258
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2cc
    move-result-object v6

    #@2cd
    move-object v0, v6

    #@2ce
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2d0
    move-object/from16 v19, v0
    :try_end_8
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_1

    #@2d2
    .local v19, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    goto/16 :goto_4

    #@2d4
    .line 279
    .end local v19    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :catch_3
    move-exception v23

    #@2d5
    .line 280
    .local v23, "iae":Ljava/lang/IllegalAccessException;
    :try_start_9
    const-string/jumbo v6, "ER_FAILED_CREATING_ELEMLITRSLT"

    #@2d8
    const/4 v8, 0x0

    #@2d9
    move-object/from16 v0, p1

    #@2db
    move-object/from16 v1, v23

    #@2dd
    invoke-virtual {v0, v6, v8, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@2e0
    goto/16 :goto_5

    #@2e2
    .line 275
    .end local v23    # "iae":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v24

    #@2e3
    .line 276
    .local v24, "ie":Ljava/lang/InstantiationException;
    const-string/jumbo v6, "ER_FAILED_CREATING_ELEMLITRSLT"

    #@2e6
    const/4 v8, 0x0

    #@2e7
    move-object/from16 v0, p1

    #@2e9
    move-object/from16 v1, v24

    #@2eb
    invoke-virtual {v0, v6, v8, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_1

    #@2ee
    goto/16 :goto_5
.end method
