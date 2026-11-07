.class public final Lorg/apache/xml/serializer/OutputPropertiesFactory;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"


# static fields
.field private static final greylist ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

.field private static final greylist PROP_DIR:Ljava/lang/String;

.field private static final greylist PROP_FILE_HTML:Ljava/lang/String; = "output_html.properties"

.field private static final greylist PROP_FILE_TEXT:Ljava/lang/String; = "output_text.properties"

.field private static final greylist PROP_FILE_UNKNOWN:Ljava/lang/String; = "output_unknown.properties"

.field private static final greylist PROP_FILE_XML:Ljava/lang/String; = "output_xml.properties"

.field public static final greylist S_BUILTIN_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xalan}"

.field private static final greylist S_BUILTIN_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field public static final greylist S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xslt}"

.field public static final greylist S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I = 0x1c

.field private static final greylist S_BUILTIN_OLD_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xslt"

.field public static final greylist S_KEY_CONTENT_HANDLER:Ljava/lang/String; = "{http://xml.apache.org/xalan}content-handler"

.field public static final greylist S_KEY_ENTITIES:Ljava/lang/String; = "{http://xml.apache.org/xalan}entities"

.field public static final greylist S_KEY_INDENT_AMOUNT:Ljava/lang/String; = "{http://xml.apache.org/xalan}indent-amount"

.field public static final greylist S_KEY_LINE_SEPARATOR:Ljava/lang/String; = "{http://xml.apache.org/xalan}line-separator"

.field public static final greylist S_OMIT_META_TAG:Ljava/lang/String; = "{http://xml.apache.org/xalan}omit-meta-tag"

.field public static final greylist S_USE_URL_ESCAPING:Ljava/lang/String; = "{http://xml.apache.org/xalan}use-url-escaping"

.field private static final greylist S_XALAN_PREFIX:Ljava/lang/String; = "org.apache.xslt."

.field private static final greylist S_XALAN_PREFIX_LEN:I = 0x10

.field private static final greylist S_XSLT_PREFIX:Ljava/lang/String; = "xslt.output."

.field private static final greylist S_XSLT_PREFIX_LEN:I = 0xc

.field private static greylist m_html_properties:Ljava/util/Properties;

.field private static greylist m_synch_object:Ljava/lang/Integer;

.field private static greylist m_text_properties:Ljava/util/Properties;

.field private static greylist m_unknown_properties:Ljava/util/Properties;

