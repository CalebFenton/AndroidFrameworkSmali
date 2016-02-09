.class public Lorg/apache/xalan/templates/ElemExsltFunction;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "ElemExsltFunction.java"


# static fields
.field static final serialVersionUID:J = 0x3c6e37d4c54c533L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 8
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 126
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@6
    .line 129
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExsltFunction;->getName()Lorg/apache/xml/utils/QName;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 130
    .local v3, "namespace":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionHandlerClass()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 131
    .local v2, "handlerClass":Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/Object;

    #@14
    aput-object v3, v0, v5

    #@16
    aput-object p1, v0, v6

    #@18
    .line 133
    .local v0, "args":[Ljava/lang/Object;
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@1a
    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d
    .line 134
    .local v1, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    #@24
    .line 137
    const-string/jumbo v4, "http://exslt.org/functions"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 139
    const-string/jumbo v3, "http://exslt.org/functions"

    #@30
    .line 140
    new-array v0, v7, [Ljava/lang/Object;

    #@32
    .end local v0    # "args":[Ljava/lang/Object;
    aput-object v3, v0, v5

    #@34
    aput-object p1, v0, v6

    #@36
    .line 141
    .restart local v0    # "args":[Ljava/lang/Object;
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@38
    .end local v1    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3b
    .line 142
    .restart local v1    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    #@42
    .line 124
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;[Lorg/apache/xpath/objects/XObject;)V
    .locals 11
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "args"    # [Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 69
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@4
    move-result-object v7

    #@5
    .line 70
    .local v7, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@8
    move-result-object v6

    #@9
    .line 74
    .local v6, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v6}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@c
    move-result v5

    #@d
    .line 75
    .local v5, "thisFrame":I
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_frameSize:I

    #@f
    invoke-virtual {v6, v8}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@12
    move-result v3

    #@13
    .line 77
    .local v3, "nextFrame":I
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_inArgsSize:I

    #@15
    array-length v9, p2

    #@16
    if-ge v8, v9, :cond_0

    #@18
    .line 78
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@1a
    const-string/jumbo v9, "function called with too many args"

    #@1d
    invoke-direct {v8, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v8

    #@21
    .line 83
    :cond_0
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_inArgsSize:I

    #@23
    if-lez v8, :cond_3

    #@25
    .line 84
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_inArgsSize:I

    #@27
    invoke-virtual {v6, v10, v8}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    #@2a
    .line 86
    array-length v8, p2

    #@2b
    if-lez v8, :cond_3

    #@2d
    .line 87
    invoke-virtual {v6, v5}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@30
    .line 88
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExsltFunction;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@33
    move-result-object v1

    #@34
    .line 90
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_0
    array-length v8, p2

    #@36
    if-ge v2, v8, :cond_2

    #@38
    .line 91
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@3b
    move-result-object v0

    #@3c
    .line 92
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@3f
    move-result-object v8

    #@40
    instance-of v8, v8, Lorg/apache/xalan/templates/ElemParam;

    #@42
    if-eqz v8, :cond_1

    #@44
    .line 93
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Lorg/apache/xalan/templates/ElemParam;

    #@4a
    .line 94
    .local v4, "param":Lorg/apache/xalan/templates/ElemParam;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemParam;->getIndex()I

    #@4d
    move-result v8

    #@4e
    aget-object v9, p2, v2

    #@50
    invoke-virtual {v6, v8, v9, v3}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    #@53
    .line 90
    .end local v4    # "param":Lorg/apache/xalan/templates/ElemParam;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_0

    #@56
    .line 98
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {v6, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@59
    .line 107
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v6, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@5c
    .line 108
    const/4 v8, 0x1

    #@5d
    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@60
    .line 111
    invoke-virtual {v6, v5}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@63
    .line 67
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "function"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 51
    const/16 v0, 0x58

    #@2
    return v0
.end method
