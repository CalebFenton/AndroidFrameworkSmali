.class public Lorg/apache/xalan/templates/ElemAttributeSet;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemAttributeSet.java"


# static fields
.field static final serialVersionUID:J = -0x5ec160efa4ea010L


# instance fields
.field public m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    #@6
    .line 42
    return-void
.end method


# virtual methods
.method public appendChildElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 149
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 154
    const-string/jumbo v1, "ER_CANNOT_ADD"

    #@a
    .line 155
    const/4 v2, 0x2

    #@b
    new-array v2, v2, [Ljava/lang/Object;

    #@d
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v2, v4

    #@14
    .line 156
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttributeSet;->getNodeName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 154
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemAttributeSet;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 161
    :pswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 149
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 6
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 109
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@8
    .line 111
    const-string/jumbo v2, "ER_XSLATTRSET_USED_ITSELF"

    #@b
    .line 112
    const/4 v3, 0x1

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    #@10
    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    .line 110
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 109
    invoke-direct {v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 115
    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    #@22
    .line 116
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@25
    .line 118
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttributeSet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lorg/apache/xalan/templates/ElemAttribute;

    #@2b
    .line 120
    .local v0, "attr":Lorg/apache/xalan/templates/ElemAttribute;
    :goto_0
    if-eqz v0, :cond_1

    #@2d
    .line 122
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttribute;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@30
    .line 124
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemAttribute;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@33
    move-result-object v0

    #@34
    .end local v0    # "attr":Lorg/apache/xalan/templates/ElemAttribute;
    check-cast v0, Lorg/apache/xalan/templates/ElemAttribute;

    #@36
    .restart local v0    # "attr":Lorg/apache/xalan/templates/ElemAttribute;
    goto :goto_0

    #@37
    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemAttributeSet()V

    #@3a
    .line 104
    return-void
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "attribute-set"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 82
    const/16 v0, 0x28

    #@2
    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 171
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    #@3
    .line 169
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    .line 58
    return-void
.end method
