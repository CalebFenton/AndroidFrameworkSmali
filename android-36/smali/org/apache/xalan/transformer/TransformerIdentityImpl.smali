.class public Lorg/apache/xalan/transformer/TransformerIdentityImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerIdentityImpl.java"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field greylist m_URIResolver:Ljavax/xml/transform/URIResolver;

.field private greylist m_errorListener:Ljavax/xml/transform/ErrorListener;

.field greylist m_flushedStartDoc:Z

.field greylist m_foundFirstElement:Z

.field private greylist m_isSecureProcessing:Z

.field private greylist m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private greylist m_outputStream:Ljava/io/FileOutputStream;

.field private greylist m_params:Ljava/util/Hashtable;

.field private greylist m_result:Ljavax/xml/transform/Result;

.field private greylist m_resultContentHandler:Lorg/xml/sax/ContentHandler;

.field private greylist m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

.field private greylist m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field private greylist m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private greylist m_serializer:Lorg/apache/xml/serializer/Serializer;

.field private greylist m_systemID:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    const/4 v0, 0x0

    .line 923
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    const/4 v1, 0x0

    .line 1428
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 1461
    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 1480
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    .line 88
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 89
    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    return-void
.end method

.method private greylist createResultContentHandler(Ljavax/xml/transform/Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 183
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_1e

    .line 185
    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    .line 187
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 188
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 190
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/apache/xml/serializer/Serializer;

    if-eqz v0, :cond_10a

    .line 194
    check-cast p1, Lorg/apache/xml/serializer/Serializer;

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    goto/16 :goto_10a

    .line 197
    :cond_1e
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_84

    .line 199
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .line 200
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_3f

    .line 207
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v2, 0x9

    if-ne v2, p1, :cond_3a

    .line 209
    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Document;

    goto :goto_61

    :cond_3a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    goto :goto_61

    .line 215
    :cond_3f
    :try_start_3f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v2, 0x1

    .line 217
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 219
    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z
    :try_end_49
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3f .. :try_end_49} :catch_7d

    if-eqz v3, :cond_50

    .line 223
    :try_start_4b
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v3, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_50
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4b .. :try_end_50} :catch_50

    .line 228
    :catch_50
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_58
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_50 .. :try_end_58} :catch_7d

    .line 238
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 240
    invoke-virtual {p1, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    move p1, v2

    move-object v2, v0

    :goto_61
    const/16 v3, 0xb

    if-ne v3, p1, :cond_6d

    .line 245
    new-instance p1, Lorg/apache/xml/utils/DOMBuilder;

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    invoke-direct {p1, v2, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_72

    .line 246
    :cond_6d
    new-instance p1, Lorg/apache/xml/utils/DOMBuilder;

    invoke-direct {p1, v2, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    :goto_72
    if-eqz v1, :cond_77

    .line 249
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 251
    :cond_77
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 252
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto/16 :goto_10a

    :catch_7d
    move-exception p0

    .line 234
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 254
    :cond_84
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_13b

    .line 256
    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    .line 260
    :try_start_8a
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 261
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v0

    .line 263
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 265
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 266
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_104

    .line 267
    :cond_a4
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 268
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_104

    .line 269
    :cond_b2
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_127

    .line 271
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p1

    .line 273
    const-string v1, "file:///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_c2} :catch_134

    const-string v2, ":"

    if-eqz v1, :cond_dd

    const/16 v1, 0x8

    .line 274
    :try_start_c8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_d7

    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_fa

    :cond_d7
    const/4 v1, 0x7

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_fa

    .line 279
    :cond_dd
    const-string v1, "file:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    const/4 v1, 0x6

    .line 280
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_f5

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_fa

    :cond_f5
    const/4 v1, 0x5

    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_fa
    :goto_fa
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 288
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 293
    :goto_104
    invoke-interface {v0}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_10a} :catch_134

    .line 307
    :cond_10a
    :goto_10a
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_115

    .line 308
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 310
    :cond_115
    instance-of v0, p1, Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_11e

    .line 311
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 313
    :cond_11e
    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_126

    .line 314
    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_126
    return-void

    .line 291
    :cond_127
    :try_start_127
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_NO_OUTPUT_SPECIFIED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_134} :catch_134

    :catch_134
    move-exception p0

    .line 297
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 302
    :cond_13b
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1376
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_7

    .line 1377
    invoke-interface/range {p0 .. p5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1125
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1126
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public whitelist test-api clearParameters()V
    .registers 1

    .line 587
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez p0, :cond_5

    return-void

    .line 590
    :cond_5
    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1322
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1323
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_a

    .line 1324
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_a
    return-void
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1345
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_7

    .line 1346
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1304
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 1305
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_7
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1235
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 1236
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_7
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 962
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 963
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1102
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1276
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 1277
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1004
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1005
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1421
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_7

    .line 1422
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected final greylist flushStartDoc()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 928
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    if-nez v0, :cond_1d

    .line 930
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_15

    .line 934
    :try_start_8
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    move-exception p0

    .line 938
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 941
    :cond_15
    :goto_15
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    :cond_1d
    return-void
.end method

.method public whitelist test-api getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 1

    .line 802
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public whitelist test-api getOutputProperties()Ljava/util/Properties;
    .registers 1

    .line 706
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public whitelist test-api getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 766
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 768
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 772
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1f

    .line 773
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public whitelist test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 575
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 578
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist test-api getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 1

    .line 617
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1150
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1397
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_7

    .line 1398
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 829
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_7

    .line 830
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1173
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1174
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api reset()V
    .registers 3

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 153
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->clearParameters()V

    .line 156
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    .line 157
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 158
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 159
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 160
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 161
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 162
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    .line 164
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3

    .line 880
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_9

    .line 881
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_9} :catch_f

    .line 888
    :cond_9
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void

    :catch_f
    move-exception p0

    .line 885
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 792
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void

    .line 790
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NULL_ERROR_HANDLER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setOutputProperties(Ljava/util/Properties;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 657
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 660
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_1b

    .line 662
    :cond_14
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 664
    :goto_1b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    return-void

    :cond_21
    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    return-void
.end method

.method public whitelist test-api setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 739
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 743
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 740
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p2, :cond_13

    .line 552
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_d

    .line 554
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    .line 557
    :cond_d
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 549
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_INVALID_SET_PARAM_VALUE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setResult(Ljavax/xml/transform/Result;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 113
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    return-void

    .line 112
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_RESULT_NULL"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1194
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1195
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1292
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 1293
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_7
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1222
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1223
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_a

    .line 1224
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 910
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_9

    .line 911
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_9} :catch_f

    :cond_9
    const/4 v0, 0x0

    .line 919
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 920
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    return-void

    :catch_f
    move-exception p0

    .line 915
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1036
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    .line 1038
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 1044
    :try_start_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 1045
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 1044
    invoke-static {p1, p2, v0, v1}, Lorg/apache/xalan/transformer/SerializerSwitcher;->switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v0
    :try_end_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_17} :catch_3c

    .line 1052
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eq v0, v1, :cond_43

    .line 1056
    :try_start_1b
    invoke-interface {v0}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_35

    .line 1063
    instance-of v2, v1, Lorg/xml/sax/DTDHandler;

    if-eqz v2, :cond_2a

    .line 1064
    move-object v2, v1

    check-cast v2, Lorg/xml/sax/DTDHandler;

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 1066
    :cond_2a
    instance-of v2, v1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_32

    .line 1067
    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 1069
    :cond_32
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    goto :goto_43

    :catch_35
    move-exception p0

    .line 1060
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_3c
    move-exception p0

    .line 1049
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 1072
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1073
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1263
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 1264
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 984
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 985
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 330
    invoke-direct {p0, p2}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V

    .line 340
    instance-of p2, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1c

    move-object p2, p1

    check-cast p2, Ljavax/xml/transform/stream/StreamSource;

    .line 341
    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 342
    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p2

    if-eqz p2, :cond_3c

    :cond_1c
    instance-of p2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p2, :cond_2f

    move-object p2, p1

    check-cast p2, Ljavax/xml/transform/sax/SAXSource;

    .line 344
    invoke-virtual {p2}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 345
    invoke-virtual {p2}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2

    if-eqz p2, :cond_3c

    :cond_2f
    instance-of p2, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p2, :cond_63

    move-object p2, p1

    check-cast p2, Ljavax/xml/transform/dom/DOMSource;

    .line 346
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p2

    if-nez p2, :cond_63

    .line 348
    :cond_3c
    :try_start_3c
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    .line 349
    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 350
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    .line 351
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    invoke-direct {v0, p2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    if-eqz p1, :cond_56

    .line 355
    invoke-interface {v0, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_56
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3c .. :try_end_56} :catch_58

    :cond_56
    move-object p1, v0

    goto :goto_63

    :catch_58
    move-exception p0

    .line 358
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    :goto_63
    const/4 p2, 0x0

    .line 364
    :try_start_64
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_d6

    .line 366
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .line 368
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_82

    if-eqz p1, :cond_ca

    .line 376
    :try_start_77
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_87

    .line 377
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->startDocument()V
    :try_end_81
    .catch Lorg/xml/sax/SAXException; {:try_start_77 .. :try_end_81} :catch_85
    .catchall {:try_start_77 .. :try_end_81} :catchall_82

    goto :goto_87

    :catchall_82
    move-exception p1

    goto/16 :goto_1a8

    :catch_85
    move-exception p1

    goto :goto_c4

    .line 380
    :cond_87
    :goto_87
    :try_start_87
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_9c

    .line 382
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 384
    array-length v3, v0

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->characters([CII)V

    goto :goto_a6

    :catchall_9a
    move-exception v0

    goto :goto_ba

    .line 389
    :cond_9c
    new-instance v0, Lorg/apache/xml/serializer/TreeWalker;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_a6
    .catchall {:try_start_87 .. :try_end_a6} :catchall_9a

    .line 395
    :goto_a6
    :try_start_a6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v2, :cond_af

    .line 396
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V
    :try_end_af
    .catch Lorg/xml/sax/SAXException; {:try_start_a6 .. :try_end_af} :catch_85
    .catchall {:try_start_a6 .. :try_end_af} :catchall_82

    .line 515
    :cond_af
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_15e

    .line 519
    :goto_b3
    :try_start_b3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b6

    .line 522
    :catch_b6
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    goto/16 :goto_15e

    .line 395
    :goto_ba
    :try_start_ba
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v2, :cond_c3

    .line 396
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V

    .line 397
    :cond_c3
    throw v0
    :try_end_c4
    .catch Lorg/xml/sax/SAXException; {:try_start_ba .. :try_end_c4} :catch_85
    .catchall {:try_start_ba .. :try_end_c4} :catchall_82

    .line 401
    :goto_c4
    :try_start_c4
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 408
    :cond_ca
    const-string p1, "ER_ILLEGAL_DOMSOURCE_INPUT"

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_d6
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v0

    if-eqz v0, :cond_190

    .line 423
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e8

    .line 424
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;
    :try_end_e8
    .catchall {:try_start_c4 .. :try_end_e8} :catchall_82

    .line 431
    :cond_e8
    :try_start_e8
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_103

    .line 432
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_f2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e8 .. :try_end_f2} :catch_ff
    .catch Lorg/xml/sax/SAXException; {:try_start_e8 .. :try_end_f2} :catch_fb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f2} :catch_f7
    .catchall {:try_start_e8 .. :try_end_f2} :catchall_f3

    goto :goto_104

    :catchall_f3
    move-exception p1

    move-object v0, p2

    goto/16 :goto_186

    :catch_f7
    move-exception p1

    move-object v0, p2

    goto/16 :goto_15f

    :catch_fb
    move-exception p1

    move-object v0, p2

    goto/16 :goto_167

    :catch_ff
    move-exception p1

    move-object v0, p2

    goto/16 :goto_16d

    :cond_103
    move-object p1, p2

    :goto_104
    const/4 v2, 0x1

    if-nez p1, :cond_12d

    .line 437
    :try_start_107
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_10f
    .catch Lorg/xml/sax/SAXException; {:try_start_107 .. :try_end_10f} :catch_121
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_107 .. :try_end_10f} :catch_11c
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10f} :catch_117
    .catchall {:try_start_107 .. :try_end_10f} :catchall_111

    move v1, v2

    goto :goto_132

    :catchall_111
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto/16 :goto_186

    :catch_117
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_15f

    :catch_11c
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_16d

    :catch_121
    move-exception v0

    .line 440
    :try_start_122
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_128
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_122 .. :try_end_128} :catch_11c
    .catch Lorg/xml/sax/SAXException; {:try_start_122 .. :try_end_128} :catch_128
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_128} :catch_117
    .catchall {:try_start_122 .. :try_end_128} :catchall_111

    :catch_128
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_167

    .line 444
    :cond_12d
    :try_start_12d
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {p1, v3, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_132
    .catch Lorg/xml/sax/SAXException; {:try_start_12d .. :try_end_132} :catch_132
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_12d .. :try_end_132} :catch_11c
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_132} :catch_117
    .catchall {:try_start_12d .. :try_end_132} :catchall_111

    .line 455
    :catch_132
    :goto_132
    :try_start_132
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 458
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_138
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_132 .. :try_end_138} :catch_11c
    .catch Lorg/xml/sax/SAXException; {:try_start_132 .. :try_end_138} :catch_128
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_138} :catch_117
    .catchall {:try_start_132 .. :try_end_138} :catchall_111

    .line 463
    :try_start_138
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v2, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_142
    .catch Lorg/xml/sax/SAXException; {:try_start_138 .. :try_end_142} :catch_142
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_138 .. :try_end_142} :catch_11c
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_142} :catch_117
    .catchall {:try_start_138 .. :try_end_142} :catchall_111

    .line 476
    :catch_142
    :try_start_142
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v2, "http://xml.org/sax/handlers/DeclHandler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14c
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_142 .. :try_end_14c} :catch_14c
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_142 .. :try_end_14c} :catch_11c
    .catch Lorg/xml/sax/SAXException; {:try_start_142 .. :try_end_14c} :catch_128
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_14c} :catch_117
    .catchall {:try_start_142 .. :try_end_14c} :catchall_111

    .line 485
    :catch_14c
    :try_start_14c
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_14f
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_14c .. :try_end_14f} :catch_11c
    .catch Lorg/xml/sax/SAXException; {:try_start_14c .. :try_end_14f} :catch_128
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_117
    .catchall {:try_start_14c .. :try_end_14f} :catchall_111

    if-eqz v1, :cond_158

    .line 509
    :try_start_151
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_82

    .line 515
    :cond_158
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_15e

    goto/16 :goto_b3

    :cond_15e
    :goto_15e
    return-void

    .line 506
    :goto_15f
    :try_start_15f
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_165
    move-exception p1

    goto :goto_186

    .line 502
    :goto_167
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 489
    :goto_16d
    invoke-virtual {p1}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 491
    :goto_171
    instance-of v3, v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v3, :cond_17c

    .line 494
    check-cast v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    .line 495
    invoke-virtual {v2}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v2

    goto :goto_171

    .line 498
    :cond_17c
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_186
    .catchall {:try_start_15f .. :try_end_186} :catchall_165

    :goto_186
    if-eqz v1, :cond_18f

    .line 509
    :try_start_188
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 511
    :cond_18f
    throw p1

    .line 419
    :cond_190
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_CANNOT_TRANSFORM_SOURCE_TYPE"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a8
    .catchall {:try_start_188 .. :try_end_1a8} :catchall_82

    .line 515
    :goto_1a8
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1b1

    .line 519
    :try_start_1ac
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1af

    .line 522
    :catch_1af
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 524
    :cond_1b1
    throw p1
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 856
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_7

    .line 857
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
