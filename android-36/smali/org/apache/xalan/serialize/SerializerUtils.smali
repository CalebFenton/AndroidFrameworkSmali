.class public Lorg/apache/xalan/serialize/SerializerUtils;
.super Ljava/lang/Object;
.source "SerializerUtils.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 60
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 62
    invoke-static {p0, p1, v0}, Lorg/apache/xalan/serialize/SerializerUtils;->isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_31

    .line 65
    :cond_15
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 68
    const-string v1, ""

    :cond_1d
    move-object v3, v1

    .line 75
    :try_start_1e
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    .line 78
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    .line 73
    invoke-interface/range {v2 .. v8}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_31
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_31} :catch_31

    :catch_31
    :goto_31
    return-void
.end method

.method public static greylist addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 99
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 101
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result p1

    :goto_12
    const/4 v1, -0x1

    if-eq v1, p1, :cond_1d

    .line 105
    invoke-static {p0, p1}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    .line 103
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result p1

    goto :goto_12

    :cond_1d
    return-void
.end method

.method public static greylist ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 255
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_28

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_28

    if-eqz p1, :cond_28

    .line 261
    invoke-interface {p0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 265
    invoke-virtual {p2, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 266
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    :cond_24
    const/4 p2, 0x0

    .line 268
    invoke-interface {p0, p1, v0, p2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_28
    return-void
.end method

.method public static greylist isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z
    .registers 5

    .line 222
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/16 v1, 0xd

    if-ne v1, v0, :cond_1e

    .line 226
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 230
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result p1

    .line 126
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 130
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result p1

    :goto_e
    const/4 v0, -0x1

    if-eq v0, p1, :cond_2e

    .line 134
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 138
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 139
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 140
    const-string v0, ""

    invoke-interface {p0, v0, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_26
    invoke-interface {p2, p1, p0}, Lorg/apache/xml/dtm/DTM;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    .line 132
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result p1

    goto :goto_e

    :cond_2e
    return-void
.end method

.method public static greylist processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_25

    .line 170
    :try_start_4
    invoke-interface {p3, p1, v1}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result p2

    :goto_8
    const/4 v2, -0x1

    if-eq v2, p2, :cond_46

    .line 176
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 183
    invoke-interface {p0, v2, v4, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 172
    :cond_20
    invoke-interface {p3, p1, p2, v1}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result p2

    goto :goto_8

    :cond_25
    const/16 v1, 0xd

    if-ne p2, v1, :cond_46

    .line 189
    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-interface {p0, p2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_46

    .line 196
    invoke-interface {p0, p2, p1, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_3e
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 202
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_46
    return-void
.end method
