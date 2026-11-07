.class Lorg/apache/xalan/processor/ProcessorKey;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorKey.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x3b781b9f8fa66243L


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method greylist setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 92
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object p0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {v1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    const/4 v6, 0x0

    if-ge v5, v3, :cond_6e

    .line 101
    invoke-interface {v1, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-interface {v1, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-virtual {p0, v9, v10}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v7

    if-nez v7, :cond_45

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "attribute is not allowed on the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " element!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6b

    .line 115
    :cond_45
    invoke-interface {v1, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    const-string v11, "key("

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_5a

    .line 119
    const-string v8, "ER_INVALID_KEY_CALL"

    .line 120
    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {p1, v8, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :cond_5a
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v1, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, p1

    move-object/from16 v13, p4

    .line 124
    invoke-virtual/range {v7 .. v13}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    :goto_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 130
    :cond_6e
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object p0

    .line 131
    array-length v1, p0

    :goto_73
    if-ge v4, v1, :cond_ab

    .line 135
    aget-object v3, p0, v4

    .line 136
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 140
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    move-object/from16 v13, p4

    .line 142
    invoke-virtual {v3, p1, v13}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    goto :goto_8b

    :cond_89
    move-object/from16 v13, p4

    .line 146
    :goto_8b
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 148
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    .line 152
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 150
    const-string v5, "ER_REQUIRES_ATTRIB"

    invoke-static {v5, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p1, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_ab
    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 69
    new-instance p2, Lorg/apache/xalan/templates/KeyDeclaration;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lorg/apache/xalan/templates/KeyDeclaration;-><init>(Lorg/apache/xalan/templates/Stylesheet;I)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 73
    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/apache/xalan/processor/ProcessorKey;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V

    return-void
.end method
