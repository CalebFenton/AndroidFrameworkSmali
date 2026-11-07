.class public abstract Ljavax/xml/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field public static final whitelist test-api DEFAULT_OBJECT_MODEL_URI:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final whitelist test-api DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.xpath.XPathFactory"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static final whitelist test-api newInstance()Ljavax/xml/xpath/XPathFactory;
    .registers 4

    .line 69
    :try_start_0
    const-string v0, "http://java.sun.com/jaxp/xpath/dom"

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v0
    :try_end_6
    .catch Ljavax/xml/xpath/XPathFactoryConfigurationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 71
    :catch_7
    move-exception v0

    .line 72
    .local v0, "xpathFactoryConfigurationException":Ljavax/xml/xpath/XPathFactoryConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final whitelist test-api newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .line 135
    if-eqz p0, :cond_45

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 144
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_18

    .line 146
    const-class v1, Ljavax/xml/xpath/XPathFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 148
    :cond_18
    new-instance v1, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, p0}, Ljavax/xml/xpath/XPathFactoryFinder;->newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    .line 149
    .local v1, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    if-eqz v1, :cond_24

    .line 155
    return-object v1

    .line 150
    :cond_24
    new-instance v2, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No XPathFactory implementation found for the object model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/xpath/XPathFactory;
    .registers 7
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .line 167
    if-eqz p0, :cond_4f

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    .line 175
    if-eqz p1, :cond_3f

    .line 178
    if-nez p2, :cond_14

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 181
    :cond_14
    new-instance v0, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v0, p2}, Ljavax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 182
    .local v0, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    if-eqz v0, :cond_26

    invoke-virtual {v0, p0}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 188
    return-object v0

    .line 183
    :cond_26
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No XPathFactory implementation found for the object model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v0    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_3f
    new-instance v0, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    const-string v1, "factoryClassName cannot be null."

    invoke-direct {v0, v1}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_4f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isObjectModelSupported(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api newXPath()Ljavax/xml/xpath/XPath;
.end method

.method public abstract whitelist test-api setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract whitelist test-api setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
.end method
