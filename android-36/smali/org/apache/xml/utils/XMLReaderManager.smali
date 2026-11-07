.class public Lorg/apache/xml/utils/XMLReaderManager;
.super Ljava/lang/Object;
.source "XMLReaderManager.java"


# static fields
.field private static final greylist NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final greylist NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static greylist m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static final greylist m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;


# instance fields
.field private greylist m_inUse:Ljava/util/Hashtable;

.field private greylist m_readers:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lorg/apache/xml/utils/XMLReaderManager;

    invoke-direct {v0}, Lorg/apache/xml/utils/XMLReaderManager;-><init>()V

    sput-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getInstance()Lorg/apache/xml/utils/XMLReaderManager;
    .registers 1

    .line 71
    sget-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized greylist getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_10

    .line 87
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    goto :goto_10

    :catchall_d
    move-exception v0

    goto/16 :goto_8c

    .line 90
    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    if-nez v0, :cond_1b

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    .line 96
    :cond_1b
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLReader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    if-eqz v3, :cond_3d

    .line 98
    iget-object v4, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_37

    goto :goto_3d

    .line 142
    :cond_37
    iget-object v1, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_d

    goto :goto_7a

    .line 105
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_44
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3d .. :try_end_41} :catch_42
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3d .. :try_end_41} :catch_6c
    .catch Ljava/lang/AbstractMethodError; {:try_start_3d .. :try_end_41} :catch_6c
    .catchall {:try_start_3d .. :try_end_41} :catchall_d

    goto :goto_5e

    :catch_42
    move-exception v0

    goto :goto_7c

    .line 110
    :catch_44
    :try_start_44
    sget-object v4, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v4, :cond_54

    .line 111
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 112
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    goto :goto_54

    :catch_52
    move-exception v1

    goto :goto_6b

    .line 115
    :cond_54
    :goto_54
    sget-object v4, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_5e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_44 .. :try_end_5e} :catch_52
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_44 .. :try_end_5e} :catch_42
    .catch Ljava/lang/NoSuchMethodError; {:try_start_44 .. :try_end_5e} :catch_6c
    .catch Ljava/lang/AbstractMethodError; {:try_start_44 .. :try_end_5e} :catch_6c
    .catchall {:try_start_44 .. :try_end_5e} :catchall_d

    .line 121
    :goto_5e
    :try_start_5e
    const-string v4, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v4, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 122
    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v0, v2, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_68
    .catch Lorg/xml/sax/SAXException; {:try_start_5e .. :try_end_68} :catch_6c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5e .. :try_end_68} :catch_69
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5e .. :try_end_68} :catch_42
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5e .. :try_end_68} :catch_6c
    .catch Ljava/lang/AbstractMethodError; {:try_start_5e .. :try_end_68} :catch_6c
    .catchall {:try_start_5e .. :try_end_68} :catchall_d

    goto :goto_6c

    :catch_69
    move-exception v0

    goto :goto_86

    .line 117
    :goto_6b
    :try_start_6b
    throw v1
    :try_end_6c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6b .. :try_end_6c} :catch_69
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_6b .. :try_end_6c} :catch_42
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6b .. :try_end_6c} :catch_6c
    .catch Ljava/lang/AbstractMethodError; {:try_start_6b .. :try_end_6c} :catch_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_d

    :catch_6c
    :goto_6c
    if-nez v3, :cond_7a

    .line 138
    :try_start_6e
    iget-object v1, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_d

    .line 145
    :cond_7a
    :goto_7a
    monitor-exit p0

    return-object v0

    .line 130
    :goto_7c
    :try_start_7c
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :goto_86
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :goto_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_d

    throw v0
.end method

.method public declared-synchronized greylist releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 3

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_13

    if-eqz p1, :cond_13

    .line 158
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 160
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method