.field private static greylist m_xml_properties:Ljava/util/Properties;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 186
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->PROP_DIR:Ljava/lang/String;

    const/4 v0, 0x0

    .line 204
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 207
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    .line 210
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    .line 213
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    .line 216
    invoke-static {}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->findAccessControllerClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist findAccessControllerClass()Ljava/lang/Class;
    .registers 1

    .line 228
    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_10

    .line 497
    const-string p1, "xslt.output."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 499
    sget p1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 501
    :cond_10
    const-string p1, "org.apache.xslt."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{http://xml.apache.org/xalan}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    .line 505
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 507
    :cond_2f
    const-string p1, "\\u003a"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_56

    add-int/lit8 v0, p1, 0x6

    .line 509
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_56
    return-object p0
.end method

.method public static final greylist getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 7

    const/4 v0, 0x0

    .line 260
    :try_start_1
    sget-object v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_42

    .line 262
    :try_start_4
    sget-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    if-nez v2, :cond_1a

    .line 264
    const-string v2, "output_xml.properties"
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_14

    .line 265
    :try_start_a
    invoke-static {v2, v0}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    goto :goto_1b

    :catchall_11
    move-exception v0

    goto/16 :goto_a0

    :catchall_14
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_a0

    :cond_1a
    move-object v2, v0

    .line 267
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_11

    .line 269
    :try_start_1c
    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 271
    sget-object p0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    goto/16 :goto_9a

    :catch_28
    move-exception v0

    goto/16 :goto_a2

    .line 273
    :cond_2b
    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 275
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    if-nez v0, :cond_46

    .line 277
    const-string v0, "output_html.properties"
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_39} :catch_28

    .line 278
    :try_start_39
    sget-object v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 279
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    goto :goto_47

    :catch_42
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a2

    :cond_46
    move-object v0, v2

    .line 282
    :goto_47
    sget-object p0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_49} :catch_42

    goto :goto_9a

    .line 284
    :cond_4a
    :try_start_4a
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 286
    sget-object v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    if-nez v1, :cond_79

    .line 288
    const-string v1, "output_text.properties"
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_58} :catch_28

    .line 289
    :try_start_58
    sget-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 290
    invoke-static {v1, v2}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    .line 291
    const-string v3, "encoding"

    .line 292
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_77

    .line 294
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    sget-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v3, "encoding"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_73} :catch_74

    goto :goto_77

    :catch_74
    move-exception v0

    move-object v2, v1

    goto :goto_a2

    :cond_77
    :goto_77
    move-object v0, v1

    goto :goto_7a

    :cond_79
    move-object v0, v2

    .line 301
    :goto_7a
    :try_start_7a
    sget-object p0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7c} :catch_42

    goto :goto_9a

    .line 303
    :cond_7d
    :try_start_7d
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 305
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    if-nez v0, :cond_94

    .line 307
    const-string v0, "output_unknown.properties"
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8b} :catch_28

    .line 308
    :try_start_8b
    sget-object v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 309
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    goto :goto_95

    :cond_94
    move-object v0, v2

    .line 312
    :goto_95
    sget-object p0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_97} :catch_42

    goto :goto_9a

    .line 317
    :cond_98
    :try_start_98
    sget-object p0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9a} :catch_28

    .line 330
    :goto_9a
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v0

    .line 267
    :goto_a0
    :try_start_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_11

    :try_start_a1
    throw v0
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a2} :catch_28

    .line 322
    :goto_a2
    new-instance v1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v4, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 323
    invoke-virtual {v3, v4, p0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static greylist loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const/4 v2, 0x0

    .line 362
    :try_start_8
    sget-object v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    if-eqz v3, :cond_24

    .line 364
    new-instance v3, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;

    invoke-direct {v3, p0}, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    goto :goto_2a

    :catchall_18
    move-exception p0

    move-object v3, v2

    goto/16 :goto_bb

    :catch_1c
    move-exception v1

    move-object v4, v2

    goto/16 :goto_92

    :catch_20
    move-exception v1

    move-object v4, v2

    goto/16 :goto_a8

    .line 376
    :cond_24
    const-class v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    .line 377
    invoke-virtual {v3, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2a} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_2a} :catch_1c
    .catchall {:try_start_8 .. :try_end_2a} :catchall_18

    .line 380
    :goto_2a
    :try_start_2a
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_8f
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_2f} :catch_8c
    .catchall {:try_start_2a .. :try_end_2f} :catchall_8a

    .line 381
    :try_start_2f
    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_87
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_32} :catch_84
    .catchall {:try_start_2f .. :try_end_32} :catchall_81

    .line 420
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    if-eqz v3, :cond_3a

    .line 424
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 442
    :cond_3a
    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object p0

    .line 443
    :cond_44
    :goto_44
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 445
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 452
    :try_start_50
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    move-object v0, v2

    :goto_56
    if-nez v0, :cond_5e

    .line 459
    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_5e
    const/4 v3, 0x1

    .line 461
    invoke-static {p1, v3}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 465
    :try_start_63
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_67} :catch_68

    goto :goto_69

    :catch_68
    move-object v4, v2

    :goto_69
    const/4 v5, 0x0

    if-nez v4, :cond_71

    .line 472
    invoke-static {v0, v5}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_75

    .line 474
    :cond_71
    invoke-static {v4, v5}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :goto_75
    if-ne p1, v3, :cond_79

    if-eq v0, v4, :cond_44

    .line 478
    :cond_79
    invoke-virtual {v1, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_80
    return-object v1

    :catchall_81
    move-exception p0

    :goto_82
    move-object v2, v4

    goto :goto_bb

    :catch_84
    move-exception v1

    :goto_85
    move-object v2, v3

    goto :goto_92

    :catch_87
    move-exception v1

    :goto_88
    move-object v2, v3

    goto :goto_a8

    :catchall_8a
    move-exception p0

    goto :goto_bb

    :catch_8c
    move-exception v1

    move-object v4, v2

    goto :goto_85

    :catch_8f
    move-exception v1

    move-object v4, v2

    goto :goto_88

    :goto_92
    if-nez p1, :cond_98

    .line 404
    :try_start_94
    throw v1

    :catchall_95
    move-exception p0

    move-object v3, v2

    goto :goto_82

    .line 408
    :cond_98
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 409
    invoke-virtual {v3, v0, p0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_a8
    if-nez p1, :cond_ab

    .line 387
    throw v1

    .line 391
    :cond_ab
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 392
    invoke-virtual {v3, v0, p0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_bb
    .catchall {:try_start_94 .. :try_end_bb} :catchall_95

    :goto_bb
    if-eqz v2, :cond_c0

    .line 420
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_c0
    if-eqz v3, :cond_c5

    .line 424
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 426
    :cond_c5
    throw p0
.end method
