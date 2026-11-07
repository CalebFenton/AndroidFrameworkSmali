.class public Lorg/apache/xpath/SourceTreeManager;
.super Ljava/lang/Object;
.source "SourceTreeManager.java"


# instance fields
.field private greylist m_sourceTree:Ljava/util/Vector;

.field greylist m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    return-void
.end method

.method public static greylist getXMLReader(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;)Lorg/xml/sax/XMLReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 347
    :try_start_0
    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_d

    .line 348
    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    move-exception p0

    goto :goto_42

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const/4 v0, 0x1

    if-nez p0, :cond_3c

    .line 354
    :try_start_11
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 357
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_20
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_20} :catch_23
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_11 .. :try_end_20} :catch_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_11 .. :try_end_20} :catch_25
    .catch Ljava/lang/AbstractMethodError; {:try_start_11 .. :try_end_20} :catch_25
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_20} :catch_b

    goto :goto_25

    :catch_21
    move-exception p0

    goto :goto_2c

    :catch_23
    move-exception p0

    goto :goto_36

    :catch_25
    :goto_25
    if-nez p0, :cond_3c

    .line 368
    :try_start_27
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    goto :goto_3c

    .line 363
    :goto_2c
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :goto_36
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_3c
    .catch Lorg/xml/sax/SAXException; {:try_start_27 .. :try_end_3c} :catch_b

    .line 373
    :cond_3c
    :goto_3c
    :try_start_3c
    const-string p1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {p0, p1, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_41
    .catch Lorg/xml/sax/SAXException; {:try_start_3c .. :try_end_41} :catch_41

    :catch_41
    return-object p0

    .line 387
    :goto_42
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public greylist findURIFromDoc(I)Ljava/lang/String;
    .registers 6

    .line 92
    iget-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 96
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/SourceTree;

    .line 98
    iget v3, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    if-ne p1, v3, :cond_18

    .line 99
    iget-object p0, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNode(Ljavax/xml/transform/Source;)I
    .registers 7

    .line 203
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_8

    return v0

    .line 208
    :cond_8
    iget-object v1, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_27

    .line 213
    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/SourceTree;

    .line 217
    iget-object v4, v3, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 218
    iget p0, v3, Lorg/apache/xpath/SourceTree;->m_root:I

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_27
    return v0
.end method

.method public greylist getSourceTree(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object p1

    .line 248
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I

    move-result p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 252
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_8

    return v0

    .line 281
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I

    move-result p2

    if-eq v1, p2, :cond_11

    .line 284
    invoke-virtual {p0, p2, p1}, Lorg/apache/xpath/SourceTreeManager;->putDocumentInCache(ILjavax/xml/transform/Source;)V

    :cond_11
    return p2
.end method

.method public greylist getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 1

    .line 81
    iget-object p0, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public greylist parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 306
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 308
    instance-of v0, p0, Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v0, :cond_1a

    .line 310
    move-object v4, p0

    check-cast v4, Lorg/apache/xml/dtm/DTMWSFilter;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-object v1, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    goto :goto_24

    :catch_17
    move-exception v0

    move-object p0, v0

    goto :goto_29

    :cond_1a
    move-object v1, p1

    move-object v0, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 315
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 317
    :goto_24
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_17

    return p0

    .line 322
    :goto_29
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist putDocumentInCache(ILjavax/xml/transform/Source;)V
    .registers 5

    .line 172
    invoke-virtual {p0, p2}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_25

    if-ne v0, p1, :cond_a

    goto :goto_39

    .line 177
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Programmer\'s Error!  putDocumentInCache found reparse of doc: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_25
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 185
    iget-object p0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xpath/SourceTree;

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/SourceTree;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public greylist removeDocumentFromCache(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    goto :goto_25

    .line 149
    :cond_4
    iget-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_25

    .line 151
    iget-object v1, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/SourceTree;

    if-eqz v1, :cond_22

    .line 152
    iget v1, v1, Lorg/apache/xpath/SourceTree;->m_root:I

    if-ne v1, p1, :cond_22

    .line 154
    iget-object p0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V

    return-void

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_25
    :goto_25
    return-void
.end method

.method public greylist reset()V
    .registers 2

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    return-void
.end method

.method public greylist resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz p0, :cond_9

    .line 127
    invoke-interface {p0, p2, p1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_16

    .line 132
    invoke-static {p2, p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p1, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_16
    return-object p0
.end method

.method public greylist setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method
