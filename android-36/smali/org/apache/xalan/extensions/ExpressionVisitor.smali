.class public Lorg/apache/xalan/extensions/ExpressionVisitor;
.super Lorg/apache/xpath/XPathVisitor;
.source "ExpressionVisitor.java"


# instance fields
.field private greylist m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-void
.end method


# virtual methods
.method public greylist visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .registers 4

    .line 64
    instance-of p1, p2, Lorg/apache/xpath/functions/FuncExtFunction;

    if-eqz p1, :cond_14

    .line 66
    check-cast p2, Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-virtual {p2}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    goto :goto_42

    .line 69
    :cond_14
    instance-of p1, p2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    if-eqz p1, :cond_42

    .line 71
    check-cast p2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    invoke-virtual {p2}, Lorg/apache/xpath/functions/FunctionOneArg;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    :cond_42
    :goto_42
    const/4 p0, 0x1

    return p0
.end method
