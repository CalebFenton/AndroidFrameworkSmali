.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final CONTENT_BASE:Ljava/lang/String; = "content:"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"

.field private static final TRACE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 388
    const-string/jumbo v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    #@3
    .line 389
    const/4 v1, 0x2

    #@4
    .line 388
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@7
    move-result-object v0

    #@8
    .line 387
    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    #@a
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inQuery"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "queryPlaceHolder"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    .line 90
    .local v2, "placeHolderIndex":I
    if-gez v2, :cond_0

    #@8
    .line 91
    return-object v5

    #@9
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 96
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 99
    :try_start_0
    const-string/jumbo v4, "utf-8"

    #@18
    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 100
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@22
    move-result v4

    #@23
    add-int/2addr v4, v2

    #@24
    .line 105
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4

    #@30
    .line 101
    .end local v3    # "query":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@31
    .line 102
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v5
.end method

.method public static decode([B)[B
    .locals 9
    .param p0, "url"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 112
    array-length v6, p0

    #@2
    if-nez v6, :cond_0

    #@4
    .line 113
    new-array v6, v8, [B

    #@6
    return-object v6

    #@7
    .line 117
    :cond_0
    array-length v6, p0

    #@8
    new-array v5, v6, [B

    #@a
    .line 119
    .local v5, "tempData":[B
    const/4 v3, 0x0

    #@b
    .line 120
    .local v3, "tempCount":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v6, p0

    #@d
    if-ge v1, v6, :cond_3

    #@f
    .line 121
    aget-byte v0, p0, v1

    #@11
    .line 122
    .local v0, "b":B
    const/16 v6, 0x25

    #@13
    if-ne v0, v6, :cond_1

    #@15
    .line 123
    array-length v6, p0

    #@16
    sub-int/2addr v6, v1

    #@17
    const/4 v7, 0x2

    #@18
    if-le v6, v7, :cond_2

    #@1a
    .line 124
    add-int/lit8 v6, v1, 0x1

    #@1c
    aget-byte v6, p0, v6

    #@1e
    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    #@21
    move-result v6

    #@22
    mul-int/lit8 v6, v6, 0x10

    #@24
    .line 125
    add-int/lit8 v7, v1, 0x2

    #@26
    aget-byte v7, p0, v7

    #@28
    invoke-static {v7}, Landroid/webkit/URLUtil;->parseHex(B)I

    #@2b
    move-result v7

    #@2c
    .line 124
    add-int/2addr v6, v7

    #@2d
    int-to-byte v0, v6

    #@2e
    .line 126
    add-int/lit8 v1, v1, 0x2

    #@30
    .line 131
    :cond_1
    add-int/lit8 v4, v3, 0x1

    #@32
    .end local v3    # "tempCount":I
    .local v4, "tempCount":I
    aput-byte v0, v5, v3

    #@34
    .line 120
    add-int/lit8 v1, v1, 0x1

    #@36
    move v3, v4

    #@37
    .end local v4    # "tempCount":I
    .restart local v3    # "tempCount":I
    goto :goto_0

    #@38
    .line 128
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v7, "Invalid format"

    #@3d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v6

    #@41
    .line 133
    .end local v0    # "b":B
    :cond_3
    new-array v2, v3, [B

    #@43
    .line 134
    .local v2, "retData":[B
    invoke-static {v5, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 135
    return-object v2
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v11, 0x2f

    #@2
    const/16 v9, 0x2e

    #@4
    const/4 v10, 0x0

    #@5
    .line 305
    const/4 v3, 0x0

    #@6
    .line 306
    .local v3, "filename":Ljava/lang/String;
    const/4 v2, 0x0

    #@7
    .line 309
    .local v2, "extension":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@9
    .line 310
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 311
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@f
    .line 312
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v8

    #@13
    add-int/lit8 v4, v8, 0x1

    #@15
    .line 313
    .local v4, "index":I
    if-lez v4, :cond_0

    #@17
    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 320
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_0
    if-nez v3, :cond_2

    #@1d
    .line 321
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 322
    .local v0, "decodedUrl":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@23
    .line 323
    const/16 v8, 0x3f

    #@25
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v6

    #@29
    .line 325
    .local v6, "queryIndex":I
    if-lez v6, :cond_1

    #@2b
    .line 326
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 328
    :cond_1
    const-string/jumbo v8, "/"

    #@32
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@35
    move-result v8

    #@36
    if-nez v8, :cond_2

    #@38
    .line 329
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    #@3b
    move-result v8

    #@3c
    add-int/lit8 v4, v8, 0x1

    #@3e
    .line 330
    .restart local v4    # "index":I
    if-lez v4, :cond_2

    #@40
    .line 331
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 338
    .end local v0    # "decodedUrl":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v6    # "queryIndex":I
    :cond_2
    if-nez v3, :cond_3

    #@46
    .line 339
    const-string/jumbo v3, "downloadfile"

    #@49
    .line 344
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    #@4c
    move-result v1

    #@4d
    .line 345
    .local v1, "dotIndex":I
    if-gez v1, :cond_8

    #@4f
    .line 346
    if-eqz p2, :cond_4

    #@51
    .line 347
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 348
    .local v2, "extension":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@5b
    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v9, "."

    #@63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    .line 352
    .end local v2    # "extension":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    #@71
    .line 353
    if-eqz p2, :cond_7

    #@73
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@75
    invoke-virtual {p2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    const-string/jumbo v9, "text/"

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7f
    move-result v8

    #@80
    if-eqz v8, :cond_7

    #@82
    .line 354
    const-string/jumbo v8, "text/html"

    #@85
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@88
    move-result v8

    #@89
    if-eqz v8, :cond_6

    #@8b
    .line 355
    const-string/jumbo v2, ".html"

    #@8e
    .line 383
    :cond_5
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v8

    #@9f
    return-object v8

    #@a0
    .line 357
    :cond_6
    const-string/jumbo v2, ".txt"

    #@a3
    .restart local v2    # "extension":Ljava/lang/String;
    goto :goto_0

    #@a4
    .line 360
    .end local v2    # "extension":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, ".bin"

    #@a7
    .restart local v2    # "extension":Ljava/lang/String;
    goto :goto_0

    #@a8
    .line 364
    .local v2, "extension":Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_9

    #@aa
    .line 367
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    #@ad
    move-result v5

    #@ae
    .line 368
    .local v5, "lastDotIndex":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@b1
    move-result-object v8

    #@b2
    .line 369
    add-int/lit8 v9, v5, 0x1

    #@b4
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b7
    move-result-object v9

    #@b8
    .line 368
    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v7

    #@bc
    .line 370
    .local v7, "typeFromExt":Ljava/lang/String;
    if-eqz v7, :cond_9

    #@be
    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c1
    move-result v8

    #@c2
    if-eqz v8, :cond_b

    #@c4
    .line 377
    .end local v2    # "extension":Ljava/lang/String;
    .end local v5    # "lastDotIndex":I
    .end local v7    # "typeFromExt":Ljava/lang/String;
    :cond_9
    :goto_1
    if-nez v2, :cond_a

    #@c6
    .line 378
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c9
    move-result-object v2

    #@ca
    .line 380
    :cond_a
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@cd
    move-result-object v3

    #@ce
    .restart local v3    # "filename":Ljava/lang/String;
    goto :goto_0

    #@cf
    .line 371
    .end local v3    # "filename":Ljava/lang/String;
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v5    # "lastDotIndex":I
    .restart local v7    # "typeFromExt":Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@d2
    move-result-object v8

    #@d3
    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@d6
    move-result-object v2

    #@d7
    .line 372
    .local v2, "extension":Ljava/lang/String;
    if-eqz v2, :cond_9

    #@d9
    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v9, "."

    #@e1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v8

    #@e5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v8

    #@e9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v2

    #@ed
    goto :goto_1
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inUrl"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 50
    move-object v1, p0

    #@2
    .line 55
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    return-object p0

    #@9
    .line 56
    :cond_0
    const-string/jumbo v3, "about:"

    #@c
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    return-object p0

    #@13
    .line 58
    :cond_1
    const-string/jumbo v3, "data:"

    #@16
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    return-object p0

    #@1d
    .line 60
    :cond_2
    const-string/jumbo v3, "file:"

    #@20
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    return-object p0

    #@27
    .line 62
    :cond_3
    const-string/jumbo v3, "javascript:"

    #@2a
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_4

    #@30
    return-object p0

    #@31
    .line 65
    :cond_4
    const-string/jumbo v3, "."

    #@34
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_5

    #@3a
    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3d
    move-result v3

    #@3e
    add-int/lit8 v3, v3, -0x1

    #@40
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object p0

    #@44
    .line 70
    :cond_5
    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    #@46
    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 80
    .local v2, "webAddress":Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    const/16 v4, 0x2e

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@52
    move-result v3

    #@53
    const/4 v4, -0x1

    #@54
    if-ne v3, v4, :cond_6

    #@56
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v4, "www."

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    const-string/jumbo v4, ".com"

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v2, v3}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    #@78
    .line 84
    :cond_6
    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    return-object v3

    #@7d
    .line 71
    .end local v2    # "webAddress":Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    #@7e
    .line 76
    .local v0, "ex":Landroid/net/ParseException;
    return-object v1
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "about:"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "file:///android_asset/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 259
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "content:"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 194
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "file:///cookieless_proxy/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "data:"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 201
    if-eqz p0, :cond_0

    #@3
    const-string/jumbo v1, "file://"

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 202
    const-string/jumbo v1, "file:///android_asset/"

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 201
    :cond_0
    :goto_0
    return v0

    #@16
    .line 203
    :cond_1
    const-string/jumbo v1, "file:///cookieless_proxy/"

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    const/4 v0, 0x1

    #@20
    goto :goto_0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 231
    if-eqz p0, :cond_0

    #@3
    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x6

    #@8
    if-le v1, v2, :cond_0

    #@a
    .line 233
    const/4 v1, 0x7

    #@b
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "http://"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    .line 231
    :cond_0
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 240
    if-eqz p0, :cond_0

    #@3
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x7

    #@8
    if-le v1, v2, :cond_0

    #@a
    .line 242
    const/16 v1, 0x8

    #@c
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "https://"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    .line 240
    :cond_0
    return v0
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "javascript:"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 250
    :cond_0
    return v1

    #@a
    .line 252
    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    :goto_0
    return v0

    #@15
    :cond_2
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "file:///android_res/"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 267
    :cond_0
    return v1

    #@a
    .line 270
    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    .line 271
    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    .line 270
    if-nez v0, :cond_2

    #@16
    .line 272
    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    .line 270
    if-nez v0, :cond_2

    #@1c
    .line 273
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    .line 270
    if-nez v0, :cond_2

    #@22
    .line 274
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    .line 270
    if-nez v0, :cond_2

    #@28
    .line 275
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    .line 270
    if-nez v0, :cond_2

    #@2e
    .line 276
    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    .line 270
    if-nez v0, :cond_2

    #@34
    .line 277
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    #@37
    move-result v0

    #@38
    .line 270
    :goto_0
    return v0

    #@39
    :cond_2
    const/4 v0, 0x1

    #@3a
    goto :goto_0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "contentDisposition"    # Ljava/lang/String;

    #@0
    .prologue
    .line 402
    :try_start_0
    sget-object v2, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v1

    #@6
    .line 403
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 404
    const/4 v2, 0x2

    #@d
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 406
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    #@13
    .line 409
    :cond_0
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method private static parseHex(B)I
    .locals 3
    .param p0, "b"    # B

    #@0
    .prologue
    .line 165
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 166
    :cond_0
    const/16 v0, 0x41

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x46

    #@11
    if-gt p0, v0, :cond_1

    #@13
    add-int/lit8 v0, p0, -0x41

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 167
    :cond_1
    const/16 v0, 0x61

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x66

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    add-int/lit8 v0, p0, -0x61

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 169
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Invalid hex char \'"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, "\'"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    const/16 v1, 0x23

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 285
    .local v0, "anchorIndex":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 286
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 288
    :cond_0
    return-object p0
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x25

    #@2
    const/4 v4, 0x0

    #@3
    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 143
    .local v0, "count":I
    if-nez v0, :cond_0

    #@9
    .line 144
    return v4

    #@a
    .line 147
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v2

    #@e
    .line 148
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_2

    #@10
    if-ge v2, v0, :cond_2

    #@12
    .line 149
    add-int/lit8 v3, v0, -0x2

    #@14
    if-ge v2, v3, :cond_1

    #@16
    .line 151
    add-int/lit8 v2, v2, 0x1

    #@18
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v3

    #@1c
    int-to-byte v3, v3

    #@1d
    invoke-static {v3}, Landroid/webkit/URLUtil;->parseHex(B)I

    #@20
    .line 152
    add-int/lit8 v2, v2, 0x1

    #@22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v3

    #@26
    int-to-byte v3, v3

    #@27
    invoke-static {v3}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 159
    add-int/lit8 v3, v2, 0x1

    #@2c
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    #@2f
    move-result v2

    #@30
    goto :goto_0

    #@31
    .line 153
    :catch_0
    move-exception v1

    #@32
    .line 154
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v4

    #@33
    .line 157
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return v4

    #@34
    .line 161
    :cond_2
    const/4 v3, 0x1

    #@35
    return v3
.end method
