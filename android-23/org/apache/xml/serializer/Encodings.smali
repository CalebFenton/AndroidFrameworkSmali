.class public final Lorg/apache/xml/serializer/Encodings;
.super Ljava/lang/Object;
.source "Encodings.java"


# static fields
.field static final DEFAULT_MIME_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ENCODINGS_FILE:Ljava/lang/String;

.field private static final _encodingTableKeyJava:Ljava/util/Hashtable;

.field private static final _encodingTableKeyMime:Ljava/util/Hashtable;

.field private static final _encodings:[Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "/Encodings.properties"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    #@18
    .line 494
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    #@1f
    .line 495
    new-instance v0, Ljava/util/Hashtable;

    #@21
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@24
    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    #@26
    .line 496
    invoke-static {}, Lorg/apache/xml/serializer/Encodings;->loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;

    #@29
    move-result-object v0

    #@2a
    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@2c
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    #@2
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@c
    .line 274
    .local v0, "enc":Lorg/apache/xml/serializer/EncodingInfo;
    if-eqz v0, :cond_0

    #@e
    .line 275
    iget-object v1, v0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    #@10
    return-object v1

    #@11
    .line 276
    :cond_0
    return-object p0
.end method

.method public static convertMime2JavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 296
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@8
    aget-object v1, v1, v0

    #@a
    iget-object v1, v1, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 298
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@14
    aget-object v1, v1, v0

    #@16
    iget-object v1, v1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 302
    :cond_1
    return-object p0
.end method

.method static getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 118
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 119
    .local v1, "normalizedEncoding":Ljava/lang/String;
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@d
    .line 120
    .local v0, "ei":Lorg/apache/xml/serializer/EncodingInfo;
    if-nez v0, :cond_0

    #@f
    .line 121
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .end local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@17
    .line 122
    .restart local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    :cond_0
    if-nez v0, :cond_1

    #@19
    .line 124
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@1b
    .end local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    const/4 v2, 0x0

    #@1c
    invoke-direct {v0, v3, v3, v2}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    #@1f
    .line 127
    .restart local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    :cond_1
    return-object v0
.end method

.method public static getHighChar(Ljava/lang/String;)C
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 483
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 484
    .local v2, "normalizedEncoding":Ljava/lang/String;
    sget-object v3, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@c
    .line 485
    .local v0, "ei":Lorg/apache/xml/serializer/EncodingInfo;
    if-nez v0, :cond_0

    #@e
    .line 486
    sget-object v3, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    #@10
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .end local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@16
    .line 487
    .restart local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    :cond_0
    if-eqz v0, :cond_1

    #@18
    .line 488
    invoke-virtual {v0}, Lorg/apache/xml/serializer/EncodingInfo;->getHighChar()C

    #@1b
    move-result v1

    #@1c
    .line 491
    :goto_0
    return v1

    #@1d
    .line 490
    :cond_1
    const/4 v1, 0x0

    #@1e
    .local v1, "highCodePoint":C
    goto :goto_0
.end method

.method static getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    if-nez p0, :cond_4

    #@2
    .line 220
    :try_start_0
    const-string/jumbo v2, "file.encoding"

    #@5
    const-string/jumbo v3, "UTF8"

    #@8
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    .line 222
    if-eqz p0, :cond_3

    #@e
    .line 233
    const-string/jumbo v2, "Cp1252"

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 234
    const-string/jumbo v2, "ISO8859_1"

    #@1a
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    .line 233
    if-nez v2, :cond_0

    #@20
    .line 235
    const-string/jumbo v2, "8859_1"

    #@23
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    .line 233
    if-nez v2, :cond_0

    #@29
    .line 236
    const-string/jumbo v2, "UTF8"

    #@2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    .line 233
    if-eqz v2, :cond_1

    #@32
    .line 237
    :cond_0
    const-string/jumbo v0, "UTF-8"

    #@35
    .line 241
    .local v0, "jencoding":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    #@37
    move-object p0, v0

    #@38
    .line 258
    .end local v0    # "jencoding":Ljava/lang/String;
    :goto_1
    return-object p0

    #@39
    .line 238
    :cond_1
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .restart local v0    # "jencoding":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 241
    :cond_2
    const-string/jumbo p0, "UTF-8"

    #@41
    goto :goto_1

    #@42
    .line 245
    .end local v0    # "jencoding":Ljava/lang/String;
    :cond_3
    const-string/jumbo p0, "UTF-8"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_1

    #@46
    .line 249
    :catch_0
    move-exception v1

    #@47
    .line 250
    .local v1, "se":Ljava/lang/SecurityException;
    const-string/jumbo p0, "UTF-8"

    #@4a
    goto :goto_1

    #@4b
    .line 255
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_4
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object p0

    #@4f
    goto :goto_1
.end method

.method static getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v5, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@3
    array-length v5, v5

    #@4
    if-ge v0, v5, :cond_1

    #@6
    .line 71
    sget-object v5, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@8
    aget-object v5, v5, v0

    #@a
    iget-object v5, v5, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    #@c
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 75
    :try_start_0
    sget-object v5, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    #@14
    aget-object v5, v5, v0

    #@16
    iget-object v2, v5, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@18
    .line 76
    .local v2, "javaName":Ljava/lang/String;
    new-instance v3, Ljava/io/OutputStreamWriter;

    #@1a
    invoke-direct {v3, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    #@1d
    .line 77
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    return-object v3

    #@1e
    .line 80
    .end local v2    # "javaName":Ljava/lang/String;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    #@1f
    .line 69
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 93
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    #@24
    invoke-direct {v5, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    return-object v5

    #@28
    .line 96
    :catch_1
    move-exception v1

    #@29
    .line 97
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    #@2b
    invoke-direct {v5, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v5

    #@2f
    .line 84
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    #@30
    .local v4, "usee":Ljava/io/UnsupportedEncodingException;
    goto :goto_1
.end method

.method static isHighUTF16Surrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 422
    const v1, 0xd800

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdbff

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method static isLowUTF16Surrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 432
    const v1, 0xdc00

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdfff

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isRecognizedEncoding(Ljava/lang/String;)Z
    .locals 3
    .param p0, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 142
    .local v1, "normalizedEncoding":Ljava/lang/String;
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@c
    .line 143
    .local v0, "ei":Lorg/apache/xml/serializer/EncodingInfo;
    if-nez v0, :cond_0

    #@e
    .line 144
    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .end local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@16
    .line 145
    .restart local v0    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    :cond_0
    if-eqz v0, :cond_1

    #@18
    .line 146
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 147
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method private static lengthOfMimeNames(Ljava/lang/String;)I
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 405
    const/16 v1, 0x20

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 408
    .local v0, "len":I
    if-gez v0, :cond_0

    #@8
    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    .line 411
    :cond_0
    return v0
.end method

.method private static loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;
    .locals 26

    #@0
    .prologue
    .line 319
    :try_start_0
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    #@3
    move-result-object v20

    #@4
    .line 320
    .local v20, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v24

    #@8
    .line 321
    sget-object v25, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    #@a
    .line 320
    move-object/from16 v0, v20

    #@c
    move-object/from16 v1, v24

    #@e
    move-object/from16 v2, v25

    #@10
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    #@13
    move-result-object v11

    #@14
    .line 323
    .local v11, "is":Ljava/io/InputStream;
    new-instance v18, Ljava/util/Properties;

    #@16
    invoke-direct/range {v18 .. v18}, Ljava/util/Properties;-><init>()V

    #@19
    .line 324
    .local v18, "props":Ljava/util/Properties;
    if-eqz v11, :cond_0

    #@1b
    .line 325
    move-object/from16 v0, v18

    #@1d
    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@20
    .line 326
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    #@23
    .line 336
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->size()I

    #@26
    move-result v22

    #@27
    .line 338
    .local v22, "totalEntries":I
    new-instance v5, Ljava/util/ArrayList;

    #@29
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 339
    .local v5, "encodingInfo_list":Ljava/util/List;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@2f
    move-result-object v13

    #@30
    .line 340
    .local v13, "keys":Ljava/util/Enumeration;
    const/4 v9, 0x0

    #@31
    .local v9, "i":I
    :goto_0
    move/from16 v0, v22

    #@33
    if-ge v9, v0, :cond_4

    #@35
    .line 342
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@38
    move-result-object v12

    #@39
    check-cast v12, Ljava/lang/String;

    #@3b
    .line 343
    .local v12, "javaName":Ljava/lang/String;
    move-object/from16 v0, v18

    #@3d
    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v23

    #@41
    .line 344
    .local v23, "val":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lorg/apache/xml/serializer/Encodings;->lengthOfMimeNames(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@44
    move-result v14

    #@45
    .line 348
    .local v14, "len":I
    if-nez v14, :cond_2

    #@47
    .line 351
    move-object v15, v12

    #@48
    .line 352
    .local v15, "mimeName":Ljava/lang/String;
    const/4 v7, 0x0

    #@49
    .line 340
    .end local v15    # "mimeName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 358
    :cond_2
    :try_start_1
    move-object/from16 v0, v23

    #@4e
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@51
    move-result-object v24

    #@52
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    .line 359
    .local v8, "highVal":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@59
    move-result-object v24

    #@5a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@5d
    move-result v24

    #@5e
    move/from16 v0, v24

    #@60
    int-to-char v7, v0

    #@61
    .line 364
    .end local v8    # "highVal":Ljava/lang/String;
    :goto_1
    const/16 v24, 0x0

    #@63
    :try_start_2
    move-object/from16 v0, v23

    #@65
    move/from16 v1, v24

    #@67
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v16

    #@6b
    .line 366
    .local v16, "mimeNames":Ljava/lang/String;
    new-instance v21, Ljava/util/StringTokenizer;

    #@6d
    const-string/jumbo v24, ","

    #@70
    move-object/from16 v0, v21

    #@72
    move-object/from16 v1, v16

    #@74
    move-object/from16 v2, v24

    #@76
    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    .line 367
    .local v21, "st":Ljava/util/StringTokenizer;
    const/4 v6, 0x1

    #@7a
    .line 368
    .local v6, "first":Z
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@7d
    move-result v24

    #@7e
    .line 367
    if-eqz v24, :cond_1

    #@80
    .line 371
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@83
    move-result-object v15

    #@84
    .line 372
    .restart local v15    # "mimeName":Ljava/lang/String;
    new-instance v4, Lorg/apache/xml/serializer/EncodingInfo;

    #@86
    invoke-direct {v4, v15, v12, v7}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    #@89
    .line 373
    .local v4, "ei":Lorg/apache/xml/serializer/EncodingInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8c
    .line 374
    sget-object v24, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    #@8e
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@91
    move-result-object v25

    #@92
    move-object/from16 v0, v24

    #@94
    move-object/from16 v1, v25

    #@96
    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 375
    if-eqz v6, :cond_3

    #@9b
    .line 376
    sget-object v24, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    #@9d
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@a0
    move-result-object v25

    #@a1
    move-object/from16 v0, v24

    #@a3
    move-object/from16 v1, v25

    #@a5
    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 369
    :cond_3
    const/4 v6, 0x0

    #@a9
    goto :goto_2

    #@aa
    .line 361
    .end local v4    # "ei":Lorg/apache/xml/serializer/EncodingInfo;
    .end local v6    # "first":Z
    .end local v15    # "mimeName":Ljava/lang/String;
    .end local v16    # "mimeNames":Ljava/lang/String;
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v3

    #@ab
    .line 362
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    #@ac
    .local v7, "highChar":C
    goto :goto_1

    #@ad
    .line 382
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "highChar":C
    .end local v12    # "javaName":Ljava/lang/String;
    .end local v14    # "len":I
    .end local v23    # "val":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@b0
    move-result v24

    #@b1
    move/from16 v0, v24

    #@b3
    new-array v0, v0, [Lorg/apache/xml/serializer/EncodingInfo;

    #@b5
    move-object/from16 v19, v0

    #@b7
    .line 383
    .local v19, "ret_ei":[Lorg/apache/xml/serializer/EncodingInfo;
    move-object/from16 v0, v19

    #@b9
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@bc
    .line 384
    return-object v19

    #@bd
    .line 391
    .end local v5    # "encodingInfo_list":Ljava/util/List;
    .end local v9    # "i":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "keys":Ljava/util/Enumeration;
    .end local v18    # "props":Ljava/util/Properties;
    .end local v19    # "ret_ei":[Lorg/apache/xml/serializer/EncodingInfo;
    .end local v22    # "totalEntries":I
    :catch_1
    move-exception v10

    #@be
    .line 392
    .local v10, "ioe":Ljava/io/IOException;
    new-instance v24, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@c0
    move-object/from16 v0, v24

    #@c2
    invoke-direct {v0, v10}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@c5
    throw v24

    #@c6
    .line 387
    .end local v10    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v17

    #@c7
    .line 388
    .local v17, "mue":Ljava/net/MalformedURLException;
    new-instance v24, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@c9
    move-object/from16 v0, v24

    #@cb
    move-object/from16 v1, v17

    #@cd
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@d0
    throw v24
.end method

.method static toCodePoint(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 459
    move v0, p0

    #@1
    .line 460
    .local v0, "codePoint":I
    return v0
.end method

.method static toCodePoint(CC)I
    .locals 3
    .param p0, "highSurrogate"    # C
    .param p1, "lowSurrogate"    # C

    #@0
    .prologue
    .line 444
    const v1, 0xd800

    #@3
    sub-int v1, p0, v1

    #@5
    shl-int/lit8 v1, v1, 0xa

    #@7
    .line 445
    const v2, 0xdc00

    #@a
    sub-int v2, p1, v2

    #@c
    .line 444
    add-int/2addr v1, v2

    #@d
    .line 446
    const/high16 v2, 0x10000

    #@f
    .line 444
    add-int v0, v1, v2

    #@11
    .line 447
    .local v0, "codePoint":I
    return v0
.end method

.method private static toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    const/4 v2, 0x0

    #@1
    .line 163
    .local v2, "different":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    .line 164
    .local v4, "mx":I
    new-array v1, v4, [C

    #@7
    .line 165
    .local v1, "chars":[C
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@a
    .line 166
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 168
    .local v0, "ch":C
    const/16 v6, 0x61

    #@10
    if-gt v6, v0, :cond_0

    #@12
    const/16 v6, 0x7a

    #@14
    if-gt v0, v6, :cond_0

    #@16
    .line 170
    add-int/lit8 v6, v0, -0x20

    #@18
    int-to-char v0, v6

    #@19
    .line 171
    const/4 v2, 0x1

    #@1a
    .line 173
    :cond_0
    aput-char v0, v1, v3

    #@1c
    .line 165
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 179
    .end local v0    # "ch":C
    :cond_1
    if-eqz v2, :cond_2

    #@21
    .line 180
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 184
    .local v5, "upper":Ljava/lang/String;
    :goto_1
    return-object v5

    #@26
    .line 182
    .end local v5    # "upper":Ljava/lang/String;
    :cond_2
    move-object v5, p0

    #@27
    .restart local v5    # "upper":Ljava/lang/String;
    goto :goto_1
.end method
