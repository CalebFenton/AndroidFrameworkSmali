.class Lorg/apache/xalan/processor/ProcessorAttributeSet;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorAttributeSet.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x59d7578cbb3d8960L


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 35
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

    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 65
    new-instance p2, Lorg/apache/xalan/templates/ElemAttributeSet;

    invoke-direct {p2}, Lorg/apache/xalan/templates/ElemAttributeSet;-><init>()V

    .line 67
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 70
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_13} :catch_2f

    .line 77
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 78
    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 79
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    .line 82
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    .line 84
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 85
    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void

    :catch_2f
    move-exception p0

    .line 74
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
