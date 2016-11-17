.class public Lorg/apache/xalan/transformer/ClonerToResultTree;
.super Ljava/lang/Object;
.source "ClonerToResultTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    .locals 7
    .param p0, "node"    # I
    .param p1, "nodeType"    # I
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p3, "rth"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p4, "shouldCloneAttributes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    #@3
    .line 203
    :pswitch_0
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@5
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "Can\'t clone node: "

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 203
    invoke-direct {v4, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 208
    :catch_0
    move-exception v2

    #@22
    .line 209
    .local v2, "se":Lorg/xml/sax/SAXException;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@24
    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v4

    #@28
    .line 143
    .end local v2    # "se":Lorg/xml/sax/SAXException;
    :pswitch_1
    const/4 v4, 0x0

    #@29
    :try_start_1
    invoke-interface {p2, p0, p3, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@2c
    .line 135
    :cond_0
    :goto_0
    :pswitch_2
    return-void

    #@2d
    .line 154
    :pswitch_3
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 155
    .local v1, "ns":Ljava/lang/String;
    if-nez v1, :cond_1

    #@33
    const-string/jumbo v1, ""

    #@36
    .line 156
    :cond_1
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 160
    .local v0, "localName":Ljava/lang/String;
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {p3, v1, v0, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 165
    if-eqz p4, :cond_0

    #@43
    .line 167
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V

    #@46
    .line 168
    invoke-static {p3, p0, p1, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    #@49
    goto :goto_0

    #@4a
    .line 173
    .end local v0    # "localName":Ljava/lang/String;
    .end local v1    # "ns":Ljava/lang/String;
    :pswitch_4
    invoke-interface {p3}, Lorg/apache/xml/serializer/SerializationHandler;->startCDATA()V

    #@4d
    .line 174
    const/4 v4, 0x0

    #@4e
    invoke-interface {p2, p0, p3, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@51
    .line 175
    invoke-interface {p3}, Lorg/apache/xml/serializer/SerializationHandler;->endCDATA()V

    #@54
    goto :goto_0

    #@55
    .line 178
    :pswitch_5
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    #@58
    goto :goto_0

    #@59
    .line 185
    :pswitch_6
    const/16 v4, 0xd

    #@5b
    invoke-static {p3, p0, v4, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    #@5e
    goto :goto_0

    #@5f
    .line 188
    :pswitch_7
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@62
    move-result-object v3

    #@63
    .line 189
    .local v3, "xstr":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v3, p3}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    #@66
    goto :goto_0

    #@67
    .line 192
    .end local v3    # "xstr":Lorg/apache/xml/utils/XMLString;
    :pswitch_8
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-interface {p3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    #@6e
    goto :goto_0

    #@6f
    .line 197
    :pswitch_9
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    .line 198
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    .line 197
    invoke-interface {p3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    #@7a
    goto :goto_0

    #@7b
    .line 140
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
