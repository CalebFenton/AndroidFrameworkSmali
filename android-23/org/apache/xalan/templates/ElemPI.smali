.class public Lorg/apache/xalan/templates/ElemPI;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemPI.java"


# static fields
.field static final serialVersionUID:J = 0x4e0545caffe5c0e1L


# instance fields
.field private m_name_atv:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 53
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@6
    .line 42
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 187
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 189
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 215
    const-string/jumbo v1, "ER_CANNOT_ADD"

    #@a
    .line 216
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
    .line 217
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemPI;->getNodeName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 215
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemPI;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 222
    :sswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 189
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

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 86
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v0

    #@b
    .line 87
    .local v0, "vnames":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 88
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@11
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@1c
    .line 83
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 11
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 129
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@6
    move-result-object v4

    #@7
    .line 130
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@a
    move-result v3

    #@b
    .line 132
    .local v3, "sourceNode":I
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@d
    if-nez v5, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    .line 135
    :goto_0
    if-nez v1, :cond_1

    #@12
    return-void

    #@13
    .line 132
    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@15
    invoke-virtual {v5, v4, v3, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .local v1, "piName":Ljava/lang/String;
    goto :goto_0

    #@1a
    .line 137
    .end local v1    # "piName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "xml"

    #@1d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 139
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@26
    move-result-object v5

    #@27
    .line 140
    const-string/jumbo v6, "WG_PROCESSINGINSTRUCTION_NAME_CANT_BE_XML"

    #@2a
    .line 141
    new-array v7, v7, [Ljava/lang/Object;

    #@2c
    const-string/jumbo v8, "name"

    #@2f
    aput-object v8, v7, v9

    #@31
    aput-object v1, v7, v10

    #@33
    .line 139
    invoke-virtual {v5, p0, v6, v7}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@36
    .line 142
    return-void

    #@37
    .line 147
    :cond_2
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@39
    invoke-virtual {v5}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_3

    #@3f
    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_4

    #@45
    .line 163
    :cond_3
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .line 167
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v5, v1, v0}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 126
    return-void

    #@51
    .line 149
    .end local v0    # "data":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@54
    move-result-object v5

    #@55
    .line 150
    const-string/jumbo v6, "WG_PROCESSINGINSTRUCTION_NOTVALID_NCNAME"

    #@58
    .line 151
    new-array v7, v7, [Ljava/lang/Object;

    #@5a
    const-string/jumbo v8, "name"

    #@5d
    aput-object v8, v7, v9

    #@5f
    aput-object v1, v7, v10

    #@61
    .line 149
    invoke-virtual {v5, p0, v6, v7}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@64
    .line 152
    return-void

    #@65
    .line 170
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@66
    .line 171
    .local v2, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@68
    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@6b
    throw v5
.end method

.method public getName()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    const-string/jumbo v0, "processing-instruction"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 101
    const/16 v0, 0x3a

    #@2
    return v0
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 61
    return-void
.end method
