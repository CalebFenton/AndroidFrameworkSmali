.class public final Lorg/apache/xml/serializer/OutputPropertiesFactory;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"


# static fields
.field private static final ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

.field private static final PROP_DIR:Ljava/lang/String;

.field private static final PROP_FILE_HTML:Ljava/lang/String; = "output_html.properties"

.field private static final PROP_FILE_TEXT:Ljava/lang/String; = "output_text.properties"

.field private static final PROP_FILE_UNKNOWN:Ljava/lang/String; = "output_unknown.properties"

.field private static final PROP_FILE_XML:Ljava/lang/String; = "output_xml.properties"

.field public static final S_BUILTIN_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xalan}"

.field private static final S_BUILTIN_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xslt}"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

.field private static final S_BUILTIN_OLD_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xslt"

.field public static final S_KEY_CONTENT_HANDLER:Ljava/lang/String; = "{http://xml.apache.org/xalan}content-handler"

.field public static final S_KEY_ENTITIES:Ljava/lang/String; = "{http://xml.apache.org/xalan}entities"

.field public static final S_KEY_INDENT_AMOUNT:Ljava/lang/String; = "{http://xml.apache.org/xalan}indent-amount"

.field public static final S_KEY_LINE_SEPARATOR:Ljava/lang/String; = "{http://xml.apache.org/xalan}line-separator"

.field public static final S_OMIT_META_TAG:Ljava/lang/String; = "{http://xml.apache.org/xalan}omit-meta-tag"

.field public static final S_USE_URL_ESCAPING:Ljava/lang/String; = "{http://xml.apache.org/xalan}use-url-escaping"

.field private static final S_XALAN_PREFIX:Ljava/lang/String; = "org.apache.xslt."

.field private static final S_XALAN_PREFIX_LEN:I

.field private static final S_XSLT_PREFIX:Ljava/lang/String; = "xslt.output."

.field private static final S_XSLT_PREFIX_LEN:I

.field private static m_html_properties:Ljava/util/Properties;

.field private static m_synch_object:Ljava/lang/Integer;

.field private static m_text_properties:Ljava/util/Properties;

.field private static m_unknown_properties:Ljava/util/Properties;

.field private static m_xml_properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 174
    const-string/jumbo v0, "{http://xml.apache.org/xslt}"

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    .line 173
    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    #@a
    .line 181
    const-string/jumbo v0, "xslt.output."

    #@d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    #@13
    .line 183
    const-string/jumbo v0, "org.apache.xslt."

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    #@1c
    .line 186
    new-instance v0, Ljava/lang/Integer;

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@22
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    #@24
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const/16 v1, 0x2f

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->PROP_DIR:Ljava/lang/String;

    #@3b
    .line 204
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    #@3d
    .line 207
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    #@3f
    .line 210
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    #@41
    .line 213
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    #@43
    .line 216
    invoke-static {}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->findAccessControllerClass()Ljava/lang/Class;

    #@46
    move-result-object v0

    #@47
    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    #@49
    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static findAccessControllerClass()Ljava/lang/Class;
    .locals 2

    #@0
    .prologue
    .line 228
    :try_start_0
    const-string/jumbo v1, "java.security.AccessController"

    #@3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 231
    :catch_0
    move-exception v0

    #@9
    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@a
    return-object v1
.end method

