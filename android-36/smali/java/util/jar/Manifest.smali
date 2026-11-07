.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$FastInputStream;
    }
.end annotation


# instance fields
.field private final greylist-max-o attr:Ljava/util/jar/Attributes;

.field private final greylist-max-o entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist jv:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest;->jv:Ljava/util/jar/JarVerifier;

    .line 68
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/JarVerifier;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "jarFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/JarVerifier;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/jar/JarVerifier;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "jv"    # Ljava/util/jar/JarVerifier;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "jarFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 101
    invoke-direct {p0, p2, p3}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Ljava/util/jar/Manifest;->jv:Ljava/util/jar/JarVerifier;

    .line 103
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/jar/Manifest;)V
    .registers 4
    .param p1, "man"    # Ljava/util/jar/Manifest;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 111
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 112
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    iget-object v0, p1, Ljava/util/jar/Manifest;->jv:Ljava/util/jar/JarVerifier;

    iput-object v0, p0, Ljava/util/jar/Manifest;->jv:Ljava/util/jar/JarVerifier;

    .line 114
    return-void
.end method

.method static blacklist getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "lineNumber"    # I

    .line 266
    if-eqz p0, :cond_25

    sget-boolean v0, Lsun/security/util/SecurityProperties;->INCLUDE_JAR_NAME_IN_EXCEPTIONS:Z

    if-nez v0, :cond_7

    goto :goto_25

    .line 270
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manifest of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_25
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o make72Safe(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p0, "line"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
        since = "13"
    .end annotation

    .line 224
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 225
    .local v0, "length":I
    const/16 v1, 0x48

    .line 226
    .local v1, "index":I
    :goto_6
    if-ge v1, v0, :cond_12

    .line 227
    const-string v2, "\r\n "

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v1, v1, 0x4a

    .line 229
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 231
    :cond_12
    return-void
.end method

.method private greylist-max-o parseName([BI)Ljava/lang/String;
    .registers 7
    .param p1, "lbuf"    # [B
    .param p2, "len"    # I

    .line 362
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_45

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_45

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    .line 363
    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_45

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_45

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_45

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 365
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, -0x6

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x6

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 367
    :cond_45
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist println(Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 262
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 263
    return-void
.end method

.method static blacklist println72(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 240
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 241
    .local v0, "lineBytes":[B
    array-length v1, v0

    .line 244
    .local v1, "length":I
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 245
    const/4 v2, 0x1

    .line 246
    .local v2, "pos":I
    :goto_14
    sub-int v3, v1, v2

    const/16 v4, 0x47

    if-le v3, v4, :cond_28

    .line 247
    invoke-virtual {p0, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 248
    add-int/lit8 v2, v2, 0x47

    .line 249
    invoke-static {p0}, Ljava/util/jar/Manifest;->println(Ljava/io/OutputStream;)V

    .line 250
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_14

    .line 252
    :cond_28
    sub-int v3, v1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    .end local v0    # "lineBytes":[B
    .end local v1    # "length":I
    .end local v2    # "pos":I
    :cond_2d
    invoke-static {p0}, Ljava/util/jar/Manifest;->println(Ljava/io/OutputStream;)V

    .line 255
    return-void
.end method

.method private blacklist read(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 21
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "jarFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/jar/Manifest$FastInputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;)V

    .line 289
    .local v2, "fis":Ljava/util/jar/Manifest$FastInputStream;
    const/16 v4, 0x200

    new-array v4, v4, [B

    .line 291
    .local v4, "lbuf":[B
    iget-object v5, v0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v4, v1, v6}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[BLjava/lang/String;I)I

    move-result v5

    .line 293
    .local v5, "lineNumber":I
    const/4 v7, 0x0

    .local v7, "ecount":I
    const/4 v8, 0x0

    .line 295
    .local v8, "acount":I
    const/4 v9, 0x2

    .line 298
    .local v9, "asize":I
    const/4 v10, 0x0

    .line 299
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x1

    .line 300
    .local v11, "skipEmptyLines":Z
    const/4 v12, 0x0

    .line 302
    .local v12, "lastline":[B
    :goto_1c
    invoke-virtual {v2, v4}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v13

    move v14, v13

    .local v14, "len":I
    const/4 v15, -0x1

    if-eq v13, v15, :cond_112

    .line 303
    add-int/lit8 v14, v14, -0x1

    aget-byte v13, v4, v14

    .line 304
    .local v13, "c":B
    add-int/lit8 v5, v5, 0x1

    .line 306
    const/16 v15, 0xa

    const-string v6, ")"

    const/16 v3, 0xd

    if-eq v13, v15, :cond_5a

    if-ne v13, v3, :cond_37

    move/from16 v16, v7

    goto :goto_5c

    .line 307
    :cond_37
    new-instance v3, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v7

    .end local v7    # "ecount":I
    .local v16, "ecount":I
    const-string v7, "manifest line too long ("

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 308
    invoke-static {v1, v5}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    .end local v16    # "ecount":I
    .restart local v7    # "ecount":I
    :cond_5a
    move/from16 v16, v7

    .line 310
    .end local v7    # "ecount":I
    .restart local v16    # "ecount":I
    :goto_5c
    if-lez v14, :cond_66

    add-int/lit8 v7, v14, -0x1

    aget-byte v7, v4, v7

    if-ne v7, v3, :cond_66

    .line 311
    add-int/lit8 v14, v14, -0x1

    .line 313
    :cond_66
    if-nez v14, :cond_70

    if-eqz v11, :cond_70

    .line 314
    move-object/from16 v3, p1

    move/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1c

    .line 316
    :cond_70
    const/4 v11, 0x0

    .line 318
    const/16 v3, 0x20

    if-nez v10, :cond_b7

    .line 319
    invoke-direct {v0, v4, v14}, Ljava/util/jar/Manifest;->parseName([BI)Ljava/lang/String;

    move-result-object v10

    .line 320
    if-eqz v10, :cond_96

    .line 324
    invoke-virtual {v2}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v6

    if-ne v6, v3, :cond_92

    .line 326
    add-int/lit8 v3, v14, -0x6

    new-array v12, v3, [B

    .line 327
    add-int/lit8 v3, v14, -0x6

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v4, v6, v12, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    move-object/from16 v3, p1

    move/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1c

    .line 324
    :cond_92
    move/from16 v17, v8

    const/4 v8, 0x0

    goto :goto_e6

    .line 321
    :cond_96
    new-instance v3, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid manifest format ("

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 322
    invoke-static {v1, v5}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_b7
    array-length v6, v12

    add-int/2addr v6, v14

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    .line 333
    .local v6, "buf":[B
    array-length v15, v12

    const/4 v3, 0x0

    invoke-static {v12, v3, v6, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    array-length v3, v12

    add-int/lit8 v15, v14, -0x1

    invoke-static {v4, v7, v6, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    invoke-virtual {v2}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v7, :cond_d8

    .line 337
    move-object v12, v6

    .line 338
    move-object/from16 v3, p1

    move/from16 v7, v16

    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 340
    :cond_d8
    new-instance v3, Ljava/lang/String;

    array-length v7, v6

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "acount":I
    .local v17, "acount":I
    invoke-direct {v3, v6, v8, v7, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v10, v3

    .line 341
    const/4 v3, 0x0

    move-object v12, v3

    .line 343
    .end local v6    # "buf":[B
    :goto_e6
    invoke-virtual {v0, v10}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v3

    .line 344
    .local v3, "attr":Ljava/util/jar/Attributes;
    if-nez v3, :cond_f7

    .line 345
    new-instance v6, Ljava/util/jar/Attributes;

    invoke-direct {v6, v9}, Ljava/util/jar/Attributes;-><init>(I)V

    move-object v3, v6

    .line 346
    iget-object v6, v0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v6, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_f7
    invoke-virtual {v3, v2, v4, v1, v5}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[BLjava/lang/String;I)I

    move-result v5

    .line 349
    add-int/lit8 v7, v16, 0x1

    .line 350
    .end local v16    # "ecount":I
    .restart local v7    # "ecount":I
    invoke-virtual {v3}, Ljava/util/jar/Attributes;->size()I

    move-result v6

    add-int v6, v17, v6

    .line 354
    .end local v17    # "acount":I
    .local v6, "acount":I
    const/4 v15, 0x2

    div-int v8, v6, v7

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 356
    const/4 v10, 0x0

    .line 357
    const/4 v11, 0x1

    .line 358
    .end local v3    # "attr":Ljava/util/jar/Attributes;
    .end local v13    # "c":B
    move-object/from16 v3, p1

    move v8, v6

    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 359
    .end local v6    # "acount":I
    .restart local v8    # "acount":I
    :cond_112
    return-void
.end method

.method private greylist-max-o toLower(I)I
    .registers 3
    .param p1, "c"    # I

    .line 371
    const/16 v0, 0x41

    if-lt p1, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_d

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0x61

    goto :goto_e

    :cond_d
    move v0, p1

    :goto_e
    return v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 188
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 189
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 414
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 389
    instance-of v0, p1, Ljava/util/jar/Manifest;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 390
    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    .line 392
    .local v0, "other":Ljava/util/jar/Manifest;
    iget-object v2, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 393
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 392
    :goto_23
    return v1

    .line 395
    .end local v0    # "other":Ljava/util/jar/Manifest;
    :cond_24
    return v1
.end method

.method public whitelist test-api getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public whitelist test-api getEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api getMainAttributes()Ljava/util/jar/Attributes;
    .registers 2

    .line 121
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method blacklist getTrustedAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 178
    .local v0, "result":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_2c

    iget-object v1, p0, Ljava/util/jar/Manifest;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Ljava/util/jar/Manifest;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1, p1}, Ljava/util/jar/JarVerifier;->isTrustedManifestEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2c

    .line 179
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Untrusted manifest entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 402
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public whitelist test-api write(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget-object v1, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v1, v0}, Ljava/util/jar/Attributes;->writeMain(Ljava/io/DataOutputStream;)V

    .line 206
    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_1b

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :goto_1b
    iget-object v2, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 208
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    const-string v4, "Name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/jar/Manifest;->println72(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 212
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/Attributes;

    invoke-virtual {v4, v0}, Ljava/util/jar/Attributes;->write(Ljava/io/DataOutputStream;)V

    .line 213
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    goto :goto_25

    .line 214
    :cond_54
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 215
    return-void
.end method
