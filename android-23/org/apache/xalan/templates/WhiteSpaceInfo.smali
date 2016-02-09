.class public Lorg/apache/xalan/templates/WhiteSpaceInfo;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "WhiteSpaceInfo.java"


# static fields
.field static final serialVersionUID:J = 0x58ab0710147f609cL


# instance fields
.field private m_shouldStripSpace:Z


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0
    .param p1, "thisSheet"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@3
    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@6
    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V
    .locals 0
    .param p1, "matchPattern"    # Lorg/apache/xpath/XPath;
    .param p2, "shouldStripSpace"    # Z
    .param p3, "thisSheet"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@3
    .line 72
    iput-boolean p2, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    #@5
    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setMatch(Lorg/apache/xpath/XPath;)V

    #@8
    .line 76
    invoke-virtual {p0, p3}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@b
    .line 69
    return-void
.end method


# virtual methods
.method public getShouldStripSpace()Z
    .locals 1

    #@0
    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    #@2
    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    #@3
    .line 82
    return-void
.end method
