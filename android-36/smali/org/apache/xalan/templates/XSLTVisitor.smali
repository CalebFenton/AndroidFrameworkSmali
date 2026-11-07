.class public Lorg/apache/xalan/templates/XSLTVisitor;
.super Lorg/apache/xpath/XPathVisitor;
.source "XSLTVisitor.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist visitAVT(Lorg/apache/xalan/templates/AVT;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitExtensionElement(Lorg/apache/xalan/templates/ElemExtensionCall;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitLiteralResultElement(Lorg/apache/xalan/templates/ElemLiteralResult;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist visitVariableOrParamDecl(Lorg/apache/xalan/templates/ElemVariable;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method
