.class public Lorg/apache/xalan/processor/WhitespaceInfoPaths;
.super Lorg/apache/xalan/templates/WhiteSpaceInfo;
.source "WhitespaceInfoPaths.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x52a394c820bc6ab3L


# instance fields
.field private greylist m_elements:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public greylist clearElements()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-void
.end method

.method greylist getElements()Ljava/util/Vector;
    .registers 1

    .line 61
    iget-object p0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-object p0
.end method

.method public greylist setElements(Ljava/util/Vector;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-void
.end method
