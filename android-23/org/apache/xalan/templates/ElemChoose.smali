.class public Lorg/apache/xalan/templates/ElemChoose;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemChoose.java"


# static fields
.field static final serialVersionUID:J = -0x2a9b3f7976fe6851L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
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
    .line 137
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 139
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 147
    const-string/jumbo v1, "ER_CANNOT_ADD"

    #@a
    .line 148
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
    .line 149
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getNodeName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 147
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemChoose;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 154
    :pswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 139
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canAcceptVariables()Z
    .locals 1

    #@0
    .prologue
    .line 163
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 8
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 81
    const/4 v1, 0x0

    #@2
    .line 83
    .local v1, "found":Z
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5
    move-result-object v0

    #@6
    .local v0, "childElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_2

    #@8
    .line 86
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@b
    move-result v3

    #@c
    .line 88
    .local v3, "type":I
    const/16 v6, 0x26

    #@e
    if-ne v6, v3, :cond_0

    #@10
    .line 90
    const/4 v1, 0x1

    #@11
    move-object v4, v0

    #@12
    .line 92
    check-cast v4, Lorg/apache/xalan/templates/ElemWhen;

    #@14
    .line 95
    .local v4, "when":Lorg/apache/xalan/templates/ElemWhen;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@17
    move-result-object v5

    #@18
    .line 96
    .local v5, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@1b
    move-result v2

    #@1c
    .line 103
    .local v2, "sourceNode":I
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemWhen;->getTest()Lorg/apache/xpath/XPath;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v5, v2, v4}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_1

    #@26
    .line 104
    invoke-virtual {p1, v4, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@29
    .line 106
    return-void

    #@2a
    .line 109
    .end local v2    # "sourceNode":I
    .end local v4    # "when":Lorg/apache/xalan/templates/ElemWhen;
    .end local v5    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_0
    const/16 v6, 0x27

    #@2c
    if-ne v6, v3, :cond_1

    #@2e
    .line 111
    const/4 v1, 0x1

    #@2f
    .line 114
    invoke-virtual {p1, v0, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@32
    .line 116
    return-void

    #@33
    .line 84
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@36
    move-result-object v0

    #@37
    goto :goto_0

    #@38
    .line 120
    .end local v3    # "type":I
    :cond_2
    if-nez v1, :cond_3

    #@3a
    .line 121
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@3d
    move-result-object v6

    #@3e
    .line 122
    const-string/jumbo v7, "ER_CHOOSE_REQUIRES_WHEN"

    #@41
    .line 121
    invoke-virtual {v6, p0, v7}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    #@44
    .line 78
    :cond_3
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "choose"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 51
    const/16 v0, 0x25

    #@2
    return v0
.end method
