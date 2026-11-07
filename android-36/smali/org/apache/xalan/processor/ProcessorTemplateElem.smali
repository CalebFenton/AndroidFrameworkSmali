.class public Lorg/apache/xalan/processor/ProcessorTemplateElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorTemplateElem.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x73cf5fd4c29a2a83L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

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

    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 106
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 107
    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    :cond_c
    return-void
.end method

.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 53
    const-string v1, "ER_FAILED_CREATING_ELEMTMPL"

    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 57
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;

    move-result-object p2
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_d} :catch_42

    const/4 p3, 0x0

    .line 63
    :try_start_e
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_14
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_14} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_14} :catch_2e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_14} :catch_42

    .line 65
    :try_start_14
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 67
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_29
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_29} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_29} :catch_2a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_29} :catch_42

    goto :goto_3b

    :catch_2a
    move-exception v0

    goto :goto_34

    :catch_2c
    move-exception v0

    goto :goto_38

    :catch_2e
    move-exception v0

    move-object p2, p3

    goto :goto_34

    :catch_31
    move-exception v0

    move-object p2, p3

    goto :goto_38

    .line 75
    :goto_34
    :try_start_34
    invoke-virtual {p1, v1, p3, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_3b

    .line 71
    :goto_38
    invoke-virtual {p1, v1, p3, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 78
    :goto_3b
    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_41
    .catch Ljavax/xml/transform/TransformerException; {:try_start_34 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception v0

    move-object p0, v0

    .line 83
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
