.class public Lorg/apache/xalan/templates/WhiteSpaceInfo;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "WhiteSpaceInfo.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x58ab0710147f609cL


# instance fields
.field private greylist m_shouldStripSpace:Z


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    .line 72
    iput-boolean p2, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 76
    invoke-virtual {p0, p3}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public greylist getShouldStripSpace()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 84
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    return-void
.end method
