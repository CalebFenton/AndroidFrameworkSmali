.class public Lorg/apache/xalan/processor/ProcessorStylesheetElement;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorStylesheetElement.java"


# static fields
.field static final whitelist serialVersionUID:J = -0xc2e917946bf5818L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 145
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    return-void
.end method

.method protected greylist getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 123
    new-instance p0, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getSchema()Lorg/apache/xalan/processor/XSLTSchema;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    .line 125
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    :cond_1f
    return-object p0
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 64
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 67
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I

    move-result p2
    :try_end_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_7} :catch_56

    const/4 p3, 0x1

    if-ne p2, p3, :cond_17

    .line 74
    :try_start_a
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p2
    :try_end_e
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a .. :try_end_e} :catch_f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_e} :catch_56

    goto :goto_2f

    :catch_f
    move-exception v0

    move-object p0, v0

    .line 78
    :try_start_11
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 83
    :cond_17
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_27

    .line 87
    new-instance p2, Lorg/apache/xalan/templates/StylesheetComposed;

    invoke-direct {p2, p3}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 89
    invoke-virtual {p3, p2}, Lorg/apache/xalan/templates/Stylesheet;->setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V

    goto :goto_2f

    .line 95
    :cond_27
    new-instance p2, Lorg/apache/xalan/templates/Stylesheet;

    invoke-direct {p2, p3}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 97
    invoke-virtual {p3, p2}, Lorg/apache/xalan/templates/Stylesheet;->setInclude(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 101
    :goto_2f
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 104
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    .line 105
    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 107
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p2

    .line 106
    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 108
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_55
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception v0

    move-object p0, v0

    .line 112
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
