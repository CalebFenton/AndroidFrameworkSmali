.class public Lorg/apache/xalan/transformer/ClonerToResultTree;
.super Ljava/lang/Object;
.source "ClonerToResultTree.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_76

    .line 203
    :pswitch_4
    :try_start_4
    new-instance p1, Ljavax/xml/transform/TransformerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t clone node: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1f
    const/16 p1, 0xd

    .line 185
    invoke-static {p3, p0, p1, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    return-void

    .line 188
    :pswitch_25
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 189
    invoke-interface {p0, p3}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void

    .line 197
    :pswitch_2d
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-interface {p3, p1, p0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 192
    :pswitch_39
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->entityReference(Ljava/lang/String;)V

    return-void

    .line 173
    :pswitch_41
    invoke-interface {p3}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 174
    invoke-interface {p2, p0, p3, v0}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 175
    invoke-interface {p3}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    return-void

    .line 143
    :pswitch_4b
    invoke-interface {p2, p0, p3, v0}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    return-void

    .line 178
    :pswitch_4f
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    return-void

    .line 154
    :pswitch_53
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 155
    const-string v0, ""

    .line 156
    :cond_5b
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6e

    .line 167
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V

    .line 168
    invoke-static {p3, p0, p1, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V
    :try_end_6e
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_6e} :catch_6f

    :cond_6e
    :pswitch_6e
    return-void

    :catch_6f
    move-exception p0

    .line 209
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_41
        :pswitch_39
        :pswitch_4
        :pswitch_2d
        :pswitch_25
        :pswitch_6e
        :pswitch_4
        :pswitch_6e
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method
