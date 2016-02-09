.class public Lorg/apache/xpath/jaxp/XPathImpl;
.super Ljava/lang/Object;
.source "XPathImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPath;


# static fields
.field private static d:Lorg/w3c/dom/Document;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private namespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    sput-object v0, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    #@3
    .line 57
    return-void
.end method

.method constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 1
    .param p1, "vr"    # Ljavax/xml/xpath/XPathVariableResolver;
    .param p2, "fr"    # Ljavax/xml/xpath/XPathFunctionResolver;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@6
    .line 69
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    #@9
    .line 72
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@b
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@d
    .line 73
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@f
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@11
    .line 71
    return-void
.end method

.method constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 1
    .param p1, "vr"    # Ljavax/xml/xpath/XPathVariableResolver;
    .param p2, "fr"    # Ljavax/xml/xpath/XPathFunctionResolver;
    .param p3, "featureSecureProcessing"    # Z

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@6
    .line 69
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    #@9
    .line 78
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@b
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@d
    .line 79
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@f
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@11
    .line 80
    iput-boolean p3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    #@13
    .line 77
    return-void
.end method

.method private eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "contextItem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 195
    new-instance v2, Lorg/apache/xpath/XPath;

    #@4
    .line 196
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@6
    .line 195
    invoke-direct {v2, p1, v5, v4, v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    #@9
    .line 197
    .local v2, "xpath":Lorg/apache/xpath/XPath;
    const/4 v3, 0x0

    #@a
    .line 202
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 203
    new-instance v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    #@10
    .line 204
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@12
    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    #@14
    .line 203
    invoke-direct {v0, v4, v5}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    #@17
    .line 205
    .local v0, "jep":Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    new-instance v3, Lorg/apache/xpath/XPathContext;

    #@19
    .end local v3    # "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v0, v6}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    #@1c
    .line 210
    .end local v0    # "jep":Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    :goto_0
    const/4 v1, 0x0

    #@1d
    .line 212
    .local v1, "xobj":Lorg/apache/xpath/objects/XObject;
    new-instance v4, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    #@1f
    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@21
    invoke-direct {v4, v5}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    #@24
    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    #@27
    .line 215
    instance-of v4, p2, Lorg/w3c/dom/Node;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 216
    check-cast p2, Lorg/w3c/dom/Node;

    #@2d
    .line 217
    .end local p2    # "contextItem":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@2f
    .line 216
    invoke-virtual {v2, v3, p2, v4}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@32
    move-result-object v1

    #@33
    .line 222
    .local v1, "xobj":Lorg/apache/xpath/objects/XObject;
    :goto_1
    return-object v1

    #@34
    .line 207
    .end local v1    # "xobj":Lorg/apache/xpath/objects/XObject;
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    .restart local p2    # "contextItem":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lorg/apache/xpath/XPathContext;

    #@36
    .end local v3    # "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v6}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@39
    .local v3, "xpathSupport":Lorg/apache/xpath/XPathContext;
    goto :goto_0

    #@3a
    .line 219
    .local v1, "xobj":Lorg/apache/xpath/objects/XObject;
    :cond_1
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@3c
    const/4 v5, -0x1

    #@3d
    invoke-virtual {v2, v3, v5, v4}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@40
    move-result-object v1

    #@41
    .local v1, "xobj":Lorg/apache/xpath/objects/XObject;
    goto :goto_1
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 184
    sget-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 185
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    #@c
    move-result-object v0

    #@d
    .line 186
    .local v0, "dim":Lorg/w3c/dom/DOMImplementation;
    const-string/jumbo v1, "http://java.sun.com/jaxp/xpath"

    #@10
    .line 187
    const-string/jumbo v2, "dummyroot"

    #@13
    .line 186
    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    #@16
    move-result-object v1

    #@17
    sput-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    #@19
    .line 189
    :cond_0
    sget-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    #@1b
    return-object v1
.end method

.method private static getParser()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4

    #@0
    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    move-result-object v0

    #@4
    .line 172
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@8
    .line 173
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    #@c
    .line 174
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 175
    :catch_0
    move-exception v1

    #@12
    .line 177
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    #@14
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2
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
    .line 316
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 317
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 320
    :cond_0
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    #@f
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 321
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
    .line 324
    :cond_1
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    #@21
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 325
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
    .line 328
    :cond_2
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    #@33
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 329
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 332
    :cond_3
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    #@40
    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4

    #@46
    .line 333
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    #@49
    move-result-object v1

    #@4a
    .line 335
    .local v1, "ni":Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@4d
    move-result-object v2

    #@4e
    return-object v2

    #@4f
    .line 338
    .end local v1    # "ni":Lorg/w3c/dom/traversal/NodeIterator;
    :cond_4
    const-string/jumbo v2, "ER_UNSUPPORTED_RETURN_TYPE"

    #@52
    .line 339
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
    .line 337
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    .line 340
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
    .line 302
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 303
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    #@a
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 302
    if-nez v0, :cond_0

    #@10
    .line 304
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    #@12
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 302
    if-nez v0, :cond_0

    #@18
    .line 305
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    #@1a
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    .line 302
    if-nez v0, :cond_0

    #@20
    .line 306
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    #@22
    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 302
    if-eqz v0, :cond_1

    #@28
    .line 308
    :cond_0
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 310
    :cond_1
    const/4 v0, 0x0

    #@2b
    return v0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 8
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 393
    if-nez p1, :cond_0

    #@3
    .line 395
    const-string/jumbo v2, "ER_ARG_CANNOT_BE_NULL"

    #@6
    .line 396
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    const-string/jumbo v4, "XPath expression"

    #@c
    aput-object v4, v3, v5

    #@e
    .line 394
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 397
    .local v6, "fmsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 400
    .end local v6    # "fmsg":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/xpath/XPath;

    #@1a
    .line 401
    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@1c
    .line 400
    const/4 v3, 0x0

    #@1d
    .line 401
    const/4 v4, 0x0

    #@1e
    .line 400
    invoke-direct {v1, p1, v3, v2, v4}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    #@21
    .line 403
    .local v1, "xpath":Lorg/apache/xpath/XPath;
    new-instance v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;

    #@23
    .line 404
    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@25
    iget-object v3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@27
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@29
    .line 405
    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    #@2b
    .line 403
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;-><init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 406
    .local v0, "ximpl":Lorg/apache/xpath/jaxp/XPathExpressionImpl;
    return-object v0

    #@2f
    .line 407
    .end local v0    # "ximpl":Lorg/apache/xpath/jaxp/XPathExpressionImpl;
    .end local v1    # "xpath":Lorg/apache/xpath/XPath;
    :catch_0
    move-exception v7

    #@30
    .line 408
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljavax/xml/xpath/XPathExpressionException;

    #@32
    invoke-direct {v2, v7}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v2
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 9
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "returnType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 258
    if-nez p1, :cond_0

    #@4
    .line 260
    const-string/jumbo v5, "ER_ARG_CANNOT_BE_NULL"

    #@7
    .line 261
    new-array v6, v6, [Ljava/lang/Object;

    #@9
    const-string/jumbo v7, "XPath expression"

    #@c
    aput-object v7, v6, v8

    #@e
    .line 259
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 262
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v5, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v5

    #@18
    .line 264
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    #@1a
    .line 266
    const-string/jumbo v5, "ER_ARG_CANNOT_BE_NULL"

    #@1d
    .line 267
    new-array v6, v6, [Ljava/lang/Object;

    #@1f
    const-string/jumbo v7, "returnType"

    #@22
    aput-object v7, v6, v8

    #@24
    .line 265
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 268
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/NullPointerException;

    #@2a
    invoke-direct {v5, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 272
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_2

    #@34
    .line 274
    const-string/jumbo v5, "ER_UNSUPPORTED_RETURN_TYPE"

    #@37
    .line 275
    new-array v6, v6, [Ljava/lang/Object;

    #@39
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    aput-object v7, v6, v8

    #@3f
    .line 273
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 276
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@45
    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 281
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    #@4c
    move-result-object v3

    #@4d
    .line 282
    .local v3, "resultObject":Lorg/apache/xpath/objects/XObject;
    invoke-direct {p0, v3, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result-object v5

    #@51
    return-object v5

    #@52
    .line 288
    .end local v3    # "resultObject":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v4

    #@53
    .line 289
    .local v4, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@56
    move-result-object v1

    #@57
    .line 290
    .local v1, "nestedException":Ljava/lang/Throwable;
    instance-of v5, v1, Ljavax/xml/xpath/XPathFunctionException;

    #@59
    if-eqz v5, :cond_3

    #@5b
    .line 291
    check-cast v1, Ljavax/xml/xpath/XPathFunctionException;

    #@5d
    .end local v1    # "nestedException":Ljava/lang/Throwable;
    throw v1

    #@5e
    .line 295
    .restart local v1    # "nestedException":Ljava/lang/Throwable;
    :cond_3
    new-instance v5, Ljavax/xml/xpath/XPathExpressionException;

    #@60
    invoke-direct {v5, v4}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@63
    throw v5

    #@64
    .line 283
    .end local v1    # "nestedException":Ljava/lang/Throwable;
    .end local v4    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v2

    #@65
    .line 287
    .local v2, "npe":Ljava/lang/NullPointerException;
    new-instance v5, Ljavax/xml/xpath/XPathExpressionException;

    #@67
    invoke-direct {v5, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@6a
    throw v5
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 11
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/xml/sax/InputSource;
    .param p3, "returnType"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 444
    if-nez p2, :cond_0

    #@4
    .line 446
    const-string/jumbo v7, "ER_ARG_CANNOT_BE_NULL"

    #@7
    .line 447
    new-array v8, v8, [Ljava/lang/Object;

    #@9
    const-string/jumbo v9, "source"

    #@c
    aput-object v9, v8, v10

    #@e
    .line 445
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 448
    .local v3, "fmsg":Ljava/lang/String;
    new-instance v7, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v7, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v7

    #@18
    .line 450
    .end local v3    # "fmsg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@1a
    .line 452
    const-string/jumbo v7, "ER_ARG_CANNOT_BE_NULL"

    #@1d
    .line 453
    new-array v8, v8, [Ljava/lang/Object;

    #@1f
    const-string/jumbo v9, "XPath expression"

    #@22
    aput-object v9, v8, v10

    #@24
    .line 451
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 454
    .restart local v3    # "fmsg":Ljava/lang/String;
    new-instance v7, Ljava/lang/NullPointerException;

    #@2a
    invoke-direct {v7, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v7

    #@2e
    .line 456
    .end local v3    # "fmsg":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_2

    #@30
    .line 458
    const-string/jumbo v7, "ER_ARG_CANNOT_BE_NULL"

    #@33
    .line 459
    new-array v8, v8, [Ljava/lang/Object;

    #@35
    const-string/jumbo v9, "returnType"

    #@38
    aput-object v9, v8, v10

    #@3a
    .line 457
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 460
    .restart local v3    # "fmsg":Ljava/lang/String;
    new-instance v7, Ljava/lang/NullPointerException;

    #@40
    invoke-direct {v7, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@43
    throw v7

    #@44
    .line 465
    .end local v3    # "fmsg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    #@47
    move-result v7

    #@48
    if-nez v7, :cond_3

    #@4a
    .line 467
    const-string/jumbo v7, "ER_UNSUPPORTED_RETURN_TYPE"

    #@4d
    .line 468
    new-array v8, v8, [Ljava/lang/Object;

    #@4f
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    aput-object v9, v8, v10

    #@55
    .line 466
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    .line 469
    .restart local v3    # "fmsg":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@5b
    invoke-direct {v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v7

    #@5f
    .line 474
    .end local v3    # "fmsg":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@66
    move-result-object v0

    #@67
    .line 476
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    #@6a
    move-result-object v5

    #@6b
    .line 477
    .local v5, "resultObject":Lorg/apache/xpath/objects/XObject;
    invoke-direct {p0, v5, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    move-result-object v7

    #@6f
    return-object v7

    #@70
    .line 482
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "resultObject":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v6

    #@71
    .line 483
    .local v6, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@74
    move-result-object v4

    #@75
    .line 484
    .local v4, "nestedException":Ljava/lang/Throwable;
    instance-of v7, v4, Ljavax/xml/xpath/XPathFunctionException;

    #@77
    if-eqz v7, :cond_4

    #@79
    .line 485
    check-cast v4, Ljavax/xml/xpath/XPathFunctionException;

    #@7b
    .end local v4    # "nestedException":Ljava/lang/Throwable;
    throw v4

    #@7c
    .line 487
    .restart local v4    # "nestedException":Ljava/lang/Throwable;
    :cond_4
    new-instance v7, Ljavax/xml/xpath/XPathExpressionException;

    #@7e
    invoke-direct {v7, v6}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@81
    throw v7

    #@82
    .line 480
    .end local v4    # "nestedException":Ljava/lang/Throwable;
    .end local v6    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v1

    #@83
    .line 481
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljavax/xml/xpath/XPathExpressionException;

    #@85
    invoke-direct {v7, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@88
    throw v7

    #@89
    .line 478
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@8a
    .line 479
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v7, Ljavax/xml/xpath/XPathExpressionException;

    #@8c
    invoke-direct {v7, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    #@8f
    throw v7
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@2
    return-object v0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@2
    return-object v0
.end method

.method public getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@2
    return-object v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@2
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@4
    .line 541
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@6
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@8
    .line 542
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@b
    .line 539
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 5
    .param p1, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;

    #@0
    .prologue
    .line 137
    if-nez p1, :cond_0

    #@2
    .line 139
    const-string/jumbo v1, "ER_ARG_CANNOT_BE_NULL"

    #@5
    .line 140
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const-string/jumbo v3, "NamespaceContext"

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    .line 138
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 141
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 143
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@1a
    .line 144
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@1c
    invoke-direct {v1, p1}, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    #@1f
    iput-object v1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    #@21
    .line 136
    return-void
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 5
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathFunctionResolver;

    #@0
    .prologue
    .line 113
    if-nez p1, :cond_0

    #@2
    .line 115
    const-string/jumbo v1, "ER_ARG_CANNOT_BE_NULL"

    #@5
    .line 116
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const-string/jumbo v3, "XPathFunctionResolver"

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    .line 114
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 117
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 119
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@1a
    .line 112
    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 5
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathVariableResolver;

    #@0
    .prologue
    .line 89
    if-nez p1, :cond_0

    #@2
    .line 91
    const-string/jumbo v1, "ER_ARG_CANNOT_BE_NULL"

    #@5
    .line 92
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const-string/jumbo v3, "XPathVariableResolver"

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    .line 90
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 93
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 95
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@1a
    .line 88
    return-void
.end method
