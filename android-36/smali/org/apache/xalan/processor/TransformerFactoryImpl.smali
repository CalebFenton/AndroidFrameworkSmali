.class public Lorg/apache/xalan/processor/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "TransformerFactoryImpl.java"


# static fields
.field public static final greylist FEATURE_INCREMENTAL:Ljava/lang/String; = "http://xml.apache.org/xalan/features/incremental"

.field public static final greylist FEATURE_OPTIMIZE:Ljava/lang/String; = "http://xml.apache.org/xalan/features/optimize"

.field public static final greylist FEATURE_SOURCE_LOCATION:Ljava/lang/String; = "http://xml.apache.org/xalan/properties/source-location"

.field public static final greylist XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"


# instance fields
.field private greylist m_DOMsystemID:Ljava/lang/String;

.field private greylist m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private greylist m_incremental:Z

.field private greylist m_isSecureProcessing:Z

.field private greylist m_optimize:Z

.field private greylist m_source_location:Z

.field greylist m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    const/4 v1, 0x0

    .line 196
    iput-object v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    const/4 v1, 0x1

    .line 482
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    .line 494
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    .line 502
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 1008
    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method


# virtual methods
.method public whitelist test-api getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 265
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 267
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .line 269
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1e

    .line 274
    :cond_12
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    .line 281
    :goto_1e
    new-instance v3, Lorg/apache/xml/utils/StylesheetPIHandler;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/apache/xml/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p2, :cond_2a

    .line 287
    invoke-virtual {v3, p2}, Lorg/apache/xml/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 292
    :cond_2a
    const-string p2, "getAssociatedStylesheets failed"

    if-eqz v2, :cond_40

    .line 294
    :try_start_2e
    new-instance p0, Lorg/apache/xml/utils/TreeWalker;

    new-instance p3, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {p3}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    invoke-direct {p0, v3, p3, p1}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_3b
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_2e .. :try_end_3b} :catch_91
    .catch Lorg/xml/sax/SAXException; {:try_start_2e .. :try_end_3b} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3b} :catch_3c

    goto :goto_91

    :catch_3c
    move-exception p0

    goto :goto_85

    :catch_3e
    move-exception p0

    goto :goto_8b

    .line 305
    :cond_40
    :try_start_40
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    const/4 p3, 0x1

    .line 307
    invoke-virtual {p1, p3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 309
    iget-boolean p4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z
    :try_end_4a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_40 .. :try_end_4a} :catch_54
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_40 .. :try_end_4a} :catch_52
    .catch Ljava/lang/NoSuchMethodError; {:try_start_40 .. :try_end_4a} :catch_5e
    .catch Ljava/lang/AbstractMethodError; {:try_start_40 .. :try_end_4a} :catch_5e
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_40 .. :try_end_4a} :catch_91
    .catch Lorg/xml/sax/SAXException; {:try_start_40 .. :try_end_4a} :catch_3e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4a} :catch_3c

    if-eqz p4, :cond_56

    .line 313
    :try_start_4c
    const-string p4, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, p4, p3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_51
    .catch Lorg/xml/sax/SAXException; {:try_start_4c .. :try_end_51} :catch_56
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4c .. :try_end_51} :catch_54
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4c .. :try_end_51} :catch_52
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4c .. :try_end_51} :catch_5e
    .catch Ljava/lang/AbstractMethodError; {:try_start_4c .. :try_end_51} :catch_5e
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_51} :catch_3c

    goto :goto_56

    :catch_52
    move-exception p0

    goto :goto_75

    :catch_54
    move-exception p0

    goto :goto_7f

    .line 318
    :catch_56
    :cond_56
    :goto_56
    :try_start_56
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_5e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_56 .. :try_end_5e} :catch_54
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_56 .. :try_end_5e} :catch_52
    .catch Ljava/lang/NoSuchMethodError; {:try_start_56 .. :try_end_5e} :catch_5e
    .catch Ljava/lang/AbstractMethodError; {:try_start_56 .. :try_end_5e} :catch_5e
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_56 .. :try_end_5e} :catch_91
    .catch Lorg/xml/sax/SAXException; {:try_start_56 .. :try_end_5e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_3c

    :catch_5e
    if-nez v1, :cond_64

    .line 335
    :try_start_60
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 338
    :cond_64
    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    if-eqz p0, :cond_6e

    .line 340
    const-string p0, "http://xml.org/sax/features/external-general-entities"

    const/4 p1, 0x0

    invoke-interface {v1, p0, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 343
    :cond_6e
    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 344
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_91

    .line 328
    :goto_75
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :goto_7f
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
    :try_end_85
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_60 .. :try_end_85} :catch_91
    .catch Lorg/xml/sax/SAXException; {:try_start_60 .. :try_end_85} :catch_3e
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_85} :catch_3c

    .line 359
    :goto_85
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 354
    :goto_8b
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 363
    :catch_91
    :goto_91
    invoke-virtual {v3}, Lorg/apache/xml/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 596
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 598
    new-instance p1, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    .line 600
    :cond_10
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 602
    new-instance p1, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    .line 604
    :cond_20
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 606
    new-instance p1, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    .line 609
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_ATTRIB_VALUE_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist getDOMsystemID()Ljava/lang/String;
    .registers 1

    .line 206
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 1

    .line 1017
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 11

    if-eqz p1, :cond_63

    const/4 v0, 0x1

    .line 453
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    if-eq v1, p1, :cond_62

    const-string v2, "http://javax.xml.transform.dom.DOMSource/feature"

    if-eq v2, p1, :cond_62

    const-string v3, "http://javax.xml.transform.sax.SAXResult/feature"

    if-eq v3, p1, :cond_62

    const-string v4, "http://javax.xml.transform.sax.SAXSource/feature"

    if-eq v4, p1, :cond_62

    const-string v5, "http://javax.xml.transform.stream.StreamResult/feature"

    if-eq v5, p1, :cond_62

    const-string v6, "http://javax.xml.transform.stream.StreamSource/feature"

    if-eq v6, p1, :cond_62

    const-string v7, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    if-eq v7, p1, :cond_62

    const-string v8, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    if-ne v8, p1, :cond_24

    goto :goto_62

    .line 460
    :cond_24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 461
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 462
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 463
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 464
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 465
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 466
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 467
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_62

    .line 470
    :cond_55
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 471
    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return p0

    :cond_60
    const/4 p0, 0x0

    return p0

    :cond_62
    :goto_62
    return v0

    .line 446
    :cond_63
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ER_GET_FEATURE_NULL_NAME"

    const/4 v0, 0x0

    .line 447
    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 1

    .line 1004
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public greylist isSecureProcessing()Z
    .registers 1

    .line 1045
    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return p0
