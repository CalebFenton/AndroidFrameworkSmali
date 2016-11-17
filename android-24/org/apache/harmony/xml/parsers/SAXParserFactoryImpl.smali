.class public Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SAXParserFactoryImpl.java"


# static fields
.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    #@a
    .line 31
    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    if-nez p1, :cond_0

    #@2
    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 47
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 48
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@16
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 51
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@1c
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    #@1e
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public isNamespaceAware()Z
    .locals 2

    #@0
    .prologue
    .line 57
    :try_start_0
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    #@3
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 58
    :catch_0
    move-exception v0

    #@9
    .line 59
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@e
    throw v1
.end method

.method public isValidating()Z
    .locals 2

    #@0
    .prologue
    .line 66
    :try_start_0
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    #@3
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 67
    :catch_0
    move-exception v0

    #@9
    .line 68
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@e
    throw v1
.end method

.method public newSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->isValidating()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 75
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    #@8
    .line 76
    const-string/jumbo v2, "No validating SAXParser implementation available"

    #@b
    .line 75
    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 80
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xml/parsers/SAXParserImpl;

    #@11
    iget-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    #@13
    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v1

    #@17
    .line 81
    :catch_0
    move-exception v0

    #@18
    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    if-nez p1, :cond_0

    #@2
    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 92
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 93
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@16
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 96
    :cond_1
    if-eqz p2, :cond_2

    #@1c
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    #@1e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 87
    :goto_0
    return-void

    #@24
    .line 100
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    #@26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@28
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    goto :goto_0
.end method

.method public setNamespaceAware(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 107
    :try_start_0
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    #@3
    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 105
    return-void

    #@7
    .line 108
    :catch_0
    move-exception v0

    #@8
    .line 109
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method public setValidating(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    #@3
    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 114
    return-void

    #@7
    .line 117
    :catch_0
    move-exception v0

    #@8
    .line 118
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method
