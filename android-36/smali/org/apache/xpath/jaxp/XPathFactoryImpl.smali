.class public Lorg/apache/xpath/jaxp/XPathFactoryImpl;
.super Ljavax/xml/xpath/XPathFactory;
.source "XPathFactoryImpl.java"


# static fields
.field private static final greylist CLASS_NAME:Ljava/lang/String; = "XPathFactoryImpl"


# instance fields
.field private greylist featureSecureProcessing:Z

.field private greylist xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private greylist xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 52
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .line 190
    const-string v0, "XPathFactoryImpl"

    if-eqz p1, :cond_1f

    .line 198
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 199
    iget-boolean p0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return p0

    .line 203
    :cond_f
    const-string p0, "ER_GETTING_UNKNOWN_FEATURE"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 207
    new-instance p1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1f
    const-string p0, "ER_GETTING_NULL_FEATURE"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 194
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api isObjectModelSupported(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_2c

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 90
    const-string p0, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0

    .line 85
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 83
    const-string p1, "ER_OBJECT_MODEL_EMPTY"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 75
    const-string p1, "ER_OBJECT_MODEL_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api newXPath()Ljavax/xml/xpath/XPath;
    .registers 4

    .line 105
    new-instance v0, Lorg/apache/xpath/jaxp/XPathImpl;

    iget-object v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean p0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/xpath/jaxp/XPathImpl;-><init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    return-object v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .line 140
    const-string v0, "XPathFactoryImpl"

    if-eqz p1, :cond_24

    .line 148
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 150
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void

    .line 157
    :cond_f
    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_FEATURE_UNKNOWN"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance p1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_24
    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_FEATURE_NAME_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 234
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void

    .line 228
    :cond_5
    const-string p0, "XPathFactoryImpl"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_NULL_XPATH_FUNCTION_RESOLVER"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 231
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 260
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void

    .line 254
    :cond_5
    const-string p0, "XPathFactoryImpl"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_NULL_XPATH_VARIABLE_RESOLVER"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 257
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
