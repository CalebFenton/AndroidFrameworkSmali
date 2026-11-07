.class public Lorg/apache/xalan/processor/ProcessorText;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorText.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x47c058296f0c4383L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 52
    const-string p0, "text()"

    const-string v0, "text"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1, p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/processor/ProcessorCharacters;

    .line 55
    move-object v0, p2

    check-cast v0, Lorg/apache/xalan/templates/ElemText;

    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/ProcessorCharacters;->setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V

    .line 57
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    .line 59
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 60
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 76
    const-string p0, "text()"

    const-string p2, "text"

    const/4 p3, 0x0

    .line 77
    invoke-virtual {p1, p3, p0, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/processor/ProcessorCharacters;

    .line 79
    invoke-virtual {p0, p3}, Lorg/apache/xalan/processor/ProcessorCharacters;->setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V

    return-void
.end method
