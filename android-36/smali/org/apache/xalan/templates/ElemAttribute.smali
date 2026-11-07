.class public Lorg/apache/xalan/templates/ElemAttribute;
.super Lorg/apache/xalan/templates/ElemElement;
.source "ElemAttribute.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x7a5d0fbfb8530a13L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemElement;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 225
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_37

    const/16 v1, 0x11

    if-eq v0, v1, :cond_37

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_37

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_37

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_37

    const/16 v1, 0x32

    if-eq v0, v1, :cond_37

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_37

    packed-switch v0, :pswitch_data_3c

    packed-switch v0, :pswitch_data_46

    .line 254
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttribute;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 253
    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_37
    :pswitch_37
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x23
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x48
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method greylist constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_2e

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 186
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    .line 189
    invoke-virtual {p4, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v6

    .line 193
    :try_start_10
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_25

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_25

    .line 195
    const-string v5, "CDATA"

    const/4 v7, 0x1

    move-object v4, p1

    move-object v2, p3

    invoke-interface/range {v1 .. v7}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_25
    move-object v4, p1

    .line 197
    const-string v2, ""

    const-string v5, "CDATA"

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2e
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 69
    const-string p0, "attribute"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x30

    return p0
.end method

.method protected greylist resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_36

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, "xmlns"

    if-eqz p0, :cond_10

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 133
    :cond_10
    invoke-interface {p1, p3}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_24

    :cond_23
    return-object p0

    .line 138
    :cond_24
    :goto_24
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_33

    .line 140
    invoke-interface {p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_33
    const-string p0, ""

    return-object p0

    :cond_36
    return-object p2
.end method

.method public greylist setName(Lorg/apache/xalan/templates/AVT;)V
    .registers 4

    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 268
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_19

    .line 270
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 273
    :cond_19
    :goto_19
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->setName(Lorg/apache/xalan/templates/AVT;)V

    return-void
.end method

.method protected greylist validateNodeName(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 161
    :cond_4
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return p0

    .line 163
    :cond_d
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
