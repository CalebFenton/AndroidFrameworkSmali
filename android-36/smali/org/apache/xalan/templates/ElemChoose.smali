.class public Lorg/apache/xalan/templates/ElemChoose;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemChoose.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x2a9b3f7976fe6851L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 137
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1d

    .line 148
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 147
    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_1d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist canAcceptVariables()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    if-eqz v0, :cond_38

    .line 86
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x26

    const/4 v4, 0x1

    if-ne v3, v2, :cond_2b

    .line 92
    move-object v1, v0

    check-cast v1, Lorg/apache/xalan/templates/ElemWhen;

    .line 95
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    .line 103
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemWhen;->getTest()Lorg/apache/xpath/XPath;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 104
    invoke-virtual {p1, v1, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    return-void

    :cond_29
    move v1, v4

    goto :goto_33

    :cond_2b
    const/16 v3, 0x27

    if-ne v3, v2, :cond_33

    .line 114
    invoke-virtual {p1, v0, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    return-void

    .line 84
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_5

    :cond_38
    if-nez v1, :cond_43

    .line 121
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object p1

    const-string v0, "ER_CHOOSE_REQUIRES_WHEN"

    invoke-virtual {p1, p0, v0}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 61
    const-string p0, "choose"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x25

    return p0
.end method
