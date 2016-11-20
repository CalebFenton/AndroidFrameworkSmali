.class public Lorg/apache/xpath/jaxp/JAXPVariableStack;
.super Lorg/apache/xpath/VariableStack;
.source "JAXPVariableStack.java"


# instance fields
.field private final resolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 1
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathVariableResolver;

    #@0
    .prologue
    .line 45
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    #@4
    .line 46
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@6
    .line 44
    return-void
.end method


# virtual methods
.method public getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "qname"    # Lorg/apache/xml/utils/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 51
    if-nez p2, :cond_0

    #@4
    .line 55
    const-string/jumbo v3, "ER_ARG_CANNOT_BE_NULL"

    #@7
    .line 56
    new-array v4, v5, [Ljava/lang/Object;

    #@9
    const-string/jumbo v5, "Variable qname"

    #@c
    aput-object v5, v4, v6

    #@e
    .line 54
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 57
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@14
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 60
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    #@1a
    .line 61
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 62
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 60
    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 63
    .local v1, "name":Ljavax/xml/namespace/QName;
    iget-object v3, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@27
    invoke-interface {v3, v1}, Ljavax/xml/xpath/XPathVariableResolver;->resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    .line 64
    .local v2, "varValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    #@2d
    .line 66
    const-string/jumbo v3, "ER_RESOLVE_VARIABLE_RETURNS_NULL"

    #@30
    .line 67
    new-array v4, v5, [Ljava/lang/Object;

    #@32
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    aput-object v5, v4, v6

    #@38
    .line 65
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 68
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@3e
    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 70
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_1
    invoke-static {v2, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@45
    move-result-object v3

    #@46
    return-object v3
.end method
