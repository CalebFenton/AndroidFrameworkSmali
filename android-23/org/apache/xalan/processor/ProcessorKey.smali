.class Lorg/apache/xalan/processor/ProcessorKey;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorKey.java"


# static fields
.field static final serialVersionUID:J = 0x3b781b9f8fa66243L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 17
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "rawName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .param p4, "target"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorKey;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@3
    move-result-object v10

    #@4
    .line 96
    .local v10, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v15, Ljava/util/ArrayList;

    #@6
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 97
    .local v15, "processedDefs":Ljava/util/List;
    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    #@c
    move-result v14

    #@d
    .line 99
    .local v14, "nAttrs":I
    const/4 v12, 0x0

    #@e
    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_2

    #@10
    .line 101
    move-object/from16 v0, p3

    #@12
    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 102
    .local v4, "attrUri":Ljava/lang/String;
    move-object/from16 v0, p3

    #@18
    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 103
    .local v5, "attrLocalName":Ljava/lang/String;
    invoke-virtual {v10, v4, v5}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1f
    move-result-object v2

    #@20
    .line 105
    .local v2, "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    if-nez v2, :cond_0

    #@22
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    move-object/from16 v0, p3

    #@29
    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 110
    const-string/jumbo v6, "attribute is not allowed on the "

    #@34
    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 111
    const-string/jumbo v6, " element!"

    #@41
    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 111
    const/4 v6, 0x0

    #@4a
    .line 109
    move-object/from16 v0, p1

    #@4c
    invoke-virtual {v0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4f
    .line 99
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@51
    goto :goto_0

    #@52
    .line 115
    :cond_0
    move-object/from16 v0, p3

    #@54
    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@57
    move-result-object v16

    #@58
    .line 117
    .local v16, "valueString":Ljava/lang/String;
    const-string/jumbo v3, "key("

    #@5b
    move-object/from16 v0, v16

    #@5d
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@60
    move-result v3

    #@61
    if-ltz v3, :cond_1

    #@63
    .line 121
    const-string/jumbo v3, "ER_INVALID_KEY_CALL"

    #@66
    const/4 v6, 0x0

    #@67
    .line 120
    invoke-static {v3, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 121
    const/4 v6, 0x0

    #@6c
    .line 119
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@71
    .line 123
    :cond_1
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@74
    .line 125
    move-object/from16 v0, p3

    #@76
    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    move-object/from16 v0, p3

    #@7c
    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    move-object/from16 v3, p1

    #@82
    move-object/from16 v8, p4

    #@84
    .line 124
    invoke-virtual/range {v2 .. v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@87
    goto :goto_1

    #@88
    .line 130
    .end local v2    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v4    # "attrUri":Ljava/lang/String;
    .end local v5    # "attrLocalName":Ljava/lang/String;
    .end local v16    # "valueString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@8b
    move-result-object v9

    #@8c
    .line 131
    .local v9, "attrDefs":[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v13, v9

    #@8d
    .line 133
    .local v13, "nAttrDefs":I
    const/4 v12, 0x0

    #@8e
    :goto_2
    if-ge v12, v13, :cond_5

    #@90
    .line 135
    aget-object v2, v9, v12

    #@92
    .line 136
    .restart local v2    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    #@95
    move-result-object v11

    #@96
    .line 138
    .local v11, "defVal":Ljava/lang/String;
    if-eqz v11, :cond_3

    #@98
    .line 140
    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9b
    move-result v3

    #@9c
    if-nez v3, :cond_3

    #@9e
    .line 142
    move-object/from16 v0, p1

    #@a0
    move-object/from16 v1, p4

    #@a2
    invoke-virtual {v2, v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@a5
    .line 146
    :cond_3
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_4

    #@ab
    .line 148
    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@ae
    move-result v3

    #@af
    if-nez v3, :cond_4

    #@b1
    .line 151
    const-string/jumbo v3, "ER_REQUIRES_ATTRIB"

    #@b4
    const/4 v6, 0x2

    #@b5
    new-array v6, v6, [Ljava/lang/Object;

    #@b7
    const/4 v7, 0x0

    #@b8
    aput-object p2, v6, v7

    #@ba
    .line 152
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@bd
    move-result-object v7

    #@be
    const/4 v8, 0x1

    #@bf
    aput-object v7, v6, v8

    #@c1
    .line 150
    invoke-static {v3, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    .line 152
    const/4 v6, 0x0

    #@c6
    .line 149
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@cb
    .line 133
    :cond_4
    add-int/lit8 v12, v12, 0x1

    #@cd
    goto :goto_2

    #@ce
    .line 89
    .end local v2    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v11    # "defVal":Ljava/lang/String;
    :cond_5
    return-void
.end method

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
    .line 69
    new-instance v0, Lorg/apache/xalan/templates/KeyDeclaration;

    #@2
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/KeyDeclaration;-><init>(Lorg/apache/xalan/templates/Stylesheet;I)V

    #@d
    .line 71
    .local v0, "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/KeyDeclaration;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@14
    .line 72
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/KeyDeclaration;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@1b
    .line 73
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorKey;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@1e
    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V

    #@25
    .line 66
    return-void
.end method
