.class public Lorg/apache/xpath/functions/FuncExtFunctionAvailable;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncExtFunctionAvailable.java"


# static fields
.field static final serialVersionUID:J = 0x4709ae7fafe83ef1L


# instance fields
.field private transient m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    .line 38
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@6
    .line 34
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 9
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 55
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_arg0:Lorg/apache/xpath/Expression;

    #@3
    invoke-virtual {v7, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 56
    .local v2, "fullName":Ljava/lang/String;
    const/16 v7, 0x3a

    #@d
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v3

    #@11
    .line 58
    .local v3, "indexOfNSSep":I
    if-gez v3, :cond_1

    #@13
    .line 60
    const-string/jumbo v6, ""

    #@16
    .line 61
    .local v6, "prefix":Ljava/lang/String;
    const-string/jumbo v5, "http://www.w3.org/1999/XSL/Transform"

    #@19
    .line 62
    .local v5, "namespace":Ljava/lang/String;
    move-object v4, v2

    #@1a
    .line 73
    .local v4, "methName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "http://www.w3.org/1999/XSL/Transform"

    #@1d
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_4

    #@23
    .line 77
    :try_start_0
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@25
    if-nez v7, :cond_0

    #@27
    new-instance v7, Lorg/apache/xpath/compiler/FunctionTable;

    #@29
    invoke-direct {v7}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    #@2c
    iput-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@2e
    .line 78
    :cond_0
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@30
    invoke-virtual {v7, v4}, Lorg/apache/xpath/compiler/FunctionTable;->functionAvailable(Ljava/lang/String;)Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_3

    #@36
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    :goto_1
    return-object v7

    #@39
    .line 66
    .end local v4    # "methName":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    .line 67
    .restart local v6    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@40
    move-result-object v7

    #@41
    invoke-interface {v7, v6}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 68
    .restart local v5    # "namespace":Ljava/lang/String;
    if-nez v5, :cond_2

    #@47
    .line 69
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@49
    return-object v7

    #@4a
    .line 70
    :cond_2
    add-int/lit8 v7, v3, 0x1

    #@4c
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .restart local v4    # "methName":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 78
    :cond_3
    :try_start_1
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    goto :goto_1

    #@54
    .line 81
    :catch_0
    move-exception v0

    #@55
    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@57
    return-object v7

    #@58
    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Lorg/apache/xpath/ExtensionsProvider;

    #@5e
    .line 89
    .local v1, "extProvider":Lorg/apache/xpath/ExtensionsProvider;
    invoke-interface {v1, v5, v4}, Lorg/apache/xpath/ExtensionsProvider;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_5

    #@64
    .line 90
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@66
    .line 89
    :goto_2
    return-object v7

    #@67
    .line 90
    :cond_5
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@69
    goto :goto_2
.end method

.method public setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V
    .locals 0
    .param p1, "aTable"    # Lorg/apache/xpath/compiler/FunctionTable;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@2
    .line 101
    return-void
.end method
