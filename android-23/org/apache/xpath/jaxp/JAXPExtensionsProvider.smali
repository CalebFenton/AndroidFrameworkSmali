.class public Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
.super Ljava/lang/Object;
.source "JAXPExtensionsProvider.java"

# interfaces
.implements Lorg/apache/xpath/ExtensionsProvider;


# instance fields
.field private extensionInvocationDisabled:Z

.field private final resolver:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 1
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathFunctionResolver;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    #@6
    .line 50
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@8
    .line 51
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    #@a
    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 1
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathFunctionResolver;
    .param p2, "featureSecureProcessing"    # Z

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    #@6
    .line 56
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@8
    .line 57
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    #@a
    .line 55
    return-void
.end method


# virtual methods
.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "argVec"    # Ljava/util/Vector;
    .param p4, "methodKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    if-nez p2, :cond_0

    #@2
    .line 106
    :try_start_0
    const-string/jumbo v12, "ER_ARG_CANNOT_BE_NULL"

    #@5
    .line 107
    const/4 v13, 0x1

    #@6
    new-array v13, v13, [Ljava/lang/Object;

    #@8
    const-string/jumbo v14, "Function Name"

    #@b
    const/4 v15, 0x0

    #@c
    aput-object v14, v13, v15

    #@e
    .line 105
    invoke-static {v12, v13}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 108
    .local v6, "fmsg":Ljava/lang/String;
    new-instance v12, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v12, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v12
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@18
    .line 147
    .end local v6    # "fmsg":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@19
    .line 150
    .local v10, "xfe":Ljavax/xml/xpath/XPathFunctionException;
    new-instance v12, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1b
    invoke-direct {v12, v10}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@1e
    throw v12

    #@1f
    .line 111
    .end local v10    # "xfe":Ljavax/xml/xpath/XPathFunctionException;
    :cond_0
    :try_start_1
    new-instance v8, Ljavax/xml/namespace/QName;

    #@21
    move-object/from16 v0, p1

    #@23
    move-object/from16 v1, p2

    #@25
    invoke-direct {v8, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 116
    .local v8, "myQName":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    #@2a
    iget-boolean v12, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    #@2c
    if-eqz v12, :cond_1

    #@2e
    .line 118
    const-string/jumbo v12, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    #@31
    .line 119
    const/4 v13, 0x1

    #@32
    new-array v13, v13, [Ljava/lang/Object;

    #@34
    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@37
    move-result-object v14

    #@38
    const/4 v15, 0x0

    #@39
    aput-object v14, v13, v15

    #@3b
    .line 117
    invoke-static {v12, v13}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    .line 120
    .restart local v6    # "fmsg":Ljava/lang/String;
    new-instance v12, Ljavax/xml/xpath/XPathFunctionException;

    #@41
    invoke-direct {v12, v6}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    #@44
    throw v12
    :try_end_1
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@45
    .line 151
    .end local v6    # "fmsg":Ljava/lang/String;
    .end local v8    # "myQName":Ljavax/xml/namespace/QName;
    :catch_1
    move-exception v5

    #@46
    .line 152
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Ljavax/xml/transform/TransformerException;

    #@48
    invoke-direct {v12, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@4b
    throw v12

    #@4c
    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "myQName":Ljavax/xml/namespace/QName;
    :cond_1
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    #@4f
    move-result v4

    #@50
    .line 128
    .local v4, "arity":I
    move-object/from16 v0, p0

    #@52
    iget-object v12, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@54
    invoke-interface {v12, v8, v4}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    #@57
    move-result-object v11

    #@58
    .line 131
    .local v11, "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    new-instance v2, Ljava/util/ArrayList;

    #@5a
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@5d
    .line 132
    .local v2, "argList":Ljava/util/ArrayList;
    const/4 v7, 0x0

    #@5e
    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    #@60
    .line 133
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    .line 136
    .local v3, "argument":Ljava/lang/Object;
    instance-of v12, v3, Lorg/apache/xpath/objects/XNodeSet;

    #@68
    if-eqz v12, :cond_2

    #@6a
    .line 137
    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    #@6c
    .end local v3    # "argument":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@73
    .line 132
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@75
    goto :goto_0

    #@76
    .line 138
    .restart local v3    # "argument":Ljava/lang/Object;
    :cond_2
    instance-of v12, v3, Lorg/apache/xpath/objects/XObject;

    #@78
    if-eqz v12, :cond_3

    #@7a
    .line 139
    check-cast v3, Lorg/apache/xpath/objects/XObject;

    #@7c
    .end local v3    # "argument":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    #@7f
    move-result-object v9

    #@80
    .line 140
    .local v9, "passedArgument":Ljava/lang/Object;
    invoke-virtual {v2, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@83
    goto :goto_1

    #@84
    .line 142
    .end local v9    # "passedArgument":Ljava/lang/Object;
    .restart local v3    # "argument":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@87
    goto :goto_1

    #@88
    .line 146
    .end local v3    # "argument":Ljava/lang/Object;
    :cond_4
    invoke-interface {v11, v2}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@8b
    move-result-object v12

    #@8c
    return-object v12
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 17
    .param p1, "extFunction"    # Lorg/apache/xpath/functions/FuncExtFunction;
    .param p2, "argVec"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 165
    .local v9, "namespace":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 166
    .local v6, "functionName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getArgCount()I

    #@b
    move-result v3

    #@c
    .line 168
    .local v3, "arity":I
    new-instance v8, Ljavax/xml/namespace/QName;

    #@e
    invoke-direct {v8, v9, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 173
    .local v8, "myQName":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    #@13
    iget-boolean v13, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    #@15
    if-eqz v13, :cond_0

    #@17
    .line 175
    const-string/jumbo v13, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    #@1a
    const/4 v14, 0x1

    #@1b
    new-array v14, v14, [Ljava/lang/Object;

    #@1d
    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@20
    move-result-object v15

    #@21
    const/16 v16, 0x0

    #@23
    aput-object v15, v14, v16

    #@25
    .line 174
    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 176
    .local v5, "fmsg":Ljava/lang/String;
    new-instance v13, Ljavax/xml/xpath/XPathFunctionException;

    #@2b
    invoke-direct {v13, v5}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v13
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@2f
    .line 199
    .end local v3    # "arity":I
    .end local v5    # "fmsg":Ljava/lang/String;
    .end local v6    # "functionName":Ljava/lang/String;
    .end local v8    # "myQName":Ljavax/xml/namespace/QName;
    .end local v9    # "namespace":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@30
    .line 202
    .local v11, "xfe":Ljavax/xml/xpath/XPathFunctionException;
    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@32
    invoke-direct {v13, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@35
    throw v13

    #@36
    .line 180
    .end local v11    # "xfe":Ljavax/xml/xpath/XPathFunctionException;
    .restart local v3    # "arity":I
    .restart local v6    # "functionName":Ljava/lang/String;
    .restart local v8    # "myQName":Ljavax/xml/namespace/QName;
    .restart local v9    # "namespace":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@38
    iget-object v13, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@3a
    invoke-interface {v13, v8, v3}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    #@3d
    move-result-object v12

    #@3e
    .line 182
    .local v12, "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    new-instance v1, Ljava/util/ArrayList;

    #@40
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@43
    .line 183
    .local v1, "argList":Ljava/util/ArrayList;
    const/4 v7, 0x0

    #@44
    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_3

    #@46
    .line 184
    move-object/from16 v0, p2

    #@48
    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    .line 187
    .local v2, "argument":Ljava/lang/Object;
    instance-of v13, v2, Lorg/apache/xpath/objects/XNodeSet;

    #@4e
    if-eqz v13, :cond_1

    #@50
    .line 188
    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    #@52
    .end local v2    # "argument":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    #@55
    move-result-object v13

    #@56
    invoke-virtual {v1, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@59
    .line 183
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 189
    .restart local v2    # "argument":Ljava/lang/Object;
    :cond_1
    instance-of v13, v2, Lorg/apache/xpath/objects/XObject;

    #@5e
    if-eqz v13, :cond_2

    #@60
    .line 190
    check-cast v2, Lorg/apache/xpath/objects/XObject;

    #@62
    .end local v2    # "argument":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    #@65
    move-result-object v10

    #@66
    .line 191
    .local v10, "passedArgument":Ljava/lang/Object;
    invoke-virtual {v1, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    goto :goto_1

    #@6a
    .line 203
    .end local v1    # "argList":Ljava/util/ArrayList;
    .end local v3    # "arity":I
    .end local v6    # "functionName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "myQName":Ljavax/xml/namespace/QName;
    .end local v9    # "namespace":Ljava/lang/String;
    .end local v10    # "passedArgument":Ljava/lang/Object;
    .end local v12    # "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    :catch_1
    move-exception v4

    #@6b
    .line 204
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    #@6d
    invoke-direct {v13, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@70
    throw v13

    #@71
    .line 193
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "argList":Ljava/util/ArrayList;
    .restart local v2    # "argument":Ljava/lang/Object;
    .restart local v3    # "arity":I
    .restart local v6    # "functionName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "myQName":Ljavax/xml/namespace/QName;
    .restart local v9    # "namespace":Ljava/lang/String;
    .restart local v12    # "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    :cond_2
    :try_start_2
    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@74
    goto :goto_1

    #@75
    .line 197
    .end local v2    # "argument":Ljava/lang/Object;
    :cond_3
    invoke-interface {v12, v1}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@78
    move-result-object v13

    #@79
    return-object v13
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 67
    if-nez p2, :cond_0

    #@4
    .line 69
    :try_start_0
    const-string/jumbo v4, "ER_ARG_CANNOT_BE_NULL"

    #@7
    .line 70
    const/4 v5, 0x1

    #@8
    new-array v5, v5, [Ljava/lang/Object;

    #@a
    const-string/jumbo v6, "Function Name"

    #@d
    const/4 v7, 0x0

    #@e
    aput-object v6, v5, v7

    #@10
    .line 68
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 71
    .local v1, "fmsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/NullPointerException;

    #@16
    invoke-direct {v4, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 81
    .end local v1    # "fmsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1b
    .line 82
    .local v0, "e":Ljava/lang/Exception;
    return v8

    #@1c
    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljavax/xml/namespace/QName;

    #@1e
    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 76
    .local v2, "myQName":Ljavax/xml/namespace/QName;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v4, v2, v5}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v3

    #@28
    .line 77
    .local v3, "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    if-nez v3, :cond_1

    #@2a
    .line 78
    return v8

    #@2b
    .line 80
    :cond_1
    return v6
.end method
