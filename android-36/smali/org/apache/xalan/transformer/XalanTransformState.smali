.class public Lorg/apache/xalan/transformer/XalanTransformState;
.super Ljava/lang/Object;
.source "XalanTransformState.java"

# interfaces
.implements Lorg/apache/xalan/transformer/TransformState;


# instance fields
.field greylist m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

.field greylist m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

.field greylist m_currentNode:Lorg/w3c/dom/Node;

.field greylist m_currentNodeHandle:I

.field greylist m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field greylist m_elemPending:Z

.field greylist m_matchedNode:I

.field greylist m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field greylist m_node:Lorg/w3c/dom/Node;

.field greylist m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    .line 41
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 42
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 43
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNodeHandle:I

    .line 45
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    .line 46
    iput v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    .line 47
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    .line 49
    iput-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-void
.end method


# virtual methods
.method public greylist getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 2

    .line 135
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_c

    .line 136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0

    .line 138
    :cond_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public greylist getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 2

    .line 79
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_7

    .line 80
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0

    .line 82
    :cond_7
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCurrentNode()Lorg/w3c/dom/Node;
    .registers 3

    .line 89
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_5

    return-object v0

    .line 92
    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 93
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result p0

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .line 101
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_7

    .line 102
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0

    .line 104
    :cond_7
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public greylist getMatchedNode()Lorg/w3c/dom/Node;
    .registers 3

    .line 122
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_17

    .line 123
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    iget v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 124
    iget p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 126
    :cond_17
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 127
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result p0

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public greylist getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .line 111
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_7

    .line 112
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0

    .line 114
    :cond_7
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public greylist getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 145
    iget-object p0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object p0
.end method

.method public greylist resetState(Ljavax/xml/transform/Transformer;)V
    .registers 3

    if-eqz p1, :cond_46

    .line 62
    instance-of v0, p1, Lorg/apache/xalan/transformer/TransformerImpl;

    if-eqz v0, :cond_46

    .line 63
    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 64
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 65
    iget-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 66
    iget-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 67
    iget-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result p1

    .line 68
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 69
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    .line 70
    iget-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result p1

    iput p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    .line 71
    iget-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    :cond_46
    return-void
.end method

.method public greylist setCurrentNode(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    return-void
.end method
