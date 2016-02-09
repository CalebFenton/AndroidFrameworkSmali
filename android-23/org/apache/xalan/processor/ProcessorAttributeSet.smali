.class Lorg/apache/xalan/processor/ProcessorAttributeSet;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorAttributeSet.java"


# static fields
.field static final serialVersionUID:J = -0x59d7578cbb3d8960L


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
    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    .line 101
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    new-instance v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    #@2
    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemAttributeSet;-><init>()V

    #@5
    .line 67
    .local v0, "eat":Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@c
    .line 70
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 77
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/ElemAttributeSet;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@1a
    .line 78
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorAttributeSet;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@1d
    .line 79
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Lorg/apache/xalan/templates/Stylesheet;->setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    #@24
    .line 82
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@27
    move-result-object v1

    #@28
    .line 84
    .local v1, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2b
    .line 85
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@2e
    .line 62
    return-void

    #@2f
    .line 73
    .end local v1    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :catch_0
    move-exception v2

    #@30
    .line 74
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@32
    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@35
    throw v3
.end method
