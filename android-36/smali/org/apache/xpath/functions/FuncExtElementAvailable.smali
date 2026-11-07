.class public Lorg/apache/xpath/functions/FuncExtElementAvailable;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncExtElementAvailable.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x68ec6e558ac27a2L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 57
    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    if-gez v0, :cond_16

    move-object v2, v1

    goto :goto_2e

    :cond_16
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_28

    .line 68
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 72
    :goto_2e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "http://xml.apache.org/xalan"

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_4f

    .line 90
    :cond_3d
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/ExtensionsProvider;

    .line 91
    invoke-interface {p1, v2, p0}, Lorg/apache/xpath/ExtensionsProvider;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 92
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_4c
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    .line 77
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 78
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getAvailableElements()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, v2, p0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 80
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_6b
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6d} :catch_6e

    return-object p0

    .line 84
    :catch_6e
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method
