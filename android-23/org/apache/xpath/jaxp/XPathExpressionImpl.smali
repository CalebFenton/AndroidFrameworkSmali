.class public Lorg/apache/xpath/jaxp/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "XPathExpressionImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPathExpression;


# static fields
.field static d:Lorg/w3c/dom/Document;

.field static db:Ljavax/xml/parsers/DocumentBuilder;

.field static dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private xpath:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 234
    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    .line 235
    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    #@5
    .line 236
    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;

    #@7
    .line 53
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    #@6
    .line 68
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 1
    .param p1, "xpath"    # Lorg/apache/xpath/XPath;
    .param p2, "prefixResolver"    # Lorg/apache/xpath/jaxp/JAXPPrefixResolver;
    .param p3, "functionResolver"    # Ljavax/xml/xpath/XPathFunctionResolver;
    .param p4, "variableResolver"    # Ljavax/xml/xpath/XPathVariableResolver;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    #@6
    .line 74
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    #@8
    .line 75
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@a
    .line 76
    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@c
    .line 77
    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@e
    .line 78
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    #@10
    .line 73
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    .locals 1
    .param p1, "xpath"    # Lorg/apache/xpath/XPath;
    .param p2, "prefixResolver"    # Lorg/apache/xpath/jaxp/JAXPPrefixResolver;
    .param p3, "functionResolver"    # Ljavax/xml/xpath/XPathFunctionResolver;
    .param p4, "variableResolver"    # Ljavax/xml/xpath/XPathVariableResolver;
    .param p5, "featureSecureProcessing"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    #@6
    .line 86
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    #@8
    .line 87
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@a
    .line 88
    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@c
    .line 89
    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@e
    .line 90
    iput-boolean p5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    #@10
    .line 85
    return-void
.end method

