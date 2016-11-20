.class public Lorg/apache/xalan/templates/ElemExtensionScript;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionScript.java"


# static fields
.field static final serialVersionUID:J = -0x6116b52aa7429910L


# instance fields
.field private m_lang:Ljava/lang/String;

.field private m_src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 35
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 43
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    #@6
    .line 69
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    #@8
    .line 35
    return-void
.end method


# virtual methods
.method public getLang()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 101
    const/16 v0, 0x56

    #@2
    return v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    #@2
    .line 51
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    #@2
    .line 77
    return-void
.end method
