.class public final Lorg/apache/xml/serializer/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field private static m_formats:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xml/serializer/SerializerFactory;->m_formats:Ljava/util/Hashtable;

    #@7
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;
    .locals 15
    .param p0, "format"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v10, "method"

    #@3
    invoke-virtual {p0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 98
    .local v4, "method":Ljava/lang/String;
    if-nez v4, :cond_0

    #@9
    .line 99
    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@b
    .line 100
    const-string/jumbo v11, "ER_FACTORY_PROPERTY_MISSING"

    #@e
    .line 101
    const/4 v12, 0x1

    #@f
    new-array v12, v12, [Ljava/lang/Object;

    #@11
    const-string/jumbo v13, "method"

    #@14
    const/4 v14, 0x0

    #@15
    aput-object v13, v12, v14

    #@17
    .line 99
    invoke-virtual {v10, v11, v12}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 102
    .local v6, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-direct {v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 178
    .end local v4    # "method":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@22
    .line 179
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@24
    invoke-direct {v10, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@27
    throw v10

    #@28
    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "method":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v10, "{http://xml.apache.org/xalan}content-handler"

    #@2b
    invoke-virtual {p0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 109
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    #@31
    .line 113
    invoke-static {v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    #@34
    move-result-object v5

    #@35
    .line 115
    .local v5, "methodDefaults":Ljava/util/Properties;
    const-string/jumbo v10, "{http://xml.apache.org/xalan}content-handler"

    #@38
    invoke-virtual {v5, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 116
    if-nez v0, :cond_1

    #@3e
    .line 117
    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@40
    .line 118
    const-string/jumbo v11, "ER_FACTORY_PROPERTY_MISSING"

    #@43
    .line 119
    const/4 v12, 0x1

    #@44
    new-array v12, v12, [Ljava/lang/Object;

    #@46
    const-string/jumbo v13, "{http://xml.apache.org/xalan}content-handler"

    #@49
    const/4 v14, 0x0

    #@4a
    aput-object v13, v12, v14

    #@4c
    .line 117
    invoke-virtual {v10, v11, v12}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 120
    .restart local v6    # "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@52
    invoke-direct {v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v10

    #@56
    .line 127
    .end local v5    # "methodDefaults":Ljava/util/Properties;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@59
    move-result-object v3

    #@5a
    .line 129
    .local v3, "loader":Ljava/lang/ClassLoader;
    const/4 v10, 0x1

    #@5b
    invoke-static {v0, v3, v10}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@5e
    move-result-object v1

    #@5f
    .line 133
    .local v1, "cls":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@62
    move-result-object v7

    #@63
    .line 135
    .local v7, "obj":Ljava/lang/Object;
    instance-of v10, v7, Lorg/apache/xml/serializer/SerializationHandler;

    #@65
    if-eqz v10, :cond_2

    #@67
    .line 138
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@6a
    move-result-object v8

    #@6b
    check-cast v8, Lorg/apache/xml/serializer/Serializer;

    #@6d
    .line 139
    .local v8, "ser":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v8, p0}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    #@70
    .line 183
    .end local v7    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v8

    #@71
    .line 147
    .end local v8    # "ser":Lorg/apache/xml/serializer/Serializer;
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v10, v7, Lorg/xml/sax/ContentHandler;

    #@73
    if-eqz v10, :cond_3

    #@75
    .line 156
    sget-object v0, Lorg/apache/xml/serializer/SerializerConstants;->DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

    #@77
    .line 157
    const/4 v10, 0x1

    #@78
    invoke-static {v0, v3, v10}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@7b
    move-result-object v1

    #@7c
    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@7f
    move-result-object v9

    #@80
    check-cast v9, Lorg/apache/xml/serializer/SerializationHandler;

    #@82
    .line 160
    .local v9, "sh":Lorg/apache/xml/serializer/SerializationHandler;
    check-cast v7, Lorg/xml/sax/ContentHandler;

    #@84
    .end local v7    # "obj":Ljava/lang/Object;
    invoke-interface {v9, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@87
    .line 161
    invoke-interface {v9, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputFormat(Ljava/util/Properties;)V

    #@8a
    .line 163
    move-object v8, v9

    #@8b
    .restart local v8    # "ser":Lorg/apache/xml/serializer/Serializer;
    goto :goto_0

    #@8c
    .line 169
    .end local v8    # "ser":Lorg/apache/xml/serializer/Serializer;
    .end local v9    # "sh":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v10, Ljava/lang/Exception;

    #@8e
    .line 170
    sget-object v11, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@90
    .line 171
    const-string/jumbo v12, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    #@93
    .line 172
    const/4 v13, 0x1

    #@94
    new-array v13, v13, [Ljava/lang/Object;

    #@96
    const/4 v14, 0x0

    #@97
    aput-object v0, v13, v14

    #@99
    .line 170
    invoke-virtual {v11, v12, v13}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9c
    move-result-object v11

    #@9d
    .line 169
    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@a0
    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
