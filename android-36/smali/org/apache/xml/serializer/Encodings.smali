.class public final Lorg/apache/xml/serializer/Encodings;
.super Ljava/lang/Object;
.source "Encodings.java"


# static fields
.field static final greylist DEFAULT_MIME_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final greylist ENCODINGS_FILE:Ljava/lang/String;

.field private static final greylist _encodingTableKeyJava:Ljava/util/Hashtable;

.field private static final greylist _encodingTableKeyMime:Ljava/util/Hashtable;

.field private static final greylist _encodings:[Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Encodings.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    .line 495
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    .line 496
    invoke-static {}, Lorg/apache/xml/serializer/Encodings;->loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 272
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    .line 273
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-eqz v0, :cond_10

    .line 275
    iget-object p0, v0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    :cond_10
    return-object p0
.end method

.method public static greylist convertMime2JavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 294
    :goto_1
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 296
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 298
    aget-object p0, v1, v0

    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    return-object p0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-object p0
.end method

.method static greylist getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;
    .registers 3

    .line 118
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-nez v0, :cond_17

    .line 121
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    :cond_17
    if-nez v0, :cond_21

    .line 124
    new-instance p0, Lorg/apache/xml/serializer/EncodingInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    return-object p0

    :cond_21
    return-object v0
.end method

.method public static greylist getHighChar(Ljava/lang/String;)C
    .registers 2

    .line 483
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 484
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-nez v0, :cond_17

    .line 486
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    :cond_17
    if-eqz v0, :cond_1e

    .line 488
    invoke-virtual {v0}, Lorg/apache/xml/serializer/EncodingInfo;->getHighChar()C

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method static greylist getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 212
    const-string v0, "UTF8"

    const-string v1, "UTF-8"

    if-nez p0, :cond_37

    .line 220
    :try_start_6
    const-string p0, "file.encoding"

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 233
    const-string v2, "Cp1252"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "ISO8859_1"

    .line 234
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "8859_1"

    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_32

    .line 238
    :cond_2d
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_31} :catch_36

    goto :goto_33

    :cond_32
    :goto_32
    move-object p0, v1

    :goto_33
    if-eqz p0, :cond_36

    return-object p0

    :catch_36
    :cond_36
    return-object v1

    .line 255
    :cond_37
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    :goto_1
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 71
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 75
    :try_start_10
    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_19} :catch_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_19} :catch_1a

    return-object v2

    :catch_1a
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_23

    return-object v0

    .line 97
    :catch_23
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static greylist isHighUTF16Surrogate(C)Z
    .registers 2

    .line 0
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static greylist isLowUTF16Surrogate(C)Z
    .registers 2

    .line 0
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isRecognizedEncoding(Ljava/lang/String;)Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 142
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-nez v0, :cond_17

    .line 144
    sget-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    :cond_17
    if-eqz v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist lengthOfMimeNames(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x20

    .line 405
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_d
    return v0
.end method

.method private static greylist loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;
    .registers 13

    .line 319
    :try_start_0
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v0

    .line 320
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    if-eqz v0, :cond_1b

    .line 325
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_1b
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v0

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-virtual {v1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2a
    if-ge v5, v0, :cond_87

    .line 342
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 343
    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-static {v7}, Lorg/apache/xml/serializer/Encodings;->lengthOfMimeNames(Ljava/lang/String;)I

    move-result v8
    :try_end_3a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_3a} :catch_98
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_91

    if-nez v8, :cond_3d

    goto :goto_84

    .line 358
    :cond_3d
    :try_start_3d
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 359
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_4d} :catch_4f
    .catch Ljava/net/MalformedURLException; {:try_start_3d .. :try_end_4d} :catch_98
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4d} :catch_91

    int-to-char v9, v9

    goto :goto_50

    :catch_4f
    move v9, v4

    .line 364
    :goto_50
    :try_start_50
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 365
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, ","

    invoke-direct {v8, v7, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 368
    :goto_5c
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_84

    .line 371
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 372
    new-instance v11, Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {v11, v10, v6, v9}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    .line 373
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v12, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_82

    .line 376
    sget-object v7, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    move v7, v4

    goto :goto_5c

    :cond_84
    :goto_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 382
    :cond_87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xml/serializer/EncodingInfo;

    .line 383
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_90
    .catch Ljava/net/MalformedURLException; {:try_start_50 .. :try_end_90} :catch_98
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_90} :catch_91

    return-object v0

    :catch_91
    move-exception v0

    .line 392
    new-instance v1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_98
    move-exception v0

    .line 388
    new-instance v1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static greylist toCodePoint(C)I
    .registers 1

    .line 0
    return p0
.end method

.method static greylist toCodePoint(CC)I
    .registers 3

    .line 0
    const v0, 0xd800

    sub-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0xa

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method

.method private static greylist toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_1f

    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-gt v5, v4, :cond_1a

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_1a

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    const/4 v3, 0x1

    .line 173
    :cond_1a
    aput-char v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    if-eqz v3, :cond_25

    .line 180
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_25
    return-object p0
.end method
