.class public Lorg/apache/xalan/processor/ProcessorExsltFuncResult;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFuncResult.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x598760557a657ab7L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

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

    .line 51
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 52
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_2c

    .line 53
    instance-of p2, p0, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-nez p2, :cond_2c

    .line 55
    instance-of p2, p0, Lorg/apache/xalan/templates/ElemVariable;

    if-nez p2, :cond_1d

    instance-of p2, p0, Lorg/apache/xalan/templates/ElemParam;

    if-nez p2, :cond_1d

    instance-of p2, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-eqz p2, :cond_27

    .line 60
    :cond_1d
    new-instance p2, Lorg/xml/sax/SAXException;

    const-string p3, "func:result cannot appear within a variable, parameter, or another func:result."

    invoke-direct {p2, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    :cond_27
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    goto :goto_b

    :cond_2c
    if-nez p0, :cond_38

    .line 67
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p2, "func:result must appear in a func:function element"

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_38
    return-void
.end method
