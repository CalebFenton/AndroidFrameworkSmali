.class Lorg/apache/xalan/processor/ProcessorDecimalFormat;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorDecimalFormat.java"


# static fields
.field static final serialVersionUID:J = -0x461f85c3bca34d9bL


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
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
    .line 65
    new-instance v0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@2
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/DecimalFormatProperties;-><init>(I)V

    #@9
    .line 67
    .local v0, "dfp":Lorg/apache/xalan/templates/DecimalFormatProperties;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@10
    .line 68
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@17
    .line 70
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorDecimalFormat;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@1a
    .line 71
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V

    #@21
    .line 73
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@28
    .line 62
    return-void
.end method
