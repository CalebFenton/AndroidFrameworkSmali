.class public Lorg/apache/xalan/templates/ElemUnknown;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemUnknown.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x3f7a0c22378f7638L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    return-void
.end method

.method private greylist executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    if-eqz p0, :cond_21

    .line 61
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_1e

    .line 65
    :try_start_c
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 66
    move-object v0, p0

    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 70
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 71
    throw p0

    .line 59
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_21
    return-void
.end method

.method private greylist hasFallbackChildren()Z
    .registers 3

    .line 84
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    if-eqz p0, :cond_11

    .line 87
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_e

    const/4 p0, 0x1

    return p0

    .line 85
    :cond_e
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 110
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUnknown;->hasFallbackChildren()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 111
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemUnknown;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 117
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_12
    return-void
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method
