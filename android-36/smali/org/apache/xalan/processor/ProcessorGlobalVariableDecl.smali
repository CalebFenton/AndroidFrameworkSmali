.class Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorGlobalVariableDecl.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x52a209c5bfe412beL


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 31
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

    .line 52
    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void
.end method

.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    .line 73
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->setVariable(Lorg/apache/xalan/templates/ElemVariable;)V

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
