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
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    monitor-enter p0

    #@3
    .line 84
    :try_start_0
    iget-object v10, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@5
    if-nez v10, :cond_0

    #@7
    .line 87
    new-instance v10, Ljava/lang/ThreadLocal;

    #@9
    invoke-direct {v10}, Ljava/lang/ThreadLocal;-><init>()V

    #@c
    iput-object v10, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@e
    .line 90
    :cond_0
    iget-object v10, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@10
    if-nez v10, :cond_1

    #@12
    .line 91
    new-instance v10, Ljava/util/Hashtable;

    #@14
    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    #@17
    iput-object v10, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@19
    .line 96
    :cond_1
    iget-object v10, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@1b
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Lorg/xml/sax/XMLReader;

    #@21
    .line 97
    .local v6, "reader":Lorg/xml/sax/XMLReader;
    if-eqz v6, :cond_4

    #@23
    .line 98
    .local v8, "threadHasReader":Z
    :goto_0
    if-eqz v8, :cond_2

    #@25
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@27
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    if-ne v9, v10, :cond_6

    #@2f
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

    #@32
    move-result-object v6

    #@33
    .line 121
    :goto_1
    :try_start_2
    const-string/jumbo v9, "http://xml.org/sax/features/namespaces"

    #@36
    const/4 v10, 0x1

    #@37
    invoke-interface {v6, v9, v10}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@3a
    .line 122
    const-string/jumbo v9, "http://xml.org/sax/features/namespace-prefixes"

    #@3d
    const/4 v10, 0x0

    #@3e
    invoke-interface {v6, v9, v10}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    .line 137
    :goto_2
    if-nez v8, :cond_3

    #@43
    .line 138
    :try_start_3
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    #@45
    invoke-virtual {v9, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@48
    .line 139
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@4a
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4c
    invoke-virtual {v9, v6, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4f
    :cond_3
    :goto_3
    monitor-exit p0

    #@50
    .line 145
    return-object v6

    #@51
    .end local v8    # "threadHasReader":Z
    :cond_4
    move v8, v9

    #@52
    .line 97
    goto :goto_0

    #@53
    .line 106
    .restart local v8    # "threadHasReader":Z
    :catch_0
    move-exception v1

    #@54
    .line 110
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@56
    if-nez v9, :cond_5

    #@58
    .line 111
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@5b
    move-result-object v9

    #@5c
    sput-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@5e
    .line 112
    sget-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@60
    const/4 v10, 0x1

    #@61
    invoke-virtual {v9, v10}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    #@64
    .line 115
    :cond_5
    sget-object v9, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    #@66
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    move-result-object v6

    #@6e
    goto :goto_1

    #@6f
    .line 116
    :catch_1
    move-exception v5

    #@70
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

    #@71
    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v2

    #@72
    .line 128
    .local v2, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    new-instance v9, Lorg/xml/sax/SAXException;

    #@74
    invoke-direct {v9, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@77
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@78
    .end local v2    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v6    # "reader":Lorg/xml/sax/XMLReader;
    .end local v8    # "threadHasReader":Z
    :catchall_0
    move-exception v9

    #@79
    monitor-exit p0

    #@7a
    throw v9

    #@7b
    .line 129
    .restart local v6    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v8    # "threadHasReader":Z
    :catch_3
    move-exception v3

    #@7c
    .line 130
    .local v3, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_7
    new-instance v9, Lorg/xml/sax/SAXException;

    #@7e
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@85
    throw v9

    #@86
    .line 142
    .end local v3    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_6
    iget-object v9, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    #@88
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@8a
    invoke-virtual {v9, v6, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@8d
    goto :goto_3

    #@8e
    .line 131
    :catch_4
    move-exception v4

    #@8f
    .local v4, "ex2":Ljava/lang/NoSuchMethodError;
    goto :goto_2

    #@90
    .line 132
    .end local v4    # "ex2":Ljava/lang/NoSuchMethodError;
    :catch_5
    move-exception v0

    #@91
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    #@92
    .line 123
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :catch_6
    move-exception v7

    #@93
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
