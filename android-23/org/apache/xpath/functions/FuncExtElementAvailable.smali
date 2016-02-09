.class public Lorg/apache/xpath/functions/FuncExtElementAvailable;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncExtElementAvailable.java"


# static fields
.field static final serialVersionUID:J = -0x68ec6e558ac27a2L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 10
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 54
    iget-object v8, p0, Lorg/apache/xpath/functions/FuncExtElementAvailable;->m_arg0:Lorg/apache/xpath/Expression;

    #@3
    invoke-virtual {v8, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@6
    move-result-object v8

    #@7
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 55
    .local v2, "fullName":Ljava/lang/String;
    const/16 v8, 0x3a

    #@d
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v3

    #@11
    .line 57
    .local v3, "indexOfNSSep":I
    if-gez v3, :cond_1

    #@13
    .line 59
    const-string/jumbo v6, ""

    #@16
    .line 60
    .local v6, "prefix":Ljava/lang/String;
    const-string/jumbo v5, "http://www.w3.org/1999/XSL/Transform"

    #@19
    .line 61
    .local v5, "namespace":Ljava/lang/String;
    move-object v4, v2

    #@1a
    .line 72
    .local v4, "methName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "http://www.w3.org/1999/XSL/Transform"

    #@1d
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v8

    #@21
    if-nez v8, :cond_0

    #@23
    .line 73
    const-string/jumbo v8, "http://xml.apache.org/xalan"

    #@26
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v8

    #@2a
    .line 72
    if-eqz v8, :cond_4

    #@2c
    .line 77
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Lorg/apache/xalan/transformer/TransformerImpl;

    #@32
    .line 78
    .local v7, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getAvailableElements()Ljava/util/HashMap;

    #@39
    move-result-object v8

    #@3a
    .line 79
    new-instance v9, Lorg/apache/xml/utils/QName;

    #@3c
    invoke-direct {v9, v5, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 78
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@42
    move-result v8

    #@43
    if-eqz v8, :cond_3

    #@45
    .line 80
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 78
    :goto_1
    return-object v8

    #@48
    .line 65
    .end local v4    # "methName":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    :cond_1
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    .line 66
    .restart local v6    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@4f
    move-result-object v8

    #@50
    invoke-interface {v8, v6}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    .line 67
    .restart local v5    # "namespace":Ljava/lang/String;
    if-nez v5, :cond_2

    #@56
    .line 68
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@58
    return-object v8

    #@59
    .line 69
    :cond_2
    add-int/lit8 v8, v3, 0x1

    #@5b
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    .restart local v4    # "methName":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 80
    .restart local v7    # "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    :cond_3
    :try_start_1
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    goto :goto_1

    #@63
    .line 83
    .end local v7    # "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    :catch_0
    move-exception v0

    #@64
    .line 84
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@66
    return-object v8

    #@67
    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    #@6a
    move-result-object v1

    #@6b
    check-cast v1, Lorg/apache/xpath/ExtensionsProvider;

    #@6d
    .line 91
    .local v1, "extProvider":Lorg/apache/xpath/ExtensionsProvider;
    invoke-interface {v1, v5, v4}, Lorg/apache/xpath/ExtensionsProvider;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@70
    move-result v8

    #@71
    if-eqz v8, :cond_5

    #@73
    .line 92
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@75
    .line 91
    :goto_2
    return-object v8

    #@76
    .line 92
    :cond_5
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@78
    goto :goto_2
.end method
