.class public final Lcom/android/okhttp/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 711
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(Z)V

    #@4
    .line 710
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "startWithSlash"    # Z

    #@0
    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 697
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@8
    .line 698
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@d
    .line 700
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@10
    .line 701
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@17
    .line 715
    if-eqz p1, :cond_0

    #@19
    .line 716
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@1b
    const-string/jumbo v1, ""

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 714
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/okhttp/HttpUrl$Builder;)V
    .locals 0
    .param p1, "startWithSlash"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(Z)V

    #@3
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1350
    const/4 v3, 0x0

    #@2
    invoke-static {p0, p1, p2, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1353
    .local v2, "percentDecoded":Ljava/lang/String;
    const-string/jumbo v3, "["

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    const-string/jumbo v3, "]"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 1354
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    add-int/lit8 v3, v3, -0x1

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-static {v2, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    #@22
    move-result-object v1

    #@23
    .line 1355
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_0

    #@25
    return-object v5

    #@26
    .line 1356
    :cond_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    #@29
    move-result-object v0

    #@2a
    .line 1357
    .local v0, "address":[B
    array-length v3, v0

    #@2b
    const/16 v4, 0x10

    #@2d
    if-ne v3, v4, :cond_1

    #@2f
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    return-object v3

    #@34
    .line 1358
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    #@36
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@39
    throw v3

    #@3a
    .line 1361
    .end local v0    # "address":[B
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    invoke-static {v2}, Lcom/android/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1493
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_3

    #@8
    .line 1494
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 1498
    .local v0, "c":C
    const/16 v2, 0x1f

    #@e
    if-le v0, v2, :cond_0

    #@10
    const/16 v2, 0x7f

    #@12
    if-lt v0, v2, :cond_1

    #@14
    .line 1499
    :cond_0
    return v4

    #@15
    .line 1504
    :cond_1
    const-string/jumbo v2, " #%/:?@[\\]"

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    #@1b
    move-result v2

    #@1c
    const/4 v3, -0x1

    #@1d
    if-eq v2, v3, :cond_2

    #@1f
    .line 1505
    return v4

    #@20
    .line 1493
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1508
    .end local v0    # "c":C
    :cond_3
    const/4 v2, 0x0

    #@24
    return v2
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1438
    move v0, p4

    #@2
    .line 1440
    .local v0, "b":I
    move v5, p1

    #@3
    .local v5, "i":I
    move v1, v0

    #@4
    .end local v0    # "b":I
    .local v1, "b":I
    :goto_0
    if-ge v5, p2, :cond_8

    #@6
    .line 1441
    array-length v7, p3

    #@7
    if-ne v1, v7, :cond_0

    #@9
    return v9

    #@a
    .line 1444
    :cond_0
    if-eq v1, p4, :cond_2

    #@c
    .line 1445
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v7

    #@10
    const/16 v8, 0x2e

    #@12
    if-eq v7, v8, :cond_1

    #@14
    return v9

    #@15
    .line 1446
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@17
    .line 1450
    :cond_2
    const/4 v6, 0x0

    #@18
    .line 1451
    .local v6, "value":I
    move v4, v5

    #@19
    .line 1452
    .local v4, "groupOffset":I
    :goto_1
    if-ge v5, p2, :cond_3

    #@1b
    .line 1453
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v2

    #@1f
    .line 1454
    .local v2, "c":C
    const/16 v7, 0x30

    #@21
    if-lt v2, v7, :cond_3

    #@23
    const/16 v7, 0x39

    #@25
    if-le v2, v7, :cond_4

    #@27
    .line 1459
    .end local v2    # "c":C
    :cond_3
    sub-int v3, v5, v4

    #@29
    .line 1460
    .local v3, "groupLength":I
    if-nez v3, :cond_7

    #@2b
    return v9

    #@2c
    .line 1455
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_4
    if-nez v6, :cond_5

    #@2e
    if-eq v4, v5, :cond_5

    #@30
    return v9

    #@31
    .line 1456
    :cond_5
    mul-int/lit8 v7, v6, 0xa

    #@33
    add-int/2addr v7, v2

    #@34
    add-int/lit8 v6, v7, -0x30

    #@36
    .line 1457
    const/16 v7, 0xff

    #@38
    if-le v6, v7, :cond_6

    #@3a
    return v9

    #@3b
    .line 1452
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 1463
    .end local v2    # "c":C
    .restart local v3    # "groupLength":I
    :cond_7
    add-int/lit8 v0, v1, 0x1

    #@40
    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v7, v6

    #@41
    aput-byte v7, p3, v1

    #@43
    move v1, v0

    #@44
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_0

    #@45
    .line 1466
    .end local v3    # "groupLength":I
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_8
    add-int/lit8 v7, p4, 0x4

    #@47
    if-eq v1, v7, :cond_9

    #@49
    return v9

    #@4a
    .line 1467
    :cond_9
    const/4 v7, 0x1

    #@4b
    return v7
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1366
    const/16 v12, 0x10

    #@2
    new-array v1, v12, [B

    #@4
    .line 1367
    .local v1, "address":[B
    const/4 v2, 0x0

    #@5
    .line 1368
    .local v2, "b":I
    const/4 v5, -0x1

    #@6
    .line 1369
    .local v5, "compress":I
    const/4 v8, -0x1

    #@7
    .line 1371
    .local v8, "groupOffset":I
    move/from16 v10, p1

    #@9
    .local v10, "i":I
    :goto_0
    move/from16 v0, p2

    #@b
    if-ge v10, v0, :cond_2

    #@d
    .line 1372
    array-length v12, v1

    #@e
    if-ne v2, v12, :cond_0

    #@10
    const/4 v12, 0x0

    #@11
    return-object v12

    #@12
    .line 1375
    :cond_0
    add-int/lit8 v12, v10, 0x2

    #@14
    move/from16 v0, p2

    #@16
    if-gt v12, v0, :cond_3

    #@18
    const-string/jumbo v12, "::"

    #@1b
    const/4 v13, 0x0

    #@1c
    const/4 v14, 0x2

    #@1d
    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@20
    move-result v12

    #@21
    if-eqz v12, :cond_3

    #@23
    .line 1377
    const/4 v12, -0x1

    #@24
    if-eq v5, v12, :cond_1

    #@26
    const/4 v12, 0x0

    #@27
    return-object v12

    #@28
    .line 1378
    :cond_1
    add-int/lit8 v10, v10, 0x2

    #@2a
    .line 1379
    add-int/lit8 v2, v2, 0x2

    #@2c
    .line 1380
    move v5, v2

    #@2d
    .line 1381
    move/from16 v0, p2

    #@2f
    if-ne v10, v0, :cond_4

    #@31
    .line 1422
    :cond_2
    :goto_1
    array-length v12, v1

    #@32
    if-eq v2, v12, :cond_d

    #@34
    .line 1423
    const/4 v12, -0x1

    #@35
    if-ne v5, v12, :cond_c

    #@37
    const/4 v12, 0x0

    #@38
    return-object v12

    #@39
    .line 1382
    :cond_3
    if-eqz v2, :cond_4

    #@3b
    .line 1384
    const-string/jumbo v12, ":"

    #@3e
    const/4 v13, 0x0

    #@3f
    const/4 v14, 0x1

    #@40
    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@43
    move-result v12

    #@44
    if-eqz v12, :cond_7

    #@46
    .line 1385
    add-int/lit8 v10, v10, 0x1

    #@48
    .line 1397
    :cond_4
    const/4 v11, 0x0

    #@49
    .line 1398
    .local v11, "value":I
    move v8, v10

    #@4a
    .line 1399
    :goto_2
    move/from16 v0, p2

    #@4c
    if-ge v10, v0, :cond_5

    #@4e
    .line 1400
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@51
    move-result v4

    #@52
    .line 1401
    .local v4, "c":C
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@55
    move-result v9

    #@56
    .line 1402
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    #@57
    if-ne v9, v12, :cond_a

    #@59
    .line 1405
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    :cond_5
    sub-int v7, v10, v8

    #@5b
    .line 1406
    .local v7, "groupLength":I
    if-eqz v7, :cond_6

    #@5d
    const/4 v12, 0x4

    #@5e
    if-le v7, v12, :cond_b

    #@60
    :cond_6
    const/4 v12, 0x0

    #@61
    return-object v12

    #@62
    .line 1386
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_7
    const-string/jumbo v12, "."

    #@65
    const/4 v13, 0x0

    #@66
    const/4 v14, 0x1

    #@67
    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@6a
    move-result v12

    #@6b
    if-eqz v12, :cond_9

    #@6d
    .line 1388
    add-int/lit8 v12, v2, -0x2

    #@6f
    move/from16 v0, p2

    #@71
    invoke-static {p0, v8, v0, v1, v12}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    #@74
    move-result v12

    #@75
    if-nez v12, :cond_8

    #@77
    const/4 v12, 0x0

    #@78
    return-object v12

    #@79
    .line 1389
    :cond_8
    add-int/lit8 v2, v2, 0x2

    #@7b
    .line 1390
    goto :goto_1

    #@7c
    .line 1392
    :cond_9
    const/4 v12, 0x0

    #@7d
    return-object v12

    #@7e
    .line 1403
    .restart local v4    # "c":C
    .restart local v9    # "hexDigit":I
    .restart local v11    # "value":I
    :cond_a
    shl-int/lit8 v12, v11, 0x4

    #@80
    add-int v11, v12, v9

    #@82
    .line 1399
    add-int/lit8 v10, v10, 0x1

    #@84
    goto :goto_2

    #@85
    .line 1409
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    .restart local v7    # "groupLength":I
    :cond_b
    add-int/lit8 v3, v2, 0x1

    #@87
    .end local v2    # "b":I
    .local v3, "b":I
    ushr-int/lit8 v12, v11, 0x8

    #@89
    and-int/lit16 v12, v12, 0xff

    #@8b
    int-to-byte v12, v12

    #@8c
    aput-byte v12, v1, v2

    #@8e
    .line 1410
    add-int/lit8 v2, v3, 0x1

    #@90
    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v12, v11, 0xff

    #@92
    int-to-byte v12, v12

    #@93
    aput-byte v12, v1, v3

    #@95
    goto/16 :goto_0

    #@97
    .line 1424
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_c
    array-length v12, v1

    #@98
    sub-int v13, v2, v5

    #@9a
    sub-int/2addr v12, v13

    #@9b
    sub-int v13, v2, v5

    #@9d
    invoke-static {v1, v5, v1, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a0
    .line 1425
    array-length v12, v1

    #@a1
    sub-int/2addr v12, v2

    #@a2
    add-int/2addr v12, v5

    #@a3
    const/4 v13, 0x0

    #@a4
    invoke-static {v1, v5, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    #@a7
    .line 1429
    :cond_d
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@aa
    move-result-object v12

    #@ab
    return-object v12

    #@ac
    .line 1430
    :catch_0
    move-exception v6

    #@ad
    .line 1431
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/AssertionError;

    #@af
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@b2
    throw v12
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1478
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1479
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    return-object v4

    #@12
    .line 1482
    :cond_0
    invoke-static {v1}, Lcom/android/okhttp/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1483
    return-object v4

    #@19
    .line 1486
    :cond_1
    return-object v1

    #@1a
    .line 1487
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1b
    .line 1488
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v4
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 12
    .param p0, "address"    # [B

    #@0
    .prologue
    const/16 v11, 0x10

    #@2
    const/16 v10, 0x3a

    #@4
    .line 1513
    const/4 v5, -0x1

    #@5
    .line 1514
    .local v5, "longestRunOffset":I
    const/4 v4, 0x0

    #@6
    .line 1515
    .local v4, "longestRunLength":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    array-length v7, p0

    #@8
    if-ge v3, v7, :cond_2

    #@a
    .line 1516
    move v1, v3

    #@b
    .line 1517
    .local v1, "currentRunOffset":I
    :goto_1
    if-ge v3, v11, :cond_0

    #@d
    aget-byte v7, p0, v3

    #@f
    if-nez v7, :cond_0

    #@11
    add-int/lit8 v7, v3, 0x1

    #@13
    aget-byte v7, p0, v7

    #@15
    if-nez v7, :cond_0

    #@17
    .line 1518
    add-int/lit8 v3, v3, 0x2

    #@19
    goto :goto_1

    #@1a
    .line 1520
    :cond_0
    sub-int v0, v3, v1

    #@1c
    .line 1521
    .local v0, "currentRunLength":I
    if-le v0, v4, :cond_1

    #@1e
    .line 1522
    move v5, v1

    #@1f
    .line 1523
    move v4, v0

    #@20
    .line 1515
    :cond_1
    add-int/lit8 v3, v3, 0x2

    #@22
    goto :goto_0

    #@23
    .line 1528
    .end local v0    # "currentRunLength":I
    .end local v1    # "currentRunOffset":I
    :cond_2
    new-instance v6, Lcom/android/okhttp/okio/Buffer;

    #@25
    invoke-direct {v6}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@28
    .line 1529
    .local v6, "result":Lcom/android/okhttp/okio/Buffer;
    const/4 v3, 0x0

    #@29
    :cond_3
    :goto_2
    array-length v7, p0

    #@2a
    if-ge v3, v7, :cond_6

    #@2c
    .line 1530
    if-ne v3, v5, :cond_4

    #@2e
    .line 1531
    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@31
    .line 1532
    add-int/2addr v3, v4

    #@32
    .line 1533
    if-ne v3, v11, :cond_3

    #@34
    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@37
    goto :goto_2

    #@38
    .line 1535
    :cond_4
    if-lez v3, :cond_5

    #@3a
    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@3d
    .line 1536
    :cond_5
    aget-byte v7, p0, v3

    #@3f
    and-int/lit16 v7, v7, 0xff

    #@41
    shl-int/lit8 v7, v7, 0x8

    #@43
    add-int/lit8 v8, v3, 0x1

    #@45
    aget-byte v8, p0, v8

    #@47
    and-int/lit16 v8, v8, 0xff

    #@49
    or-int v2, v7, v8

    #@4b
    .line 1537
    .local v2, "group":I
    int-to-long v8, v2

    #@4c
    invoke-virtual {v6, v8, v9}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    #@4f
    .line 1538
    add-int/lit8 v3, v3, 0x2

    #@51
    goto :goto_2

    #@52
    .line 1541
    .end local v2    # "group":I
    :cond_6
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    return-object v7
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1207
    const-string/jumbo v0, "."

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "%2e"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1211
    const-string/jumbo v0, ".."

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1212
    const-string/jumbo v0, "%2e."

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 1211
    if-nez v0, :cond_0

    #@12
    .line 1213
    const-string/jumbo v0, ".%2e"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 1211
    if-nez v0, :cond_0

    #@1b
    .line 1214
    const-string/jumbo v0, "%2e%2e"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    .line 1211
    :goto_0
    return v0

    #@23
    :cond_0
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    .line 1547
    :try_start_0
    const-string/jumbo v3, ""

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v7, 0x1

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v2, p2

    #@b
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@e
    move-result-object v10

    #@f
    .line 1548
    .local v10, "portString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v9

    #@13
    .line 1549
    .local v9, "i":I
    if-lez v9, :cond_0

    #@15
    const v0, 0xffff

    #@18
    if-gt v9, v0, :cond_0

    #@1a
    return v9

    #@1b
    .line 1550
    :cond_0
    return v11

    #@1c
    .line 1551
    .end local v9    # "i":I
    .end local v10    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@1d
    .line 1552
    .local v8, "e":Ljava/lang/NumberFormatException;
    return v11
.end method

.method private pop()V
    .locals 4

    #@0
    .prologue
    .line 1231
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1232
    return-void

    #@9
    .line 1236
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@b
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@d
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@10
    move-result v2

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    .line 1239
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@29
    const-string/jumbo v2, ""

    #@2c
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1227
    :goto_0
    return-void

    #@30
    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@32
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@34
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@37
    move-result v2

    #@38
    add-int/lit8 v2, v2, -0x1

    #@3a
    const-string/jumbo v3, ""

    #@3d
    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@40
    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1333
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    #@3
    .line 1334
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 1333
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1336
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    #@f
    if-ge v0, p2, :cond_0

    #@11
    .line 1337
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    const/16 v2, 0x5d

    #@17
    if-ne v1, v2, :cond_1

    #@19
    goto :goto_1

    #@1a
    .line 1341
    :sswitch_1
    return v0

    #@1b
    .line 1344
    :cond_2
    return p2

    #@1c
    .line 1334
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1179
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    #@4
    const/4 v7, 0x1

    #@5
    move-object v0, p1

    #@6
    move v1, p2

    #@7
    move v2, p3

    #@8
    move v4, p5

    #@9
    move v6, v5

    #@a
    .line 1178
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    .line 1180
    .local v8, "segment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1181
    return-void

    #@15
    .line 1183
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1184
    invoke-direct {p0}, Lcom/android/okhttp/HttpUrl$Builder;->pop()V

    #@1e
    .line 1185
    return-void

    #@1f
    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 1192
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@29
    const-string/jumbo v1, ""

    #@2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@31
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@33
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@36
    move-result v1

    #@37
    add-int/lit8 v1, v1, -0x1

    #@39
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/String;

    #@3f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4

    #@45
    .line 1197
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@47
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@49
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@4c
    move-result v1

    #@4d
    add-int/lit8 v1, v1, -0x1

    #@4f
    invoke-interface {v0, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 1201
    :goto_0
    if-eqz p4, :cond_3

    #@54
    .line 1202
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@56
    const-string/jumbo v1, ""

    #@59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    .line 1177
    :cond_3
    return-void

    #@5d
    .line 1199
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@5f
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_0
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x2

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 911
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 912
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@18
    add-int/lit8 v2, v0, 0x1

    #@1a
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1d
    .line 913
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@1f
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@22
    .line 914
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 915
    const/4 v1, 0x0

    #@2b
    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@2d
    .line 916
    return-void

    #@2e
    .line 910
    :cond_0
    add-int/lit8 v0, v0, -0x2

    #@30
    goto :goto_0

    #@31
    .line 909
    :cond_1
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1144
    if-ne p2, p3, :cond_0

    #@3
    .line 1146
    return-void

    #@4
    .line 1148
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v6

    #@8
    .line 1149
    .local v6, "c":C
    const/16 v0, 0x2f

    #@a
    if-eq v6, v0, :cond_1

    #@c
    const/16 v0, 0x5c

    #@e
    if-ne v6, v0, :cond_4

    #@10
    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@15
    .line 1152
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@17
    const-string/jumbo v1, ""

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 1153
    add-int/lit8 p2, p2, 0x1

    #@1f
    .line 1166
    :cond_2
    :goto_0
    move v2, p2

    #@20
    .local v2, "i":I
    :cond_3
    :goto_1
    if-ge v2, p3, :cond_6

    #@22
    .line 1167
    const-string/jumbo v0, "/\\"

    #@25
    invoke-static {p1, v2, p3, v0}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    #@28
    move-result v3

    #@29
    .line 1168
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_5

    #@2b
    move v4, v5

    #@2c
    .local v4, "segmentHasTrailingSlash":Z
    :goto_2
    move-object v0, p0

    #@2d
    move-object v1, p1

    #@2e
    .line 1169
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    #@31
    .line 1170
    move v2, v3

    #@32
    .line 1171
    if-eqz v4, :cond_3

    #@34
    add-int/lit8 v2, v3, 0x1

    #@36
    goto :goto_1

    #@37
    .line 1159
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_2

    #@3f
    .line 1160
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@41
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@43
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@46
    move-result v1

    #@47
    add-int/lit8 v1, v1, -0x1

    #@49
    const-string/jumbo v7, ""

    #@4c
    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@4f
    goto :goto_0

    #@50
    .line 1168
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_5
    const/4 v4, 0x0

    #@51
    goto :goto_2

    #@52
    .line 1142
    .end local v3    # "pathSegmentDelimiterOffset":I
    :cond_6
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/16 v9, 0x7a

    #@2
    const/16 v8, 0x61

    #@4
    const/16 v7, 0x5a

    #@6
    const/16 v6, 0x41

    #@8
    const/4 v5, -0x1

    #@9
    .line 1291
    sub-int v3, p2, p1

    #@b
    const/4 v4, 0x2

    #@c
    if-ge v3, v4, :cond_0

    #@e
    return v5

    #@f
    .line 1293
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    .line 1294
    .local v1, "c0":C
    if-lt v1, v8, :cond_1

    #@15
    if-le v1, v9, :cond_3

    #@17
    :cond_1
    if-lt v1, v6, :cond_2

    #@19
    if-le v1, v7, :cond_3

    #@1b
    :cond_2
    return v5

    #@1c
    .line 1296
    :cond_3
    add-int/lit8 v2, p1, 0x1

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_9

    #@20
    .line 1297
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 1299
    .local v0, "c":C
    if-lt v0, v8, :cond_5

    #@26
    if-gt v0, v9, :cond_5

    #@28
    .line 1296
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1300
    :cond_5
    if-lt v0, v6, :cond_6

    #@2d
    if-le v0, v7, :cond_4

    #@2f
    .line 1301
    :cond_6
    const/16 v3, 0x30

    #@31
    if-lt v0, v3, :cond_7

    #@33
    const/16 v3, 0x39

    #@35
    if-le v0, v3, :cond_4

    #@37
    .line 1302
    :cond_7
    const/16 v3, 0x2b

    #@39
    if-eq v0, v3, :cond_4

    #@3b
    .line 1303
    const/16 v3, 0x2d

    #@3d
    if-eq v0, v3, :cond_4

    #@3f
    .line 1304
    const/16 v3, 0x2e

    #@41
    if-eq v0, v3, :cond_4

    #@43
    .line 1306
    const/16 v3, 0x3a

    #@45
    if-ne v0, v3, :cond_8

    #@47
    .line 1307
    return v2

    #@48
    .line 1309
    :cond_8
    return v5

    #@49
    .line 1313
    .end local v0    # "c":C
    :cond_9
    return v5
.end method

.method private skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 1251
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@3
    .line 1252
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 1260
    return v0

    #@b
    .line 1251
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 1263
    :cond_0
    return p3

    #@f
    .line 1252
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 1271
    add-int/lit8 v0, p3, -0x1

    #@2
    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    #@4
    .line 1272
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v1

    #@8
    sparse-switch v1, :sswitch_data_0

    #@b
    .line 1280
    add-int/lit8 v1, v0, 0x1

    #@d
    return v1

    #@e
    .line 1271
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    #@10
    goto :goto_0

    #@11
    .line 1283
    :cond_0
    return p2

    #@12
    .line 1272
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1318
    const/4 v1, 0x0

    #@1
    .line 1319
    .local v1, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    #@3
    .line 1320
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 1321
    .local v0, "c":C
    const/16 v2, 0x5c

    #@9
    if-eq v0, v2, :cond_0

    #@b
    const/16 v2, 0x2f

    #@d
    if-ne v0, v2, :cond_1

    #@f
    .line 1322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 1323
    add-int/lit8 p1, p1, 0x1

    #@13
    .line 1321
    goto :goto_0

    #@14
    .line 1328
    .end local v0    # "c":C
    :cond_1
    return v1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 789
    if-nez p1, :cond_0

    #@3
    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "encodedPathSegment == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 792
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    const/4 v5, 0x1

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v4, v2

    #@14
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    #@17
    .line 793
    return-object p0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 8
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 870
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "encodedName == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@10
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@19
    .line 872
    :cond_1
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@1b
    .line 873
    const-string/jumbo v1, " \"\'<>#&="

    #@1e
    move-object v0, p1

    #@1f
    move v4, v2

    #@20
    move v5, v2

    #@21
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 872
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 874
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@2a
    if-eqz p2, :cond_2

    #@2c
    .line 875
    const-string/jumbo v1, " \"\'<>#&="

    #@2f
    move-object v0, p2

    #@30
    move v4, v2

    #@31
    move v5, v2

    #@32
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 874
    :goto_0
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 877
    return-object p0

    #@3a
    :cond_2
    move-object v0, v6

    #@3b
    .line 876
    goto :goto_0
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "pathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 783
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "pathSegment == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 784
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move v4, v2

    #@13
    move v5, v2

    #@14
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    #@17
    .line 785
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 858
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@10
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@19
    .line 860
    :cond_1
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@1b
    .line 861
    const-string/jumbo v1, " \"\'<>#&="

    #@1e
    move-object v0, p1

    #@1f
    move v3, v2

    #@20
    move v5, v4

    #@21
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 860
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 862
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@2a
    if-eqz p2, :cond_2

    #@2c
    .line 863
    const-string/jumbo v1, " \"\'<>#&="

    #@2f
    move-object v0, p2

    #@30
    move v3, v2

    #@31
    move v5, v4

    #@32
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 862
    :goto_0
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 865
    return-object p0

    #@3a
    :cond_2
    move-object v0, v6

    #@3b
    .line 864
    goto :goto_0
.end method

.method public build()Lcom/android/okhttp/HttpUrl;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 963
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "scheme == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@10
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v1, "host == null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 965
    :cond_1
    new-instance v0, Lcom/android/okhttp/HttpUrl;

    #@1d
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl;)V

    #@20
    return-object v0
.end method

.method effectivePort()I
    .locals 2

    #@0
    .prologue
    .line 779
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@a
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedFragment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 930
    if-eqz p1, :cond_0

    #@4
    .line 931
    const-string/jumbo v1, ""

    #@7
    const/4 v2, 0x1

    #@8
    move-object v0, p1

    #@9
    move v4, v3

    #@a
    move v5, v3

    #@b
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 930
    :cond_0
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@11
    .line 933
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPassword"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 754
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "encodedPassword == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 756
    :cond_0
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    #@10
    move-object v0, p1

    #@11
    move v4, v3

    #@12
    move v5, v2

    #@13
    .line 755
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@19
    .line 757
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 832
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "encodedPath == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 833
    :cond_0
    const-string/jumbo v0, "/"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "unexpected encodedPath: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 836
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@31
    move-result v0

    #@32
    const/4 v1, 0x0

    #@33
    invoke-direct {p0, p1, v1, v0}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    #@36
    .line 837
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedQuery"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 849
    if-eqz p1, :cond_0

    #@4
    .line 851
    const-string/jumbo v1, " \"\'<>#"

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p1

    #@9
    move v4, v2

    #@a
    move v5, v2

    #@b
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 850
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    .line 849
    :cond_0
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@15
    .line 853
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedUsername"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 741
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "encodedUsername == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 743
    :cond_0
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    #@10
    move-object v0, p1

    #@11
    move v4, v3

    #@12
    move v5, v2

    #@13
    .line 742
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@19
    .line 744
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 923
    if-eqz p1, :cond_0

    #@4
    .line 924
    const-string/jumbo v1, ""

    #@7
    move-object v0, p1

    #@8
    move v3, v2

    #@9
    move v4, v2

    #@a
    move v5, v2

    #@b
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 923
    :cond_0
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@11
    .line 926
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 765
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "host == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 766
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {p1, v2, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 767
    .local v0, "encoded":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "unexpected host: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 768
    :cond_1
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@32
    .line 769
    return-object p0
.end method

.method parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .locals 28
    .param p1, "base"    # Lcom/android/okhttp/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1021
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    const/4 v4, 0x0

    #@5
    move-object/from16 v0, p0

    #@7
    move-object/from16 v1, p2

    #@9
    invoke-direct {v0, v1, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    #@c
    move-result v5

    #@d
    .line 1022
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, p2

    #@15
    invoke-direct {v0, v1, v5, v3}, Lcom/android/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    #@18
    move-result v23

    #@19
    .line 1025
    .local v23, "limit":I
    move-object/from16 v0, p2

    #@1b
    move/from16 v1, v23

    #@1d
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    #@20
    move-result v26

    #@21
    .line 1026
    .local v26, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    #@22
    move/from16 v0, v26

    #@24
    if-eq v0, v3, :cond_3

    #@26
    .line 1027
    const-string/jumbo v6, "https:"

    #@29
    const/4 v4, 0x1

    #@2a
    const/4 v7, 0x0

    #@2b
    const/4 v8, 0x6

    #@2c
    move-object/from16 v3, p2

    #@2e
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 1028
    const-string/jumbo v3, "https"

    #@37
    move-object/from16 v0, p0

    #@39
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@3b
    .line 1029
    const-string/jumbo v3, "https:"

    #@3e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@41
    move-result v3

    #@42
    add-int/2addr v5, v3

    #@43
    .line 1043
    :goto_0
    const/16 v22, 0x0

    #@45
    .line 1044
    .local v22, "hasUsername":Z
    const/16 v21, 0x0

    #@47
    .line 1045
    .local v21, "hasPassword":Z
    move-object/from16 v0, p2

    #@49
    move/from16 v1, v23

    #@4b
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    #@4e
    move-result v27

    #@4f
    .line 1046
    .local v27, "slashCount":I
    const/4 v3, 0x2

    #@50
    move/from16 v0, v27

    #@52
    if-ge v0, v3, :cond_0

    #@54
    if-nez p1, :cond_5

    #@56
    .line 1056
    :cond_0
    add-int v5, v5, v27

    #@58
    .line 1059
    :goto_1
    const-string/jumbo v3, "@/\\?#"

    #@5b
    move-object/from16 v0, p2

    #@5d
    move/from16 v1, v23

    #@5f
    invoke-static {v0, v5, v1, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    #@62
    move-result v20

    #@63
    .line 1060
    .local v20, "componentDelimiterOffset":I
    move/from16 v0, v20

    #@65
    move/from16 v1, v23

    #@67
    if-eq v0, v1, :cond_a

    #@69
    .line 1061
    move-object/from16 v0, p2

    #@6b
    move/from16 v1, v20

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@70
    move-result v18

    #@71
    .line 1063
    .local v18, "c":I
    :goto_2
    sparse-switch v18, :sswitch_data_0

    #@74
    goto :goto_1

    #@75
    .line 1093
    :sswitch_0
    move-object/from16 v0, p2

    #@77
    move/from16 v1, v20

    #@79
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    #@7c
    move-result v25

    #@7d
    .line 1094
    .local v25, "portColonOffset":I
    add-int/lit8 v3, v25, 0x1

    #@7f
    move/from16 v0, v20

    #@81
    if-ge v3, v0, :cond_e

    #@83
    .line 1095
    move-object/from16 v0, p2

    #@85
    move/from16 v1, v25

    #@87
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    move-object/from16 v0, p0

    #@8d
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@8f
    .line 1096
    add-int/lit8 v3, v25, 0x1

    #@91
    move-object/from16 v0, p2

    #@93
    move/from16 v1, v20

    #@95
    invoke-static {v0, v3, v1}, Lcom/android/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    #@98
    move-result v3

    #@99
    move-object/from16 v0, p0

    #@9b
    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@9d
    .line 1097
    move-object/from16 v0, p0

    #@9f
    iget v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@a1
    const/4 v4, -0x1

    #@a2
    if-ne v3, v4, :cond_f

    #@a4
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@a6
    return-object v3

    #@a7
    .line 1030
    .end local v18    # "c":I
    .end local v20    # "componentDelimiterOffset":I
    .end local v21    # "hasPassword":Z
    .end local v22    # "hasUsername":Z
    .end local v25    # "portColonOffset":I
    .end local v27    # "slashCount":I
    :cond_1
    const-string/jumbo v6, "http:"

    #@aa
    const/4 v4, 0x1

    #@ab
    const/4 v7, 0x0

    #@ac
    const/4 v8, 0x5

    #@ad
    move-object/from16 v3, p2

    #@af
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@b2
    move-result v3

    #@b3
    if-eqz v3, :cond_2

    #@b5
    .line 1031
    const-string/jumbo v3, "http"

    #@b8
    move-object/from16 v0, p0

    #@ba
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@bc
    .line 1032
    const-string/jumbo v3, "http:"

    #@bf
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c2
    move-result v3

    #@c3
    add-int/2addr v5, v3

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1034
    :cond_2
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@c8
    return-object v3

    #@c9
    .line 1036
    :cond_3
    if-eqz p1, :cond_4

    #@cb
    .line 1037
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    move-object/from16 v0, p0

    #@d1
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1039
    :cond_4
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@d7
    return-object v3

    #@d8
    .line 1046
    .restart local v21    # "hasPassword":Z
    .restart local v22    # "hasUsername":Z
    .restart local v27    # "slashCount":I
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@db
    move-result-object v3

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@e0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v3

    #@e4
    if-eqz v3, :cond_0

    #@e6
    .line 1109
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    #@e9
    move-result-object v3

    #@ea
    move-object/from16 v0, p0

    #@ec
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@ee
    .line 1110
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    #@f1
    move-result-object v3

    #@f2
    move-object/from16 v0, p0

    #@f4
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@f6
    .line 1111
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get0(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    move-object/from16 v0, p0

    #@fc
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@fe
    .line 1112
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get1(Lcom/android/okhttp/HttpUrl;)I

    #@101
    move-result v3

    #@102
    move-object/from16 v0, p0

    #@104
    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@106
    .line 1113
    move-object/from16 v0, p0

    #@108
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@10a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@10d
    .line 1114
    move-object/from16 v0, p0

    #@10f
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@111
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    #@114
    move-result-object v4

    #@115
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@118
    .line 1115
    move/from16 v0, v23

    #@11a
    if-eq v5, v0, :cond_6

    #@11c
    move-object/from16 v0, p2

    #@11e
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@121
    move-result v3

    #@122
    const/16 v4, 0x23

    #@124
    if-ne v3, v4, :cond_7

    #@126
    .line 1116
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    move-object/from16 v0, p0

    #@12c
    invoke-virtual {v0, v3}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@12f
    .line 1121
    :cond_7
    :goto_3
    const-string/jumbo v3, "?#"

    #@132
    move-object/from16 v0, p2

    #@134
    move/from16 v1, v23

    #@136
    invoke-static {v0, v5, v1, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    #@139
    move-result v24

    #@13a
    .line 1122
    .local v24, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    #@13c
    move-object/from16 v1, p2

    #@13e
    move/from16 v2, v24

    #@140
    invoke-direct {v0, v1, v5, v2}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    #@143
    .line 1123
    move/from16 v5, v24

    #@145
    .line 1126
    move/from16 v0, v24

    #@147
    move/from16 v1, v23

    #@149
    if-ge v0, v1, :cond_8

    #@14b
    move-object/from16 v0, p2

    #@14d
    move/from16 v1, v24

    #@14f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@152
    move-result v3

    #@153
    const/16 v4, 0x3f

    #@155
    if-ne v3, v4, :cond_8

    #@157
    .line 1127
    const-string/jumbo v3, "#"

    #@15a
    move-object/from16 v0, p2

    #@15c
    move/from16 v1, v24

    #@15e
    move/from16 v2, v23

    #@160
    invoke-static {v0, v1, v2, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    #@163
    move-result v9

    #@164
    .line 1129
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v24, 0x1

    #@166
    const-string/jumbo v10, " \"\'<>#"

    #@169
    const/4 v11, 0x1

    #@16a
    const/4 v12, 0x0

    #@16b
    const/4 v13, 0x1

    #@16c
    const/4 v14, 0x1

    #@16d
    move-object/from16 v7, p2

    #@16f
    .line 1128
    invoke-static/range {v7 .. v14}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@172
    move-result-object v3

    #@173
    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    #@176
    move-result-object v3

    #@177
    move-object/from16 v0, p0

    #@179
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@17b
    .line 1130
    move v5, v9

    #@17c
    .line 1134
    .end local v9    # "queryDelimiterOffset":I
    :cond_8
    move/from16 v0, v23

    #@17e
    if-ge v5, v0, :cond_9

    #@180
    move-object/from16 v0, p2

    #@182
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@185
    move-result v3

    #@186
    const/16 v4, 0x23

    #@188
    if-ne v3, v4, :cond_9

    #@18a
    .line 1136
    add-int/lit8 v11, v5, 0x1

    #@18c
    const-string/jumbo v13, ""

    #@18f
    const/4 v14, 0x1

    #@190
    const/4 v15, 0x0

    #@191
    const/16 v16, 0x0

    #@193
    const/16 v17, 0x0

    #@195
    move-object/from16 v10, p2

    #@197
    move/from16 v12, v23

    #@199
    .line 1135
    invoke-static/range {v10 .. v17}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@19c
    move-result-object v3

    #@19d
    move-object/from16 v0, p0

    #@19f
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@1a1
    .line 1139
    :cond_9
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@1a3
    return-object v3

    #@1a4
    .line 1062
    .end local v24    # "pathDelimiterOffset":I
    .restart local v20    # "componentDelimiterOffset":I
    :cond_a
    const/16 v18, -0x1

    #@1a6
    goto/16 :goto_2

    #@1a8
    .line 1066
    .restart local v18    # "c":I
    :sswitch_1
    if-nez v21, :cond_d

    #@1aa
    .line 1068
    const-string/jumbo v3, ":"

    #@1ad
    .line 1067
    move-object/from16 v0, p2

    #@1af
    move/from16 v1, v20

    #@1b1
    invoke-static {v0, v5, v1, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    #@1b4
    move-result v6

    #@1b5
    .line 1070
    .local v6, "passwordColonOffset":I
    const-string/jumbo v7, " \"\':;<=>@[]^`{}|/\\?#"

    #@1b8
    const/4 v8, 0x1

    #@1b9
    const/4 v9, 0x0

    #@1ba
    const/4 v10, 0x0

    #@1bb
    const/4 v11, 0x1

    #@1bc
    move-object/from16 v4, p2

    #@1be
    .line 1069
    invoke-static/range {v4 .. v11}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@1c1
    move-result-object v19

    #@1c2
    .line 1071
    .local v19, "canonicalUsername":Ljava/lang/String;
    if-eqz v22, :cond_b

    #@1c4
    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@1cd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v3

    #@1d1
    const-string/jumbo v4, "%40"

    #@1d4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v3

    #@1d8
    move-object/from16 v0, v19

    #@1da
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v3

    #@1de
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v19

    #@1e2
    .line 1071
    .end local v19    # "canonicalUsername":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v19

    #@1e4
    move-object/from16 v1, p0

    #@1e6
    iput-object v0, v1, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@1e8
    .line 1074
    move/from16 v0, v20

    #@1ea
    if-eq v6, v0, :cond_c

    #@1ec
    .line 1075
    const/16 v21, 0x1

    #@1ee
    .line 1076
    add-int/lit8 v8, v6, 0x1

    #@1f0
    .line 1077
    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    #@1f3
    const/4 v11, 0x1

    #@1f4
    const/4 v12, 0x0

    #@1f5
    const/4 v13, 0x0

    #@1f6
    const/4 v14, 0x1

    #@1f7
    move-object/from16 v7, p2

    #@1f9
    move/from16 v9, v20

    #@1fb
    .line 1076
    invoke-static/range {v7 .. v14}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@1fe
    move-result-object v3

    #@1ff
    move-object/from16 v0, p0

    #@201
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@203
    .line 1079
    :cond_c
    const/16 v22, 0x1

    #@205
    .line 1084
    .end local v6    # "passwordColonOffset":I
    :goto_4
    add-int/lit8 v5, v20, 0x1

    #@207
    .line 1085
    goto/16 :goto_1

    #@209
    .line 1081
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v3

    #@216
    const-string/jumbo v4, "%40"

    #@219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v3

    #@21d
    .line 1082
    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    #@220
    const/4 v11, 0x1

    #@221
    const/4 v12, 0x0

    #@222
    const/4 v13, 0x0

    #@223
    const/4 v14, 0x1

    #@224
    move-object/from16 v7, p2

    #@226
    move v8, v5

    #@227
    move/from16 v9, v20

    #@229
    .line 1081
    invoke-static/range {v7 .. v14}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@22c
    move-result-object v4

    #@22d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v3

    #@231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@234
    move-result-object v3

    #@235
    move-object/from16 v0, p0

    #@237
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@239
    goto :goto_4

    #@23a
    .line 1099
    .restart local v25    # "portColonOffset":I
    :cond_e
    move-object/from16 v0, p2

    #@23c
    move/from16 v1, v25

    #@23e
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    #@241
    move-result-object v3

    #@242
    move-object/from16 v0, p0

    #@244
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@246
    .line 1100
    move-object/from16 v0, p0

    #@248
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@24a
    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@24d
    move-result v3

    #@24e
    move-object/from16 v0, p0

    #@250
    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@252
    .line 1102
    :cond_f
    move-object/from16 v0, p0

    #@254
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@256
    if-nez v3, :cond_10

    #@258
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@25a
    return-object v3

    #@25b
    .line 1103
    :cond_10
    move/from16 v5, v20

    #@25d
    .line 1104
    goto/16 :goto_3

    #@25f
    .line 1063
    nop

    #@260
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 748
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "password == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 749
    :cond_0
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    #@f
    const/4 v5, 0x1

    #@10
    move-object v0, p1

    #@11
    move v3, v2

    #@12
    move v4, v2

    #@13
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@19
    .line 750
    return-object p0
.end method

.method public port(I)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "port"    # I

    #@0
    .prologue
    .line 773
    if-lez p1, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "unexpected port: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 774
    :cond_1
    iput p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@23
    .line 775
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 841
    if-eqz p1, :cond_0

    #@5
    .line 843
    const-string/jumbo v1, " \"\'<>#"

    #@8
    move-object v0, p1

    #@9
    move v3, v2

    #@a
    move v5, v4

    #@b
    .line 842
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    .line 841
    :cond_0
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@15
    .line 845
    return-object p0
.end method

.method reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;
    .locals 14

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 941
    const/4 v12, 0x0

    #@3
    .local v12, "i":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8
    move-result v13

    #@9
    .local v13, "size":I
    :goto_0
    if-ge v12, v13, :cond_0

    #@b
    .line 942
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@d
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    .line 943
    .local v0, "pathSegment":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@15
    .line 944
    const-string/jumbo v1, "[]"

    #@18
    move v3, v2

    #@19
    move v5, v2

    #@1a
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 943
    invoke-interface {v6, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 941
    add-int/lit8 v12, v12, 0x1

    #@23
    goto :goto_0

    #@24
    .line 946
    .end local v0    # "pathSegment":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 947
    const/4 v12, 0x0

    #@29
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@2e
    move-result v13

    #@2f
    :goto_1
    if-ge v12, v13, :cond_2

    #@31
    .line 948
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@33
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Ljava/lang/String;

    #@39
    .line 949
    .local v5, "component":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@3b
    .line 950
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@3d
    .line 951
    const-string/jumbo v6, "\\^`{|}"

    #@40
    move v7, v2

    #@41
    move v8, v2

    #@42
    move v9, v2

    #@43
    move v10, v2

    #@44
    invoke-static/range {v5 .. v10}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 950
    invoke-interface {v1, v12, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 947
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 955
    .end local v5    # "component":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@50
    if-eqz v1, :cond_3

    #@52
    .line 957
    iget-object v6, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@54
    const-string/jumbo v7, " \"#<>\\^`{|}"

    #@57
    move v8, v2

    #@58
    move v9, v2

    #@59
    move v10, v4

    #@5a
    move v11, v4

    #@5b
    .line 956
    invoke-static/range {v6 .. v11}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@61
    .line 959
    :cond_3
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 902
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "encodedName == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@e
    if-nez v0, :cond_1

    #@10
    return-object p0

    #@11
    .line 905
    :cond_1
    const-string/jumbo v1, " \"\'<>#&="

    #@14
    const/4 v3, 0x0

    #@15
    move-object v0, p1

    #@16
    move v4, v2

    #@17
    move v5, v2

    #@18
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 904
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    #@1f
    .line 906
    return-object p0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 893
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "name == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@f
    if-nez v0, :cond_1

    #@11
    return-object p0

    #@12
    .line 896
    :cond_1
    const-string/jumbo v1, " \"\'<>#&="

    #@15
    move-object v0, p1

    #@16
    move v3, v2

    #@17
    move v5, v4

    #@18
    .line 895
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 897
    .local v6, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    #@1f
    .line 898
    return-object p0
.end method

.method public removePathSegment(I)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    .line 828
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 722
    if-nez p1, :cond_0

    #@2
    .line 723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "scheme == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 724
    :cond_0
    const-string/jumbo v0, "http"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 725
    const-string/jumbo v0, "http"

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@19
    .line 731
    :goto_0
    return-object p0

    #@1a
    .line 726
    :cond_1
    const-string/jumbo v0, "https"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 727
    const-string/jumbo v0, "https"

    #@26
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@28
    goto :goto_0

    #@29
    .line 729
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "unexpected scheme: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 9
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 808
    if-nez p2, :cond_0

    #@4
    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "encodedPathSegment == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 812
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    #@14
    move-object v0, p2

    #@15
    move v5, v1

    #@16
    move v6, v1

    #@17
    move v7, v4

    #@18
    .line 811
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    .line 813
    .local v8, "canonicalPathSegment":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@1e
    invoke-interface {v0, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 814
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_1

    #@27
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 815
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "unexpected path segment: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 817
    :cond_2
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 0
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@3
    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@6
    .line 889
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 9
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 797
    if-nez p2, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "pathSegment == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 799
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    #@13
    const/4 v7, 0x1

    #@14
    move-object v0, p2

    #@15
    move v4, v1

    #@16
    move v5, v1

    #@17
    move v6, v1

    #@18
    .line 798
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    .line 800
    .local v8, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 801
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "unexpected path segment: "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@44
    invoke-interface {v0, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 804
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@3
    .line 882
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@6
    .line 883
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x3a

    #@2
    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 970
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 971
    const-string/jumbo v2, "://"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 973
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@14
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 982
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@27
    move-result v2

    #@28
    const/4 v3, -0x1

    #@29
    if-eq v2, v3, :cond_5

    #@2b
    .line 984
    const/16 v2, 0x5b

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 985
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 986
    const/16 v2, 0x5d

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 991
    :goto_1
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    #@3d
    move-result v0

    #@3e
    .line 992
    .local v0, "effectivePort":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@40
    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@43
    move-result v2

    #@44
    if-eq v0, v2, :cond_0

    #@46
    .line 993
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 994
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    .line 997
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@4e
    invoke-static {v1, v2}, Lcom/android/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    #@51
    .line 999
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@53
    if-eqz v2, :cond_1

    #@55
    .line 1000
    const/16 v2, 0x3f

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 1001
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@5c
    invoke-static {v1, v2}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    #@5f
    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@61
    if-eqz v2, :cond_2

    #@63
    .line 1005
    const/16 v2, 0x23

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 1006
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 1009
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    return-object v2

    #@72
    .line 974
    .end local v0    # "effectivePort":I
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 975
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@79
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@7c
    move-result v2

    #@7d
    if-nez v2, :cond_4

    #@7f
    .line 976
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    .line 977
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 979
    :cond_4
    const/16 v2, 0x40

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8c
    goto :goto_0

    #@8d
    .line 988
    :cond_5
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    goto :goto_1
.end method

.method public username(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 735
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "username == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 736
    :cond_0
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    #@f
    const/4 v5, 0x1

    #@10
    move-object v0, p1

    #@11
    move v3, v2

    #@12
    move v4, v2

    #@13
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@19
    .line 737
    return-object p0
.end method