.end method

.method public whitelist test-api newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 848
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 851
    invoke-static {v0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    :cond_a
    instance-of v1, p1, Ljavax/xml/transform/dom/DOMSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 857
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .line 858
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 861
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object p0

    return-object p0

    .line 864
    :cond_1c
    const-string p0, "ER_ILLEGAL_DOMSOURCE_INPUT"

    invoke-static {p0, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 867
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 871
    :cond_28
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v1

    .line 872
    invoke-interface {v1, v0}, Ljavax/xml/transform/sax/TemplatesHandler;->setSystemId(Ljava/lang/String;)V

    .line 876
    :try_start_2f
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v3

    .line 877
    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 880
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_45

    .line 881
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_40
    .catch Lorg/xml/sax/SAXException; {:try_start_2f .. :try_end_40} :catch_43
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    move-exception p1

    goto :goto_84

    :catch_43
    move-exception p1

    goto :goto_a4

    :cond_45
    move-object p1, v2

    :goto_46
    if-nez p1, :cond_77

    .line 890
    :try_start_48
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v4, 0x1

    .line 892
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 894
    iget-boolean v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z
    :try_end_52
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_48 .. :try_end_52} :catch_5c
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_48 .. :try_end_52} :catch_5a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_48 .. :try_end_52} :catch_77
    .catch Ljava/lang/AbstractMethodError; {:try_start_48 .. :try_end_52} :catch_77
    .catch Lorg/xml/sax/SAXException; {:try_start_48 .. :try_end_52} :catch_43
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_41

    if-eqz v5, :cond_5e

    .line 898
    :try_start_54
    const-string v5, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v5, v4}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_59
    .catch Lorg/xml/sax/SAXException; {:try_start_54 .. :try_end_59} :catch_5e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_54 .. :try_end_59} :catch_5c
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_54 .. :try_end_59} :catch_5a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_54 .. :try_end_59} :catch_77
    .catch Ljava/lang/AbstractMethodError; {:try_start_54 .. :try_end_59} :catch_77
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_41

    goto :goto_5e

    :catch_5a
    move-exception p1

    goto :goto_67

    :catch_5c
    move-exception p1

    goto :goto_71

    .line 903
    :catch_5e
    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_66
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5e .. :try_end_66} :catch_5c
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5e .. :try_end_66} :catch_5a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5e .. :try_end_66} :catch_77
    .catch Ljava/lang/AbstractMethodError; {:try_start_5e .. :try_end_66} :catch_77
    .catch Lorg/xml/sax/SAXException; {:try_start_5e .. :try_end_66} :catch_43
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_66} :catch_41

    goto :goto_77

    .line 913
    :goto_67
    :try_start_67
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :goto_71
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_77
    :cond_77
    :goto_77
    if-nez p1, :cond_7d

    .line 920
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    .line 925
    :cond_7d
    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 926
    invoke-interface {p1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_83
    .catch Lorg/xml/sax/SAXException; {:try_start_67 .. :try_end_83} :catch_43
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_83} :catch_41

    goto :goto_b0

    .line 952
    :goto_84
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_9a

    .line 956
    :try_start_88
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_90
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_88 .. :try_end_90} :catch_98
    .catch Ljavax/xml/transform/TransformerException; {:try_start_88 .. :try_end_90} :catch_91

    return-object v2

    :catch_91
    move-exception p0

    .line 965
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_98
    move-exception p0

    .line 961
    throw p0

    .line 970
    :cond_9a
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 930
    :goto_a4
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_be

    .line 934
    :try_start_a8
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_b0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a8 .. :try_end_b0} :catch_bc
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a8 .. :try_end_b0} :catch_b5

    .line 974
    :goto_b0
    invoke-interface {v1}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object p0

    return-object p0

    :catch_b5
    move-exception p0

    .line 942
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_bc
    move-exception p0

    .line 938
    throw p0

    .line 947
    :cond_be
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public whitelist test-api newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 380
    new-instance v0, Lorg/apache/xalan/processor/StylesheetHandler;

    invoke-direct {v0, p0}, Lorg/apache/xalan/processor/StylesheetHandler;-><init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-object v0
