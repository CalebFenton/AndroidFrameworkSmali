.class public Lorg/apache/xpath/SourceTreeManager;
.super Ljava/lang/Object;
.source "SourceTreeManager.java"


# instance fields
.field private m_sourceTree:Ljava/util/Vector;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@a
    .line 44
    return-void
.end method

.method public static getXMLReader(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;)Lorg/xml/sax/XMLReader;
    .locals 10
    .param p0, "inputSource"    # Ljavax/xml/transform/Source;
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    :try_start_0
    instance-of v8, p0, Ljavax/xml/transform/sax/SAXSource;

    #@2
    if-eqz v8, :cond_1

    #@4
    .line 348
    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    #@6
    .end local p0    # "inputSource":Ljavax/xml/transform/Source;
    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result-object v6

    #@a
    .line 350
    :goto_0
    if-nez v6, :cond_0

    #@c
    .line 354
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@f
    move-result-object v4

    #@10
    .line 355
    .local v4, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v8, 0x1

    #@11
    invoke-virtual {v4, v8}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@14
    .line 357
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@17
    move-result-object v5

    #@18
    .line 358
    .local v5, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    move-result-object v6

    #@1c
    .line 367
    .end local v4    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    :goto_1
    if-nez v6, :cond_0

    #@1e
    .line 368
    :try_start_2
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    #@21
    move-result-object v6

    #@22
    .line 373
    :cond_0
    :try_start_3
    const-string/jumbo v8, "http://xml.org/sax/features/namespace-prefixes"

    #@25
    .line 374
    const/4 v9, 0x1

    #@26
    .line 373
    invoke-interface {v6, v8, v9}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    #@29
    .line 383
    :goto_2
    return-object v6

    #@2a
    .line 348
    .restart local p0    # "inputSource":Ljavax/xml/transform/Source;
    :cond_1
    const/4 v6, 0x0

    #@2b
    .local v6, "reader":Lorg/xml/sax/XMLReader;
    goto :goto_0

    #@2c
    .line 362
    .end local v6    # "reader":Lorg/xml/sax/XMLReader;
    .end local p0    # "inputSource":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v2

    #@2d
    .line 363
    .local v2, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_4
    new-instance v8, Lorg/xml/sax/SAXException;

    #@2f
    invoke-virtual {v2}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@36
    throw v8
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1

    #@37
    .line 386
    .end local v2    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_1
    move-exception v7

    #@38
    .line 387
    .local v7, "se":Lorg/xml/sax/SAXException;
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@3a
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-direct {v8, v9, p1, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@41
    throw v8

    #@42
    .line 360
    .end local v7    # "se":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    #@43
    .line 361
    .local v1, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    new-instance v8, Lorg/xml/sax/SAXException;

    #@45
    invoke-direct {v8, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@48
    throw v8
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1

    #@49
    .line 377
    .end local v1    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v7

    #@4a
    .restart local v7    # "se":Lorg/xml/sax/SAXException;
    goto :goto_2

    #@4b
    .line 364
    .end local v7    # "se":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v3

    #@4c
    .local v3, "ex2":Ljava/lang/NoSuchMethodError;
    goto :goto_1

    #@4d
    .line 366
    .end local v3    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_5
    move-exception v0

    #@4e
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_1
.end method


# virtual methods
.method public findURIFromDoc(I)Ljava/lang/String;
    .locals 4
    .param p1, "owner"    # I

    #@0
    .prologue
    .line 92
    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@5
    move-result v1

    #@6
    .line 94
    .local v1, "n":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 96
    iget-object v3, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lorg/apache/xpath/SourceTree;

    #@11
    .line 98
    .local v2, "sTree":Lorg/apache/xpath/SourceTree;
    iget v3, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    #@13
    if-ne p1, v3, :cond_0

    #@15
    .line 99
    iget-object v3, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    #@17
    return-object v3

    #@18
    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 102
    .end local v2    # "sTree":Lorg/apache/xpath/SourceTree;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method public getNode(Ljavax/xml/transform/Source;)I
    .locals 6
    .param p1, "source"    # Ljavax/xml/transform/Source;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 203
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 205
    .local v3, "url":Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    .line 206
    return v5

    #@8
    .line 208
    :cond_0
    iget-object v4, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@a
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@d
    move-result v1

    #@e
    .line 211
    .local v1, "n":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@11
    .line 213
    iget-object v4, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@13
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lorg/apache/xpath/SourceTree;

    #@19
    .line 217
    .local v2, "sTree":Lorg/apache/xpath/SourceTree;
    iget-object v4, v2, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 218
    iget v4, v2, Lorg/apache/xpath/SourceTree;->m_root:I

    #@23
    return v4

    #@24
    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 222
    .end local v2    # "sTree":Lorg/apache/xpath/SourceTree;
    :cond_2
    return v5
.end method

.method public getSourceTree(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p4, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    #@3
    move-result-object v1

    #@4
    .line 248
    .local v1, "source":Ljavax/xml/transform/Source;
    invoke-virtual {p0, v1, p3, p4}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 251
    .end local v1    # "source":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v0

    #@a
    .line 252
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@c
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v2, v3, p3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@13
    throw v2
.end method

.method public getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    #@4
    move-result v0

    #@5
    .line 278
    .local v0, "n":I
    if-eq v1, v0, :cond_0

    #@7
    .line 279
    return v0

    #@8
    .line 281
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/SourceTreeManager;->parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I

    #@b
    move-result v0

    #@c
    .line 283
    if-eq v1, v0, :cond_1

    #@e
    .line 284
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/SourceTreeManager;->putDocumentInCache(ILjavax/xml/transform/Source;)V

    #@11
    .line 286
    :cond_1
    return v0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    return-object v0
.end method

.method public parseToNode(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    .locals 10
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    #@3
    move-result-object v9

    #@4
    .line 308
    .local v9, "xowner":Ljava/lang/Object;
    if-eqz v9, :cond_0

    #@6
    instance-of v1, v9, Lorg/apache/xml/dtm/DTMWSFilter;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 311
    move-object v0, v9

    #@b
    check-cast v0, Lorg/apache/xml/dtm/DTMWSFilter;

    #@d
    move-object v4, v0

    #@e
    .line 310
    const/4 v3, 0x0

    #@f
    .line 311
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x1

    #@11
    move-object v1, p3

    #@12
    move-object v2, p1

    #@13
    .line 310
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@16
    move-result-object v7

    #@17
    .line 317
    .local v7, "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@1a
    move-result v1

    #@1b
    return v1

    #@1c
    .line 315
    .end local v7    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x0

    #@1e
    const/4 v5, 0x0

    #@1f
    const/4 v6, 0x1

    #@20
    move-object v1, p3

    #@21
    move-object v2, p1

    #@22
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v7

    #@26
    .restart local v7    # "dtm":Lorg/apache/xml/dtm/DTM;
    goto :goto_0

    #@27
    .line 320
    .end local v7    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v9    # "xowner":Ljava/lang/Object;
    :catch_0
    move-exception v8

    #@28
    .line 322
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@2a
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2, p2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@31
    throw v1
.end method

.method public putDocumentInCache(ILjavax/xml/transform/Source;)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "source"    # Ljavax/xml/transform/Source;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0, p2}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    #@3
    move-result v0

    #@4
    .line 174
    .local v0, "cachedNode":I
    const/4 v1, -0x1

    #@5
    if-eq v1, v0, :cond_1

    #@7
    .line 176
    if-eq v0, p1, :cond_0

    #@9
    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Programmer\'s Error!  putDocumentInCache found reparse of doc: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 180
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 177
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 181
    :cond_0
    return-void

    #@28
    .line 183
    :cond_1
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 185
    iget-object v1, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@30
    new-instance v2, Lorg/apache/xpath/SourceTree;

    #@32
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v2, p1, v3}, Lorg/apache/xpath/SourceTree;-><init>(ILjava/lang/String;)V

    #@39
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3c
    .line 169
    :cond_2
    return-void
.end method

.method public removeDocumentFromCache(I)V
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 147
    const/4 v2, -0x1

    #@1
    if-ne v2, p1, :cond_0

    #@3
    .line 148
    return-void

    #@4
    .line 149
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@6
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v0, v2, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@e
    .line 151
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lorg/apache/xpath/SourceTree;

    #@16
    .line 152
    .local v1, "st":Lorg/apache/xpath/SourceTree;
    if-eqz v1, :cond_1

    #@18
    iget v2, v1, Lorg/apache/xpath/SourceTree;->m_root:I

    #@1a
    if-ne v2, p1, :cond_1

    #@1c
    .line 154
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@1e
    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    #@21
    .line 155
    return-void

    #@22
    .line 149
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@24
    goto :goto_0

    #@25
    .line 145
    .end local v1    # "st":Lorg/apache/xpath/SourceTree;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    iput-object v0, p0, Lorg/apache/xpath/SourceTreeManager;->m_sourceTree:Ljava/util/Vector;

    #@7
    .line 54
    return-void
.end method

.method public resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    .locals 3
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "locator"    # Ljavax/xml/transform/SourceLocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    .line 125
    .local v0, "source":Ljavax/xml/transform/Source;
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 127
    iget-object v2, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@7
    invoke-interface {v2, p2, p1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    #@a
    move-result-object v0

    #@b
    .line 130
    .end local v0    # "source":Ljavax/xml/transform/Source;
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 132
    invoke-static {p2, p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 134
    .local v1, "uri":Ljava/lang/String;
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    #@13
    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    #@16
    .line 137
    .end local v1    # "uri":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/xpath/SourceTreeManager;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    .line 68
    return-void
.end method
