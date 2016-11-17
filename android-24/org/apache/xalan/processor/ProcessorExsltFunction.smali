.class public Lorg/apache/xalan/processor/ProcessorExsltFunction;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFunction.java"


# static fields
.field static final serialVersionUID:J = 0x21771cf559bd0644L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 2
    .param p1, "child"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 176
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    move-result-object v1

    #@a
    instance-of v1, v1, Lorg/apache/xalan/templates/ElemExsltFunction;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 186
    :cond_0
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 178
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@13
    move-result-object v0

    #@14
    .line 179
    .local v0, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 180
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemVariable;

    #@1a
    .line 179
    if-nez v1, :cond_2

    #@1c
    .line 181
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemParam;

    #@1e
    .line 179
    if-nez v1, :cond_2

    #@20
    .line 182
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemMessage;

    #@22
    .line 179
    if-eqz v1, :cond_3

    #@24
    .line 183
    :cond_2
    const/4 v1, 0x1

    #@25
    return v1

    #@26
    .line 184
    :cond_3
    move-object p1, v0

    #@27
    goto :goto_0
.end method

.method protected appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@3
    .line 101
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@a
    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@d
    move-result-object v0

    #@e
    check-cast p2, Lorg/apache/xalan/templates/ElemTemplate;

    #@10
    .end local p2    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    #@13
    .line 96
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 112
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 113
    .local v0, "function":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V

    #@7
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 110
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
    .line 66
    const-string/jumbo v1, ""

    #@3
    .line 67
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    move-result-object v3

    #@7
    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    #@9
    if-nez v3, :cond_0

    #@b
    .line 69
    const-string/jumbo v1, "func:function element must be top level."

    #@e
    .line 70
    new-instance v3, Lorg/xml/sax/SAXException;

    #@10
    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@16
    .line 72
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@19
    .line 74
    const-string/jumbo v3, "name"

    #@1c
    invoke-interface {p5, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 75
    .local v2, "val":Ljava/lang/String;
    const-string/jumbo v3, ":"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@26
    move-result v0

    #@27
    .line 76
    .local v0, "indexOfColon":I
    if-lez v0, :cond_1

    #@29
    .line 63
    :goto_0
    return-void

    #@2a
    .line 86
    :cond_1
    const-string/jumbo v1, "func:function name must have namespace"

    #@2d
    .line 87
    new-instance v3, Lorg/xml/sax/SAXException;

    #@2f
    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@35
    goto :goto_0
.end method

.method public validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V
    .locals 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    const-string/jumbo v0, ""

    #@3
    .line 126
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_9

    #@5
    .line 129
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 130
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c
    move-result-object v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 131
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    move-result-object v2

    #@13
    instance-of v2, v2, Lorg/apache/xalan/templates/ElemFallback;

    #@15
    if-eqz v2, :cond_6

    #@17
    .line 137
    :cond_0
    :goto_1
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemApplyImport;

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 138
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemApplyTemplates;

    #@1d
    .line 137
    if-nez v2, :cond_1

    #@1f
    .line 139
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemAttribute;

    #@21
    .line 137
    if-nez v2, :cond_1

    #@23
    .line 140
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCallTemplate;

    #@25
    .line 137
    if-nez v2, :cond_1

    #@27
    .line 141
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemComment;

    #@29
    .line 137
    if-nez v2, :cond_1

    #@2b
    .line 142
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCopy;

    #@2d
    .line 137
    if-nez v2, :cond_1

    #@2f
    .line 143
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCopyOf;

    #@31
    .line 137
    if-nez v2, :cond_1

    #@33
    .line 144
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemElement;

    #@35
    .line 137
    if-nez v2, :cond_1

    #@37
    .line 145
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@39
    .line 137
    if-nez v2, :cond_1

    #@3b
    .line 146
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemNumber;

    #@3d
    .line 137
    if-nez v2, :cond_1

    #@3f
    .line 147
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemPI;

    #@41
    .line 137
    if-nez v2, :cond_1

    #@43
    .line 148
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemText;

    #@45
    .line 137
    if-nez v2, :cond_1

    #@47
    .line 149
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@49
    .line 137
    if-nez v2, :cond_1

    #@4b
    .line 150
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemValueOf;

    #@4d
    .line 137
    if-eqz v2, :cond_2

    #@4f
    .line 151
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_7

    #@55
    .line 156
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@58
    move-result-object v1

    #@59
    .line 157
    .local v1, "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    if-nez v1, :cond_8

    #@5b
    .line 159
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5e
    move-result-object v1

    #@5f
    .line 160
    if-nez v1, :cond_4

    #@61
    .line 161
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@64
    move-result-object p1

    #@65
    .line 162
    :cond_4
    if-eqz p1, :cond_5

    #@67
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemExsltFunction;

    #@69
    if-eqz v2, :cond_3

    #@6b
    .line 163
    :cond_5
    return-void

    #@6c
    .line 133
    .end local v1    # "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_6
    const-string/jumbo v0, "func:result has an illegal following sibling (only xsl:fallback allowed)"

    #@6f
    .line 134
    new-instance v2, Lorg/xml/sax/SAXException;

    #@71
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@74
    invoke-virtual {p2, v0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@77
    goto :goto_1

    #@78
    .line 153
    :cond_7
    const-string/jumbo v0, "misplaced literal result in a func:function container."

    #@7b
    .line 154
    new-instance v2, Lorg/xml/sax/SAXException;

    #@7d
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@80
    invoke-virtual {p2, v0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@83
    goto :goto_2

    #@84
    .line 165
    .restart local v1    # "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_8
    move-object p1, v1

    #@85
    goto/16 :goto_0

    #@87
    .line 123
    .end local v1    # "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_9
    return-void
.end method
