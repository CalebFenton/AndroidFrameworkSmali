.class public Lorg/apache/xalan/templates/ElemAttribute;
.super Lorg/apache/xalan/templates/ElemElement;
.source "ElemAttribute.java"


# static fields
.field static final serialVersionUID:J = 0x7a5d0fbfb8530a13L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 225
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 227
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 253
    const-string/jumbo v1, "ER_CANNOT_ADD"

    #@a
    .line 254
    const/4 v2, 0x2

    #@b
    new-array v2, v2, [Ljava/lang/Object;

    #@d
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v2, v4

    #@14
    .line 255
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttribute;->getNodeName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 253
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemAttribute;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 260
    :sswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 227
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x32 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 8
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nodeNamespace"    # Ljava/lang/String;
    .param p4, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-lez v1, :cond_0

    #@8
    .line 186
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@b
    move-result-object v0

    #@c
    .line 189
    .local v0, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p4, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 193
    .local v5, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 194
    .local v2, "localName":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@19
    move-result v1

    #@1a
    if-lez v1, :cond_1

    #@1c
    .line 195
    const-string/jumbo v4, "CDATA"

    #@1f
    const/4 v6, 0x1

    #@20
    move-object v1, p3

    #@21
    move-object v3, p1

    #@22
    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@25
    .line 181
    .end local v0    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@26
    .line 197
    .restart local v0    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v2    # "localName":Ljava/lang/String;
    .restart local v5    # "val":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    #@29
    const-string/jumbo v4, "CDATA"

    #@2c
    const/4 v6, 0x1

    #@2d
    move-object v3, p1

    #@2e
    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    goto :goto_0

    #@32
    .line 201
    .end local v2    # "localName":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@33
    .local v7, "e":Lorg/xml/sax/SAXException;
    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "attribute"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 59
    const/16 v0, 0x30

    #@2
    return v0
.end method

.method protected resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rhandler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nodeNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    if-eqz p2, :cond_2

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v1, "xmlns"

    #@b
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 133
    :cond_0
    invoke-interface {p1, p3}, Lorg/apache/xml/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object p2

    #@15
    .line 136
    if-eqz p2, :cond_1

    #@17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 138
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    if-lez v1, :cond_4

    #@23
    .line 140
    invoke-interface {p1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    #@26
    move-result-object v0

    #@27
    .line 141
    .local v0, "prefixMapping":Lorg/apache/xml/serializer/NamespaceMappings;
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    #@2a
    move-result-object p2

    #@2b
    .line 147
    .end local v0    # "prefixMapping":Lorg/apache/xml/serializer/NamespaceMappings;
    :cond_2
    :goto_1
    return-object p2

    #@2c
    .line 136
    :cond_3
    const-string/jumbo v1, "xmlns"

    #@2f
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_2

    #@35
    goto :goto_0

    #@36
    .line 144
    :cond_4
    const-string/jumbo p2, ""

    #@39
    goto :goto_1
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .locals 2
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 268
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "xmlns"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@18
    throw v0

    #@19
    .line 273
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->setName(Lorg/apache/xalan/templates/AVT;)V

    #@1c
    .line 265
    return-void
.end method

.method protected validateNodeName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    if-nez p1, :cond_0

    #@3
    .line 160
    return v1

    #@4
    .line 161
    :cond_0
    const-string/jumbo v0, "xmlns"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 162
    return v1

    #@e
    .line 163
    :cond_1
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method