.method private static fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "doClipping"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 497
    if-eqz p1, :cond_0

    #@3
    const-string/jumbo v2, "xslt.output."

    #@6
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 499
    sget v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    #@e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    .line 501
    :cond_0
    const-string/jumbo v2, "org.apache.xslt."

    #@15
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "{http://xml.apache.org/xalan}"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 505
    sget v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    #@29
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object p0

    #@35
    .line 507
    :cond_1
    const-string/jumbo v2, "\\u003a"

    #@38
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3b
    move-result v0

    #@3c
    .local v0, "index":I
    if-lez v0, :cond_2

    #@3e
    .line 509
    add-int/lit8 v2, v0, 0x6

    #@40
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 510
    .local v1, "temp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    const-string/jumbo v3, ":"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p0

    #@60
    .line 513
    .end local v1    # "temp":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public static final getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 9
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 254
    const/4 v1, 0x0

    #@1
    .line 255
    .local v1, "fileName":Ljava/lang/String;
    const/4 v0, 0x0

    #@2
    .line 260
    .local v0, "defaultProperties":Ljava/util/Properties;
    :try_start_0
    sget-object v5, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    #@4
    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 262
    :try_start_1
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    #@7
    if-nez v4, :cond_0

    #@9
    .line 264
    const-string/jumbo v1, "output_xml.properties"

    #@c
    .line 265
    .local v1, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    #@d
    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    #@10
    move-result-object v4

    #@11
    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    :try_start_2
    monitor-exit v5

    #@14
    .line 269
    const-string/jumbo v4, "xml"

    #@17
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 271
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@1f
    .line 330
    .local v0, "defaultProperties":Ljava/util/Properties;
    :goto_0
    new-instance v4, Ljava/util/Properties;

    #@21
    invoke-direct {v4, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@24
    return-object v4

    #@25
    .line 260
    .local v0, "defaultProperties":Ljava/util/Properties;
    :catchall_0
    move-exception v4

    #@26
    :try_start_3
    monitor-exit v5

    #@27
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@28
    .line 321
    :catch_0
    move-exception v2

    #@29
    .line 322
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v4, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@2b
    .line 323
    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@2d
    .line 324
    const-string/jumbo v6, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    #@30
    .line 325
    const/4 v7, 0x2

    #@31
    new-array v7, v7, [Ljava/lang/Object;

    #@33
    const/4 v8, 0x0

    #@34
    aput-object v1, v7, v8

    #@36
    const/4 v8, 0x1

    #@37
    aput-object p0, v7, v8

    #@39
    .line 323
    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    .line 322
    invoke-direct {v4, v5, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@40
    throw v4

    #@41
    .line 273
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    :try_start_4
    const-string/jumbo v4, "html"

    #@44
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 275
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    #@4c
    if-nez v4, :cond_2

    #@4e
    .line 277
    const-string/jumbo v1, "output_html.properties"

    #@51
    .line 279
    .restart local v1    # "fileName":Ljava/lang/String;
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    #@53
    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    #@56
    move-result-object v4

    #@57
    .line 278
    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    #@59
    .line 282
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_2
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    #@5b
    .local v0, "defaultProperties":Ljava/util/Properties;
    goto :goto_0

    #@5c
    .line 284
    .local v0, "defaultProperties":Ljava/util/Properties;
    :cond_3
    const-string/jumbo v4, "text"

    #@5f
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_5

    #@65
    .line 286
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    #@67
    if-nez v4, :cond_4

    #@69
    .line 288
    const-string/jumbo v1, "output_text.properties"

    #@6c
    .line 290
    .restart local v1    # "fileName":Ljava/lang/String;
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    #@6e
    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    #@71
    move-result-object v4

    #@72
    .line 289
    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    #@74
    .line 292
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    #@76
    const-string/jumbo v5, "encoding"

    #@79
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    .line 291
    if-nez v4, :cond_4

    #@7f
    .line 294
    const/4 v4, 0x0

    #@80
    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    .line 295
    .local v3, "mimeEncoding":Ljava/lang/String;
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    #@86
    .line 296
    const-string/jumbo v5, "encoding"

    #@89
    .line 295
    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 301
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "mimeEncoding":Ljava/lang/String;
    :cond_4
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    #@8e
    .local v0, "defaultProperties":Ljava/util/Properties;
    goto :goto_0

    #@8f
    .line 303
    .local v0, "defaultProperties":Ljava/util/Properties;
    :cond_5
    const-string/jumbo v4, ""

    #@92
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_7

    #@98
    .line 305
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    #@9a
    if-nez v4, :cond_6

    #@9c
    .line 307
    const-string/jumbo v1, "output_unknown.properties"

    #@9f
    .line 309
    .restart local v1    # "fileName":Ljava/lang/String;
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    #@a1
    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    #@a4
    move-result-object v4

    #@a5
    .line 308
    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    #@a7
    .line 312
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_6
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    #@a9
    .local v0, "defaultProperties":Ljava/util/Properties;
    goto/16 :goto_0

    #@ab
    .line 317
    .local v0, "defaultProperties":Ljava/util/Properties;
    :cond_7
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@ad
    .local v0, "defaultProperties":Ljava/util/Properties;
    goto/16 :goto_0
.end method

.method private static loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 17
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "defaults"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    new-instance v9, Ljava/util/Properties;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v9, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@7
    .line 357
    .local v9, "props":Ljava/util/Properties;
    const/4 v4, 0x0

    #@8
    .line 358
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    #@9
    .line 362
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    sget-object v12, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    #@b
    if-eqz v12, :cond_5

    #@d
    .line 365
    new-instance v12, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;

    #@f
    move-object/from16 v0, p0

    #@11
    invoke-direct {v12, v0}, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;-><init>(Ljava/lang/String;)V

    #@14
    .line 364
    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@17
    move-result-object v12

    #@18
    move-object v0, v12

    #@19
    check-cast v0, Ljava/io/InputStream;

    #@1b
    move-object v4, v0

    #@1c
    .line 380
    .local v4, "is":Ljava/io/InputStream;
    :goto_0
    new-instance v2, Ljava/io/BufferedInputStream;

    #@1e
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 381
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v9, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 418
    if-eqz v2, :cond_0

    #@26
    .line 420
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@29
    .line 422
    :cond_0
    if-eqz v4, :cond_1

    #@2b
    .line 424
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    #@2e
    .line 442
    :cond_1
    invoke-virtual {v9}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    #@31
    move-result-object v12

    #@32
    check-cast v12, Ljava/util/Properties;

    #@34
    invoke-virtual {v12}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@37
    move-result-object v6

    #@38
    .line 443
    .local v6, "keys":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_b

    #@3e
    .line 445
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Ljava/lang/String;

    #@44
    .line 449
    .local v5, "key":Ljava/lang/String;
    const/4 v11, 0x0

    #@45
    .line 452
    .local v11, "value":Ljava/lang/String;
    :try_start_2
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    #@48
    move-result-object v11

    #@49
    .line 458
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    if-nez v11, :cond_3

    #@4b
    .line 459
    invoke-virtual {v9, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v11

    #@4f
    check-cast v11, Ljava/lang/String;

    #@51
    .line 461
    :cond_3
    const/4 v12, 0x1

    #@52
    invoke-static {v5, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    .line 462
    .local v7, "newKey":Ljava/lang/String;
    const/4 v8, 0x0

    #@57
    .line 465
    .local v8, "newValue":Ljava/lang/String;
    :try_start_3
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    #@5a
    move-result-object v8

    #@5b
    .line 471
    .end local v8    # "newValue":Ljava/lang/String;
    :goto_3
    if-nez v8, :cond_a

    #@5d
    .line 472
    const/4 v12, 0x0

    #@5e
    invoke-static {v11, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    .line 476
    .local v8, "newValue":Ljava/lang/String;
    :goto_4
    if-ne v5, v7, :cond_4

    #@64
    if-eq v11, v8, :cond_2

    #@66
    .line 478
    :cond_4
    invoke-virtual {v9, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 479
    invoke-virtual {v9, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    goto :goto_1

    #@6d
    .line 376
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Enumeration;
    .end local v7    # "newKey":Ljava/lang/String;
    .end local v8    # "newValue":Ljava/lang/String;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "is":Ljava/io/InputStream;
    :cond_5
    :try_start_4
    const-class v12, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    #@6f
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v12, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@74
    move-result-object v4

    #@75
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_0

    #@76
    .line 400
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v10

    #@77
    .line 402
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v10, "se":Ljava/lang/SecurityException;
    :goto_5
    if-nez p1, :cond_8

    #@79
    .line 404
    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7a
    .line 417
    .end local v10    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v12

    #@7b
    .line 418
    :goto_6
    if-eqz v1, :cond_6

    #@7d
    .line 420
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    #@80
    .line 422
    :cond_6
    if-eqz v4, :cond_7

    #@82
    .line 424
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    #@85
    .line 417
    :cond_7
    throw v12

    #@86
    .line 408
    .restart local v10    # "se":Ljava/lang/SecurityException;
    :cond_8
    :try_start_6
    new-instance v12, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@88
    .line 409
    sget-object v13, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@8a
    .line 410
    const-string/jumbo v14, "ER_COULD_NOT_LOAD_RESOURCE"

    #@8d
    .line 411
    const/4 v15, 0x1

    #@8e
    new-array v15, v15, [Ljava/lang/Object;

    #@90
    const/16 v16, 0x0

    #@92
    aput-object p0, v15, v16

    #@94
    .line 409
    invoke-virtual {v13, v14, v15}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v13

    #@98
    .line 408
    invoke-direct {v12, v13, v10}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@9b
    throw v12

    #@9c
    .line 384
    .end local v10    # "se":Ljava/lang/SecurityException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    #@9d
    .line 385
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "ioe":Ljava/io/IOException;
    :goto_7
    if-nez p1, :cond_9

    #@9f
    .line 387
    throw v3

    #@a0
    .line 391
    :cond_9
    new-instance v12, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@a2
    .line 392
    sget-object v13, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@a4
    .line 393
    const-string/jumbo v14, "ER_COULD_NOT_LOAD_RESOURCE"

    #@a7
    .line 394
    const/4 v15, 0x1

    #@a8
    new-array v15, v15, [Ljava/lang/Object;

    #@aa
    const/16 v16, 0x0

    #@ac
    aput-object p0, v15, v16

    #@ae
    .line 392
    invoke-virtual {v13, v14, v15}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b1
    move-result-object v13

    #@b2
    .line 391
    invoke-direct {v12, v13, v3}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@b5
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b6
    .line 455
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "keys":Ljava/util/Enumeration;
    .restart local v11    # "value":Ljava/lang/String;
    :catch_2
    move-exception v10

    #@b7
    .restart local v10    # "se":Ljava/lang/SecurityException;
    goto :goto_2

    #@b8
    .line 468
    .end local v10    # "se":Ljava/lang/SecurityException;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v7    # "newKey":Ljava/lang/String;
    .local v8, "newValue":Ljava/lang/String;
    :catch_3
    move-exception v10

    #@b9
    .restart local v10    # "se":Ljava/lang/SecurityException;
    goto :goto_3

    #@ba
    .line 474
    .end local v8    # "newValue":Ljava/lang/String;
    .end local v10    # "se":Ljava/lang/SecurityException;
    :cond_a
    const/4 v12, 0x0

    #@bb
    invoke-static {v8, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    #@be
    move-result-object v8

    #@bf
    .local v8, "newValue":Ljava/lang/String;
    goto :goto_4

    #@c0
    .line 484
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "newKey":Ljava/lang/String;
    .end local v8    # "newValue":Ljava/lang/String;
    :cond_b
    return-object v9

    #@c1
    .line 417
    .end local v6    # "keys":Ljava/util/Enumeration;
    :catchall_1
    move-exception v12

    #@c2
    move-object v1, v2

    #@c3
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    goto :goto_6

    #@c4
    .line 384
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v3

    #@c5
    .restart local v3    # "ioe":Ljava/io/IOException;
    move-object v1, v2

    #@c6
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    #@c7
    .line 400
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v10

    #@c8
    .restart local v10    # "se":Ljava/lang/SecurityException;
    move-object v1, v2

    #@c9
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5
.end method
