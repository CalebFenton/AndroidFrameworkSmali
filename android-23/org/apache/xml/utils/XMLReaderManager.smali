.class public Lorg/apache/xml/utils/XMLReaderManager;
.super Ljava/lang/Object;
.source "XMLReaderManager.java"


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static final m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;


# instance fields
.field private m_inUse:Ljava/util/Hashtable;

.field private m_readers:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Lorg/apache/xml/utils/XMLReaderManager;

    #@2
    invoke-direct {v0}, Lorg/apache/xml/utils/XMLReaderManager;-><init>()V

    #@5
    .line 43
    sput-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@7
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lorg/apache/xml/utils/XMLReaderManager;
    .locals 1

    #@0
    .prologue
    .line 71
    sget-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@3
    if-nez v9, :cond_0

    #@5
    .line 87
    new-instance v9, Ljava/lang/ThreadLocal;

    #@7
    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    #@a
    iput-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@c
    .line 90
    :cond_0
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@e
    if-nez v9, :cond_1

    #@10
    .line 91
    new-instance v9, Ljava/util/Hashtable;

    #@12
    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    #@15
    iput-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@17
    .line 96
    :cond_1
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@19
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Lorg/xml/sax/XMLReader;

    #@1f
    .line 97
    .local v6, "reader":Lorg/xml/sax/XMLReader;
    if-eqz v6, :cond_4

    #@21
    const/4 v8, 0x1

    #@22
    .line 98
    .local v8, "threadHasReader":Z
    :goto_0
    if-eqz v8, :cond_2

    #@24
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@26
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v9

    #@2a
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    if-ne v9, v10, :cond_6

    #@2e
    .line 105
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v6

    #@32
    .line 121
    :goto_1
    :try_start_2
    const-string/jumbo v9, "http://xml.org/sax/features/namespaces"

    #@35
    const/4 v10, 0x1

    #@36
    invoke-interface {v6, v9, v10}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@39
    .line 122
    const-string/jumbo v9, "http://xml.org/sax/features/namespace-prefixes"

    #@3c
    const/4 v10, 0x0

    #@3d
    invoke-interface {v6, v9, v10}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 137
    :goto_2
    if-nez v8, :cond_3

    #@42
    .line 138
    :try_start_3
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@44
    invoke-virtual {v9, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@47
    .line 139
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@49
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4b
    invoke-virtual {v9, v6, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    :cond_3
    :goto_3
    monitor-exit p0

    #@4f
    .line 145
    return-object v6

    #@50
    .line 97
    .end local v8    # "threadHasReader":Z
    :cond_4
    const/4 v8, 0x0

    #@51
    .restart local v8    # "threadHasReader":Z
    goto :goto_0

    #@52
    .line 106
    :catch_0
    move-exception v1

    #@53
    .line 110
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@55
    if-nez v9, :cond_5

    #@57
    .line 111
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@5a
    move-result-object v9

    #@5b
    sput-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@5d
    .line 112
    sget-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@5f
    const/4 v10, 0x1

    #@60
    invoke-virtual {v9, v10}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@63
    .line 115
    :cond_5
    sget-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@65
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6c
    move-result-object v6

    #@6d
    goto :goto_1

    #@6e
    .line 116
    :catch_1
    move-exception v5

    #@6f
    .line 117
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@70
    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v2

    #@71
    .line 128
    .local v2, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    new-instance v9, Lorg/xml/sax/SAXException;

    #@73
    invoke-direct {v9, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@76
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@77
    .end local v2    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v6    # "reader":Lorg/xml/sax/XMLReader;
    .end local v8    # "threadHasReader":Z
    :catchall_0
    move-exception v9

    #@78
    monitor-exit p0

    #@79
    throw v9

    #@7a
    .line 129
    .restart local v6    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v8    # "threadHasReader":Z
    :catch_3
    move-exception v3

    #@7b
    .line 130
    .local v3, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_7
    new-instance v9, Lorg/xml/sax/SAXException;

    #@7d
    invoke-virtual {v3}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@84
    throw v9

    #@85
    .line 142
    .end local v3    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_6
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@87
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@89
    invoke-virtual {v9, v6, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@8c
    goto :goto_3

    #@8d
    .line 131
    :catch_4
    move-exception v4

    #@8e
    .local v4, "ex2":Ljava/lang/NoSuchMethodError;
    goto :goto_2

    #@8f
    .line 132
    .end local v4    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_5
    move-exception v0

    #@90
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    #@91
    .line 123
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :catch_6
    move-exception v7

    #@92
    .local v7, "se":Lorg/xml/sax/SAXException;
    goto :goto_2
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-ne v0, p1, :cond_0

    #@9
    if-eqz p1, :cond_0

    #@b
    .line 158
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 154
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method
