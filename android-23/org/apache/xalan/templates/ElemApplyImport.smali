.class public Lorg/apache/xalan/templates/ElemApplyImport;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemApplyImport.java"


# static fields
.field static final serialVersionUID:J = 0x343f00c5e0148b26L


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
    .locals 4
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "ER_CANNOT_ADD"

    #@3
    .line 106
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 107
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemApplyImport;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    .line 105
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemApplyImport;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    .line 110
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentTemplateRuleIsNull()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 76
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@9
    move-result-object v2

    #@a
    .line 77
    const-string/jumbo v3, "ER_NO_APPLY_IMPORT_IN_FOR_EACH"

    #@d
    .line 76
    invoke-virtual {v2, p0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    #@10
    .line 80
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@17
    move-result v1

    #@18
    .line 81
    .local v1, "sourceNode":I
    const/4 v2, -0x1

    #@19
    if-eq v2, v1, :cond_1

    #@1b
    .line 84
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@1e
    move-result-object v0

    #@1f
    .line 85
    .local v0, "matchTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, p0, v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z

    #@22
    .line 71
    .end local v0    # "matchTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    :goto_0
    return-void

    #@23
    .line 89
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@26
    move-result-object v2

    #@27
    .line 90
    const-string/jumbo v3, "ER_NULL_SOURCENODE_APPLYIMPORTS"

    #@2a
    .line 89
    invoke-virtual {v2, p0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "apply-imports"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 49
    const/16 v0, 0x48

    #@2
    return v0
.end method
