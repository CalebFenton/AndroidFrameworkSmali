.class public Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;
.super Ljavax/xml/parsers/DocumentBuilderFactory;
.source "DocumentBuilderFactoryImpl.java"


# static fields
.field private static final blacklist NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final blacklist VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_22

    .line 48
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v0

    return v0

    .line 50
    :cond_f
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 51
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v0

    return v0

    .line 53
    :cond_1c
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v0

    if-nez v0, :cond_28

    .line 72
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;-><init>()V

    .line 73
    .local v0, "builder":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setCoalescing(Z)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreComments(Z)V

    .line 75
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreElementContentWhitespace(Z)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setNamespaceAware(Z)V

    .line 80
    return-object v0

    .line 61
    .end local v0    # "builder":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    :cond_28
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v1, "No validating DocumentBuilder implementation available"

    invoke-direct {v0, v1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_20

    .line 96
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setNamespaceAware(Z)V

    goto :goto_19

    .line 98
    :cond_e
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 99
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setValidating(Z)V

    .line 103
    :goto_19
    return-void

    .line 101
    :cond_1a
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
