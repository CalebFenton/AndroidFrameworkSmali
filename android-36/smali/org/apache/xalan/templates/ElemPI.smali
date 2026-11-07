.class public Lorg/apache/xalan/templates/ElemPI;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemPI.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4e0545caffe5c0e1L


# instance fields
.field private greylist m_name_atv:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 187
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

    .line 216
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemPI;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 215
    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
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

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 86
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 87
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    if-eqz p0, :cond_1a

    .line 88
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1a
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 132
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    if-nez v2, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v2, v0, v1, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    if-nez v0, :cond_15

    return-void

    .line 137
    :cond_15
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "name"

    if-eqz v1, :cond_2d

    .line 139
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object p1

    const-string v1, "WG_PROCESSINGINSTRUCTION_NAME_CANT_BE_XML"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_2d
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-nez v1, :cond_49

    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 149
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object p1

    const-string v1, "WG_PROCESSINGINSTRUCTION_NOTVALID_NCNAME"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_49
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object p0

    .line 167
    :try_start_4d
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Lorg/xml/sax/SAXException; {:try_start_4d .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p0

    .line 171
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist getName()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 74
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 111
    const-string p0, "processing-instruction"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x3a

    return p0
.end method

.method public greylist setName(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-void
.end method
