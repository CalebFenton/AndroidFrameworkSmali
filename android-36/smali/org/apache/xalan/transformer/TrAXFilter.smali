.class public Lorg/apache/xalan/transformer/TrAXFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "TrAXFilter.java"


# instance fields
.field private greylist m_templates:Ljavax/xml/transform/Templates;

.field private greylist m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor greylist <init>(Ljavax/xml/transform/Templates;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_templates:Ljavax/xml/transform/Templates;

    .line 61
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object p1, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-void
.end method

.method private greylist setupParse()V
    .registers 3

    .line 202
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 207
    iget-object v1, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    .line 210
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 211
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 212
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 213
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void

    .line 204
    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ER_NO_PARENT_FOR_FILTER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist getTransformer()Lorg/apache/xalan/transformer/TransformerImpl;
    .registers 1

    .line 69
    iget-object p0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object p0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    .line 118
    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 121
    iget-object v3, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v3}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v3
    :try_end_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_19} :catch_44
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_8 .. :try_end_19} :catch_39
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_19} :catch_29
    .catch Ljava/lang/AbstractMethodError; {:try_start_8 .. :try_end_19} :catch_29

    if-eqz v3, :cond_20

    .line 123
    :try_start_1b
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v2, v3, v0}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_1b .. :try_end_20} :catch_20
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b .. :try_end_20} :catch_44
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1b .. :try_end_20} :catch_39
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_20} :catch_29
    .catch Ljava/lang/AbstractMethodError; {:try_start_1b .. :try_end_20} :catch_29

    .line 129
    :catch_20
    :cond_20
    :try_start_20
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2
    :try_end_28
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_20 .. :try_end_28} :catch_44
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_20 .. :try_end_28} :catch_39
    .catch Ljava/lang/NoSuchMethodError; {:try_start_20 .. :try_end_28} :catch_29
    .catch Ljava/lang/AbstractMethodError; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-object v2, v1

    :goto_2a
    if-nez v2, :cond_30

    .line 142
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 147
    :cond_30
    :try_start_30
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v2, v3, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_35
    .catch Lorg/xml/sax/SAXException; {:try_start_30 .. :try_end_35} :catch_35

    .line 152
    :catch_35
    invoke-virtual {p0, v2}, Lorg/apache/xalan/transformer/TrAXFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    goto :goto_4e

    :catch_39
    move-exception p0

    .line 135
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_44
    move-exception p0

    .line 133
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 157
    :cond_4b
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    .line 159
    :goto_4e
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 164
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 165
    iget-object p0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_72

    .line 168
    instance-of p1, p0, Lorg/xml/sax/SAXException;

    if-eqz p1, :cond_6c

    .line 169
    check-cast p0, Lorg/xml/sax/SAXException;

    throw p0

    .line 171
    :cond_6c
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_72
    return-void

    .line 161
    :cond_73
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANNOT_CALL_PARSE"

    invoke-static {p1, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    .line 226
    iget-object p0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public greylist setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 2

    .line 232
    iget-object p0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public whitelist test-api setParent(Lorg/xml/sax/XMLReader;)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 88
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 89
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TrAXFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 94
    :cond_10
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    return-void
.end method
