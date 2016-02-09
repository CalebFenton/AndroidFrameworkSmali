.class public Lorg/apache/xalan/extensions/ExpressionVisitor;
.super Lorg/apache/xpath/XPathVisitor;
.source "ExpressionVisitor.java"


# instance fields
.field private m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 5
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "func"    # Lorg/apache/xpath/functions/Function;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 64
    instance-of v3, p2, Lorg/apache/xpath/functions/FuncExtFunction;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 66
    check-cast p2, Lorg/apache/xpath/functions/FuncExtFunction;

    #@7
    .end local p2    # "func":Lorg/apache/xpath/functions/Function;
    invoke-virtual {p2}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 67
    .local v1, "namespace":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@d
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    #@14
    .line 79
    .end local v1    # "namespace":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    #@15
    return v3

    #@16
    .line 69
    .restart local p2    # "func":Lorg/apache/xpath/functions/Function;
    :cond_1
    instance-of v3, p2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 71
    check-cast p2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    #@1c
    .end local p2    # "func":Lorg/apache/xpath/functions/Function;
    invoke-virtual {p2}, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->getArg0()Lorg/apache/xpath/Expression;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Lorg/apache/xpath/Expression;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 72
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v3, ":"

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2a
    move-result v3

    #@2b
    if-lez v3, :cond_0

    #@2d
    .line 74
    const-string/jumbo v3, ":"

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@33
    move-result v3

    #@34
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 75
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@3a
    invoke-virtual {v3, v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 76
    .restart local v1    # "namespace":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@40
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    #@47
    goto :goto_0
.end method
