.class public Lorg/apache/xalan/templates/ElemFallback;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemFallback.java"


# static fields
.field static final serialVersionUID:J = 0x18be5a9ea2c35f9fL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    return-void
.end method

.method public executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemFallback;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@5
    move-result v0

    #@6
    .line 95
    .local v0, "parentElemType":I
    const/16 v1, 0x4f

    #@8
    if-eq v1, v0, :cond_0

    #@a
    .line 96
    const/4 v1, -0x1

    #@b
    if-ne v1, v0, :cond_1

    #@d
    .line 99
    :cond_0
    const/4 v1, 0x1

    #@e
    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@11
    .line 91
    :goto_0
    return-void

    #@12
    .line 106
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    .line 107
    const-string/jumbo v2, "Error!  parent of xsl:fallback must be an extension or unknown element!"

    #@17
    .line 106
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "fallback"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/16 v0, 0x39

    #@2
    return v0
.end method
