.class public Lorg/apache/xalan/templates/ElemParam;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemParam.java"


# static fields
.field static final whitelist serialVersionUID:J = -0xfb4e5416fd9a45fL


# instance fields
.field greylist m_qnameID:I


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemParam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    return-void
.end method


# virtual methods
.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    move-result p1

    iput p1, p0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    .line 95
    iget-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result p1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x58

    if-ne p1, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-void

    .line 98
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    iget p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 113
    iget v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->isLocalSet(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 116
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 117
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p1

    iget p0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    :cond_29
    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 70
    const-string p0, "param"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x29

    return p0
.end method
