.class public final Lorg/apache/xml/serializer/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field private static greylist m_formats:Ljava/util/Hashtable;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/SerializerFactory;->m_formats:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;
    .registers 7

    .line 96
    const-string v0, "method"

    const-string v1, "{http://xml.apache.org/xalan}content-handler"

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_83

    .line 98
    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    if-eqz v2, :cond_73

    .line 106
    :try_start_c
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 113
    invoke-static {v2}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    goto :goto_2d

    .line 117
    :cond_1d
    sget-object p0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2d
    :goto_2d
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 129
    invoke-static {v0, v1, v2}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 135
    instance-of v5, v4, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v5, :cond_48

    .line 138
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/Serializer;

    .line 139
    invoke-interface {v0, p0}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    return-object v0

    .line 147
    :cond_48
    instance-of v3, v4, Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_61

    .line 156
    sget-object v0, Lorg/apache/xml/serializer/SerializerConstants;->DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

    .line 157
    invoke-static {v0, v1, v2}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/SerializationHandler;

    .line 160
    check-cast v4, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v4}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 161
    invoke-interface {v0, p0}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    return-object v0

    .line 169
    :cond_61
    new-instance p0, Ljava/lang/Exception;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_73
    sget-object p0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    .line 179
    new-instance v0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
