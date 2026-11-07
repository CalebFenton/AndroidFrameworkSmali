.class final Lorg/apache/harmony/xml/parsers/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field private blacklist initialFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parser:Lorg/xml/sax/Parser;

.field private blacklist reader:Lorg/xml/sax/XMLReader;


# direct methods
.method constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 41
    .local p1, "initialFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_13

    .line 44
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_13
    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->initialFeatures:Ljava/util/Map;

    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->resetInternal()V

    .line 46
    return-void
.end method

.method private blacklist resetInternal()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->initialFeatures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 53
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_11

    .line 54
    :cond_33
    return-void
.end method


# virtual methods
.method public whitelist test-api getParser()Lorg/xml/sax/Parser;
    .registers 3

    .line 72
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    if-nez v0, :cond_d

    .line 73
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lorg/xml/sax/helpers/XMLReaderAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    .line 76
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 94
    :catch_9
    move-exception v0

    .line 95
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api isValidating()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 62
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->resetInternal()V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_3} :catch_c
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 67
    nop

    .line 68
    return-void

    .line 65
    :catch_5
    move-exception v0

    .line 66
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 63
    .end local v0    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_c
    move-exception v0

    .line 64
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
