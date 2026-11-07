.class public Lorg/apache/xpath/jaxp/XPathImpl;
.super Ljava/lang/Object;
.source "XPathImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPath;


# static fields
.field private static greylist d:Lorg/w3c/dom/Document;


# instance fields
.field private greylist featureSecureProcessing:Z

.field private greylist functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private greylist namespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private greylist origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private greylist origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private greylist prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private greylist variableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor greylist <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    .line 72
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 73
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method

.method constructor greylist <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 78
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 79
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 80
    iput-boolean p3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private greylist eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/apache/xpath/XPath;

    iget-object v1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    .line 202
    iget-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz p1, :cond_1a

    .line 203
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    iget-boolean v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct {v1, p1, v2}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    .line 205
    new-instance p1, Lorg/apache/xpath/XPathContext;

    invoke-direct {p1, v1, v3}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1f

    .line 207
    :cond_1a
    new-instance p1, Lorg/apache/xpath/XPathContext;

    invoke-direct {p1, v3}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 212
    :goto_1f
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v1, v2}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    .line 215
    instance-of v1, p2, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_36

    .line 216
    check-cast p2, Lorg/w3c/dom/Node;

    iget-object p0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    :cond_36
    const/4 p2, -0x1

    .line 219
    iget-object p0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getDummyDocument()Lorg/w3c/dom/Document;
    .registers 4

    .line 184
    sget-object v0, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    if-nez v0, :cond_17

    .line 185
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 186
    const-string v1, "dummyroot"

    const/4 v2, 0x0

    const-string v3, "http://java.sun.com/jaxp/xpath"

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    sput-object v0, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    .line 189
    :cond_17
    sget-object v0, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method private static greylist getParser()Ljavax/xml/parsers/DocumentBuilder;
    .registers 2

    .line 171
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 174
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_10
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 316
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 317
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 320
    :cond_d
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 321
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    .line 324
    :cond_1f
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 325
    new-instance p0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p0

    .line 328
    :cond_31
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 329
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    .line 332
    :cond_3e
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 333
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    .line 335
    invoke-interface {p0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 339
    :cond_4f
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 337
    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 340
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist isSupported(Ljavax/xml/namespace/QName;)Z
    .registers 2

    .line 302
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    .line 303
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    .line 304
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    .line 305
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    .line 306
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist test-api compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 400
    :try_start_2
    new-instance v1, Lorg/apache/xpath/XPath;

    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v0, v2}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    .line 403
    new-instance v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    iget-object v3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;-><init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    :try_end_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    move-object p0, v0

    .line 408
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 394
    :cond_21
    const-string p0, "XPath expression"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 397
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 258
    const-string v0, "ER_ARG_CANNOT_BE_NULL"

    if-eqz p1, :cond_52

    if-eqz p3, :cond_42

    .line 272
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 281
    :try_start_c
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 282
    invoke-direct {p0, p1, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_14} :catch_27
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 290
    instance-of p2, p1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz p2, :cond_21

    .line 291
    check-cast p1, Ljavax/xml/xpath/XPathFunctionException;

    throw p1

    .line 295
    :cond_21
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_27
    move-exception p0

    .line 287
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 275
    :cond_2e
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 273
    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 276
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_42
    const-string p0, "returnType"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 268
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_52
    const-string p0, "XPath expression"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 262
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 444
    const-string v0, "ER_ARG_CANNOT_BE_NULL"

    if-eqz p2, :cond_73

    if-eqz p1, :cond_63

    if-eqz p3, :cond_53

    .line 465
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 474
    :try_start_e
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 476
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 477
    invoke-direct {p0, p1, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_1e} :catch_38
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_31
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 484
    instance-of p2, p1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz p2, :cond_2b

    .line 485
    check-cast p1, Ljavax/xml/xpath/XPathFunctionException;

    throw p1

    .line 487
    :cond_2b
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_31
    move-exception p0

    .line 481
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_38
    move-exception p0

    .line 479
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 468
    :cond_3f
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 466
    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 469
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_53
    const-string p0, "returnType"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 460
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_63
    const-string p0, "XPath expression"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 454
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_73
    const-string p0, "source"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 448
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 371
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 521
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .registers 1

    .line 153
    iget-object p0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-object p0
.end method

.method public whitelist test-api getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .registers 1

    .line 128
    iget-object p0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-object p0
.end method

.method public whitelist test-api getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .registers 1

    .line 104
    iget-object p0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-object p0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 540
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 541
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public whitelist test-api setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 143
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 144
    new-instance v0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-direct {v0, p1}, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    return-void

    .line 138
    :cond_c
    const-string p0, "NamespaceContext"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 119
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void

    .line 114
    :cond_5
    const-string p0, "XPathFunctionResolver"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 95
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void

    .line 90
    :cond_5
    const-string p0, "XPathVariableResolver"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 93
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
