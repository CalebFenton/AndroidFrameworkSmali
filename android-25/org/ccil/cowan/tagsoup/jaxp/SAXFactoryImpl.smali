.class public Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SAXFactoryImpl.java"


# instance fields
.field private features:Ljava/util/HashMap;

.field private prototypeParser:Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    #@4
    .line 39
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->prototypeParser:Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@6
    .line 50
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->features:Ljava/util/HashMap;

    #@8
    .line 52
    return-void
.end method

.method private getPrototype()Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->prototypeParser:Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 110
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@6
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;-><init>()V

    #@9
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->prototypeParser:Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@b
    .line 112
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->prototypeParser:Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@d
    return-object v0
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->getPrototype()Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->getFeature(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
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
    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->features:Ljava/util/HashMap;

    #@2
    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->newInstance(Ljava/util/Map;)Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 68
    :catch_0
    move-exception v0

    #@8
    .line 70
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    #@a
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->getPrototype()Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lorg/ccil/cowan/tagsoup/jaxp/SAXParserImpl;->setFeature(Ljava/lang/String;Z)V

    #@7
    .line 87
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->features:Ljava/util/HashMap;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    #@d
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@10
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->features:Ljava/util/HashMap;

    #@12
    .line 91
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAXFactoryImpl;->features:Ljava/util/HashMap;

    #@14
    if-eqz p2, :cond_1

    #@16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@18
    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 81
    return-void

    #@1c
    .line 91
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1e
    goto :goto_0
.end method
