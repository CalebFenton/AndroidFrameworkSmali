.class public Lorg/apache/xalan/templates/ElemApplyImport;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemApplyImport.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x343f00c5e0148b26L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 106
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemApplyImport;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 105
    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentTemplateRuleIsNull()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const-string v1, "ER_NO_APPLY_IMPORT_IN_FOR_EACH"

    invoke-virtual {v0, p0, v1}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    .line 80
    :cond_f
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_22

    .line 84
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 85
    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z

    return-void

    .line 89
    :cond_22
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object p1

    const-string v0, "ER_NULL_SOURCENODE_APPLYIMPORTS"

    invoke-virtual {p1, p0, v0}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 59
    const-string p0, "apply-imports"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x48

    return p0
.end method
