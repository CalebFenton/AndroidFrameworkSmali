.class public Lorg/apache/xalan/processor/ProcessorInclude;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorInclude.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x3f6c2e64b6cc7fc9L


# instance fields
.field private greylist m_href:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method

.method private greylist getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 380
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    return-object p2

    .line 390
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {p0, p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 354
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-interface {v0, p0, p1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public greylist getHref()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-object p0
.end method

.method protected greylist getStylesheetInclErr()Ljava/lang/String;
    .registers 1

    .line 101
    const-string p0, "ER_STYLESHEET_INCLUDES_ITSELF"

    return-object p0
.end method

.method protected greylist getStylesheetType()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method protected greylist parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object p2

    .line 194
    invoke-virtual {p2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_45

    .line 212
    :try_start_b
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekSourceFromURIResolver()Ljavax/xml/transform/Source;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 214
    instance-of p4, p2, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p4, :cond_46

    .line 216
    check-cast p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p2

    .line 224
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekImportURL()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2b

    .line 229
    invoke-virtual {p1, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    goto :goto_2b

    :catch_25
    move-exception p0

    goto/16 :goto_c2

    :catch_28
    move-exception p2

    goto/16 :goto_ca

    .line 231
    :cond_2b
    :goto_2b
    new-instance p4, Lorg/apache/xml/utils/TreeWalker;

    new-instance p5, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {p5}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    invoke-direct {p4, p1, p5, p3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_35} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_35} :catch_25

    .line 235
    :try_start_35
    invoke-virtual {p4, p2}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_38
    .catch Lorg/xml/sax/SAXException; {:try_start_35 .. :try_end_38} :catch_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_35 .. :try_end_38} :catch_25

    if-eqz p3, :cond_d7

    .line 242
    :try_start_3a
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    return-void

    :catch_3e
    move-exception p2

    .line 239
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :cond_45
    move-object p2, p3

    :cond_46
    if-nez p2, :cond_5a

    .line 249
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p4

    .line 249
    invoke-static {p2, p4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 252
    new-instance p4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p4, p2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    move-object p2, p4

    .line 256
    :cond_5a
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorInclude;->processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object p2

    .line 260
    instance-of p4, p2, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p4, :cond_69

    .line 262
    move-object p3, p2

    check-cast p3, Ljavax/xml/transform/sax/SAXSource;

    .line 263
    invoke-virtual {p3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3

    .line 266
    :cond_69
    invoke-static {p2}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p2
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_6d} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3a .. :try_end_6d} :catch_25

    if-nez p3, :cond_a4

    .line 273
    :try_start_6f
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p4

    const/4 p5, 0x1

    .line 274
    invoke-virtual {p4, p5}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 276
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result v0
    :try_end_7f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6f .. :try_end_7f} :catch_89
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_6f .. :try_end_7f} :catch_87
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6f .. :try_end_7f} :catch_a4
    .catch Ljava/lang/AbstractMethodError; {:try_start_6f .. :try_end_7f} :catch_a4
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7f} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6f .. :try_end_7f} :catch_25

    if-eqz v0, :cond_8b

    .line 280
    :try_start_81
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p4, v0, p5}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_86
    .catch Lorg/xml/sax/SAXException; {:try_start_81 .. :try_end_86} :catch_8b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_81 .. :try_end_86} :catch_89
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_81 .. :try_end_86} :catch_87
    .catch Ljava/lang/NoSuchMethodError; {:try_start_81 .. :try_end_86} :catch_a4
    .catch Ljava/lang/AbstractMethodError; {:try_start_81 .. :try_end_86} :catch_a4
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_86} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_81 .. :try_end_86} :catch_25

    goto :goto_8b

    :catch_87
    move-exception p2

    goto :goto_94

    :catch_89
    move-exception p2

    goto :goto_9e

    .line 286
    :catch_8b
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-virtual {p4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p4

    .line 287
    invoke-virtual {p4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3
    :try_end_93
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8b .. :try_end_93} :catch_89
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_8b .. :try_end_93} :catch_87
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8b .. :try_end_93} :catch_a4
    .catch Ljava/lang/AbstractMethodError; {:try_start_8b .. :try_end_93} :catch_a4
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_93} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8b .. :try_end_93} :catch_25

    goto :goto_a4

    .line 292
    :goto_94
    :try_start_94
    new-instance p3, Lorg/xml/sax/SAXException;

    invoke-virtual {p2}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 290
    :goto_9e
    new-instance p3, Lorg/xml/sax/SAXException;

    invoke-direct {p3, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p3

    :catch_a4
    :cond_a4
    :goto_a4
    if-nez p3, :cond_aa

    .line 300
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3

    :cond_aa
    if-eqz p3, :cond_d7

    .line 304
    invoke-interface {p3, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 308
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_b6} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_94 .. :try_end_b6} :catch_25

    .line 312
    :try_start_b6
    invoke-interface {p3, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_bd

    .line 316
    :try_start_b9
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    goto :goto_d7

    :catchall_bd
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    .line 317
    throw p2
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c2} :catch_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b9 .. :try_end_c2} :catch_25

    .line 327
    :goto_c2
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d7

    .line 323
    :goto_ca
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 322
    const-string p3, "ER_IOEXCEPTION"

    invoke-virtual {p1, p3, p0, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_d7
    :goto_d7
    return-void
.end method

.method protected greylist processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .registers 3

    .line 0
    return-object p2
.end method

.method public greylist setHref(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method

.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 135
    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/xalan/processor/ProcessorInclude;->getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;

    move-result-object v0

    .line 137
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/processor/ProcessorInclude;->getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->importStackContains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 148
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportURL(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportSource(Ljavax/xml/transform/Source;)V

    .line 151
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    .line 154
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V
    :try_end_25
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_25} :catch_35

    .line 158
    :try_start_25
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorInclude;->parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_38

    .line 162
    :try_start_28
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    .line 163
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    .line 165
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    return-void

    :catch_35
    move-exception v0

    move-object p0, v0

    goto :goto_59

    :catchall_38
    move-exception v0

    move-object p0, v0

    .line 162
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    .line 163
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    .line 165
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    .line 166
    throw p0

    .line 141
    :cond_47
    new-instance p2, Lorg/xml/sax/SAXException;

    .line 143
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetInclErr()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p3

    .line 142
    invoke-static {p0, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_28 .. :try_end_59} :catch_35

    .line 170
    :goto_59
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
