.class public Lorg/apache/xalan/templates/ElemExtensionScript;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionScript.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x6116b52aa7429910L


# instance fields
.field private greylist m_lang:Ljava/lang/String;

.field private greylist m_src:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist getLang()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getSrc()Ljava/lang/String;
    .registers 1

    .line 90
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x56

    return p0
.end method

.method public greylist setLang(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    return-void
.end method

.method public greylist setSrc(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-void
.end method
