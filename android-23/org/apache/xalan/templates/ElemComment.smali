.class public Lorg/apache/xalan/templates/ElemComment;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemComment.java"


# static fields
.field static final serialVersionUID:J = -0x7a4ec5e86dcb651eL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 108
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 134
    const-string/jumbo v1, "ER_CANNOT_ADD"

    #@a
    .line 135
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
    .line 136
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemComment;->getNodeName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 134
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemComment;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 141
    :sswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 108
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

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 86
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, v0}, Lorg/apache/xml/serializer/SerializationHandler;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 72
    return-void

    #@c
    .line 89
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@d
    .line 90
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@f
    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v2
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "comment"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 49
    const/16 v0, 0x3b

    #@2
    return v0
.end method
