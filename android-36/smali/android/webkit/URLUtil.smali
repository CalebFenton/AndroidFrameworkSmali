.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final greylist-max-o ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final greylist-max-o CONTENT_BASE:Ljava/lang/String; = "content:"

.field private static final greylist-max-o CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o FILE_BASE:Ljava/lang/String; = "file:"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "webkit"

.field static final blacklist PARSE_CONTENT_DISPOSITION_USING_RFC_6266:J = 0x1309ab41L

.field static final greylist-max-o PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final greylist-max-o RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"

.field private static final greylist-max-o TRACE:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 565
    nop

    .line 566
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 599
    nop

    .line 600
    const-string v0, "\\s*(\\S+?) # Group 1: parameter name\n\\s*=\\s* # Match equals sign\n(?: # non-capturing group of options\n   \'( (?: [^\'\\\\] | \\\\. )* )\' # Group 2: single-quoted\n | \"( (?: [^\"\\\\] | \\\\. )*  )\" # Group 3: double-quoted\n | ( [^\'\"][^;\\s]* ) # Group 4: un-quoted parameter\n)\\s*;? # Optional end semicolon"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 599
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "inQuery"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "queryPlaceHolder"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "placeHolderIndex":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 113
    return-object v1

    .line 117
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :try_start_15
    const-string/jumbo v3, "utf-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_31

    .line 125
    nop

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    .end local v3    # "query":Ljava/lang/String;
    :catch_31
    move-exception v3

    .line 124
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v1
.end method

