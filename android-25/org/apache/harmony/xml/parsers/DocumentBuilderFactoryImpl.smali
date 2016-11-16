.class public Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;
.super Ljavax/xml/parsers/DocumentBuilderFactory;
.source "DocumentBuilderFactoryImpl.java"


# static fields
.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    if-nez p1, :cond_0

    #@2
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 48
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 49
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 50
    :cond_1
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    #@1c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 51
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    #@25
    move-result v0

    #@26
    return v0

    #@27
    .line 53
    :cond_2
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    #@29
    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 61
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    #@8
    .line 62
    const-string/jumbo v2, "No validating DocumentBuilder implementation available"

    #@b
    .line 61
    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 72
    :cond_0
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;

    #@11
    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;-><init>()V

    #@14
    .line 73
    .local v0, "builder":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isCoalescing()Z

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setCoalescing(Z)V

    #@1b
    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreComments(Z)V

    #@22
    .line 75
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    #@25
    move-result v1

    #@26
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreElementContentWhitespace(Z)V

    #@29
    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    #@2c
    move-result v1

    #@2d
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setNamespaceAware(Z)V

    #@30
    .line 80
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 96
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setNamespaceAware(Z)V

    #@17
    .line 91
    :goto_0
    return-void

    #@18
    .line 98
    :cond_1
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 99
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setValidating(Z)V

    #@24
    goto :goto_0

    #@25
    .line 101
    :cond_2
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    #@27
    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method