.method private eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "contextItem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 105
    const/4 v3, 0x0

    #@2
    .line 110
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 111
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    #@8
    .line 112
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@a
    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    #@c
    .line 111
    invoke-direct {v1, v4, v5}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    #@f
    .line 113
    .local v1, "jep":Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    new-instance v3, Lorg/apache/xpath/XPathContext;

    #@11
    .end local v3    # "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v1, v6}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    #@14
    .line 118
    .end local v1    # "jep":Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    :goto_0
    new-instance v4, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    #@16
    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@18
    invoke-direct {v4, v5}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    #@1b
    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    #@1e
    .line 119
    const/4 v2, 0x0

    #@1f
    .local v2, "xobj":Lorg/apache/xpath/objects/XObject;
    move-object v0, p1

    #@20
    .line 121
    check-cast v0, Lorg/w3c/dom/Node;

    #@22
    .line 125
    .local v0, "contextNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    #@24
    .line 126
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getDummyDocument()Lorg/w3c/dom/Document;

    #@27
    move-result-object v0

    #@28
    .line 129
    :cond_0
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    #@2a
    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@2c
    invoke-virtual {v4, v3, v0, v5}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@2f
    move-result-object v2

    #@30
    .line 130
    .local v2, "xobj":Lorg/apache/xpath/objects/XObject;
    return-object v2

    #@31
    .line 115
    .end local v0    # "contextNode":Lorg/w3c/dom/Node;
    .end local v2    # "xobj":Lorg/apache/xpath/objects/XObject;
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    :cond_1
    new-instance v3, Lorg/apache/xpath/XPathContext;

    #@33
    .end local v3    # "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v6}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@36
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    goto :goto_0
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 376
    :try_start_0
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 377
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@8
    move-result-object v2

    #@9
    sput-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@b
    .line 378
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@d
    const/4 v3, 0x1

    #@e
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@11
    .line 379
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    #@17
    .line 381
    :cond_0
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@19
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@1c
    move-result-object v2

    #@1d
    sput-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    #@1f
    .line 383
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    #@21
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    #@24
    move-result-object v0

    #@25
    .line 384
    .local v0, "dim":Lorg/w3c/dom/DOMImplementation;
    const-string/jumbo v2, "http://java.sun.com/jaxp/xpath"

    #@28
    .line 385
    const-string/jumbo v3, "dummyroot"

    #@2b
    const/4 v4, 0x0

    #@2c
    .line 384
    invoke-interface {v0, v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    #@2f
    move-result-object v2

    #@30
    sput-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;

    #@32
    .line 386
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    return-object v2

    #@35
    .line 387
    :catch_0
    move-exception v1

    #@36
    .line 388
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@39
    .line 390
    return-object v5
.end method

.method private getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 6
    .param p1, "resultObject"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "returnType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 345
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 348
    :cond_0
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    #@f
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 349
    new-instance v2, Ljava/lang/Double;

    #@17
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@1a
    move-result-wide v4

    #@1b
    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    #@1e
    return-object v2

    #@1f
    .line 352
    :cond_1
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    #@21
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 353
    new-instance v2, Ljava/lang/Boolean;

    #@29
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@2c
    move-result v3

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    #@30
    return-object v2

    #@31
    .line 356
    :cond_2
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    #@33
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 357
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 360
    :cond_3
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    #@40
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4

    #@46
    .line 361
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    #@49
    move-result-object v1

    #@4a
    .line 363
    .local v1, "ni":Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@4d
    move-result-object v2

    #@4e
    return-object v2

    #@4f
    .line 368
    .end local v1    # "ni":Lorg/w3c/dom/traversal/NodeIterator;
    :cond_4
    const-string/jumbo v2, "ER_UNSUPPORTED_RETURN_TYPE"

    #@52
    .line 369
    const/4 v3, 0x1

    #@53
    new-array v3, v3, [Ljava/lang/Object;

    #@55
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    const/4 v5, 0x0

    #@5a
    aput-object v4, v3, v5

    #@5c
    .line 367
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    .line 370
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@62
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2
.end method

.method private isSupported(Ljavax/xml/namespace/QName;)Z
    .locals 1
    .param p1, "returnType"    # Ljavax/xml/namespace/QName;

    #@0
    .prologue
    .line 330
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 331
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    #@a
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 330
    if-nez v0, :cond_0

    #@10
    .line 332
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    #@12
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 330
    if-nez v0, :cond_0

    #@18
    .line 333
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    #@1a
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    .line 330
    if-nez v0, :cond_0

    #@20
    .line 334
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    #@22
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 330
    if-eqz v0, :cond_1

    #@28
    .line 336
    :cond_0
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 338
    :cond_1
    const/4 v0, 0x0

    #@2b
    return v0
.end method


# virtual methods
.method public eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "returnType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    .line 100
    .local v0, "resultObject":Lorg/apache/xpath/objects/XObject;
    invoke-direct {p0, v0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 8
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "returnType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 168
    if-nez p2, :cond_0

    #@4
    .line 171
    const-string/jumbo v4, "ER_ARG_CANNOT_BE_NULL"

    #@7
    .line 172
    new-array v5, v5, [Ljava/lang/Object;

    #@9
    const-string/jumbo v6, "returnType"

    #@c
    aput-object v6, v5, v7

    #@e
    .line 170
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 173
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v4, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v4

    #@18
    .line 177
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 179
    const-string/jumbo v4, "ER_UNSUPPORTED_RETURN_TYPE"

    #@21
    .line 180
    new-array v5, v5, [Ljava/lang/Object;

    #@23
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    aput-object v6, v5, v7

    #@29
    .line 178
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 181
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2f
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v4

    #@33
    .line 184
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result-object v4

    #@37
    return-object v4

    #@38
    .line 190
    :catch_0
    move-exception v3

    #@39
    .line 191
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@3c
    move-result-object v1

    #@3d
    .line 192
    .local v1, "nestedException":Ljava/lang/Throwable;
    instance-of v4, v1, Ljavax/xml/xpath/XPathFunctionException;

    #@3f
    if-eqz v4, :cond_2

    #@41
    .line 193
    check-cast v1, Ljavax/xml/xpath/XPathFunctionException;

    #@43
    .end local v1    # "nestedException":Ljava/lang/Throwable;
    throw v1

    #@44
    .line 197
    .restart local v1    # "nestedException":Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Ljavax/xml/xpath/XPathExpressionException;

    #@46
    invoke-direct {v4, v3}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@49
    throw v4

    #@4a
    .line 185
    .end local v1    # "nestedException":Ljava/lang/Throwable;
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v2

    #@4b
    .line 189
    .local v2, "npe":Ljava/lang/NullPointerException;
    new-instance v4, Ljavax/xml/xpath/XPathExpressionException;

    #@4d
    invoke-direct {v4, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@50
    throw v4
.end method

.method public evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 7
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .param p2, "returnType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 274
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 276
    :cond_0
    const-string/jumbo v3, "ER_SOURCE_RETURN_TYPE_CANNOT_BE_NULL"

    #@a
    .line 275
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 278
    .local v2, "fmsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    #@10
    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 282
    .end local v2    # "fmsg":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_2

    #@1a
    .line 284
    const-string/jumbo v3, "ER_UNSUPPORTED_RETURN_TYPE"

    #@1d
    .line 285
    new-array v4, v5, [Ljava/lang/Object;

    #@1f
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    aput-object v5, v4, v6

    #@25
    .line 283
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 286
    .restart local v2    # "fmsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2b
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 289
    .end local v2    # "fmsg":Ljava/lang/String;
    :cond_2
    :try_start_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@31
    if-nez v3, :cond_3

    #@33
    .line 290
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@36
    move-result-object v3

    #@37
    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@39
    .line 291
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3b
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@3f
    .line 292
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@41
    const/4 v4, 0x0

    #@42
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    #@45
    .line 294
    :cond_3
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@47
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@4a
    move-result-object v3

    #@4b
    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    #@4d
    .line 295
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    #@4f
    invoke-virtual {v3, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@52
    move-result-object v0

    #@53
    .line 296
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-object v3

    #@57
    return-object v3

    #@58
    .line 297
    .end local v0    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    #@59
    .line 298
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/xml/xpath/XPathExpressionException;

    #@5b
    invoke-direct {v3, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    throw v3
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    .line 325
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public setXPath(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "xpath"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    #@2
    .line 93
    return-void
.end method
