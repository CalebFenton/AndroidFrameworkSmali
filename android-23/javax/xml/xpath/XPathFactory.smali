.class public abstract Ljavax/xml/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field public static final DEFAULT_OBJECT_MODEL_URI:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.xpath.XPathFactory"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final newInstance()Ljavax/xml/xpath/XPathFactory;
    .locals 4

    #@0
    .prologue
    .line 69
    :try_start_0
    const-string/jumbo v1, "http://java.sun.com/jaxp/xpath/dom"

    #@3
    invoke-static {v1}, Ljavax/xml/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFactoryConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 71
    :catch_0
    move-exception v0

    #@9
    .line 72
    .local v0, "xpathFactoryConfigurationException":Ljavax/xml/xpath/XPathFactoryConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 76
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method public static final newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    if-nez p0, :cond_0

    #@2
    .line 136
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "uri == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    .line 140
    const-string/jumbo v3, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    #@16
    .line 139
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 143
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@21
    move-result-object v0

    #@22
    .line 144
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    #@24
    .line 146
    const-class v2, Ljavax/xml/xpath/XPathFactory;

    #@26
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@29
    move-result-object v0

    #@2a
    .line 148
    :cond_2
    new-instance v2, Ljavax/xml/xpath/XPathFactoryFinder;

    #@2c
    invoke-direct {v2, v0}, Ljavax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    #@2f
    invoke-virtual {v2, p0}, Ljavax/xml/xpath/XPathFactoryFinder;->newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    #@32
    move-result-object v1

    #@33
    .line 149
    .local v1, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    if-nez v1, :cond_3

    #@35
    .line 150
    new-instance v2, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    #@37
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "No XPathFactory implementation found for the object model: "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 150
    invoke-direct {v2, v3}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2

    #@4f
    .line 155
    :cond_3
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/xpath/XPathFactory;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    if-nez p0, :cond_0

    #@2
    .line 168
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "uri == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    .line 172
    const-string/jumbo v2, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    #@16
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 175
    :cond_1
    if-nez p1, :cond_2

    #@1c
    .line 176
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    #@1e
    const-string/jumbo v2, "factoryClassName cannot be null."

    #@21
    invoke-direct {v1, v2}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 178
    :cond_2
    if-nez p2, :cond_3

    #@27
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@2e
    move-result-object p2

    #@2f
    .line 181
    :cond_3
    new-instance v1, Ljavax/xml/xpath/XPathFactoryFinder;

    #@31
    invoke-direct {v1, p2}, Ljavax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    #@34
    invoke-virtual {v1, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    #@37
    move-result-object v0

    #@38
    .line 182
    .local v0, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    if-eqz v0, :cond_4

    #@3a
    invoke-virtual {v0, p0}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 188
    return-object v0

    #@41
    .line 183
    :cond_4
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    #@43
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "No XPathFactory implementation found for the object model: "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 183
    invoke-direct {v1, v2}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract isObjectModelSupported(Ljava/lang/String;)Z
.end method

.method public abstract newXPath()Ljavax/xml/xpath/XPath;
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
.end method
