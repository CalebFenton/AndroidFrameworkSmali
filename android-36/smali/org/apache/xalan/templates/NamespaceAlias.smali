.class public Lorg/apache/xalan/templates/NamespaceAlias;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "NamespaceAlias.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x654a7ce453a441eL


# instance fields
.field private greylist m_ResultNamespace:Ljava/lang/String;

.field private greylist m_ResultPrefix:Ljava/lang/String;

.field private greylist m_StylesheetNamespace:Ljava/lang/String;

.field private greylist m_StylesheetPrefix:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(I)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 42
    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method


# virtual methods
.method public greylist getResultNamespace()Ljava/lang/String;
    .registers 1

    .line 146
    iget-object p0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getResultPrefix()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getStylesheetNamespace()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getStylesheetPrefix()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 156
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V

    return-void
.end method

.method public greylist setResultNamespace(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    return-void
.end method

.method public greylist setResultPrefix(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    return-void
.end method

.method public greylist setStylesheetNamespace(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    return-void
.end method

.method public greylist setStylesheetPrefix(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    return-void
.end method
