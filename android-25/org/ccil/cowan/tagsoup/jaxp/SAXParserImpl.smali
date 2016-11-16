.class public Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field final parser:Lorg/ccil/cowan/tagsoup/Parser;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    #@3
    .line 39
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    #@5
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    #@8
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@a
    .line 36
    return-void
.end method

.method public static newInstance(Ljava/util/Map;)Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    .locals 5
    .param p0, "features"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    new-instance v2, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@2
    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;-><init>()V

    #@5
    .line 46
    .local v2, "parser":Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    if-eqz p0, :cond_0

    #@7
    .line 47
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .line 48
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 50
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/lang/Boolean;

    #@27
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a
    move-result v4

    #@2b
    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->setFeature(Ljava/lang/String;Z)V

    #@2e
    goto :goto_0

    #@2f
    .line 53
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
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
    .line 111
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;

    #@2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@4
    invoke-direct {v0, v1}, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    #@7
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
    .line 97
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 3

    #@0
    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    #@5
    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 74
    :catch_0
    move-exception v0

    #@b
    .line 75
    .local v0, "sex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method public isValidating()Z
    .locals 3

    #@0
    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    #@5
    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 83
    :catch_0
    move-exception v0

    #@b
    .line 84
    .local v0, "sex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/Parser;->setFeature(Ljava/lang/String;Z)V

    #@5
    .line 103
    return-void
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
    .line 91
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->parser:Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 89
    return-void
.end method
