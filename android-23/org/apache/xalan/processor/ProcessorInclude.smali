.class public Lorg/apache/xalan/processor/ProcessorInclude;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorInclude.java"


# static fields
.field static final serialVersionUID:J = -0x3f6c2e64b6cc7fc9L


# instance fields
.field private m_href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    #@6
    .line 52
    return-void
.end method

.method private getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;
    .locals 4
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "s"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    if-eqz p2, :cond_0

    #@2
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .local v1, "idFromUriResolverSource":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    .line 383
    move-object v0, v1

    #@9
    .line 394
    .end local v1    # "idFromUriResolverSource":Ljava/lang/String;
    .local v0, "baseURI":Ljava/lang/String;
    :goto_0
    return-object v0

    #@a
    .line 390
    .end local v0    # "baseURI":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-static {v2, v3}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .restart local v0    # "baseURI":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    const/4 v3, 0x0

    #@1
    .line 351
    .local v3, "s":Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@4
    move-result-object v2

    #@5
    .line 352
    .local v2, "processor":Lorg/apache/xalan/processor/TransformerFactoryImpl;
    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    #@8
    move-result-object v4

    #@9
    .line 353
    .local v4, "uriresolver":Ljavax/xml/transform/URIResolver;
    if-eqz v4, :cond_0

    #@b
    .line 354
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 355
    .local v1, "href":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 356
    .local v0, "base":Ljava/lang/String;
    invoke-interface {v4, v1, v0}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    #@16
    move-result-object v3

    #@17
    .line 359
    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "href":Ljava/lang/String;
    .end local v3    # "s":Ljavax/xml/transform/Source;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getStylesheetInclErr()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "ER_STYLESHEET_INCLUDES_ITSELF"

    #@3
    return-object v0
.end method

