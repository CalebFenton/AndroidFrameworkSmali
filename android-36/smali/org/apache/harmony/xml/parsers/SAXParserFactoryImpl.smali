.class public Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SAXParserFactoryImpl.java"


# static fields
.field private static final blacklist NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final blacklist VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field private blacklist features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_1d

    .line 47
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 48
    :cond_17
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 3

    .line 57
    :try_start_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 58
    :catch_7
    move-exception v0

    .line 59
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist test-api isValidating()Z
    .registers 3

    .line 66
    :try_start_0
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 67
    :catch_7
    move-exception v0

    .line 68
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist test-api newSAXParser()Ljavax/xml/parsers/SAXParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->isValidating()Z

    move-result v0

    if-nez v0, :cond_19

    .line 80
    :try_start_6
    new-instance v0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;-><init>(Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    return-object v0

    .line 81
    :catch_e
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_19
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v1, "No validating SAXParser implementation available"

    invoke-direct {v0, v1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_22

    .line 92
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 96
    if-eqz p2, :cond_14

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 100
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1b
    return-void

    .line 93
    :cond_1c
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setNamespaceAware(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 107
    :try_start_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_5} :catch_7

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catch_7
    move-exception v0

    .line 109
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist test-api setValidating(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 116
    :try_start_0
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_5} :catch_7

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_7
    move-exception v0

    .line 118
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
