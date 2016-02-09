.class public Lorg/apache/xalan/processor/WhitespaceInfoPaths;
.super Lorg/apache/xalan/templates/WhiteSpaceInfo;
.source "WhitespaceInfoPaths.java"


# static fields
.field static final serialVersionUID:J = 0x52a394c820bc6ab3L


# instance fields
.field private m_elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0
    .param p1, "thisSheet"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    #@3
    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@6
    .line 74
    return-void
.end method


# virtual methods
.method public clearElements()V
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    #@3
    .line 64
    return-void
.end method

.method getElements()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public setElements(Ljava/util/Vector;)V
    .locals 0
    .param p1, "elems"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    #@2
    .line 46
    return-void
.end method
