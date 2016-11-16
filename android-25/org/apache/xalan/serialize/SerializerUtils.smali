.class public Lorg/apache/xalan/serialize/SerializerUtils;
.super Ljava/lang/Object;
.source "SerializerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .locals 10
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@3
    move-result-object v9

    #@4
    check-cast v9, Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    .line 60
    .local v9, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    invoke-virtual {v9}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@d
    move-result-object v7

    #@e
    .line 62
    .local v7, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-static {p0, p1, v7}, Lorg/apache/xalan/serialize/SerializerUtils;->isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 63
    return-void

    #@15
    .line 65
    :cond_0
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 67
    .local v1, "ns":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1b
    .line 68
    const-string/jumbo v1, ""

    #@1e
    .line 75
    :cond_1
    :try_start_0
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 76
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 77
    const-string/jumbo v4, "CDATA"

    #@29
    .line 78
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    const/4 v6, 0x0

    #@2e
    move-object v0, p0

    #@2f
    .line 73
    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 55
    :goto_0
    return-void

    #@33
    .line 81
    :catch_0
    move-exception v8

    #@34
    .local v8, "e":Lorg/xml/sax/SAXException;
    goto :goto_0
.end method

.method public static addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .locals 4
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "src"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    .line 99
    .local v2, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@d
    move-result-object v0

    #@e
    .line 101
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@11
    move-result v1

    #@12
    .line 102
    .local v1, "node":I
    :goto_0
    const/4 v3, -0x1

    #@13
    .line 101
    if-eq v3, v1, :cond_0

    #@15
    .line 105
    invoke-static {p0, v1}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    #@18
    .line 103
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@1b
    move-result v1

    #@1c
    goto :goto_0

    #@1d
    .line 94
    :cond_0
    return-void
.end method

.method public static ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V
    .locals 6
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 255
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 256
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 258
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@e
    move-result v4

    #@f
    if-lez v4, :cond_0

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 261
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    #@16
    move-result-object v1

    #@17
    .line 262
    .local v1, "ns":Lorg/apache/xml/serializer/NamespaceMappings;
    if-eqz v1, :cond_0

    #@19
    .line 265
    invoke-virtual {v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 266
    .local v0, "foundURI":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 252
    .end local v0    # "foundURI":Ljava/lang/String;
    .end local v1    # "ns":Lorg/apache/xml/serializer/NamespaceMappings;
    :cond_0
    :goto_0
    return-void

    #@26
    .line 268
    .restart local v0    # "foundURI":Ljava/lang/String;
    .restart local v1    # "ns":Lorg/apache/xml/serializer/NamespaceMappings;
    :cond_1
    invoke-interface {p0, v2, v3, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@29
    goto :goto_0
.end method

.method public static isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z
    .locals 4
    .param p0, "serializer"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "attr"    # I
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 222
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@3
    move-result v2

    #@4
    const/16 v3, 0xd

    #@6
    if-ne v3, v2, :cond_0

    #@8
    .line 226
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 227
    .local v0, "prefix":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 230
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@12
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 231
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 234
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@1f
    return v2
.end method

.method public static outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    .locals 5
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "obj"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->rtf()I

    #@3
    move-result v0

    #@4
    .line 126
    .local v0, "doc":I
    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@7
    move-result-object v1

    #@8
    .line 128
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v1, :cond_1

    #@a
    .line 130
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@d
    move-result v2

    #@e
    .line 131
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    #@f
    .line 130
    if-eq v3, v2, :cond_1

    #@11
    .line 134
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    #@14
    .line 138
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@17
    move-result v3

    #@18
    const/4 v4, 0x1

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 139
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    if-nez v3, :cond_0

    #@21
    .line 140
    const-string/jumbo v3, ""

    #@24
    const-string/jumbo v4, ""

    #@27
    invoke-interface {p0, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 141
    :cond_0
    invoke-interface {v1, v2, p0}, Lorg/apache/xml/dtm/DTM;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    #@2d
    .line 132
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@30
    move-result v2

    #@31
    goto :goto_0

    #@32
    .line 122
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method public static processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V
    .locals 6
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "src"    # I
    .param p2, "type"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 168
    if-ne p2, v5, :cond_1

    #@3
    .line 170
    const/4 v5, 0x1

    #@4
    :try_start_0
    invoke-interface {p3, p1, v5}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    #@7
    move-result v1

    #@8
    .line 171
    .local v1, "namespace":I
    :goto_0
    const/4 v5, -0x1

    #@9
    .line 170
    if-eq v5, v1, :cond_2

    #@b
    .line 176
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 177
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 179
    .local v0, "desturi":Ljava/lang/String;
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 181
    .local v4, "srcURI":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 183
    const/4 v5, 0x0

    #@1e
    invoke-interface {p0, v2, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@21
    .line 172
    :cond_0
    const/4 v5, 0x1

    #@22
    invoke-interface {p3, p1, v1, v5}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    #@25
    move-result v1

    #@26
    goto :goto_0

    #@27
    .line 187
    .end local v0    # "desturi":Ljava/lang/String;
    .end local v1    # "namespace":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "srcURI":Ljava/lang/String;
    :cond_1
    const/16 v5, 0xd

    #@29
    if-ne p2, v5, :cond_2

    #@2b
    .line 189
    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 191
    .restart local v2    # "prefix":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 192
    .restart local v0    # "desturi":Ljava/lang/String;
    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 194
    .restart local v4    # "srcURI":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3a
    move-result v5

    #@3b
    if-nez v5, :cond_2

    #@3d
    .line 196
    const/4 v5, 0x0

    #@3e
    invoke-interface {p0, v2, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 163
    .end local v0    # "desturi":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "srcURI":Ljava/lang/String;
    :cond_2
    return-void

    #@42
    .line 201
    :catch_0
    move-exception v3

    #@43
    .line 202
    .local v3, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@45
    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@48
    throw v5
.end method
