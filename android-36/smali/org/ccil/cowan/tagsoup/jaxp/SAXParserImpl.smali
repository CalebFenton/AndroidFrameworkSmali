.class public Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field final greylist parser:Lorg/ccil/cowan/tagsoup/Parser;


# direct methods
.method protected constructor greylist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    .line 39
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    .line 40
    return-void
.end method

.method public static greylist newInstance(Ljava/util/Map;)Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    .registers 6
    .param p0, "features"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;-><init>()V

    .line 46
    .local v0, "parser":Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    if-eqz p0, :cond_2f

    .line 47
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, "it":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 50
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->setFeature(Ljava/lang/String;Z)V

    .line 51
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_f

    .line 53
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2f
    return-object v0
.end method


# virtual methods
.method public greylist getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getParser()Lorg/xml/sax/Parser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0, v1}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

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

    .line 97
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    return-object v0
.end method

.method public whitelist test-api isNamespaceAware()Z
    .registers 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 74
    :catch_9
    move-exception v0

    .line 75
    .local v0, "sex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api isValidating()Z
    .registers 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 83
    :catch_9
    move-exception v0

    .line 84
    .local v0, "sex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/Parser;->setFeature(Ljava/lang/String;Z)V

    .line 106
    return-void
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

    .line 91
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method
