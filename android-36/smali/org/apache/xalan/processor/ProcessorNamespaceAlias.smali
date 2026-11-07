.class Lorg/apache/xalan/processor/ProcessorNamespaceAlias;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorNamespaceAlias.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x5791275e53accfd4L


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

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

    .line 66
    new-instance p2, Lorg/apache/xalan/templates/NamespaceAlias;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result p3

    invoke-direct {p2, p3}, Lorg/apache/xalan/templates/NamespaceAlias;-><init>(I)V

    .line 68
    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 69
    invoke-virtual {p2}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string p3, "#default"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string p5, ""

    if-eqz p4, :cond_1e

    .line 73
    invoke-virtual {p2, p5}, Lorg/apache/xalan/templates/NamespaceAlias;->setStylesheetPrefix(Ljava/lang/String;)V

    move-object p0, p5

    .line 75
    :cond_1e
    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-virtual {p2, p0}, Lorg/apache/xalan/templates/NamespaceAlias;->setStylesheetNamespace(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultPrefix()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3f

    .line 81
    invoke-virtual {p2, p5}, Lorg/apache/xalan/templates/NamespaceAlias;->setResultPrefix(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p5}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4f

    .line 84
    const-string p3, "ER_INVALID_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX_FOR_DEFAULT"

    invoke-virtual {p1, p3, p4, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_4f

    .line 88
    :cond_3f
    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4e

    .line 90
    const-string p5, "ER_INVALID_SET_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p5, p0, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_4e
    move-object p0, p3

    .line 93
    :cond_4f
    :goto_4f
    invoke-virtual {p2, p0}, Lorg/apache/xalan/templates/NamespaceAlias;->setResultNamespace(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V

    .line 95
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method
