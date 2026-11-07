.class public Lorg/apache/xpath/jaxp/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "XPathExpressionImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPathExpression;


# static fields
.field static greylist d:Lorg/w3c/dom/Document;

.field static greylist db:Ljavax/xml/parsers/DocumentBuilder;

.field static greylist dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private greylist featureSecureProcessing:Z

.field private greylist functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private greylist prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private greylist variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private greylist xpath:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    .line 75
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    .line 76
    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 77
    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    .registers 6

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    .line 87
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    .line 88
    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 89
    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 90
    iput-boolean p5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private greylist eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 111
    new-instance v2, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    iget-boolean v3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    invoke-direct {v2, v0, v3}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    .line 113
    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0, v2, v1}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    goto :goto_17

    .line 115
    :cond_12
    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 118
    :goto_17
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v1, v2}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    .line 121
    check-cast p1, Lorg/w3c/dom/Node;

    if-nez p1, :cond_29

    .line 126
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getDummyDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    .line 129
    :cond_29
    iget-object v1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    iget-object p0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v1, v0, p1, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getDummyDocument()Lorg/w3c/dom/Document;
    .registers 4

    const/4 v0, 0x0

    .line 376
    :try_start_1
    sget-object v1, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v1, :cond_18

    .line 377
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    sput-object v1, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v2, 0x1

    .line 378
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 379
    sget-object v1, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    goto :goto_18

    :catch_16
    move-exception v1

    goto :goto_2f

    .line 381
    :cond_18
    :goto_18
    sget-object v1, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    sput-object v1, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 383
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 384
    const-string v2, "http://java.sun.com/jaxp/xpath"

    const-string v3, "dummyroot"

    invoke-interface {v1, v2, v3, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v1

    sput-object v1, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_16

    return-object v1

    .line 388
    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private greylist getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 344
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 345
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_d
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 349
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    .line 352
    :cond_1f
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 353
    new-instance p0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p0

    .line 356
    :cond_31
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 357
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    .line 360
    :cond_3e
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 361
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    .line 363
    invoke-interface {p0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 369
    :cond_4f
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 367
    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 370
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist isSupported(Ljavax/xml/namespace/QName;)Z
    .registers 2

    .line 330
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    .line 331
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    .line 332
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    .line 333
    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    .line 334
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
.method public greylist eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p2, :cond_3a

    .line 177
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 184
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_1f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 192
    instance-of p2, p1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz p2, :cond_19

    .line 193
    check-cast p1, Ljavax/xml/xpath/XPathFunctionException;

    throw p1

    .line 197
    :cond_19
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1f
    move-exception p0

    .line 189
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 180
    :cond_26
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 178
    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 181
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_3a
    const-string p0, "returnType"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 173
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 282
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 289
    :try_start_a
    sget-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v0, :cond_1e

    .line 290
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    .line 291
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 292
    sget-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 294
    :cond_1e
    sget-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 295
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 298
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 285
    :cond_36
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 283
    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 286
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_4a
    const-string p0, "ER_SOURCE_RETURN_TYPE_CANNOT_BE_NULL"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 278
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 229
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 325
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public greylist setXPath(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    return-void
.end method
