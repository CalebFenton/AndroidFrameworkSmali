.class public Lorg/apache/xalan/templates/ElemFallback;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemFallback.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x18be5a9ea2c35f9fL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v1, v0, :cond_16

    const/4 v1, -0x1

    if-ne v1, v0, :cond_e

    goto :goto_16

    .line 106
    :cond_e
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Error!  parent of xsl:fallback must be an extension or unknown element!"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p1, p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 58
    const-string p0, "fallback"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x39

    return p0
.end method
