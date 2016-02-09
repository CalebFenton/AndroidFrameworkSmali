.class final Lorg/apache/harmony/xml/parsers/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field private initialFeatures:Ljava/util/Map;
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

.field private parser:Lorg/xml/sax/Parser;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
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

    #@0
    .prologue
    .line 40
    .local p1, "initialFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    #@3
    .line 42
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@c
    move-result-object v0

    #@d
    .line 42
    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->initialFeatures:Ljava/util/Map;

    #@f
    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->resetInternal()V

    #@12
    .line 41
    return-void

    #@13
    .line 44
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@18
    goto :goto_0
.end method

.method private resetInternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    new-instance v2, Lorg/apache/harmony/xml/ExpatReader;

    #@2
    invoke-direct {v2}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    #@5
    iput-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@7
    .line 51
    iget-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->initialFeatures:Ljava/util/Map;

    #@9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/String;

    #@25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Ljava/lang/Boolean;

    #@2b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@2e
    move-result v3

    #@2f
    invoke-interface {v4, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@32
    goto :goto_0

    #@33
    .line 49
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getParser()Lorg/xml/sax/Parser;
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter;

    #@6
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@8
    invoke-direct {v0, v1}, Lorg/xml/sax/helpers/XMLReaderAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    #@b
    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    #@d
    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    #@f
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@2
    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 3

    #@0
    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@2
    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    #@5
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 94
    :catch_0
    move-exception v0

    #@b
    .line 95
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public isValidating()Z
    .locals 1

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 62
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->resetInternal()V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 56
    return-void

    #@4
    .line 65
    :catch_0
    move-exception v1

    #@5
    .line 66
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@7
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@a
    throw v2

    #@b
    .line 63
    .end local v1    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v0

    #@c
    .line 64
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 106
    return-void
.end method
