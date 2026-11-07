.class public Lorg/apache/xalan/processor/ProcessorExsltFunction;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFunction.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x21771cf559bd0644L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method greylist ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 2

    .line 176
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    instance-of p0, p0, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-nez p0, :cond_24

    .line 178
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 179
    instance-of p0, p1, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-nez p0, :cond_22

    instance-of p0, p1, Lorg/apache/xalan/templates/ElemVariable;

    if-nez p0, :cond_22

    instance-of p0, p1, Lorg/apache/xalan/templates/ElemParam;

    if-nez p0, :cond_22

    instance-of p0, p1, Lorg/apache/xalan/templates/ElemMessage;

    if-eqz p0, :cond_0

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 101
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    check-cast p2, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v0, :cond_12

    .line 70
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "func:function element must be top level."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    :cond_12
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string p0, "name"

    invoke-interface {p5, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_24

    return-void

    .line 87
    :cond_24
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p2, "func:function name must have namespace"

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public greylist validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :cond_0
    if-eqz p1, :cond_7f

    .line 129
    instance-of v0, p1, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-eqz v0, :cond_1e

    .line 130
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 131
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xalan/templates/ElemFallback;

    if-nez v0, :cond_1e

    .line 134
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "func:result has an illegal following sibling (only xsl:fallback allowed)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    :cond_1e
    instance-of v0, p1, Lorg/apache/xalan/templates/ElemApplyImport;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemApplyTemplates;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemAttribute;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemCallTemplate;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemComment;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemCopy;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemCopyOf;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemElement;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemNumber;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemPI;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemText;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemTextLiteral;

    if-nez v0, :cond_56

    instance-of v0, p1, Lorg/apache/xalan/templates/ElemValueOf;

    if-eqz v0, :cond_66

    .line 151
    :cond_56
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 154
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "misplaced literal result in a func:function container."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    :cond_66
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :cond_6d
    if-nez p1, :cond_0

    .line 159
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    if-nez p1, :cond_79

    .line 161
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :cond_79
    if-eqz v0, :cond_7f

    .line 162
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-eqz v1, :cond_6d

    :cond_7f
    return-void
.end method