.end method

.method public whitelist test-api newTransformer()Ljavax/xml/transform/Transformer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 827
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public whitelist test-api newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 780
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 788
    :cond_8
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 789
    iget-object v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {p1, v1}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_11
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    .line 794
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_24

    .line 798
    :try_start_17
    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_17 .. :try_end_1a} :catch_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception p0

    .line 807
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_22
    move-exception p0

    .line 803
    throw p0

    .line 810
    :cond_24
    throw p1
.end method

.method public whitelist test-api newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 759
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public whitelist test-api newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 686
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 689
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 706
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 707
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    const/4 v0, 0x1

    .line 709
    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_12
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 715
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_26

    .line 719
    :try_start_18
    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1b
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_18 .. :try_end_1b} :catch_24
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_1b} :catch_1d

    const/4 p0, 0x0

    return-object p0

    :catch_1d
    move-exception p0

    .line 728
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_24
    move-exception p0

    .line 724
    throw p0

    .line 732
    :cond_26
    throw p1
.end method

.method public whitelist test-api newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 626
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 629
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 647
    :try_start_0
    new-instance v0, Lorg/apache/xalan/transformer/TrAXFilter;

    invoke-direct {v0, p1}, Lorg/apache/xalan/transformer/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p1

    .line 651
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_19

    .line 655
    :try_start_b
    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_e
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_b .. :try_end_e} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_e} :catch_10

    const/4 p0, 0x0

    return-object p0

    :catch_10
    move-exception p0

    .line 664
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_17
    move-exception p0

    .line 660
    throw p0

    .line 667
    :cond_19
    throw p1
.end method

.method public greylist processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 114
    const-string v0, "ER_PROCESSFROMNODE_FAILED"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v2

    .line 115
    new-instance v3, Lorg/apache/xml/utils/TreeWalker;

    new-instance v4, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v4}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    .line 117
    invoke-interface {v2}, Ljavax/xml/transform/sax/TemplatesHandler;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V

    .line 121
    invoke-interface {v2}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object p0
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_1c} :catch_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p1

    goto :goto_21

    :catch_1f
    move-exception p1

    goto :goto_43

    .line 164
    :goto_21
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_37

    .line 168
    :try_start_25
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_2d
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_25 .. :try_end_2d} :catch_35
    .catch Ljavax/xml/transform/TransformerException; {:try_start_25 .. :try_end_2d} :catch_2e

    return-object v1

    :catch_2e
    move-exception p0

    .line 176
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_35
    move-exception p0

    .line 172
    throw p0

    .line 186
    :cond_37
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_41
    move-exception p0

    .line 155
    throw p0

    .line 125
    :goto_43
    iget-object p0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_59

    .line 129
    :try_start_47
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_4f
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_47 .. :try_end_4f} :catch_57
    .catch Ljavax/xml/transform/TransformerException; {:try_start_47 .. :try_end_4f} :catch_50

    return-object v1

    :catch_50
    move-exception p0

    .line 137
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_57
    move-exception p0

    .line 133
    throw p0

    .line 148
    :cond_59
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method greylist processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 227
    iput-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 517
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ER_BAD_VALUE"

    if-eqz v0, :cond_37

    .line 519
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 522
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    return-void

    .line 524
    :cond_17
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 527
    new-instance p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    return-void

    .line 532
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_37
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 537
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4c

    .line 540
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    return-void

    .line 542
    :cond_4c
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 545
    new-instance p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    return-void

    .line 550
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :cond_6c
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 561
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_81

    .line 564
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    return-void

    .line 566
    :cond_81
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_93

    .line 569
    new-instance p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    return-void

    .line 574
    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 580
    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_NOT_SUPPORTED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1035
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void

    .line 1032
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ERRORLISTENER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 415
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 416
    iput-boolean p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return-void

    .line 422
    :cond_d
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string p2, "ER_UNSUPPORTED_FEATURE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 423
    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 409
    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ER_SET_FEATURE_NULL_NAME"

    const/4 p2, 0x0

    .line 410
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2

    .line 992
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method
