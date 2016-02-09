.class public Lorg/apache/xalan/templates/ElemText;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemText.java"


# static fields
.field static final serialVersionUID:J = 0x1331e74c772b66a7L


# instance fields
.field private m_disableOutputEscaping:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    #@6
    .line 38
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 134
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 139
    const-string/jumbo v1, "ER_CANNOT_ADD"

    #@a
    .line 140
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
    .line 141
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemText;->getNodeName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 139
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemText;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 146
    :pswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 134
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public getDisableOutputEscaping()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    #@2
    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    const-string/jumbo v0, "text"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 107
    const/16 v0, 0x2a

    #@2
    return v0
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    #@2
    .line 68
    return-void
.end method
