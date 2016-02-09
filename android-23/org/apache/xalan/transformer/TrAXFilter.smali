.class public Lorg/apache/xalan/transformer/TrAXFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "TrAXFilter.java"


# instance fields
.field private m_templates:Ljavax/xml/transform/Templates;

.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Templates;)V
    .locals 1
    .param p1, "templates"    # Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_templates:Ljavax/xml/transform/Templates;

    #@5
    .line 61
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xalan/transformer/TransformerImpl;

    #@b
    iput-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@d
    .line 58
    return-void
.end method

.method private setupParse()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 202
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    #@4
    move-result-object v1

    #@5
    .line 203
    .local v1, "p":Lorg/xml/sax/XMLReader;
    if-nez v1, :cond_0

    #@7
    .line 204
    new-instance v2, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v3, "ER_NO_PARENT_FOR_FILTER"

    #@c
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 207
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@16
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler()Lorg/xml/sax/ContentHandler;

    #@19
    move-result-object v0

    #@1a
    .line 210
    .local v0, "ch":Lorg/xml/sax/ContentHandler;
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1d
    .line 211
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@20
    .line 212
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@23
    .line 213
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@26
    .line 200
    return-void
.end method


# virtual methods
.method public getTransformer()Lorg/apache/xalan/transformer/TransformerImpl;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    new-instance v0, Lorg/xml/sax/InputSource;

    #@2
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 187
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 13
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 111
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    #@4
    move-result-object v10

    #@5
    if-nez v10, :cond_2

    #@7
    .line 113
    const/4 v8, 0x0

    #@8
    .line 118
    .local v8, "reader":Lorg/xml/sax/XMLReader;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@b
    move-result-object v5

    #@c
    .line 119
    .local v5, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v10, 0x1

    #@d
    invoke-virtual {v5, v10}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@10
    .line 121
    iget-object v10, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@12
    invoke-virtual {v10}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@15
    move-result-object v10

    #@16
    invoke-virtual {v10}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_4

    #@19
    move-result v10

    #@1a
    if-eqz v10, :cond_0

    #@1c
    .line 123
    :try_start_1
    const-string/jumbo v10, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@1f
    const/4 v11, 0x1

    #@20
    invoke-virtual {v5, v10, v11}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_4

    #@23
    .line 129
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@26
    move-result-object v6

    #@27
    .line 130
    .local v6, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_4

    #@2a
    move-result-object v8

    #@2b
    .line 141
    .end local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "reader":Lorg/xml/sax/XMLReader;
    :goto_1
    if-nez v8, :cond_1

    #@2d
    .line 142
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    #@30
    move-result-object v7

    #@31
    .line 147
    .local v7, "parent":Lorg/xml/sax/XMLReader;
    :goto_2
    :try_start_3
    const-string/jumbo v10, "http://xml.org/sax/features/namespace-prefixes"

    #@34
    .line 148
    const/4 v11, 0x1

    #@35
    .line 147
    invoke-interface {v7, v10, v11}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    #@38
    .line 152
    :goto_3
    invoke-virtual {p0, v7}, Lorg/apache/xalan/transformer/TrAXFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    #@3b
    .line 159
    .end local v7    # "parent":Lorg/xml/sax/XMLReader;
    :goto_4
    iget-object v10, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@3d
    invoke-virtual {v10}, Lorg/apache/xalan/transformer/TransformerImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@40
    move-result-object v10

    #@41
    if-nez v10, :cond_3

    #@43
    .line 161
    new-instance v10, Lorg/xml/sax/SAXException;

    #@45
    const-string/jumbo v11, "ER_CANNOT_CALL_PARSE"

    #@48
    invoke-static {v11, v12}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v11

    #@4c
    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v10

    #@50
    .line 134
    .restart local v8    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v3

    #@51
    .line 135
    .local v3, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v10, Lorg/xml/sax/SAXException;

    #@53
    invoke-virtual {v3}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    #@56
    move-result-object v11

    #@57
    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v10

    #@5b
    .line 132
    .end local v3    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_1
    move-exception v2

    #@5c
    .line 133
    .local v2, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v10, Lorg/xml/sax/SAXException;

    #@5e
    invoke-direct {v10, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@61
    throw v10

    #@62
    .line 144
    .end local v2    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v8    # "reader":Lorg/xml/sax/XMLReader;
    :cond_1
    move-object v7, v8

    #@63
    .restart local v7    # "parent":Lorg/xml/sax/XMLReader;
    goto :goto_2

    #@64
    .line 157
    .end local v7    # "parent":Lorg/xml/sax/XMLReader;
    :cond_2
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    #@67
    goto :goto_4

    #@68
    .line 164
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    #@6b
    move-result-object v10

    #@6c
    invoke-interface {v10, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@6f
    .line 165
    iget-object v10, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@71
    invoke-virtual {v10}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    #@74
    move-result-object v1

    #@75
    .line 166
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    #@77
    .line 168
    instance-of v10, v1, Lorg/xml/sax/SAXException;

    #@79
    if-eqz v10, :cond_4

    #@7b
    .line 169
    check-cast v1, Lorg/xml/sax/SAXException;

    #@7d
    .end local v1    # "e":Ljava/lang/Exception;
    throw v1

    #@7e
    .line 171
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v10, Lorg/xml/sax/SAXException;

    #@80
    invoke-direct {v10, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@83
    throw v10

    #@84
    .line 109
    :cond_5
    return-void

    #@85
    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "parent":Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v9

    #@86
    .local v9, "se":Lorg/xml/sax/SAXException;
    goto :goto_3

    #@87
    .line 136
    .end local v7    # "parent":Lorg/xml/sax/XMLReader;
    .end local v9    # "se":Lorg/xml/sax/SAXException;
    .restart local v8    # "reader":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v4

    #@88
    .local v4, "ex2":Ljava/lang/NoSuchMethodError;
    goto :goto_1

    #@89
    .line 138
    .end local v4    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v0

    #@8a
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_1

    #@8b
    .line 125
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    .restart local v5    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_5
    move-exception v9

    #@8c
    .restart local v9    # "se":Lorg/xml/sax/SAXException;
    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 224
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .param p1, "handler"    # Ljavax/xml/transform/ErrorListener;

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    #@5
    .line 230
    return-void
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    .line 86
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    #@3
    .line 88
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 89
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@10
    .line 94
    :cond_0
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    #@13
    .line 84
    return-void
.end method
