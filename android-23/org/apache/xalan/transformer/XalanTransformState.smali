.class public Lorg/apache/xalan/transformer/XalanTransformState;
.super Ljava/lang/Object;
.source "XalanTransformState.java"

# interfaces
.implements Lorg/apache/xalan/transformer/TransformState;


# instance fields
.field m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

.field m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

.field m_currentNode:Lorg/w3c/dom/Node;

.field m_currentNodeHandle:I

.field m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field m_elemPending:Z

.field m_matchedNode:I

.field m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field m_node:Lorg/w3c/dom/Node;

.field m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    #@7
    .line 41
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    .line 42
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    #@b
    .line 43
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    #@d
    .line 44
    iput v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNodeHandle:I

    #@f
    .line 45
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    #@11
    .line 46
    iput v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    #@13
    .line 47
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    #@15
    .line 48
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    #@18
    .line 49
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@1a
    .line 37
    return-void
.end method


# virtual methods
.method public getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2

    #@0
    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    #@6
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@b
    return-object v0

    #@c
    .line 138
    :cond_0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    #@e
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@10
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@17
    return-object v0
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 80
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    return-object v0

    #@7
    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@9
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 90
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    #@6
    return-object v1

    #@7
    .line 92
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@9
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@c
    move-result-object v1

    #@d
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@f
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@16
    move-result-object v0

    #@17
    .line 93
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@19
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    #@1c
    move-result v1

    #@1d
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 102
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    #@6
    return-object v0

    #@7
    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@9
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getMatchedNode()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 122
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 123
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v1

    #@a
    iget v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    #@c
    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@f
    move-result-object v0

    #@10
    .line 124
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    iget v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    #@12
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 126
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@19
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@1f
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    #@22
    move-result v2

    #@23
    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@26
    move-result-object v0

    #@27
    .line 127
    .restart local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@29
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    #@2c
    move-result v1

    #@2d
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@30
    move-result-object v1

    #@31
    return-object v1
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 112
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    #@6
    return-object v0

    #@7
    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@9
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    return-object v0
.end method

.method public resetState(Ljavax/xml/transform/Transformer;)V
    .locals 3
    .param p1, "transformer"    # Ljavax/xml/transform/Transformer;

    #@0
    .prologue
    .line 62
    if-eqz p1, :cond_0

    #@2
    instance-of v2, p1, Lorg/apache/xalan/transformer/TransformerImpl;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 63
    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    #@8
    .end local p1    # "transformer":Ljavax/xml/transform/Transformer;
    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@a
    .line 64
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@c
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    .line 65
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@14
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    #@1a
    .line 66
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@1c
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    #@22
    .line 67
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@24
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    #@27
    move-result v0

    #@28
    .line 68
    .local v0, "currentNodeHandle":I
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2a
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@31
    move-result-object v1

    #@32
    .line 69
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@35
    move-result-object v2

    #@36
    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    #@38
    .line 70
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@3a
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    #@3d
    move-result v2

    #@3e
    iput v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    #@40
    .line 71
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@42
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    #@48
    .line 61
    .end local v0    # "currentNodeHandle":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    return-void
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    #@2
    .line 54
    return-void
.end method
