.class public Lorg/apache/xalan/templates/ElemParam;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemParam.java"


# static fields
.field static final serialVersionUID:J = -0xfb4e5416fd9a45fL


# instance fields
.field m_qnameID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/templates/ElemParam;)V
    .locals 0
    .param p1, "param"    # Lorg/apache/xalan/templates/ElemParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    #@3
    .line 80
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemParam;->m_qname:Lorg/apache/xml/utils/QName;

    #@9
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    #@c
    move-result v1

    #@d
    iput v1, p0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    #@f
    .line 95
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemParam;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@11
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@14
    move-result v0

    #@15
    .line 96
    .local v0, "parentToken":I
    const/16 v1, 0x13

    #@17
    if-eq v0, v1, :cond_0

    #@19
    .line 97
    const/16 v1, 0x58

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 98
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemParam;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1f
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    #@21
    iget v2, v1, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    iput v2, v1, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    #@27
    .line 91
    :cond_1
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 5
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@7
    move-result-object v2

    #@8
    .line 113
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    iget v3, p0, Lorg/apache/xalan/templates/ElemParam;->m_index:I

    #@a
    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->isLocalSet(I)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 116
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@17
    move-result v0

    #@18
    .line 117
    .local v0, "sourceNode":I
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    #@1b
    move-result-object v1

    #@1c
    .line 120
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@23
    move-result-object v3

    #@24
    iget v4, p0, Lorg/apache/xalan/templates/ElemParam;->m_index:I

    #@26
    invoke-virtual {v3, v4, v1}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@29
    .line 109
    .end local v0    # "sourceNode":I
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "param"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 60
    const/16 v0, 0x29

    #@2
    return v0
.end method
