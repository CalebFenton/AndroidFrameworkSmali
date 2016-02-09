.class public Lorg/apache/xalan/templates/NamespaceAlias;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "NamespaceAlias.java"


# static fields
.field static final serialVersionUID:J = 0x654a7ce453a441eL


# instance fields
.field private m_ResultNamespace:Ljava/lang/String;

.field private m_ResultPrefix:Ljava/lang/String;

.field private m_StylesheetNamespace:Ljava/lang/String;

.field private m_StylesheetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "docOrderNumber"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 42
    iput p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_docOrderNumber:I

    #@5
    .line 39
    return-void
.end method


# virtual methods
.method public getResultNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResultPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStylesheetNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStylesheetPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 156
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V

    #@3
    .line 154
    return-void
.end method

.method public setResultNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    #@2
    .line 134
    return-void
.end method

.method public setResultPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    #@2
    .line 108
    return-void
.end method

.method public setStylesheetNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    #@2
    .line 82
    return-void
.end method

.method public setStylesheetPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    #@2
    .line 56
    return-void
.end method
