.class Lorg/apache/xalan/processor/ProcessorDecimalFormat;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorDecimalFormat.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x461f85c3bca34d9bL


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 65
    new-instance p2, Lorg/apache/xalan/templates/DecimalFormatProperties;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result p3

    invoke-direct {p2, p3}, Lorg/apache/xalan/templates/DecimalFormatProperties;-><init>(I)V

    .line 67
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 68
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 70
    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V

    .line 73
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method
