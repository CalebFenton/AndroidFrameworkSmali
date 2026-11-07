.class public Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
.super Ljava/lang/Object;
.source "JAXPExtensionsProvider.java"

# interfaces
.implements Lorg/apache/xpath/ExtensionsProvider;


# instance fields
.field private greylist extensionInvocationDisabled:Z

.field private final greylist resolver:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor greylist <init>(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    return-void
.end method

.method public constructor greylist <init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 57
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    return-void
.end method


# virtual methods
.method public greylist elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_5c

    .line 111
    :try_start_2
    new-instance p4, Ljavax/xml/namespace/QName;

    invoke-direct {p4, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-boolean p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-nez p1, :cond_48

    .line 125
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    .line 127
    iget-object p0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 128
    invoke-interface {p0, p4, p1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    .line 131
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p4, 0x0

    :goto_1b
    if-ge p4, p1, :cond_43

    .line 133
    invoke-virtual {p3, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    instance-of v1, v0, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_2f

    .line 137
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_40

    .line 138
    :cond_2f
    instance-of v1, v0, Lorg/apache/xpath/objects/XObject;

    if-eqz v1, :cond_3d

    .line 139
    check-cast v0, Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_40

    .line 142
    :cond_3d
    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_40
    add-int/lit8 p4, p4, 0x1

    goto :goto_1b

    .line 146
    :cond_43
    invoke-interface {p0, p2}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 117
    :cond_48
    const-string p0, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    .line 119
    invoke-virtual {p4}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance p1, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_5c
    const-string p0, "ER_ARG_CANNOT_BE_NULL"

    const-string p1, "Function Name"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6e
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_6e} :catch_75
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception p0

    .line 152
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_75
    move-exception p0

    .line 150
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getArgCount()I

    move-result p1

    .line 167
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-nez v0, :cond_4e

    .line 179
    iget-object p0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 180
    invoke-interface {p0, v2, p1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_21
    if-ge v1, p1, :cond_49

    .line 184
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 187
    instance-of v3, v2, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v3, :cond_35

    .line 188
    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_46

    .line 189
    :cond_35
    instance-of v3, v2, Lorg/apache/xpath/objects/XObject;

    if-eqz v3, :cond_43

    .line 190
    check-cast v2, Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_46

    .line 193
    :cond_43
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 197
    :cond_49
    invoke-interface {p0, v0}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 174
    :cond_4e
    const-string p0, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    .line 175
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 174
    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance p1, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_62
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_62} :catch_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 204
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_69
    move-exception p0

    .line 202
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 74
    :try_start_3
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 76
    invoke-interface {p0, v1, v0}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    if-nez p0, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x1

    return p0

    .line 68
    :cond_13
    const-string p0, "ER_ARG_CANNOT_BE_NULL"

    const-string p1, "Function Name"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_25

    :catch_25
    return v0
.end method
