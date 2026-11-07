.class public Lorg/apache/xpath/functions/FuncExtFunctionAvailable;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncExtFunctionAvailable.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4709ae7fafe83ef1L


# instance fields
.field private transient greylist m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 58
    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    if-gez v1, :cond_16

    move-object v3, v2

    goto :goto_2e

    :cond_16
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    .line 69
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_2e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 77
    :try_start_34
    iget-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    if-nez p1, :cond_3f

    new-instance p1, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {p1}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 78
    :cond_3f
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/FunctionTable;->functionAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4a

    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_4a
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4c} :catch_4d

    return-object p0

    .line 82
    :catch_4d
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    .line 88
    :cond_50
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/ExtensionsProvider;

    .line 89
    invoke-interface {p0, v3, v0}, Lorg/apache/xpath/ExtensionsProvider;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 90
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_5f
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method

.method public greylist setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method