.method protected getStylesheetType()I
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method protected parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 28
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@3
    move-result-object v14

    #@4
    .line 194
    .local v14, "processor":Lorg/apache/xalan/processor/TransformerFactoryImpl;
    invoke-virtual {v14}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    #@7
    move-result-object v22

    #@8
    .line 198
    .local v22, "uriresolver":Ljavax/xml/transform/URIResolver;
    const/16 v18, 0x0

    #@a
    .line 206
    .local v18, "source":Ljavax/xml/transform/Source;
    if-eqz v22, :cond_9

    #@c
    .line 212
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekSourceFromURIResolver()Ljavax/xml/transform/Source;

    #@f
    move-result-object v18

    #@10
    .line 214
    .local v18, "source":Ljavax/xml/transform/Source;
    if-eqz v18, :cond_2

    #@12
    move-object/from16 v0, v18

    #@14
    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    #@16
    move/from16 v24, v0

    #@18
    if-eqz v24, :cond_9

    #@1a
    .line 216
    move-object/from16 v0, v18

    #@1c
    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    #@1e
    move-object/from16 v24, v0

    #@20
    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    #@23
    move-result-object v13

    #@24
    .line 224
    .local v13, "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->peekImportURL()Ljava/lang/String;

    #@27
    move-result-object v20

    #@28
    .line 228
    .local v20, "systemId":Ljava/lang/String;
    if-eqz v20, :cond_0

    #@2a
    .line 229
    move-object/from16 v0, p1

    #@2c
    move-object/from16 v1, v20

    #@2e
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    #@31
    .line 231
    :cond_0
    new-instance v23, Lorg/apache/xml/utils/TreeWalker;

    #@33
    new-instance v24, Lorg/apache/xml/utils/DOM2Helper;

    #@35
    invoke-direct/range {v24 .. v24}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    #@38
    move-object/from16 v0, v23

    #@3a
    move-object/from16 v1, p1

    #@3c
    move-object/from16 v2, v24

    #@3e
    move-object/from16 v3, v20

    #@40
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_3

    #@43
    .line 235
    .local v23, "walker":Lorg/apache/xml/utils/TreeWalker;
    :try_start_1
    move-object/from16 v0, v23

    #@45
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3

    #@48
    .line 241
    if-eqz v20, :cond_1

    #@4a
    .line 242
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3

    #@4d
    .line 243
    :cond_1
    return-void

    #@4e
    .end local v13    # "node":Lorg/w3c/dom/Node;
    .end local v20    # "systemId":Ljava/lang/String;
    .end local v23    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :cond_2
    move-object/from16 v19, v18

    #@50
    .line 247
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .local v19, "source":Ljavax/xml/transform/Source;
    :goto_0
    if-nez v19, :cond_8

    #@52
    .line 249
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    #@55
    move-result-object v24

    #@56
    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    #@59
    move-result-object v25

    #@5a
    .line 249
    invoke-static/range {v24 .. v25}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 252
    .local v4, "absURL":Ljava/lang/String;
    new-instance v18, Ljavax/xml/transform/stream/StreamSource;

    #@60
    move-object/from16 v0, v18

    #@62
    invoke-direct {v0, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_6

    #@65
    .line 256
    .end local v4    # "absURL":Ljava/lang/String;
    .end local v19    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    #@67
    move-object/from16 v1, p1

    #@69
    move-object/from16 v2, v18

    #@6b
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorInclude;->processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    #@6e
    move-result-object v18

    #@6f
    .line 258
    const/4 v15, 0x0

    #@70
    .line 260
    .local v15, "reader":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, v18

    #@72
    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    #@74
    move/from16 v24, v0

    #@76
    if-eqz v24, :cond_3

    #@78
    .line 262
    move-object/from16 v0, v18

    #@7a
    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    #@7c
    move-object/from16 v16, v0

    #@7e
    .line 263
    .local v16, "saxSource":Ljavax/xml/transform/sax/SAXSource;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    #@81
    move-result-object v15

    #@82
    .line 266
    .end local v15    # "reader":Lorg/xml/sax/XMLReader;
    .end local v16    # "saxSource":Ljavax/xml/transform/sax/SAXSource;
    :cond_3
    invoke-static/range {v18 .. v18}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_3

    #@85
    move-result-object v10

    #@86
    .line 268
    .local v10, "inputSource":Lorg/xml/sax/InputSource;
    if-nez v15, :cond_5

    #@88
    .line 273
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@8b
    move-result-object v9

    #@8c
    .line 274
    .local v9, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/16 v24, 0x1

    #@8e
    move/from16 v0, v24

    #@90
    invoke-virtual {v9, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@93
    .line 276
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@96
    move-result-object v24

    #@97
    invoke-virtual/range {v24 .. v24}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_3

    #@9a
    move-result v24

    #@9b
    if-eqz v24, :cond_4

    #@9d
    .line 280
    :try_start_6
    const-string/jumbo v24, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@a0
    const/16 v25, 0x1

    #@a2
    move-object/from16 v0, v24

    #@a4
    move/from16 v1, v25

    #@a6
    invoke-virtual {v9, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_3

    #@a9
    .line 286
    :cond_4
    :goto_2
    :try_start_7
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@ac
    move-result-object v12

    #@ad
    .line 287
    .local v12, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v12}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/AbstractMethodError; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_3

    #@b0
    move-result-object v15

    #@b1
    .line 299
    .end local v9    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v12    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    :cond_5
    :goto_3
    if-nez v15, :cond_6

    #@b3
    .line 300
    :try_start_8
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    #@b6
    move-result-object v15

    #@b7
    .line 302
    :cond_6
    if-eqz v15, :cond_7

    #@b9
    .line 304
    move-object/from16 v0, p1

    #@bb
    invoke-interface {v15, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@be
    .line 308
    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@c1
    move-result-object v24

    #@c2
    move-object/from16 v0, p1

    #@c4
    move-object/from16 v1, v24

    #@c6
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_3

    #@c9
    .line 312
    :try_start_9
    invoke-interface {v15, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@cc
    .line 316
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    #@cf
    .line 191
    .end local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    :cond_7
    :goto_4
    return-void

    #@d0
    .line 238
    .restart local v13    # "node":Lorg/w3c/dom/Node;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    .restart local v20    # "systemId":Ljava/lang/String;
    .restart local v23    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :catch_0
    move-exception v17

    #@d1
    .line 239
    .local v17, "se":Lorg/xml/sax/SAXException;
    new-instance v24, Ljavax/xml/transform/TransformerException;

    #@d3
    move-object/from16 v0, v24

    #@d5
    move-object/from16 v1, v17

    #@d7
    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@da
    throw v24
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_3

    #@db
    .line 321
    .end local v13    # "node":Lorg/w3c/dom/Node;
    .end local v17    # "se":Lorg/xml/sax/SAXException;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .end local v20    # "systemId":Ljava/lang/String;
    .end local v23    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :catch_1
    move-exception v11

    #@dc
    .line 322
    .local v11, "ioe":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v24, "ER_IOEXCEPTION"

    #@df
    .line 323
    const/16 v25, 0x1

    #@e1
    move/from16 v0, v25

    #@e3
    new-array v0, v0, [Ljava/lang/Object;

    #@e5
    move-object/from16 v25, v0

    #@e7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    #@ea
    move-result-object v26

    #@eb
    const/16 v27, 0x0

    #@ed
    aput-object v26, v25, v27

    #@ef
    .line 322
    move-object/from16 v0, p1

    #@f1
    move-object/from16 v1, v24

    #@f3
    move-object/from16 v2, v25

    #@f5
    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@f8
    goto :goto_4

    #@f9
    .line 291
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :catch_2
    move-exception v7

    #@fa
    .line 292
    .local v7, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_b
    new-instance v24, Lorg/xml/sax/SAXException;

    #@fc
    invoke-virtual {v7}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    #@ff
    move-result-object v25

    #@100
    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@103
    throw v24
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_3

    #@104
    .line 326
    .end local v7    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    .end local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    :catch_3
    move-exception v21

    #@105
    .line 327
    .local v21, "te":Ljavax/xml/transform/TransformerException;
    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@108
    move-result-object v24

    #@109
    move-object/from16 v0, p1

    #@10b
    move-object/from16 v1, v24

    #@10d
    move-object/from16 v2, v21

    #@10f
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@112
    goto :goto_4

    #@113
    .line 289
    .end local v21    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :catch_4
    move-exception v6

    #@114
    .line 290
    .local v6, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_c
    new-instance v24, Lorg/xml/sax/SAXException;

    #@116
    move-object/from16 v0, v24

    #@118
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@11b
    throw v24

    #@11c
    .line 315
    .end local v6    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v24

    #@11d
    .line 316
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    #@120
    .line 315
    throw v24
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_3

    #@121
    .line 321
    .end local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local v19    # "source":Ljavax/xml/transform/Source;
    :catch_5
    move-exception v11

    #@122
    .restart local v11    # "ioe":Ljava/io/IOException;
    move-object/from16 v18, v19

    #@124
    .end local v19    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    goto :goto_5

    #@125
    .line 326
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local v19    # "source":Ljavax/xml/transform/Source;
    :catch_6
    move-exception v21

    #@126
    .restart local v21    # "te":Ljavax/xml/transform/TransformerException;
    move-object/from16 v18, v19

    #@128
    .end local v19    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    goto :goto_6

    #@129
    .line 295
    .end local v21    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v10    # "inputSource":Lorg/xml/sax/InputSource;
    :catch_7
    move-exception v8

    #@12a
    .local v8, "ex2":Ljava/lang/NoSuchMethodError;
    goto :goto_3

    #@12b
    .line 297
    .end local v8    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_8
    move-exception v5

    #@12c
    .local v5, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_3

    #@12d
    .line 282
    .end local v5    # "ame":Ljava/lang/AbstractMethodError;
    .restart local v9    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_9
    move-exception v17

    #@12e
    .restart local v17    # "se":Lorg/xml/sax/SAXException;
    goto/16 :goto_2

    #@130
    .end local v9    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v17    # "se":Lorg/xml/sax/SAXException;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local v19    # "source":Ljavax/xml/transform/Source;
    :cond_8
    move-object/from16 v18, v19

    #@132
    .end local v19    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_1

    #@134
    .end local v18    # "source":Ljavax/xml/transform/Source;
    :cond_9
    move-object/from16 v19, v18

    #@136
    .restart local v19    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_0
.end method

.method protected processSource(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 0
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "source"    # Ljavax/xml/transform/Source;

    #@0
    .prologue
    .line 340
    return-object p2
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseIdent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    #@2
    .line 78
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-virtual {p0, p1, p4, p5, p0}, Lorg/apache/xalan/processor/ProcessorInclude;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@3
    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xalan/processor/ProcessorInclude;->getSourceFromUriResolver(Lorg/apache/xalan/processor/StylesheetHandler;)Ljavax/xml/transform/Source;

    #@6
    move-result-object v2

    #@7
    .line 137
    .local v2, "sourceFromURIResolver":Ljavax/xml/transform/Source;
    invoke-direct {p0, p1, v2}, Lorg/apache/xalan/processor/ProcessorInclude;->getBaseURIOfIncludedStylesheet(Lorg/apache/xalan/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 139
    .local v0, "hrefUrl":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->importStackContains(Ljava/lang/String;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 141
    new-instance v4, Lorg/xml/sax/SAXException;

    #@13
    .line 143
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetInclErr()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    const/4 v6, 0x1

    #@18
    new-array v6, v6, [Ljava/lang/Object;

    #@1a
    const/4 v7, 0x0

    #@1b
    aput-object v0, v6, v7

    #@1d
    .line 142
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 141
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 169
    .end local v0    # "hrefUrl":Ljava/lang/String;
    .end local v2    # "sourceFromURIResolver":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v3

    #@26
    .line 170
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p1, v4, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@2d
    .line 125
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :goto_0
    return-void

    #@2e
    .line 148
    .restart local v0    # "hrefUrl":Ljava/lang/String;
    .restart local v2    # "sourceFromURIResolver":Ljavax/xml/transform/Source;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportURL(Ljava/lang/String;)V

    #@31
    .line 149
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushImportSource(Ljavax/xml/transform/Source;)V

    #@34
    .line 151
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetType()I

    #@37
    move-result v1

    #@38
    .line 153
    .local v1, "savedStylesheetType":I
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorInclude;->getStylesheetType()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {p1, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    #@3f
    .line 154
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    #@42
    .line 158
    :try_start_2
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorInclude;->parse(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 162
    :try_start_3
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    #@48
    .line 163
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    #@4b
    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    #@4e
    .line 165
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    #@51
    goto :goto_0

    #@52
    .line 161
    :catchall_0
    move-exception v4

    #@53
    .line 162
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->setStylesheetType(I)V

    #@56
    .line 163
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    #@59
    .line 164
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popImportSource()Ljavax/xml/transform/Source;

    #@5c
    .line 165
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popNamespaceSupport()V

    #@5f
    .line 161
    throw v4
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
.end method
