.class public Lorg/apache/xalan/templates/ElemComment;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemComment.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x7a4ec5e86dcb651eL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 106
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

    .line 135
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemComment;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 134
    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
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

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/xml/serializer/ExtendedLexicalHandler;->comment(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 90
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 59
    const-string p0, "comment"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x3b

    return p0
.end method
