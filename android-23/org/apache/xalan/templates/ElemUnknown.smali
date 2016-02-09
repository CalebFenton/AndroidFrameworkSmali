.class public Lorg/apache/xalan/templates/ElemUnknown;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemUnknown.java"


# static fields
.field static final serialVersionUID:J = -0x3f7a0c22378f7638L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    #@3
    return-void
.end method

.method private executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemUnknown;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .local v1, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_1

    #@4
    .line 61
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@7
    move-result v2

    #@8
    const/16 v3, 0x39

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 65
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@f
    .line 66
    move-object v0, v1

    #@10
    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    #@12
    move-object v2, v0

    #@13
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 70
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@19
    .line 59
    :cond_0
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1b
    goto :goto_0

    #@1c
    .line 69
    :catchall_0
    move-exception v2

    #@1d
    .line 70
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@20
    .line 69
    throw v2

    #@21
    .line 56
    :cond_1
    return-void
.end method

.method private hasFallbackChildren()Z
    .locals 3

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUnknown;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .local v0, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_1

    #@4
    .line 87
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x39

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 88
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 85
    :cond_0
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    goto :goto_0

    #@11
    .line 91
    :cond_1
    const/4 v1, 0x0

    #@12
    return v1
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 2
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUnknown;->hasFallbackChildren()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 111
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemUnknown;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 104
    :cond_0
    :goto_0
    return-void

    #@a
    .line 116
    :catch_0
    move-exception v0

    #@b
    .line 117
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@12
    goto :goto_0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, -0x1

    #@1
    return v0
.end method
