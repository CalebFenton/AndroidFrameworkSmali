.class public Lorg/apache/xalan/processor/ProcessorTemplateElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorTemplateElem.java"


# static fields
.field static final serialVersionUID:J = 0x73cf5fd4c29a2a83L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
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
    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v0, :cond_0

    #@6
    .line 106
    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    .line 107
    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@c
    .line 100
    :cond_0
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 124
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@e
    .line 121
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
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
    .line 53
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@3
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@6
    move-result-object v2

    #@7
    .line 58
    .local v2, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    #@a
    move-result-object v1

    #@b
    .line 59
    .local v1, "classObject":Ljava/lang/Class;
    const/4 v3, 0x0

    #@c
    .line 63
    .local v3, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@f
    move-result-object v7

    #@10
    move-object v0, v7

    #@11
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@13
    move-object v3, v0

    #@14
    .line 65
    .local v3, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@1b
    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@22
    .line 67
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 78
    .end local v3    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1, p4, p5, v3}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@2c
    .line 79
    invoke-virtual {p0, p1, v3}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@2f
    .line 50
    return-void

    #@30
    .line 74
    :catch_0
    move-exception v4

    #@31
    .line 75
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "ER_FAILED_CREATING_ELEMTMPL"

    #@34
    const/4 v8, 0x0

    #@35
    invoke-virtual {p1, v7, v8, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    #@38
    goto :goto_0

    #@39
    .line 82
    .end local v1    # "classObject":Ljava/lang/Class;
    .end local v2    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v6

    #@3a
    .line 83
    .local v6, "te":Ljavax/xml/transform/TransformerException;
    new-instance v7, Lorg/xml/sax/SAXException;

    #@3c
    invoke-direct {v7, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@3f
    throw v7

    #@40
    .line 70
    .end local v6    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v1    # "classObject":Ljava/lang/Class;
    .restart local v2    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    :catch_2
    move-exception v5

    #@41
    .line 71
    .local v5, "ie":Ljava/lang/InstantiationException;
    :try_start_3
    const-string/jumbo v7, "ER_FAILED_CREATING_ELEMTMPL"

    #@44
    const/4 v8, 0x0

    #@45
    invoke-virtual {p1, v7, v8, v5}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    #@48
    goto :goto_0
.end method
