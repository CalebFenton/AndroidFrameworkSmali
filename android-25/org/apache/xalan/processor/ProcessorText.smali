.class public Lorg/apache/xalan/processor/ProcessorText;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorText.java"


# static fields
.field static final serialVersionUID:J = 0x47c058296f0c4383L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    const-string/jumbo v2, "text()"

    #@3
    const-string/jumbo v3, "text"

    #@6
    const/4 v4, 0x0

    #@7
    invoke-virtual {p1, v4, v2, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lorg/apache/xalan/processor/ProcessorCharacters;

    #@d
    .local v0, "charProcessor":Lorg/apache/xalan/processor/ProcessorCharacters;
    move-object v2, p2

    #@e
    .line 55
    check-cast v2, Lorg/apache/xalan/templates/ElemText;

    #@10
    invoke-virtual {v0, v2}, Lorg/apache/xalan/processor/ProcessorCharacters;->setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V

    #@13
    .line 57
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@16
    move-result-object v1

    #@17
    .line 59
    .local v1, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1a
    .line 60
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p2, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@21
    .line 48
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 77
    const-string/jumbo v1, "text()"

    #@4
    const-string/jumbo v2, "text"

    #@7
    invoke-virtual {p1, v3, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lorg/apache/xalan/processor/ProcessorCharacters;

    #@d
    .line 79
    .local v0, "charProcessor":Lorg/apache/xalan/processor/ProcessorCharacters;
    invoke-virtual {v0, v3}, Lorg/apache/xalan/processor/ProcessorCharacters;->setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V

    #@10
    .line 73
    return-void
.end method
