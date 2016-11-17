.class public Lorg/apache/xalan/processor/ProcessorExsltFuncResult;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFuncResult.java"


# static fields
.field static final serialVersionUID:J = 0x598760557a657ab7L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 49
    const-string/jumbo v1, ""

    #@3
    .line 51
    .local v1, "msg":Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@6
    .line 52
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@d
    move-result-object v0

    #@e
    .line 53
    .local v0, "ancestor":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_0

    #@10
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemExsltFunction;

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 64
    :cond_0
    if-nez v0, :cond_1

    #@16
    .line 66
    const-string/jumbo v1, "func:result must appear in a func:function element"

    #@19
    .line 67
    new-instance v2, Lorg/xml/sax/SAXException;

    #@1b
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p1, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@21
    .line 47
    :cond_1
    return-void

    #@22
    .line 55
    :cond_2
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemVariable;

    #@24
    if-nez v2, :cond_3

    #@26
    .line 56
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemParam;

    #@28
    .line 55
    if-nez v2, :cond_3

    #@2a
    .line 57
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    #@2c
    .line 55
    if-eqz v2, :cond_4

    #@2e
    .line 59
    :cond_3
    const-string/jumbo v1, "func:result cannot appear within a variable, parameter, or another func:result."

    #@31
    .line 60
    new-instance v2, Lorg/xml/sax/SAXException;

    #@33
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {p1, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@39
    .line 62
    :cond_4
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3c
    move-result-object v0

    #@3d
    goto :goto_0
.end method
