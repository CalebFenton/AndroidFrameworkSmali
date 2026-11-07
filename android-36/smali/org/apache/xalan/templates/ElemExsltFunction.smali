.class public Lorg/apache/xalan/templates/ElemExsltFunction;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "ElemExsltFunction.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x3c6e37d4c54c533L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 129
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionHandlerClass()Ljava/lang/String;

    move-result-object v0

    .line 131
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 132
    new-instance v2, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    .line 137
    const-string v1, "http://exslt.org/functions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    .line 140
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 141
    new-instance v2, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    :cond_37
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;[Lorg/apache/xpath/objects/XObject;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 75
    iget v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v2

    .line 77
    iget v3, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    array-length v4, p2

    if-lt v3, v4, :cond_55

    if-lez v3, :cond_4a

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v0, v4, v3}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    .line 86
    array-length v3, p2

    if-lez v3, :cond_4a

    .line 87
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 90
    :goto_27
    array-length v5, p2

    if-ge v4, v5, :cond_47

    .line 91
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 92
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/xalan/templates/ElemParam;

    if-eqz v5, :cond_44

    .line 93
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/templates/ElemParam;

    .line 94
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result v5

    aget-object v6, p2, v4

    invoke-virtual {v0, v5, v6, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 98
    :cond_47
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 107
    :cond_4a
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    const/4 p2, 0x1

    .line 108
    invoke-virtual {p1, p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 111
    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    return-void

    .line 78
    :cond_55
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "function called with too many args"

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 63
    const-string p0, "function"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x58

    return p0
.end method
