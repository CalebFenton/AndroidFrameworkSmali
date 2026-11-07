.class Lorg/apache/xalan/processor/ProcessorTemplate;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorTemplate.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x75602ff8b730a114L


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 49
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 50
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 51
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    check-cast p2, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method