.method public static whitelist decode([B)[B
    .registers 8
    .param p0, "url"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 134
    new-array v0, v1, [B

    return-object v0

    .line 138
    :cond_7
    array-length v0, p0

    new-array v0, v0, [B

    .line 140
    .local v0, "tempData":[B
    const/4 v2, 0x0

    .line 141
    .local v2, "tempCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, p0

    if-ge v3, v4, :cond_41

    .line 142
    aget-byte v4, p0, v3

    .line 143
    .local v4, "b":B
    const/16 v5, 0x25

    if-ne v4, v5, :cond_39

    .line 144
    array-length v5, p0

    sub-int/2addr v5, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_31

    .line 145
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v4, v5

    .line 146
    add-int/lit8 v3, v3, 0x2

    goto :goto_39

    .line 148
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid format"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_39
    :goto_39
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tempCount":I
    .local v5, "tempCount":I
    aput-byte v4, v0, v2

    .line 141
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_c

    .line 153
    .end local v3    # "i":I
    .end local v5    # "tempCount":I
    .restart local v2    # "tempCount":I
    :cond_41
    new-array v3, v2, [B

    .line 154
    .local v3, "retData":[B
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    return-object v3
.end method

.method private static blacklist encodePlusCharacters(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 9
    .param p0, "valueChars"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_29

    aget-byte v4, v1, v3

    .line 717
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 719
    :cond_29
    const-string v1, "\\+"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist extensionDifferentFromMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 511
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 513
    .local v0, "lastDotIndex":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 514
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "typeFromExt":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    return v2
.end method

.method private static blacklist getFilenameFromContentDispositionRfc6266(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_10

    .line 633
    return-object v3

    .line 635
    :cond_10
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "dispositionType":Ljava/lang/String;
    const-string v4, "inline"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 640
    return-object v3

    .line 642
    :cond_20
    const/4 v3, 0x1

    aget-object v4, v0, v3

    .line 643
    .local v4, "dispositionParameters":Ljava/lang/String;
    sget-object v5, Landroid/webkit/URLUtil;->DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 644
    .local v5, "matcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    .line 645
    .local v6, "filename":Ljava/lang/String;
    const/4 v7, 0x0

    .line 646
    .local v7, "filenameExt":Ljava/lang/String;
    :cond_2b
    :goto_2b
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_75

    .line 647
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, "parameter":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_44

    .line 650
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/webkit/URLUtil;->removeSlashEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    goto :goto_59

    .line 651
    .end local v9    # "value":Ljava/lang/String;
    :cond_44
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_54

    .line 652
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/webkit/URLUtil;->removeSlashEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_59

    .line 654
    .end local v9    # "value":Ljava/lang/String;
    :cond_54
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 657
    .restart local v9    # "value":Ljava/lang/String;
    :goto_59
    if-eqz v8, :cond_2b

    if-nez v9, :cond_5e

    .line 658
    goto :goto_2b

    .line 661
    :cond_5e
    const-string v10, "filename*"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 662
    invoke-static {v9}, Landroid/webkit/URLUtil;->parseExtValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_74

    .line 663
    :cond_6b
    const-string v10, "filename"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 664
    move-object v6, v9

    .line 666
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_74
    :goto_74
    goto :goto_2b

    .line 669
    :cond_75
    if-eqz v7, :cond_78

    .line 670
    return-object v7

    .line 672
    :cond_78
    return-object v6
.end method

.method private static blacklist getFilenameSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .line 476
    if-eqz p1, :cond_d

    .line 477
    invoke-static {p1}, Landroid/webkit/URLUtil;->getFilenameFromContentDispositionRfc6266(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 479
    invoke-static {v0}, Landroid/webkit/URLUtil;->replacePathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 484
    .end local v0    # "filename":Ljava/lang/String;
    :cond_d
    if-eqz p0, :cond_1e

    .line 485
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 486
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "lastPathSegment":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 488
    invoke-static {v1}, Landroid/webkit/URLUtil;->replacePathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 493
    .end local v0    # "parsedUri":Landroid/net/Uri;
    .end local v1    # "lastPathSegment":Ljava/lang/String;
    :cond_1e
    const-string v0, "downloadfile"

    return-object v0
.end method

.method public static whitelist guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 348
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 349
    const-wide/32 v0, 0x1309ab41

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 350
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileNameRfc6266(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_14
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileNameRfc2616(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist guessFileNameRfc2616(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 364
    .local v1, "extension":Ljava/lang/String;
    const/16 v2, 0x2f

    if-eqz p1, :cond_18

    .line 365
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDispositionRfc2616(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_18

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 368
    .local v3, "index":I
    if-lez v3, :cond_18

    .line 369
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .end local v3    # "index":I
    :cond_18
    const/4 v3, 0x0

    if-nez v0, :cond_41

    .line 376
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "decodedUrl":Ljava/lang/String;
    if-eqz v4, :cond_41

    .line 378
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 380
    .local v5, "queryIndex":I
    if-lez v5, :cond_2d

    .line 381
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 383
    :cond_2d
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 384
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 385
    .local v2, "index":I
    if-lez v2, :cond_41

    .line 386
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    .end local v2    # "index":I
    .end local v4    # "decodedUrl":Ljava/lang/String;
    .end local v5    # "queryIndex":I
    :cond_41
    if-nez v0, :cond_45

    .line 394
    const-string v0, "downloadfile"

    .line 399
    :cond_45
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 400
    .local v4, "dotIndex":I
    const-string v5, "."

    if-gez v4, :cond_91

    .line 401
    if-eqz p2, :cond_6c

    .line 402
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_6c

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_6c
    if-nez v1, :cond_d2

    .line 408
    if-eqz p2, :cond_8e

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 409
    const-string/jumbo v2, "text/html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 410
    const-string v1, ".html"

    goto :goto_d2

    .line 412
    :cond_8b
    const-string v1, ".txt"

    goto :goto_d2

    .line 415
    :cond_8e
    const-string v1, ".bin"

    goto :goto_d2

    .line 419
    :cond_91
    if-eqz p2, :cond_c8

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 424
    .local v2, "lastDotIndex":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    .line 425
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "typeFromExt":Ljava/lang/String;
    if-eqz v6, :cond_c8

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 427
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_c8

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .end local v2    # "lastDotIndex":I
    .end local v6    # "typeFromExt":Ljava/lang/String;
    :cond_c8
    if-nez v1, :cond_ce

    .line 434
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    :cond_ce
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_d2
    :goto_d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist guessFileNameRfc6266(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 449
    invoke-static {p0, p1}, Landroid/webkit/URLUtil;->getFilenameSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "filename":Ljava/lang/String;
    invoke-static {p2}, Landroid/webkit/URLUtil;->suggestExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "extensionFromMimeType":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_22

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 462
    :cond_22
    if-eqz p2, :cond_3c

    invoke-static {v0, p2}, Landroid/webkit/URLUtil;->extensionDifferentFromMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 465
    :cond_3c
    return-object v0
.end method

.method public static whitelist guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "inUrl"    # Ljava/lang/String;

    .line 68
    move-object v0, p0

    .line 73
    .local v0, "retVal":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    return-object p0

    .line 74
    :cond_8
    const-string v1, "about:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object p0

    .line 76
    :cond_11
    const-string v1, "data:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object p0

    .line 78
    :cond_1a
    const-string v1, "file:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    return-object p0

    .line 80
    :cond_23
    const-string v1, "javascript:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object p0

    .line 83
    :cond_2c
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 88
    :cond_3f
    :try_start_3f
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/net/ParseException; {:try_start_3f .. :try_end_44} :catch_78

    .line 95
    .local v1, "webAddress":Landroid/net/WebAddress;
    nop

    .line 98
    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_73

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 102
    :cond_73
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 89
    .end local v1    # "webAddress":Landroid/net/WebAddress;
    :catch_78
    move-exception v1

    .line 94
    .local v1, "ex":Landroid/net/ParseException;
    return-object v0
.end method

.method public static whitelist isAboutUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 233
    if-eqz p0, :cond_c

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isAssetUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 197
    if-eqz p0, :cond_c

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isContentUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 282
    if-eqz p0, :cond_c

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isCookielessProxyUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    if-eqz p0, :cond_c

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isDataUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 240
    if-eqz p0, :cond_c

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isFileUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 223
    if-eqz p0, :cond_1c

    .line 224
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 225
    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 226
    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 223
    :goto_1d
    return v0
.end method

.method public static whitelist isHttpUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_19

    .line 256
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 254
    :goto_1a
    return v0
.end method

.method public static whitelist isHttpsUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1a

    .line 265
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 263
    :goto_1b
    return v0
.end method

.method public static whitelist isJavaScriptUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 247
    if-eqz p0, :cond_c

    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isNetworkUrl(Ljava/lang/String;)Z
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_18

    .line 275
    :cond_a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0

    .line 273
    :cond_18
    :goto_18
    return v0
.end method

.method public static greylist isResourceUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 206
    if-eqz p0, :cond_c

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isValidUrl(Ljava/lang/String;)Z
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    .line 293
    :cond_a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 294
    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 295
    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 296
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 297
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 298
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 299
    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 300
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_3a
    const/4 v0, 0x1

    .line 293
    :cond_3b
    return v0

    .line 290
    :cond_3c
    :goto_3c
    return v0
.end method

.method static greylist parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 556
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 557
    const-wide/32 v0, 0x1309ab41

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 558
    invoke-static {p0}, Landroid/webkit/URLUtil;->getFilenameFromContentDispositionRfc6266(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :cond_14
    invoke-static {p0}, Landroid/webkit/URLUtil;->parseContentDispositionRfc2616(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseContentDispositionRfc2616(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 580
    :try_start_0
    sget-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 581
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 582
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_11} :catch_13

    return-object v1

    .line 586
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_12
    goto :goto_14

    .line 584
    :catch_13
    move-exception v0

    .line 587
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist parseExtValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "raw"    # Ljava/lang/String;

    .line 688
    const-string v0, "\'"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v2, v1, :cond_c

    .line 690
    return-object v3

    .line 693
    :cond_c
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 695
    .local v1, "encoding":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 700
    .local v2, "valueChars":Ljava/lang/String;
    :try_start_12
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 701
    .local v4, "charset":Ljava/nio/charset/Charset;
    invoke-static {v2, v4}, Landroid/webkit/URLUtil;->encodePlusCharacters(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, "valueWithEncodedPlus":Ljava/lang/String;
    invoke-static {v5, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object v3

    .line 703
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v5    # "valueWithEncodedPlus":Ljava/lang/String;
    :catch_1f
    move-exception v4

    .line 704
    .local v4, "ignored":Ljava/lang/RuntimeException;
    return-object v3
.end method

.method private static greylist-max-o parseHex(B)I
    .registers 4
    .param p0, "b"    # B

    .line 186
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 187
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 188
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 190
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist removeSlashEscapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "raw"    # Ljava/lang/String;

    .line 677
    if-nez p0, :cond_4

    .line 678
    const/4 v0, 0x0

    return-object v0

    .line 680
    :cond_4
    const-string v0, "\\\\(.)"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist replacePathSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "raw"    # Ljava/lang/String;

    .line 502
    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .line 305
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 306
    .local v0, "anchorIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    :cond_f
    return-object p0
.end method

.method private static blacklist suggestExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 527
    const-string v0, ".bin"

    if-nez p0, :cond_5

    .line 528
    return-object v0

    .line 531
    :cond_5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "extensionFromMimeType":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    :cond_23
    const-string/jumbo v2, "text/html"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 536
    const-string v0, ".html"

    return-object v0

    .line 537
    :cond_2f
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 538
    const-string v0, ".txt"

    return-object v0

    .line 540
    :cond_41
    return-object v0
.end method

.method static greylist verifyURLEncoding(Ljava/lang/String;)Z
    .registers 6
    .param p0, "url"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 165
    return v1

    .line 168
    :cond_8
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 169
    .local v3, "index":I
    :goto_e
    if-ltz v3, :cond_35

    if-ge v3, v0, :cond_35

    .line 170
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_34

    .line 172
    add-int/lit8 v3, v3, 0x1

    :try_start_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 173
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2a} :catch_32

    .line 176
    nop

    .line 180
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_e

    .line 174
    :catch_32
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 178
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_34
    return v1

    .line 182
    :cond_35
    const/4 v1, 0x1

    return v1
.end method
