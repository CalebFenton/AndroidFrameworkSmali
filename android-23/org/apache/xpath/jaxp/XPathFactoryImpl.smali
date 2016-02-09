.class public Lorg/apache/xpath/jaxp/XPathFactoryImpl;
.super Ljavax/xml/xpath/XPathFactory;
.source "XPathFactoryImpl.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "XPathFactoryImpl"


# instance fields
.field private featureSecureProcessing:Z

.field private xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    #@4
    .line 47
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@6
    .line 52
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@8
    .line 57
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    #@b
    .line 37
    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 190
    if-nez p1, :cond_0

    #@4
    .line 192
    const-string/jumbo v1, "ER_GETTING_NULL_FEATURE"

    #@7
    .line 193
    new-array v2, v5, [Ljava/lang/Object;

    #@9
    const-string/jumbo v3, "XPathFactoryImpl"

    #@c
    aput-object v3, v2, v4

    #@e
    .line 191
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 194
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 198
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 199
    iget-boolean v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    #@23
    return v1

    #@24
    .line 204
    :cond_1
    const-string/jumbo v1, "ER_GETTING_UNKNOWN_FEATURE"

    #@27
    .line 205
    const/4 v2, 0x2

    #@28
    new-array v2, v2, [Ljava/lang/Object;

    #@2a
    aput-object p1, v2, v4

    #@2c
    const-string/jumbo v3, "XPathFactoryImpl"

    #@2f
    aput-object v3, v2, v5

    #@31
    .line 203
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 207
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    #@37
    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method

.method public isObjectModelSupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "objectModel"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 74
    if-nez p1, :cond_0

    #@4
    .line 76
    const-string/jumbo v1, "ER_OBJECT_MODEL_NULL"

    #@7
    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {p0}, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v2, v4

    #@13
    .line 75
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 79
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@19
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 82
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_1

    #@23
    .line 84
    const-string/jumbo v1, "ER_OBJECT_MODEL_EMPTY"

    #@26
    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    #@28
    invoke-virtual {p0}, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    aput-object v3, v2, v4

    #@32
    .line 83
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 86
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@38
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 90
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "http://java.sun.com/jaxp/xpath/dom"

    #@3f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_2

    #@45
    .line 91
    return v2

    #@46
    .line 95
    :cond_2
    return v4
.end method

.method public newXPath()Ljavax/xml/xpath/XPath;
    .locals 4

    #@0
    .prologue
    .line 105
    new-instance v0, Lorg/apache/xpath/jaxp/XPathImpl;

    #@2
    .line 106
    iget-object v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@4
    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@6
    .line 107
    iget-boolean v3, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    #@8
    .line 105
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/jaxp/XPathImpl;-><init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    #@b
    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 140
    if-nez p1, :cond_0

    #@5
    .line 142
    const-string/jumbo v1, "ER_FEATURE_NAME_NULL"

    #@8
    .line 143
    new-array v2, v6, [Ljava/lang/Object;

    #@a
    const-string/jumbo v3, "XPathFactoryImpl"

    #@d
    aput-object v3, v2, v4

    #@f
    new-instance v3, Ljava/lang/Boolean;

    #@11
    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    #@14
    aput-object v3, v2, v5

    #@16
    .line 141
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 144
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@1c
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 148
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 150
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    #@2b
    .line 153
    return-void

    #@2c
    .line 158
    :cond_1
    const-string/jumbo v1, "ER_FEATURE_UNKNOWN"

    #@2f
    .line 159
    const/4 v2, 0x3

    #@30
    new-array v2, v2, [Ljava/lang/Object;

    #@32
    aput-object p1, v2, v4

    #@34
    const-string/jumbo v3, "XPathFactoryImpl"

    #@37
    aput-object v3, v2, v5

    #@39
    new-instance v3, Ljava/lang/Boolean;

    #@3b
    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    #@3e
    aput-object v3, v2, v6

    #@40
    .line 157
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    .line 160
    .restart local v0    # "fmsg":Ljava/lang/String;
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    #@46
    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 5
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathFunctionResolver;

    #@0
    .prologue
    .line 227
    if-nez p1, :cond_0

    #@2
    .line 229
    const-string/jumbo v1, "ER_NULL_XPATH_FUNCTION_RESOLVER"

    #@5
    .line 230
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const-string/jumbo v3, "XPathFactoryImpl"

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    .line 228
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 231
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 234
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    #@1a
    .line 224
    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 5
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathVariableResolver;

    #@0
    .prologue
    .line 253
    if-nez p1, :cond_0

    #@2
    .line 255
    const-string/jumbo v1, "ER_NULL_XPATH_VARIABLE_RESOLVER"

    #@5
    .line 256
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const-string/jumbo v3, "XPathFactoryImpl"

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v2, v4

    #@e
    .line 254
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 257
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 260
    .end local v0    # "fmsg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    #@1a
    .line 250
    return-void
.end method
