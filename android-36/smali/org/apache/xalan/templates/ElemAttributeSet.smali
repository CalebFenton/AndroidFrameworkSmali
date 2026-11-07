.class public Lorg/apache/xalan/templates/ElemAttributeSet;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemAttributeSet.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x5ec160efa4ea010L


# instance fields
.field public greylist m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public greylist appendChildElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 147
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_19

    .line 155
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttributeSet;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 154
    const-string v1, "ER_CANNOT_ADD"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_19
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 115
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    .line 116
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 118
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemAttribute;

    :goto_12
    if-eqz p0, :cond_1e

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemAttribute;

    goto :goto_12

    .line 127
    :cond_1e
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemAttributeSet()V

    return-void

    .line 109
    :cond_22
    new-instance p1, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    .line 112
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 110
    const-string v0, "ER_XSLATTRSET_USED_ITSELF"

    invoke-static {v0, p0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 71
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 92
    const-string p0, "attribute-set"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x28

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 171
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    return-void
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method
