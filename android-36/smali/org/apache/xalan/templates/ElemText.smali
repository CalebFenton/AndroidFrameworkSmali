.class public Lorg/apache/xalan/templates/ElemText;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemText.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x1331e74c772b66a7L


# instance fields
.field private greylist m_disableOutputEscaping:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 132
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_19

    .line 140
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemText;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 139
    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_19
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDisableOutputEscaping()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 117
    const-string p0, "text"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x2a

    return p0
.end method

.method public greylist setDisableOutputEscaping(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return-void
.end method
