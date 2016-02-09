.class public Lorg/apache/xalan/processor/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "TransformerFactoryImpl.java"


# static fields
.field public static final FEATURE_INCREMENTAL:Ljava/lang/String; = "http://xml.apache.org/xalan/features/incremental"

.field public static final FEATURE_OPTIMIZE:Ljava/lang/String; = "http://xml.apache.org/xalan/features/optimize"

.field public static final FEATURE_SOURCE_LOCATION:Ljava/lang/String; = "http://xml.apache.org/xalan/properties/source-location"

.field public static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"


# instance fields
.field private m_DOMsystemID:Ljava/lang/String;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_optimize:Z

.field private m_source_location:Z

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    #@4
    .line 86
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@6
    .line 196
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    #@9
    .line 482
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    #@c
    .line 494
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    #@e
    .line 502
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    #@10
    .line 1008
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@12
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    #@15
    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@17
    .line 92
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 22
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    const/4 v13, 0x0

    #@1
    .line 262
    .local v13, "isource":Lorg/xml/sax/InputSource;
    const/4 v15, 0x0

    #@2
    .line 263
    .local v15, "node":Lorg/w3c/dom/Node;
    const/16 v16, 0x0

    #@4
    .line 265
    .local v16, "reader":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    #@6
    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    #@8
    move/from16 v20, v0

    #@a
    if-eqz v20, :cond_1

    #@c
    move-object/from16 v5, p1

    #@e
    .line 267
    check-cast v5, Ljavax/xml/transform/dom/DOMSource;

    #@10
    .line 269
    .local v5, "dsource":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    #@13
    move-result-object v15

    #@14
    .line 270
    .local v15, "node":Lorg/w3c/dom/Node;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 281
    .end local v5    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v13    # "isource":Lorg/xml/sax/InputSource;
    .end local v15    # "node":Lorg/w3c/dom/Node;
    .local v4, "baseID":Ljava/lang/String;
    :goto_0
    new-instance v11, Lorg/apache/xml/utils/StylesheetPIHandler;

    #@1a
    move-object/from16 v0, p2

    #@1c
    move-object/from16 v1, p3

    #@1e
    move-object/from16 v2, p4

    #@20
    invoke-direct {v11, v4, v0, v1, v2}, Lorg/apache/xml/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 285
    .local v11, "handler":Lorg/apache/xml/utils/StylesheetPIHandler;
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@27
    move-object/from16 v20, v0

    #@29
    if-eqz v20, :cond_0

    #@2b
    .line 287
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2f
    move-object/from16 v20, v0

    #@31
    move-object/from16 v0, v20

    #@33
    invoke-virtual {v11, v0}, Lorg/apache/xml/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    #@36
    .line 292
    :cond_0
    if-eqz v15, :cond_2

    #@38
    .line 294
    :try_start_0
    new-instance v19, Lorg/apache/xml/utils/TreeWalker;

    #@3a
    new-instance v20, Lorg/apache/xml/utils/DOM2Helper;

    #@3c
    invoke-direct/range {v20 .. v20}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    #@3f
    move-object/from16 v0, v19

    #@41
    move-object/from16 v1, v20

    #@43
    invoke-direct {v0, v11, v1, v4}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    #@46
    .line 296
    .local v19, "walker":Lorg/apache/xml/utils/TreeWalker;
    move-object/from16 v0, v19

    #@48
    invoke-virtual {v0, v15}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    #@4b
    .line 363
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    .end local v19    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :goto_1
    invoke-virtual {v11}, Lorg/apache/xml/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    #@4e
    move-result-object v20

    #@4f
    return-object v20

    #@50
    .line 274
    .end local v4    # "baseID":Ljava/lang/String;
    .end local v11    # "handler":Lorg/apache/xml/utils/StylesheetPIHandler;
    .restart local v13    # "isource":Lorg/xml/sax/InputSource;
    .local v15, "node":Lorg/w3c/dom/Node;
    .restart local v16    # "reader":Lorg/xml/sax/XMLReader;
    :cond_1
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    #@53
    move-result-object v13

    #@54
    .line 275
    .local v13, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .restart local v4    # "baseID":Ljava/lang/String;
    goto :goto_0

    #@59
    .line 305
    .end local v13    # "isource":Lorg/xml/sax/InputSource;
    .end local v15    # "node":Lorg/w3c/dom/Node;
    .restart local v11    # "handler":Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@5c
    move-result-object v10

    #@5d
    .line 307
    .local v10, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/16 v20, 0x1

    #@5f
    move/from16 v0, v20

    #@61
    invoke-virtual {v10, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@64
    .line 309
    move-object/from16 v0, p0

    #@66
    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@68
    move/from16 v20, v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    #@6a
    if-eqz v20, :cond_3

    #@6c
    .line 313
    :try_start_2
    const-string/jumbo v20, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@6f
    const/16 v21, 0x1

    #@71
    move-object/from16 v0, v20

    #@73
    move/from16 v1, v21

    #@75
    invoke-virtual {v10, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    #@78
    .line 318
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@7b
    move-result-object v14

    #@7c
    .line 320
    .local v14, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v14}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    #@7f
    move-result-object v16

    #@80
    .line 333
    .end local v10    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v14    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    :goto_3
    if-nez v16, :cond_4

    #@82
    .line 335
    :try_start_4
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    #@85
    move-result-object v16

    #@86
    .line 338
    :cond_4
    move-object/from16 v0, p0

    #@88
    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@8a
    move/from16 v20, v0

    #@8c
    if-eqz v20, :cond_5

    #@8e
    .line 340
    const-string/jumbo v20, "http://xml.org/sax/features/external-general-entities"

    #@91
    const/16 v21, 0x0

    #@93
    move-object/from16 v0, v16

    #@95
    move-object/from16 v1, v20

    #@97
    move/from16 v2, v21

    #@99
    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@9c
    .line 343
    :cond_5
    move-object/from16 v0, v16

    #@9e
    invoke-interface {v0, v11}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@a1
    .line 344
    move-object/from16 v0, v16

    #@a3
    invoke-interface {v0, v13}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@a6
    goto :goto_1

    #@a7
    .line 348
    :catch_0
    move-exception v18

    #@a8
    .local v18, "spe":Lorg/apache/xml/utils/StopParseException;
    goto :goto_1

    #@a9
    .line 327
    .end local v18    # "spe":Lorg/apache/xml/utils/StopParseException;
    .restart local v16    # "reader":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v8

    #@aa
    .line 328
    .local v8, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v20, Lorg/xml/sax/SAXException;

    #@ac
    invoke-virtual {v8}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    #@af
    move-result-object v21

    #@b0
    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v20
    :try_end_4
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@b4
    .line 353
    .end local v8    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v17

    #@b5
    .line 354
    .local v17, "se":Lorg/xml/sax/SAXException;
    new-instance v20, Ljavax/xml/transform/TransformerConfigurationException;

    #@b7
    .line 355
    const-string/jumbo v21, "getAssociatedStylesheets failed"

    #@ba
    .line 354
    move-object/from16 v0, v20

    #@bc
    move-object/from16 v1, v21

    #@be
    move-object/from16 v2, v17

    #@c0
    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c3
    throw v20

    #@c4
    .line 323
    .end local v17    # "se":Lorg/xml/sax/SAXException;
    .restart local v16    # "reader":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v7

    #@c5
    .line 324
    .local v7, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    new-instance v20, Lorg/xml/sax/SAXException;

    #@c7
    move-object/from16 v0, v20

    #@c9
    invoke-direct {v0, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@cc
    throw v20
    :try_end_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@cd
    .line 358
    .end local v7    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v16    # "reader":Lorg/xml/sax/XMLReader;
    :catch_4
    move-exception v12

    #@ce
    .line 359
    .local v12, "ioe":Ljava/io/IOException;
    new-instance v20, Ljavax/xml/transform/TransformerConfigurationException;

    #@d0
    .line 360
    const-string/jumbo v21, "getAssociatedStylesheets failed"

    #@d3
    .line 359
    move-object/from16 v0, v20

    #@d5
    move-object/from16 v1, v21

    #@d7
    invoke-direct {v0, v1, v12}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@da
    throw v20

    #@db
    .line 330
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v16    # "reader":Lorg/xml/sax/XMLReader;
    :catch_5
    move-exception v9

    #@dc
    .local v9, "ex2":Ljava/lang/NoSuchMethodError;
    goto :goto_3

    #@dd
    .line 331
    .end local v9    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_6
    move-exception v3

    #@de
    .local v3, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_3

    #@df
    .line 315
    .end local v3    # "ame":Ljava/lang/AbstractMethodError;
    .restart local v10    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_7
    move-exception v6

    #@e0
    .local v6, "e":Lorg/xml/sax/SAXException;
    goto :goto_2
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 596
    const-string/jumbo v0, "http://xml.apache.org/xalan/features/incremental"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 598
    new-instance v0, Ljava/lang/Boolean;

    #@b
    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    #@d
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@10
    return-object v0

    #@11
    .line 600
    :cond_0
    const-string/jumbo v0, "http://xml.apache.org/xalan/features/optimize"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 602
    new-instance v0, Ljava/lang/Boolean;

    #@1c
    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@21
    return-object v0

    #@22
    .line 604
    :cond_1
    const-string/jumbo v0, "http://xml.apache.org/xalan/properties/source-location"

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 606
    new-instance v0, Ljava/lang/Boolean;

    #@2d
    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@32
    return-object v0

    #@33
    .line 609
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v1, "ER_ATTRIB_VALUE_NOT_RECOGNIZED"

    #@38
    const/4 v2, 0x1

    #@39
    new-array v2, v2, [Ljava/lang/Object;

    #@3b
    const/4 v3, 0x0

    #@3c
    aput-object p1, v2, v3

    #@3e
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method getDOMsystemID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    #@0
    .prologue
    .line 1017
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@2
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 444
    if-nez p1, :cond_0

    #@4
    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    .line 448
    const-string/jumbo v1, "ER_GET_FEATURE_NULL_NAME"

    #@9
    .line 447
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 446
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 453
    :cond_0
    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMResult/feature"

    #@14
    if-eq v0, p1, :cond_1

    #@16
    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMSource/feature"

    #@19
    if-ne v0, p1, :cond_2

    #@1b
    .line 459
    :cond_1
    return v1

    #@1c
    .line 454
    :cond_2
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXResult/feature"

    #@1f
    if-eq v0, p1, :cond_1

    #@21
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXSource/feature"

    #@24
    if-eq v0, p1, :cond_1

    #@26
    .line 455
    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamResult/feature"

    #@29
    if-eq v0, p1, :cond_1

    #@2b
    .line 456
    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamSource/feature"

    #@2e
    if-eq v0, p1, :cond_1

    #@30
    .line 457
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    #@33
    if-eq v0, p1, :cond_1

    #@35
    .line 458
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    #@38
    if-eq v0, p1, :cond_1

    #@3a
    .line 460
    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMResult/feature"

    #@3d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_3

    #@43
    .line 461
    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMSource/feature"

    #@46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v0

    #@4a
    .line 460
    if-nez v0, :cond_3

    #@4c
    .line 462
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXResult/feature"

    #@4f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    .line 460
    if-nez v0, :cond_3

    #@55
    .line 463
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXSource/feature"

    #@58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    .line 460
    if-nez v0, :cond_3

    #@5e
    .line 464
    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamResult/feature"

    #@61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    .line 460
    if-nez v0, :cond_3

    #@67
    .line 465
    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamSource/feature"

    #@6a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v0

    #@6e
    .line 460
    if-nez v0, :cond_3

    #@70
    .line 466
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    #@73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v0

    #@77
    .line 460
    if-nez v0, :cond_3

    #@79
    .line 467
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    #@7c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v0

    #@80
    .line 460
    if-eqz v0, :cond_4

    #@82
    .line 468
    :cond_3
    return v1

    #@83
    .line 470
    :cond_4
    const-string/jumbo v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v0

    #@8a
    if-eqz v0, :cond_5

    #@8c
    .line 471
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@8e
    return v0

    #@8f
    .line 474
    :cond_5
    const/4 v0, 0x0

    #@90
    return v0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    return-object v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    #@0
    .prologue
    .line 1045
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@2
    return v0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .locals 22
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 848
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 850
    .local v4, "baseID":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@6
    .line 851
    invoke-static {v4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 855
    :cond_0
    move-object/from16 v0, p1

    #@c
    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    #@e
    move/from16 v20, v0

    #@10
    if-eqz v20, :cond_2

    #@12
    move-object/from16 v6, p1

    #@14
    .line 857
    check-cast v6, Ljavax/xml/transform/dom/DOMSource;

    #@16
    .line 858
    .local v6, "dsource":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    #@19
    move-result-object v17

    #@1a
    .line 860
    .local v17, "node":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_1

    #@1c
    .line 861
    move-object/from16 v0, p0

    #@1e
    move-object/from16 v1, v17

    #@20
    invoke-virtual {v0, v1, v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;

    #@23
    move-result-object v20

    #@24
    return-object v20

    #@25
    .line 865
    :cond_1
    const-string/jumbo v20, "ER_ILLEGAL_DOMSOURCE_INPUT"

    #@28
    const/16 v21, 0x0

    #@2a
    .line 864
    invoke-static/range {v20 .. v21}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v16

    #@2e
    .line 867
    .local v16, "messageStr":Ljava/lang/String;
    new-instance v20, Ljava/lang/IllegalArgumentException;

    #@30
    move-object/from16 v0, v20

    #@32
    move-object/from16 v1, v16

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v20

    #@38
    .line 871
    .end local v6    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v16    # "messageStr":Ljava/lang/String;
    .end local v17    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    #@3b
    move-result-object v5

    #@3c
    .line 872
    .local v5, "builder":Ljavax/xml/transform/sax/TemplatesHandler;
    invoke-interface {v5, v4}, Ljavax/xml/transform/sax/TemplatesHandler;->setSystemId(Ljava/lang/String;)V

    #@3f
    .line 876
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    #@42
    move-result-object v14

    #@43
    .line 877
    .local v14, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {v14, v4}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@46
    .line 878
    const/16 v18, 0x0

    #@48
    .line 880
    .local v18, "reader":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    #@4a
    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    #@4c
    move/from16 v20, v0

    #@4e
    if-eqz v20, :cond_3

    #@50
    .line 881
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    #@52
    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    #@55
    move-result-object v18

    #@56
    .line 883
    .end local v18    # "reader":Lorg/xml/sax/XMLReader;
    :cond_3
    if-nez v18, :cond_5

    #@58
    .line 890
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@5b
    move-result-object v13

    #@5c
    .line 892
    .local v13, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/16 v20, 0x1

    #@5e
    move/from16 v0, v20

    #@60
    invoke-virtual {v13, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@63
    .line 894
    move-object/from16 v0, p0

    #@65
    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@67
    move/from16 v20, v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    #@69
    if-eqz v20, :cond_4

    #@6b
    .line 898
    :try_start_2
    const-string/jumbo v20, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@6e
    const/16 v21, 0x1

    #@70
    move-object/from16 v0, v20

    #@72
    move/from16 v1, v21

    #@74
    invoke-virtual {v13, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    #@77
    .line 903
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@7a
    move-result-object v15

    #@7b
    .line 905
    .local v15, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    #@7e
    move-result-object v18

    #@7f
    .line 919
    .end local v13    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v15    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    :cond_5
    :goto_1
    if-nez v18, :cond_6

    #@81
    .line 920
    :try_start_4
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    #@84
    move-result-object v18

    #@85
    .line 925
    :cond_6
    move-object/from16 v0, v18

    #@87
    invoke-interface {v0, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@8a
    .line 926
    move-object/from16 v0, v18

    #@8c
    invoke-interface {v0, v14}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    #@8f
    .line 974
    .end local v14    # "isource":Lorg/xml/sax/InputSource;
    :goto_2
    invoke-interface {v5}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    #@92
    move-result-object v20

    #@93
    return-object v20

    #@94
    .line 912
    .restart local v14    # "isource":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v9

    #@95
    .line 913
    .local v9, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_5
    new-instance v20, Lorg/xml/sax/SAXException;

    #@97
    invoke-virtual {v9}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    #@9a
    move-result-object v21

    #@9b
    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v20
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    #@9f
    .line 929
    .end local v9    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    .end local v14    # "isource":Lorg/xml/sax/InputSource;
    :catch_1
    move-exception v19

    #@a0
    .line 930
    .local v19, "se":Lorg/xml/sax/SAXException;
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@a4
    move-object/from16 v20, v0

    #@a6
    if-eqz v20, :cond_8

    #@a8
    .line 934
    :try_start_6
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@ac
    move-object/from16 v20, v0

    #@ae
    new-instance v21, Ljavax/xml/transform/TransformerException;

    #@b0
    move-object/from16 v0, v21

    #@b2
    move-object/from16 v1, v19

    #@b4
    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@b7
    invoke-interface/range {v20 .. v21}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_6
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_7

    #@ba
    goto :goto_2

    #@bb
    .line 937
    :catch_2
    move-exception v10

    #@bc
    .line 938
    .local v10, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v10

    #@bd
    .line 908
    .end local v10    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    .end local v19    # "se":Lorg/xml/sax/SAXException;
    .restart local v14    # "isource":Lorg/xml/sax/InputSource;
    :catch_3
    move-exception v8

    #@be
    .line 909
    .local v8, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_7
    new-instance v20, Lorg/xml/sax/SAXException;

    #@c0
    move-object/from16 v0, v20

    #@c2
    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@c5
    throw v20
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    #@c6
    .line 951
    .end local v8    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isource":Lorg/xml/sax/InputSource;
    :catch_4
    move-exception v7

    #@c7
    .line 952
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@cb
    move-object/from16 v20, v0

    #@cd
    if-eqz v20, :cond_7

    #@cf
    .line 956
    :try_start_8
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@d3
    move-object/from16 v20, v0

    #@d5
    new-instance v21, Ljavax/xml/transform/TransformerException;

    #@d7
    move-object/from16 v0, v21

    #@d9
    invoke-direct {v0, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@dc
    invoke-interface/range {v20 .. v21}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_5

    #@df
    .line 957
    const/16 v20, 0x0

    #@e1
    return-object v20

    #@e2
    .line 964
    :catch_5
    move-exception v11

    #@e3
    .line 965
    .local v11, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v20, Ljavax/xml/transform/TransformerConfigurationException;

    #@e5
    move-object/from16 v0, v20

    #@e7
    invoke-direct {v0, v11}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@ea
    throw v20

    #@eb
    .line 960
    .end local v11    # "ex1":Ljavax/xml/transform/TransformerException;
    :catch_6
    move-exception v10

    #@ec
    .line 961
    .restart local v10    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v10

    #@ed
    .line 970
    .end local v10    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :cond_7
    new-instance v20, Ljavax/xml/transform/TransformerConfigurationException;

    #@ef
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@f2
    move-result-object v21

    #@f3
    move-object/from16 v0, v20

    #@f5
    move-object/from16 v1, v21

    #@f7
    invoke-direct {v0, v1, v7}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fa
    throw v20

    #@fb
    .line 941
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v19    # "se":Lorg/xml/sax/SAXException;
    :catch_7
    move-exception v11

    #@fc
    .line 942
    .restart local v11    # "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v20, Ljavax/xml/transform/TransformerConfigurationException;

    #@fe
    move-object/from16 v0, v20

    #@100
    invoke-direct {v0, v11}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@103
    throw v20

    #@104
    .line 947
    .end local v11    # "ex1":Ljavax/xml/transform/TransformerException;
    :cond_8
    new-instance v20, Ljavax/xml/transform/TransformerConfigurationException;

    #@106
    invoke-virtual/range {v19 .. v19}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    #@109
    move-result-object v21

    #@10a
    move-object/from16 v0, v20

    #@10c
    move-object/from16 v1, v21

    #@10e
    move-object/from16 v2, v19

    #@110
    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@113
    throw v20

    #@114
    .line 915
    .end local v19    # "se":Lorg/xml/sax/SAXException;
    .restart local v14    # "isource":Lorg/xml/sax/InputSource;
    :catch_8
    move-exception v12

    #@115
    .local v12, "ex2":Ljava/lang/NoSuchMethodError;
    goto/16 :goto_1

    #@117
    .line 916
    .end local v12    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_9
    move-exception v3

    #@118
    .local v3, "ame":Ljava/lang/AbstractMethodError;
    goto/16 :goto_1

    #@11a
    .line 900
    .end local v3    # "ame":Ljava/lang/AbstractMethodError;
    .restart local v13    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_a
    move-exception v19

    #@11b
    .restart local v19    # "se":Lorg/xml/sax/SAXException;
    goto/16 :goto_0
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    new-instance v0, Lorg/apache/xalan/processor/StylesheetHandler;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xalan/processor/StylesheetHandler;-><init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    #@5
    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 827
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    #@2
    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    #@7
    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .locals 7
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 780
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    #@4
    move-result-object v3

    #@5
    .line 787
    .local v3, "tmpl":Ljavax/xml/transform/Templates;
    if-nez v3, :cond_0

    #@7
    return-object v6

    #@8
    .line 788
    :cond_0
    invoke-interface {v3}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    #@b
    move-result-object v4

    #@c
    .line 789
    .local v4, "transformer":Ljavax/xml/transform/Transformer;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@e
    invoke-virtual {v4, v5}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 790
    return-object v4

    #@12
    .line 793
    .end local v3    # "tmpl":Ljavax/xml/transform/Templates;
    .end local v4    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    #@13
    .line 794
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 798
    :try_start_1
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@19
    invoke-interface {v5, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c
    .line 799
    return-object v6

    #@1d
    .line 806
    :catch_1
    move-exception v2

    #@1e
    .line 807
    .local v2, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v5, Ljavax/xml/transform/TransformerConfigurationException;

    #@20
    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v5

    #@24
    .line 802
    .end local v2    # "ex1":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v1

    #@25
    .line 803
    .local v1, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    #@26
    .line 810
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :cond_1
    throw v0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 759
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    #@2
    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    #@7
    return-object v0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .param p1, "src"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 686
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    #@4
    move-result-object v0

    #@5
    .line 687
    .local v0, "templates":Ljavax/xml/transform/Templates;
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 689
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 7
    .param p1, "templates"    # Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 706
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    #@4
    move-result-object v4

    #@5
    check-cast v4, Lorg/apache/xalan/transformer/TransformerImpl;

    #@7
    .line 707
    .local v4, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@9
    invoke-virtual {v4, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    #@c
    .line 709
    const/4 v5, 0x1

    #@d
    invoke-virtual {v4, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 711
    .local v3, "th":Ljavax/xml/transform/sax/TransformerHandler;
    return-object v3

    #@14
    .line 714
    .end local v3    # "th":Ljavax/xml/transform/sax/TransformerHandler;
    .end local v4    # "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    :catch_0
    move-exception v0

    #@15
    .line 715
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 719
    :try_start_1
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@1b
    invoke-interface {v5, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@1e
    .line 720
    return-object v6

    #@1f
    .line 727
    :catch_1
    move-exception v2

    #@20
    .line 728
    .local v2, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v5, Ljavax/xml/transform/TransformerConfigurationException;

    #@22
    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v5

    #@26
    .line 723
    .end local v2    # "ex1":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v1

    #@27
    .line 724
    .local v1, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    #@28
    .line 732
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :cond_0
    throw v0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .locals 2
    .param p1, "src"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 626
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    #@4
    move-result-object v0

    #@5
    .line 627
    .local v0, "templates":Ljavax/xml/transform/Templates;
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 629
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .locals 5
    .param p1, "templates"    # Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 647
    :try_start_0
    new-instance v3, Lorg/apache/xalan/transformer/TrAXFilter;

    #@3
    invoke-direct {v3, p1}, Lorg/apache/xalan/transformer/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v3

    #@7
    .line 650
    :catch_0
    move-exception v0

    #@8
    .line 651
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v3, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 655
    :try_start_1
    iget-object v3, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@e
    invoke-interface {v3, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@11
    .line 656
    return-object v4

    #@12
    .line 663
    :catch_1
    move-exception v2

    #@13
    .line 664
    .local v2, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v3, Ljavax/xml/transform/TransformerConfigurationException;

    #@15
    invoke-direct {v3, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v3

    #@19
    .line 659
    .end local v2    # "ex1":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v1

    #@1a
    .line 660
    .local v1, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    #@1b
    .line 667
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :cond_0
    throw v0
.end method

.method public processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    #@4
    move-result-object v0

    #@5
    .line 115
    .local v0, "builder":Ljavax/xml/transform/sax/TemplatesHandler;
    new-instance v6, Lorg/apache/xml/utils/TreeWalker;

    #@7
    .line 116
    new-instance v7, Lorg/apache/xml/utils/DOM2Helper;

    #@9
    invoke-direct {v7}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    #@c
    .line 117
    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getSystemId()Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    .line 115
    invoke-direct {v6, v0, v7, v8}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    #@13
    .line 119
    .local v6, "walker":Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V

    #@16
    .line 121
    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v7

    #@1a
    return-object v7

    #@1b
    .line 163
    .end local v0    # "builder":Ljavax/xml/transform/sax/TemplatesHandler;
    .end local v6    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :catch_0
    move-exception v1

    #@1c
    .line 164
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@1e
    if-eqz v7, :cond_0

    #@20
    .line 168
    :try_start_1
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@22
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@24
    invoke-direct {v8, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@27
    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@2a
    .line 179
    return-object v9

    #@2b
    .line 175
    :catch_1
    move-exception v3

    #@2c
    .line 176
    .local v3, "ex":Ljavax/xml/transform/TransformerException;
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    #@2e
    invoke-direct {v7, v3}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@31
    throw v7

    #@32
    .line 171
    .end local v3    # "ex":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v2

    #@33
    .line 172
    .local v2, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    #@34
    .line 186
    .end local v2    # "ex":Ljavax/xml/transform/TransformerConfigurationException;
    :cond_0
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    #@36
    const-string/jumbo v8, "ER_PROCESSFROMNODE_FAILED"

    #@39
    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-direct {v7, v8, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@40
    throw v7

    #@41
    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    #@42
    .line 155
    .local v5, "tce":Ljavax/xml/transform/TransformerConfigurationException;
    throw v5

    #@43
    .line 124
    .end local v5    # "tce":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_4
    move-exception v4

    #@44
    .line 125
    .local v4, "se":Lorg/xml/sax/SAXException;
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@46
    if-eqz v7, :cond_1

    #@48
    .line 129
    :try_start_2
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@4a
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@4c
    invoke-direct {v8, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@4f
    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_5

    #@52
    .line 140
    return-object v9

    #@53
    .line 136
    :catch_5
    move-exception v3

    #@54
    .line 137
    .restart local v3    # "ex":Ljavax/xml/transform/TransformerException;
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    #@56
    invoke-direct {v7, v3}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@59
    throw v7

    #@5a
    .line 132
    .end local v3    # "ex":Ljavax/xml/transform/TransformerException;
    :catch_6
    move-exception v2

    #@5b
    .line 133
    .restart local v2    # "ex":Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    #@5c
    .line 148
    .end local v2    # "ex":Ljavax/xml/transform/TransformerConfigurationException;
    :cond_1
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    #@5e
    const-string/jumbo v8, "ER_PROCESSFROMNODE_FAILED"

    #@61
    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-direct {v7, v8, v4}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@68
    throw v7
.end method

.method processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    iput-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    #@2
    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 517
    const-string/jumbo v0, "http://xml.apache.org/xalan/features/incremental"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 519
    instance-of v0, p2, Ljava/lang/Boolean;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 522
    check-cast p2, Ljava/lang/Boolean;

    #@12
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v0

    #@16
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    #@18
    .line 515
    :goto_0
    return-void

    #@19
    .line 524
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 527
    new-instance v0, Ljava/lang/Boolean;

    #@1f
    check-cast p2, Ljava/lang/String;

    #@21
    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@27
    move-result v0

    #@28
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    #@2a
    goto :goto_0

    #@2b
    .line 532
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "ER_BAD_VALUE"

    #@30
    new-array v2, v2, [Ljava/lang/Object;

    #@32
    aput-object p1, v2, v3

    #@34
    aput-object p2, v2, v4

    #@36
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 535
    :cond_2
    const-string/jumbo v0, "http://xml.apache.org/xalan/features/optimize"

    #@41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 537
    instance-of v0, p2, Ljava/lang/Boolean;

    #@49
    if-eqz v0, :cond_3

    #@4b
    .line 540
    check-cast p2, Ljava/lang/Boolean;

    #@4d
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@50
    move-result v0

    #@51
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    #@53
    goto :goto_0

    #@54
    .line 542
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    #@56
    if-eqz v0, :cond_4

    #@58
    .line 545
    new-instance v0, Ljava/lang/Boolean;

    #@5a
    check-cast p2, Ljava/lang/String;

    #@5c
    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    #@5f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@62
    move-result v0

    #@63
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    #@65
    goto :goto_0

    #@66
    .line 550
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v1, "ER_BAD_VALUE"

    #@6b
    new-array v2, v2, [Ljava/lang/Object;

    #@6d
    aput-object p1, v2, v3

    #@6f
    aput-object p2, v2, v4

    #@71
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    .line 559
    :cond_5
    const-string/jumbo v0, "http://xml.apache.org/xalan/properties/source-location"

    #@7c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_8

    #@82
    .line 561
    instance-of v0, p2, Ljava/lang/Boolean;

    #@84
    if-eqz v0, :cond_6

    #@86
    .line 564
    check-cast p2, Ljava/lang/Boolean;

    #@88
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@8b
    move-result v0

    #@8c
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    #@8e
    goto :goto_0

    #@8f
    .line 566
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    #@91
    if-eqz v0, :cond_7

    #@93
    .line 569
    new-instance v0, Ljava/lang/Boolean;

    #@95
    check-cast p2, Ljava/lang/String;

    #@97
    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    #@9a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@9d
    move-result v0

    #@9e
    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    #@a0
    goto/16 :goto_0

    #@a2
    .line 574
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a4
    const-string/jumbo v1, "ER_BAD_VALUE"

    #@a7
    new-array v2, v2, [Ljava/lang/Object;

    #@a9
    aput-object p1, v2, v3

    #@ab
    aput-object p2, v2, v4

    #@ad
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v0

    #@b5
    .line 580
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b7
    const-string/jumbo v1, "ER_NOT_SUPPORTED"

    #@ba
    new-array v2, v4, [Ljava/lang/Object;

    #@bc
    aput-object p1, v2, v3

    #@be
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v0
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 3
    .param p1, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1031
    if-nez p1, :cond_0

    #@3
    .line 1032
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "ER_ERRORLISTENER"

    #@8
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1035
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@12
    .line 1028
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 408
    if-nez p1, :cond_0

    #@3
    .line 409
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    .line 411
    const-string/jumbo v1, "ER_SET_FEATURE_NULL_NAME"

    #@8
    .line 410
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 409
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 415
    :cond_0
    const-string/jumbo v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 416
    iput-boolean p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    #@1b
    .line 405
    return-void

    #@1c
    .line 422
    :cond_1
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    #@1e
    .line 424
    const-string/jumbo v1, "ER_UNSUPPORTED_FEATURE"

    #@21
    .line 425
    const/4 v2, 0x1

    #@22
    new-array v2, v2, [Ljava/lang/Object;

    #@24
    const/4 v3, 0x0

    #@25
    aput-object p1, v2, v3

    #@27
    .line 423
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 422
    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    #@0
    .prologue
    .line 992
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    .line 990
    return-void
.end method
