.class public Lorg/apache/xalan/processor/ProcessorStylesheetElement;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorStylesheetElement.java"


# static fields
.field static final serialVersionUID:J = -0xc2e917946bf5818L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 144
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    .line 145
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@9
    .line 141
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
    .line 123
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
    .line 125
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
    .line 126
    const/4 v1, 0x1

    #@1c
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    #@1f
    .line 128
    :cond_0
    return-object v0
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
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
    .line 64
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@3
    .line 67
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    #@6
    move-result v3

    #@7
    .line 70
    .local v3, "stylesheetType":I
    const/4 v6, 0x1

    #@8
    if-ne v3, v6, :cond_0

    #@a
    .line 74
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@d
    move-result-object v2

    #@e
    .line 101
    .local v2, "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@15
    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@1c
    .line 104
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/Stylesheet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    #@23
    .line 105
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@26
    .line 107
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@29
    move-result-object v6

    #@2a
    .line 106
    invoke-virtual {p0, p1, p4, p5, v6}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@2d
    .line 108
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {p1, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@34
    .line 61
    return-void

    #@35
    .line 77
    .end local v2    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    :catch_0
    move-exception v5

    #@36
    .line 78
    .local v5, "tfe":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    #@38
    invoke-direct {v6, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@3b
    throw v6
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    #@3c
    .line 111
    .end local v3    # "stylesheetType":I
    .end local v5    # "tfe":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v4

    #@3d
    .line 112
    .local v4, "te":Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@3f
    invoke-direct {v6, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@42
    throw v6

    #@43
    .line 83
    .end local v4    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "stylesheetType":I
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@46
    move-result-object v0

    #@47
    .line 85
    .local v0, "parent":Lorg/apache/xalan/templates/Stylesheet;
    const/4 v6, 0x3

    #@48
    if-ne v3, v6, :cond_1

    #@4a
    .line 87
    new-instance v1, Lorg/apache/xalan/templates/StylesheetComposed;

    #@4c
    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    #@4f
    .line 89
    .local v1, "sc":Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V

    #@52
    .line 91
    move-object v2, v1

    #@53
    .restart local v2    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    goto :goto_0

    #@54
    .line 95
    .end local v1    # "sc":Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v2    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    :cond_1
    new-instance v2, Lorg/apache/xalan/templates/Stylesheet;

    #@56
    invoke-direct {v2, v0}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    #@59
    .line 97
    .restart local v2    # "stylesheet":Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/Stylesheet;->setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    #@5c
    goto :goto_0
.end method
