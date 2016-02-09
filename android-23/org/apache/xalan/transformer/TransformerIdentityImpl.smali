.class public Lorg/apache/xalan/transformer/TransformerIdentityImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerIdentityImpl.java"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field m_URIResolver:Ljavax/xml/transform/URIResolver;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field m_flushedStartDoc:Z

.field m_foundFirstElement:Z

.field private m_isSecureProcessing:Z

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_params:Ljava/util/Hashtable;

.field private m_result:Ljavax/xml/transform/Result;

.field private m_resultContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

.field private m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_serializer:Lorg/apache/xml/serializer/Serializer;

.field private m_systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    #@4
    .line 96
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isSecureProcessing"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    #@4
    .line 923
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    #@6
    .line 1428
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@9
    .line 1462
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@b
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    #@e
    .line 1461
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@10
    .line 1480
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    #@12
    .line 88
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    #@14
    const-string/jumbo v1, "xml"

    #@17
    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@1a
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@1c
    .line 89
    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    #@1e
    .line 86
    return-void
.end method

.method private createResultContentHandler(Ljavax/xml/transform/Result;)V
    .locals 20
    .param p1, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    move-object/from16 v0, p1

    #@2
    instance-of v15, v0, Ljavax/xml/transform/sax/SAXResult;

    #@4
    if-eqz v15, :cond_4

    #@6
    move-object/from16 v11, p1

    #@8
    .line 185
    check-cast v11, Ljavax/xml/transform/sax/SAXResult;

    #@a
    .line 187
    .local v11, "saxResult":Ljavax/xml/transform/sax/SAXResult;
    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    #@d
    move-result-object v15

    #@e
    move-object/from16 v0, p0

    #@10
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    .line 188
    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    #@15
    move-result-object v15

    #@16
    move-object/from16 v0, p0

    #@18
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@1a
    .line 190
    move-object/from16 v0, p0

    #@1c
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@1e
    instance-of v15, v15, Lorg/apache/xml/serializer/Serializer;

    #@20
    if-eqz v15, :cond_0

    #@22
    .line 194
    move-object/from16 v0, p0

    #@24
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@26
    check-cast v15, Lorg/apache/xml/serializer/Serializer;

    #@28
    move-object/from16 v0, p0

    #@2a
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@2c
    .line 307
    .end local v11    # "saxResult":Ljavax/xml/transform/sax/SAXResult;
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@2e
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@30
    instance-of v15, v15, Lorg/xml/sax/DTDHandler;

    #@32
    if-eqz v15, :cond_1

    #@34
    .line 308
    move-object/from16 v0, p0

    #@36
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@38
    check-cast v15, Lorg/xml/sax/DTDHandler;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@3e
    .line 310
    :cond_1
    move-object/from16 v0, p0

    #@40
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@42
    instance-of v15, v15, Lorg/xml/sax/ext/DeclHandler;

    #@44
    if-eqz v15, :cond_2

    #@46
    .line 311
    move-object/from16 v0, p0

    #@48
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@4a
    check-cast v15, Lorg/xml/sax/ext/DeclHandler;

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@50
    .line 313
    :cond_2
    move-object/from16 v0, p0

    #@52
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@54
    instance-of v15, v15, Lorg/xml/sax/ext/LexicalHandler;

    #@56
    if-eqz v15, :cond_3

    #@58
    .line 314
    move-object/from16 v0, p0

    #@5a
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5c
    check-cast v15, Lorg/xml/sax/ext/LexicalHandler;

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@62
    .line 180
    :cond_3
    return-void

    #@63
    .line 197
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_4
    move-object/from16 v0, p1

    #@65
    instance-of v15, v0, Ljavax/xml/transform/dom/DOMResult;

    #@67
    if-eqz v15, :cond_a

    #@69
    move-object/from16 v5, p1

    #@6b
    .line 199
    check-cast v5, Ljavax/xml/transform/dom/DOMResult;

    #@6d
    .line 200
    .local v5, "domResult":Ljavax/xml/transform/dom/DOMResult;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    #@70
    move-result-object v9

    #@71
    .line 201
    .local v9, "outputNode":Lorg/w3c/dom/Node;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    #@74
    move-result-object v8

    #@75
    .line 205
    .local v8, "nextSibling":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_7

    #@77
    .line 207
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    #@7a
    move-result v14

    #@7b
    .line 208
    .local v14, "type":S
    const/16 v15, 0x9

    #@7d
    if-ne v15, v14, :cond_6

    #@7f
    move-object v3, v9

    #@80
    .line 209
    check-cast v3, Lorg/w3c/dom/Document;

    #@82
    .line 244
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    .local v3, "doc":Lorg/w3c/dom/Document;
    :goto_1
    const/16 v15, 0xb

    #@84
    if-ne v15, v14, :cond_9

    #@86
    .line 245
    new-instance v4, Lorg/apache/xml/utils/DOMBuilder;

    #@88
    check-cast v9, Lorg/w3c/dom/DocumentFragment;

    #@8a
    .end local v9    # "outputNode":Lorg/w3c/dom/Node;
    invoke-direct {v4, v3, v9}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    #@8d
    .line 248
    .local v4, "domBuilder":Lorg/apache/xml/utils/DOMBuilder;
    :goto_2
    if-eqz v8, :cond_5

    #@8f
    .line 249
    invoke-virtual {v4, v8}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@92
    .line 251
    :cond_5
    move-object/from16 v0, p0

    #@94
    iput-object v4, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@96
    .line 252
    move-object/from16 v0, p0

    #@98
    iput-object v4, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@9a
    goto :goto_0

    #@9b
    .line 209
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "domBuilder":Lorg/apache/xml/utils/DOMBuilder;
    .restart local v9    # "outputNode":Lorg/w3c/dom/Node;
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@9e
    move-result-object v3

    #@9f
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    goto :goto_1

    #@a0
    .line 215
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "type":S
    :cond_7
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@a3
    move-result-object v2

    #@a4
    .line 217
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v15, 0x1

    #@a5
    invoke-virtual {v2, v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@a8
    .line 219
    move-object/from16 v0, p0

    #@aa
    iget-boolean v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    if-eqz v15, :cond_8

    #@ae
    .line 223
    :try_start_1
    const-string/jumbo v15, "http://javax.xml.XMLConstants/feature/secure-processing"

    #@b1
    const/16 v16, 0x1

    #@b3
    move/from16 v0, v16

    #@b5
    invoke-virtual {v2, v15, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    #@b8
    .line 228
    :cond_8
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@bb
    move-result-object v1

    #@bc
    .line 230
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    #@bf
    move-result-object v3

    #@c0
    .line 237
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    move-object v9, v3

    #@c1
    .line 238
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    #@c4
    move-result v14

    #@c5
    .line 240
    .restart local v14    # "type":S
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    #@c7
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    move-object/from16 v0, p1

    #@c9
    invoke-virtual {v0, v9}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@cc
    goto :goto_1

    #@cd
    .line 233
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :catch_0
    move-exception v10

    #@ce
    .line 234
    .local v10, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v15, Ljavax/xml/transform/TransformerException;

    #@d0
    invoke-direct {v15, v10}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@d3
    throw v15

    #@d4
    .line 246
    .end local v10    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "type":S
    :cond_9
    new-instance v4, Lorg/apache/xml/utils/DOMBuilder;

    #@d6
    invoke-direct {v4, v3, v9}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    #@d9
    .restart local v4    # "domBuilder":Lorg/apache/xml/utils/DOMBuilder;
    goto :goto_2

    #@da
    .line 254
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "domBuilder":Lorg/apache/xml/utils/DOMBuilder;
    .end local v5    # "domResult":Ljavax/xml/transform/dom/DOMResult;
    .end local v8    # "nextSibling":Lorg/w3c/dom/Node;
    .end local v9    # "outputNode":Lorg/w3c/dom/Node;
    .end local v14    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_a
    move-object/from16 v0, p1

    #@dc
    instance-of v15, v0, Ljavax/xml/transform/stream/StreamResult;

    #@de
    if-eqz v15, :cond_12

    #@e0
    move-object/from16 v13, p1

    #@e2
    .line 256
    check-cast v13, Ljavax/xml/transform/stream/StreamResult;

    #@e4
    .line 261
    .local v13, "sresult":Ljavax/xml/transform/stream/StreamResult;
    :try_start_3
    move-object/from16 v0, p0

    #@e6
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@e8
    invoke-virtual {v15}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@eb
    move-result-object v15

    #@ec
    invoke-static {v15}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    #@ef
    move-result-object v12

    #@f0
    .line 263
    .local v12, "serializer":Lorg/apache/xml/serializer/Serializer;
    move-object/from16 v0, p0

    #@f2
    iput-object v12, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@f4
    .line 265
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    #@f7
    move-result-object v15

    #@f8
    if-eqz v15, :cond_b

    #@fa
    .line 266
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    #@fd
    move-result-object v15

    #@fe
    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    #@101
    .line 293
    :goto_4
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    #@104
    move-result-object v15

    #@105
    move-object/from16 v0, p0

    #@107
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@109
    goto/16 :goto_0

    #@10b
    .line 296
    .end local v12    # "serializer":Lorg/apache/xml/serializer/Serializer;
    :catch_1
    move-exception v7

    #@10c
    .line 297
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v15, Ljavax/xml/transform/TransformerException;

    #@10e
    invoke-direct {v15, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@111
    throw v15

    #@112
    .line 267
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v12    # "serializer":Lorg/apache/xml/serializer/Serializer;
    :cond_b
    :try_start_4
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    #@115
    move-result-object v15

    #@116
    if-eqz v15, :cond_c

    #@118
    .line 268
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    #@11b
    move-result-object v15

    #@11c
    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    #@11f
    goto :goto_4

    #@120
    .line 269
    :cond_c
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    #@123
    move-result-object v15

    #@124
    if-eqz v15, :cond_11

    #@126
    .line 271
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    #@129
    move-result-object v6

    #@12a
    .line 273
    .local v6, "fileURL":Ljava/lang/String;
    const-string/jumbo v15, "file:///"

    #@12d
    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@130
    move-result v15

    #@131
    if-eqz v15, :cond_f

    #@133
    .line 274
    const/16 v15, 0x8

    #@135
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@138
    move-result-object v15

    #@139
    const-string/jumbo v16, ":"

    #@13c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@13f
    move-result v15

    #@140
    if-lez v15, :cond_e

    #@142
    .line 275
    const/16 v15, 0x8

    #@144
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@147
    move-result-object v6

    #@148
    .line 287
    :cond_d
    :goto_5
    new-instance v15, Ljava/io/FileOutputStream;

    #@14a
    invoke-direct {v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@14d
    move-object/from16 v0, p0

    #@14f
    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@151
    .line 288
    move-object/from16 v0, p0

    #@153
    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@155
    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    #@158
    goto :goto_4

    #@159
    .line 277
    :cond_e
    const/4 v15, 0x7

    #@15a
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15d
    move-result-object v6

    #@15e
    goto :goto_5

    #@15f
    .line 279
    :cond_f
    const-string/jumbo v15, "file:/"

    #@162
    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@165
    move-result v15

    #@166
    if-eqz v15, :cond_d

    #@168
    .line 280
    const/4 v15, 0x6

    #@169
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16c
    move-result-object v15

    #@16d
    const-string/jumbo v16, ":"

    #@170
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@173
    move-result v15

    #@174
    if-lez v15, :cond_10

    #@176
    .line 281
    const/4 v15, 0x6

    #@177
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17a
    move-result-object v6

    #@17b
    goto :goto_5

    #@17c
    .line 283
    :cond_10
    const/4 v15, 0x5

    #@17d
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@180
    move-result-object v6

    #@181
    goto :goto_5

    #@182
    .line 291
    .end local v6    # "fileURL":Ljava/lang/String;
    :cond_11
    new-instance v15, Ljavax/xml/transform/TransformerException;

    #@184
    const-string/jumbo v16, "ER_NO_OUTPUT_SPECIFIED"

    #@187
    const/16 v17, 0x0

    #@189
    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18c
    move-result-object v16

    #@18d
    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@190
    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@191
    .line 302
    .end local v12    # "serializer":Lorg/apache/xml/serializer/Serializer;
    .end local v13    # "sresult":Ljavax/xml/transform/stream/StreamResult;
    :cond_12
    new-instance v15, Ljavax/xml/transform/TransformerException;

    #@193
    const-string/jumbo v16, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    #@196
    const/16 v17, 0x1

    #@198
    move/from16 v0, v17

    #@19a
    new-array v0, v0, [Ljava/lang/Object;

    #@19c
    move-object/from16 v17, v0

    #@19e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a1
    move-result-object v18

    #@1a2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1a5
    move-result-object v18

    #@1a6
    const/16 v19, 0x0

    #@1a8
    aput-object v18, v17, v19

    #@1aa
    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1ad
    move-result-object v16

    #@1ae
    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@1b1
    throw v15

    #@1b2
    .line 225
    .restart local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "domResult":Ljavax/xml/transform/dom/DOMResult;
    .restart local v8    # "nextSibling":Lorg/w3c/dom/Node;
    .restart local v9    # "outputNode":Lorg/w3c/dom/Node;
    :catch_2
    move-exception v10

    #@1b3
    .restart local v10    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    goto/16 :goto_3
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1376
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1377
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move-object v5, p5

    #@b
    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 1374
    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1125
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 1126
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@8
    .line 1123
    return-void
.end method

.method public clearParameters()V
    .locals 1

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 588
    return-void

    #@5
    .line 590
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@a
    .line 584
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1322
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 1323
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1324
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@c
    .line 1320
    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1345
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1346
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1343
    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1304
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1305
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@9
    .line 1302
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1235
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1236
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@9
    .line 1233
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 963
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@8
    .line 960
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1102
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1100
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1277
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@9
    .line 1274
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1004
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@8
    .line 1002
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1421
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1422
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1419
    :cond_0
    return-void
.end method

.method protected final flushStartDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 928
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 930
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 934
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    #@a
    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 941
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@f
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@12
    .line 942
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    #@15
    .line 926
    :cond_1
    return-void

    #@16
    .line 937
    :catch_0
    move-exception v0

    #@17
    .line 938
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@19
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@1c
    throw v1
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    #@0
    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@2
    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Properties;

    #@c
    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 765
    const/4 v1, 0x0

    #@1
    .line 766
    .local v1, "value":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@3
    .line 768
    .local v0, "props":Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 770
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    #@9
    .line 772
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 773
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    #@14
    const/4 v4, 0x1

    #@15
    new-array v4, v4, [Ljava/lang/Object;

    #@17
    const/4 v5, 0x0

    #@18
    aput-object p1, v4, v5

    #@1a
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 777
    :cond_0
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 575
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 576
    return-object v1

    #@6
    .line 578
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    #@0
    .prologue
    .line 144
    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    #@2
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@5
    .line 1148
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1398
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1395
    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 830
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 827
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1173
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 1174
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1171
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 152
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    #@4
    .line 153
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    #@6
    .line 154
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@8
    .line 155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->clearParameters()V

    #@b
    .line 156
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    #@d
    .line 157
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@f
    .line 158
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    #@11
    .line 159
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@13
    .line 160
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@15
    .line 161
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@17
    .line 162
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    #@19
    .line 163
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    #@1b
    .line 164
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    #@1d
    const-string/jumbo v1, "xml"

    #@20
    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@23
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@25
    .line 150
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 881
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    #@6
    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 888
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@b
    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@e
    .line 876
    return-void

    #@f
    .line 884
    :catch_0
    move-exception v0

    #@10
    .line 885
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@12
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@15
    throw v1
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
    .line 789
    if-nez p1, :cond_0

    #@3
    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "ER_NULL_ERROR_HANDLER"

    #@8
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 792
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@12
    .line 787
    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2
    .param p1, "oformat"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 653
    if-eqz p1, :cond_1

    #@3
    .line 657
    const-string/jumbo v1, "method"

    #@6
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 659
    .local v0, "method":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 660
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    #@10
    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@15
    .line 664
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@17
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    #@1a
    .line 650
    .end local v0    # "method":Ljava/lang/String;
    :goto_1
    return-void

    #@1b
    .line 662
    .restart local v0    # "method":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    #@1d
    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    #@20
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@22
    goto :goto_0

    #@23
    .line 669
    .end local v0    # "method":Ljava/lang/String;
    :cond_1
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@25
    goto :goto_1
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 739
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    #@b
    const/4 v2, 0x1

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    const/4 v3, 0x0

    #@f
    aput-object p1, v2, v3

    #@11
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 743
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@1b
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 736
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 548
    if-nez p2, :cond_0

    #@2
    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "ER_INVALID_SET_PARAM_VALUE"

    #@7
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    const/4 v3, 0x0

    #@b
    aput-object p1, v2, v3

    #@d
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 552
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@17
    if-nez v0, :cond_1

    #@19
    .line 554
    new-instance v0, Ljava/util/Hashtable;

    #@1b
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1e
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@20
    .line 557
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 546
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 3
    .param p1, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 111
    if-nez p1, :cond_0

    #@3
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "ER_RESULT_NULL"

    #@8
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 113
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    #@12
    .line 109
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    #@2
    .line 121
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    #@0
    .prologue
    .line 605
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    #@2
    .line 603
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1194
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 1195
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    #@8
    .line 1192
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1292
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1293
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@9
    .line 1290
    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1222
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 1223
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1224
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1220
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 910
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 911
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    #@7
    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 919
    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    #@c
    .line 920
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    #@e
    .line 905
    return-void

    #@f
    .line 914
    :catch_0
    move-exception v0

    #@10
    .line 915
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@12
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@19
    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1036
    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    #@2
    if-nez v3, :cond_2

    #@4
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 1038
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    #@b
    .line 1045
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@d
    invoke-virtual {v3}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@10
    move-result-object v3

    #@11
    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@13
    .line 1044
    invoke-static {p1, p2, v3, v4}, Lorg/apache/xalan/transformer/SerializerSwitcher;->switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    .line 1052
    .local v1, "newSerializer":Lorg/apache/xml/serializer/Serializer;
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@19
    if-eq v1, v3, :cond_2

    #@1b
    .line 1056
    :try_start_1
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    .line 1063
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    instance-of v3, v3, Lorg/xml/sax/DTDHandler;

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 1064
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@29
    check-cast v3, Lorg/xml/sax/DTDHandler;

    #@2b
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2d
    .line 1066
    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@2f
    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 1067
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@35
    check-cast v3, Lorg/xml/sax/ext/LexicalHandler;

    #@37
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@39
    .line 1069
    :cond_1
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    #@3b
    .line 1072
    .end local v1    # "newSerializer":Lorg/apache/xml/serializer/Serializer;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3e
    .line 1073
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@40
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@43
    .line 1033
    return-void

    #@44
    .line 1048
    :catch_0
    move-exception v2

    #@45
    .line 1049
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@47
    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@4a
    throw v3

    #@4b
    .line 1059
    .end local v2    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v1    # "newSerializer":Lorg/apache/xml/serializer/Serializer;
    :catch_1
    move-exception v0

    #@4c
    .line 1060
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@4e
    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@51
    throw v3
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1263
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1264
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@9
    .line 1261
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 984
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    #@3
    .line 985
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 982
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 28
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V

    #@7
    .line 340
    move-object/from16 v0, p1

    #@9
    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    #@b
    move/from16 v23, v0

    #@d
    if-eqz v23, :cond_6

    #@f
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@12
    move-result-object v23

    #@13
    if-nez v23, :cond_6

    #@15
    move-object/from16 v23, p1

    #@17
    .line 341
    check-cast v23, Ljavax/xml/transform/stream/StreamSource;

    #@19
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    #@1c
    move-result-object v23

    #@1d
    if-nez v23, :cond_6

    #@1f
    move-object/from16 v23, p1

    #@21
    .line 342
    check-cast v23, Ljavax/xml/transform/stream/StreamSource;

    #@23
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    #@26
    move-result-object v23

    #@27
    if-nez v23, :cond_6

    #@29
    .line 348
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@2c
    move-result-object v4

    #@2d
    .line 349
    .local v4, "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@30
    move-result-object v3

    #@31
    .line 350
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@34
    move-result-object v18

    #@35
    .line 351
    .local v18, "systemID":Ljava/lang/String;
    new-instance v17, Ljavax/xml/transform/dom/DOMSource;

    #@37
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    #@3a
    move-result-object v23

    #@3b
    move-object/from16 v0, v17

    #@3d
    move-object/from16 v1, v23

    #@3f
    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 354
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .local v17, "source":Ljavax/xml/transform/Source;
    if-eqz v18, :cond_1

    #@44
    .line 355
    :try_start_1
    invoke-interface/range {v17 .. v18}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_c

    #@47
    :cond_1
    move-object/from16 p1, v17

    #@49
    .line 364
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "source":Ljavax/xml/transform/Source;
    .end local v18    # "systemID":Ljava/lang/String;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    #@4b
    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    #@4d
    move/from16 v23, v0

    #@4f
    if-eqz v23, :cond_c

    #@51
    .line 366
    move-object/from16 v0, p1

    #@53
    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    #@55
    move-object v8, v0

    #@56
    .line 368
    .local v8, "dsource":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v8}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    #@59
    move-result-object v23

    #@5a
    move-object/from16 v0, v23

    #@5c
    move-object/from16 v1, p0

    #@5e
    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    #@60
    .line 370
    invoke-virtual {v8}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@63
    move-result-object v6

    #@64
    .line 372
    .local v6, "dNode":Lorg/w3c/dom/Node;
    if-eqz v6, :cond_b

    #@66
    .line 376
    :try_start_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    #@69
    move-result v23

    #@6a
    const/16 v24, 0x2

    #@6c
    move/from16 v0, v23

    #@6e
    move/from16 v1, v24

    #@70
    if-ne v0, v1, :cond_3

    #@72
    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->startDocument()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@75
    .line 380
    :cond_3
    :try_start_4
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    #@78
    move-result v23

    #@79
    const/16 v24, 0x2

    #@7b
    move/from16 v0, v23

    #@7d
    move/from16 v1, v24

    #@7f
    if-ne v0, v1, :cond_8

    #@81
    .line 382
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@84
    move-result-object v7

    #@85
    .line 383
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    #@88
    move-result-object v5

    #@89
    .line 384
    .local v5, "chars":[C
    array-length v0, v5

    #@8a
    move/from16 v23, v0

    #@8c
    const/16 v24, 0x0

    #@8e
    move-object/from16 v0, p0

    #@90
    move/from16 v1, v24

    #@92
    move/from16 v2, v23

    #@94
    invoke-virtual {v0, v5, v1, v2}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->characters([CII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@97
    .line 395
    .end local v5    # "chars":[C
    .end local v7    # "data":Ljava/lang/String;
    :goto_1
    :try_start_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    #@9a
    move-result v23

    #@9b
    const/16 v24, 0x2

    #@9d
    move/from16 v0, v23

    #@9f
    move/from16 v1, v24

    #@a1
    if-ne v0, v1, :cond_4

    #@a3
    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@a6
    .line 515
    :cond_4
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@aa
    move-object/from16 v23, v0

    #@ac
    if-eqz v23, :cond_5

    #@ae
    .line 519
    :try_start_6
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@b2
    move-object/from16 v23, v0

    #@b4
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    #@b7
    .line 522
    :goto_2
    const/16 v23, 0x0

    #@b9
    move-object/from16 v0, v23

    #@bb
    move-object/from16 v1, p0

    #@bd
    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@bf
    .line 404
    :cond_5
    return-void

    #@c0
    .line 343
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    :cond_6
    move-object/from16 v0, p1

    #@c2
    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    #@c4
    move/from16 v23, v0

    #@c6
    if-eqz v23, :cond_7

    #@c8
    move-object/from16 v23, p1

    #@ca
    .line 344
    check-cast v23, Ljavax/xml/transform/sax/SAXSource;

    #@cc
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    #@cf
    move-result-object v23

    #@d0
    if-nez v23, :cond_7

    #@d2
    move-object/from16 v23, p1

    #@d4
    .line 345
    check-cast v23, Ljavax/xml/transform/sax/SAXSource;

    #@d6
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    #@d9
    move-result-object v23

    #@da
    if-eqz v23, :cond_0

    #@dc
    .line 346
    :cond_7
    move-object/from16 v0, p1

    #@de
    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    #@e0
    move/from16 v23, v0

    #@e2
    if-eqz v23, :cond_2

    #@e4
    move-object/from16 v23, p1

    #@e6
    check-cast v23, Ljavax/xml/transform/dom/DOMSource;

    #@e8
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    #@eb
    move-result-object v23

    #@ec
    if-nez v23, :cond_2

    #@ee
    goto/16 :goto_0

    #@f0
    .line 357
    :catch_0
    move-exception v9

    #@f1
    .line 358
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@f3
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    #@f6
    move-result-object v24

    #@f7
    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@fa
    throw v23

    #@fb
    .line 389
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v6    # "dNode":Lorg/w3c/dom/Node;
    .restart local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    :cond_8
    :try_start_7
    new-instance v20, Lorg/apache/xml/serializer/TreeWalker;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    #@101
    move-object/from16 v23, v0

    #@103
    move-object/from16 v0, v20

    #@105
    move-object/from16 v1, p0

    #@107
    move-object/from16 v2, v23

    #@109
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    #@10c
    .line 390
    .local v20, "walker":Lorg/apache/xml/serializer/TreeWalker;
    move-object/from16 v0, v20

    #@10e
    invoke-virtual {v0, v6}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@111
    goto :goto_1

    #@112
    .line 394
    .end local v20    # "walker":Lorg/apache/xml/serializer/TreeWalker;
    :catchall_0
    move-exception v23

    #@113
    .line 395
    :try_start_8
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    #@116
    move-result v24

    #@117
    const/16 v25, 0x2

    #@119
    move/from16 v0, v24

    #@11b
    move/from16 v1, v25

    #@11d
    if-ne v0, v1, :cond_9

    #@11f
    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V

    #@122
    .line 394
    :cond_9
    throw v23
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@123
    .line 400
    :catch_1
    move-exception v15

    #@124
    .line 401
    .local v15, "se":Lorg/xml/sax/SAXException;
    :try_start_9
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@126
    move-object/from16 v0, v23

    #@128
    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@12b
    throw v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@12c
    .line 514
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    :catchall_1
    move-exception v23

    #@12d
    .line 515
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@131
    move-object/from16 v24, v0

    #@133
    if-eqz v24, :cond_a

    #@135
    .line 519
    :try_start_a
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@139
    move-object/from16 v24, v0

    #@13b
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@13e
    .line 522
    :goto_4
    const/16 v24, 0x0

    #@140
    move-object/from16 v0, v24

    #@142
    move-object/from16 v1, p0

    #@144
    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@146
    .line 514
    :cond_a
    throw v23

    #@147
    .line 409
    .restart local v6    # "dNode":Lorg/w3c/dom/Node;
    .restart local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_b
    :try_start_b
    const-string/jumbo v23, "ER_ILLEGAL_DOMSOURCE_INPUT"

    #@14a
    const/16 v24, 0x0

    #@14c
    .line 408
    invoke-static/range {v23 .. v24}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14f
    move-result-object v13

    #@150
    .line 411
    .local v13, "messageStr":Ljava/lang/String;
    new-instance v23, Ljava/lang/IllegalArgumentException;

    #@152
    move-object/from16 v0, v23

    #@154
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@157
    throw v23

    #@158
    .line 415
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v13    # "messageStr":Ljava/lang/String;
    :cond_c
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    #@15b
    move-result-object v22

    #@15c
    .line 417
    .local v22, "xmlSource":Lorg/xml/sax/InputSource;
    if-nez v22, :cond_d

    #@15e
    .line 419
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@160
    const-string/jumbo v24, "ER_CANNOT_TRANSFORM_SOURCE_TYPE"

    #@163
    const/16 v25, 0x1

    #@165
    move/from16 v0, v25

    #@167
    new-array v0, v0, [Ljava/lang/Object;

    #@169
    move-object/from16 v25, v0

    #@16b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16e
    move-result-object v26

    #@16f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@172
    move-result-object v26

    #@173
    const/16 v27, 0x0

    #@175
    aput-object v26, v25, v27

    #@177
    invoke-static/range {v24 .. v25}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17a
    move-result-object v24

    #@17b
    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@17e
    throw v23

    #@17f
    .line 423
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@182
    move-result-object v23

    #@183
    if-eqz v23, :cond_e

    #@185
    .line 424
    invoke-virtual/range {v22 .. v22}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@188
    move-result-object v23

    #@189
    move-object/from16 v0, v23

    #@18b
    move-object/from16 v1, p0

    #@18d
    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@18f
    .line 426
    :cond_e
    const/4 v14, 0x0

    #@190
    .line 427
    .local v14, "reader":Lorg/xml/sax/XMLReader;
    const/4 v12, 0x0

    #@191
    .line 431
    .local v12, "managedReader":Z
    :try_start_c
    move-object/from16 v0, p1

    #@193
    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    #@195
    move/from16 v23, v0

    #@197
    if-eqz v23, :cond_f

    #@199
    .line 432
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    #@19b
    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_c
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@19e
    move-result-object v14

    #@19f
    .line 435
    .end local v14    # "reader":Lorg/xml/sax/XMLReader;
    :cond_f
    if-nez v14, :cond_17

    #@1a1
    .line 437
    :try_start_d
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    #@1a4
    move-result-object v23

    #@1a5
    invoke-virtual/range {v23 .. v23}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@1a8
    move-result-object v14

    #@1a9
    .line 438
    .local v14, "reader":Lorg/xml/sax/XMLReader;
    const/4 v12, 0x1

    #@1aa
    .line 453
    .end local v14    # "reader":Lorg/xml/sax/XMLReader;
    :goto_5
    move-object/from16 v10, p0

    #@1ac
    .line 455
    .local v10, "inputHandler":Lorg/xml/sax/ContentHandler;
    :try_start_e
    invoke-interface {v14, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1af
    .line 457
    instance-of v0, v10, Lorg/xml/sax/DTDHandler;

    #@1b1
    move/from16 v23, v0

    #@1b3
    if-eqz v23, :cond_10

    #@1b5
    .line 458
    move-object v0, v10

    #@1b6
    check-cast v0, Lorg/xml/sax/DTDHandler;

    #@1b8
    move-object/from16 v23, v0

    #@1ba
    move-object/from16 v0, v23

    #@1bc
    invoke-interface {v14, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@1bf
    .line 462
    :cond_10
    :try_start_f
    instance-of v0, v10, Lorg/xml/sax/ext/LexicalHandler;

    #@1c1
    move/from16 v23, v0

    #@1c3
    if-eqz v23, :cond_11

    #@1c5
    .line 463
    const-string/jumbo v23, "http://xml.org/sax/properties/lexical-handler"

    #@1c8
    move-object/from16 v0, v23

    #@1ca
    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@1cd
    .line 466
    :cond_11
    instance-of v0, v10, Lorg/xml/sax/ext/DeclHandler;

    #@1cf
    move/from16 v23, v0

    #@1d1
    if-eqz v23, :cond_12

    #@1d3
    .line 468
    const-string/jumbo v23, "http://xml.org/sax/properties/declaration-handler"

    #@1d6
    .line 467
    move-object/from16 v0, v23

    #@1d8
    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    #@1db
    .line 475
    :cond_12
    :goto_6
    :try_start_10
    instance-of v0, v10, Lorg/xml/sax/ext/LexicalHandler;

    #@1dd
    move/from16 v23, v0

    #@1df
    if-eqz v23, :cond_13

    #@1e1
    .line 476
    const-string/jumbo v23, "http://xml.org/sax/handlers/LexicalHandler"

    #@1e4
    move-object/from16 v0, v23

    #@1e6
    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@1e9
    .line 479
    :cond_13
    instance-of v0, v10, Lorg/xml/sax/ext/DeclHandler;

    #@1eb
    move/from16 v23, v0

    #@1ed
    if-eqz v23, :cond_14

    #@1ef
    .line 480
    const-string/jumbo v23, "http://xml.org/sax/handlers/DeclHandler"

    #@1f2
    move-object/from16 v0, v23

    #@1f4
    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@1f7
    .line 485
    :cond_14
    :goto_7
    :try_start_11
    move-object/from16 v0, v22

    #@1f9
    invoke-interface {v14, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_11
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    #@1fc
    .line 508
    if-eqz v12, :cond_15

    #@1fe
    .line 509
    :try_start_12
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    #@201
    move-result-object v23

    #@202
    move-object/from16 v0, v23

    #@204
    invoke-virtual {v0, v14}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    #@207
    .line 515
    :cond_15
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@20b
    move-object/from16 v23, v0

    #@20d
    if-eqz v23, :cond_16

    #@20f
    .line 519
    :try_start_13
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@213
    move-object/from16 v23, v0

    #@215
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    #@218
    .line 522
    :goto_8
    const/16 v23, 0x0

    #@21a
    move-object/from16 v0, v23

    #@21c
    move-object/from16 v1, p0

    #@21e
    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@220
    .line 327
    :cond_16
    return-void

    #@221
    .line 439
    .end local v10    # "inputHandler":Lorg/xml/sax/ContentHandler;
    :catch_2
    move-exception v15

    #@222
    .line 440
    .restart local v15    # "se":Lorg/xml/sax/SAXException;
    :try_start_14
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@224
    move-object/from16 v0, v23

    #@226
    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@229
    throw v23
    :try_end_14
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    #@22a
    .line 488
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v21

    #@22b
    .line 489
    .local v21, "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :try_start_15
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@22e
    move-result-object v19

    #@22f
    .line 491
    .local v19, "throwable":Ljava/lang/Throwable;
    :goto_9
    move-object/from16 v0, v19

    #@231
    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@233
    move/from16 v23, v0

    #@235
    if-eqz v23, :cond_19

    #@237
    .line 495
    check-cast v19, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@239
    .end local v19    # "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    #@23c
    move-result-object v19

    #@23d
    .restart local v19    # "throwable":Ljava/lang/Throwable;
    goto :goto_9

    #@23e
    .line 444
    .end local v19    # "throwable":Ljava/lang/Throwable;
    .end local v21    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_17
    :try_start_16
    const-string/jumbo v23, "http://xml.org/sax/features/namespace-prefixes"

    #@241
    .line 445
    const/16 v24, 0x1

    #@243
    .line 444
    move-object/from16 v0, v23

    #@245
    move/from16 v1, v24

    #@247
    invoke-interface {v14, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    #@24a
    goto/16 :goto_5

    #@24c
    .line 446
    :catch_4
    move-exception v15

    #@24d
    .restart local v15    # "se":Lorg/xml/sax/SAXException;
    goto/16 :goto_5

    #@24f
    .line 505
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v11

    #@250
    .line 506
    .local v11, "ioe":Ljava/io/IOException;
    :try_start_17
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@252
    move-object/from16 v0, v23

    #@254
    invoke-direct {v0, v11}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@257
    throw v23
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    #@258
    .line 507
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_2
    move-exception v23

    #@259
    .line 508
    if-eqz v12, :cond_18

    #@25b
    .line 509
    :try_start_18
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    #@25e
    move-result-object v24

    #@25f
    move-object/from16 v0, v24

    #@261
    invoke-virtual {v0, v14}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    #@264
    .line 507
    :cond_18
    throw v23
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    #@265
    .line 501
    :catch_6
    move-exception v15

    #@266
    .line 502
    .restart local v15    # "se":Lorg/xml/sax/SAXException;
    :try_start_19
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@268
    move-object/from16 v0, v23

    #@26a
    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@26d
    throw v23

    #@26e
    .line 498
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    .restart local v19    # "throwable":Ljava/lang/Throwable;
    .restart local v21    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_19
    new-instance v23, Ljavax/xml/transform/TransformerException;

    #@270
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@273
    move-result-object v24

    #@274
    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@277
    throw v23
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    #@278
    .line 521
    .end local v12    # "managedReader":Z
    .end local v19    # "throwable":Ljava/lang/Throwable;
    .end local v21    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    .end local v22    # "xmlSource":Lorg/xml/sax/InputSource;
    :catch_7
    move-exception v11

    #@279
    .restart local v11    # "ioe":Ljava/io/IOException;
    goto/16 :goto_4

    #@27b
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v10    # "inputHandler":Lorg/xml/sax/ContentHandler;
    .restart local v12    # "managedReader":Z
    .restart local v22    # "xmlSource":Lorg/xml/sax/InputSource;
    :catch_8
    move-exception v11

    #@27c
    .restart local v11    # "ioe":Ljava/io/IOException;
    goto :goto_8

    #@27d
    .line 483
    .end local v11    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v16

    #@27e
    .local v16, "snre":Lorg/xml/sax/SAXNotRecognizedException;
    goto/16 :goto_7

    #@280
    .line 471
    .end local v16    # "snre":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_a
    move-exception v15

    #@281
    .restart local v15    # "se":Lorg/xml/sax/SAXException;
    goto/16 :goto_6

    #@283
    .line 521
    .end local v10    # "inputHandler":Lorg/xml/sax/ContentHandler;
    .end local v12    # "managedReader":Z
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    .end local v22    # "xmlSource":Lorg/xml/sax/InputSource;
    .restart local v6    # "dNode":Lorg/w3c/dom/Node;
    .restart local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :catch_b
    move-exception v11

    #@284
    .restart local v11    # "ioe":Ljava/io/IOException;
    goto/16 :goto_2

    #@286
    .line 357
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "systemID":Ljava/lang/String;
    :catch_c
    move-exception v9

    #@287
    .restart local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object/from16 p1, v17

    #@289
    .end local v17    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_3
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 857
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 853
    :cond_0
    return-void
.end method
