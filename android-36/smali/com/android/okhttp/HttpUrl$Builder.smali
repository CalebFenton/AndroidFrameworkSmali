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
.field greylist-max-o encodedFragment:Ljava/lang/String;

.field greylist-max-o encodedPassword:Ljava/lang/String;

.field final greylist-max-o encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o encodedUsername:Ljava/lang/String;

.field greylist-max-o host:Ljava/lang/String;

.field greylist-max-o port:I

.field greylist-max-o scheme:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 673
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    const/4 v1, -0x1

    .line 675
    iput v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 681
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static greylist-max-o canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1288
    invoke-static {p0, p1, p2, v0}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    .line 1291
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1293
    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p0, p2, p1}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_30

    .line 1295
    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object p0

    :goto_30
    if-nez p0, :cond_34

    const/4 p0, 0x0

    return-object p0

    .line 1297
    :cond_34
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 1298
    array-length p1, p0

    const/16 p2, 0x10

    if-ne p1, p2, :cond_42

    invoke-static {p0}, Lcom/android/okhttp/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1299
    :cond_42
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1302
    :cond_48
    invoke-static {p0}, Lcom/android/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1434
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1435
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_23

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_16

    goto :goto_23

    .line 1445
    :cond_16
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    return v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    :goto_23
    return v4

    :cond_24
    return v0
.end method

.method private static greylist-max-o decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 12

    move v0, p4

    :goto_1
    const/4 v1, 0x0

    if-ge p1, p2, :cond_44

    .line 1382
    array-length v2, p3

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    if-eq v0, p4, :cond_15

    .line 1386
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    :cond_15
    move v2, p1

    move v3, v1

    :goto_17
    if-ge v2, p2, :cond_37

    .line 1394
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_37

    const/16 v6, 0x39

    if-le v4, v6, :cond_26

    goto :goto_37

    :cond_26
    if-nez v3, :cond_2b

    if-eq p1, v2, :cond_2b

    return v1

    :cond_2b
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_34

    return v1

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    :goto_37
    sub-int p1, v2, p1

    if-nez p1, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    .line 1404
    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    :cond_44
    add-int/lit8 p4, p4, 0x4

    if-eq v0, p4, :cond_49

    return v1

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 15

    const/16 v0, 0x10

    .line 1307
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_9
    const/4 v7, 0x0

    if-ge p1, p2, :cond_79

    if-ne v4, v0, :cond_f

    return-object v7

    :cond_f
    add-int/lit8 v8, p1, 0x2

    const/4 v9, 0x2

    if-gt v8, p2, :cond_27

    .line 1316
    const-string v10, "::"

    invoke-virtual {p0, p1, v10, v2, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_27

    if-eq v5, v3, :cond_1f

    return-object v7

    :cond_1f
    add-int/lit8 v4, v4, 0x2

    move v5, v4

    if-ne v8, p2, :cond_25

    goto :goto_79

    :cond_25
    move v6, v8

    goto :goto_4b

    :cond_27
    if-eqz v4, :cond_34

    .line 1325
    const-string v8, ":"

    const/4 v10, 0x1

    invoke-virtual {p0, p1, v8, v2, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_36

    add-int/lit8 p1, p1, 0x1

    :cond_34
    move v6, p1

    goto :goto_4b

    .line 1327
    :cond_36
    const-string v8, "."

    invoke-virtual {p0, p1, v8, v2, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_4a

    add-int/lit8 p1, v4, -0x2

    .line 1329
    invoke-static {p0, v6, p2, v1, p1}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_47

    return-object v7

    :cond_47
    add-int/lit8 v4, v4, 0x2

    goto :goto_79

    :cond_4a
    return-object v7

    :goto_4b
    move v8, v2

    move p1, v6

    :goto_4d
    if-ge p1, p2, :cond_60

    .line 1341
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1342
    invoke-static {v10}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v10

    if-ne v10, v3, :cond_5a

    goto :goto_60

    :cond_5a
    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v10

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_60
    :goto_60
    sub-int v10, p1, v6

    if-eqz v10, :cond_78

    const/4 v11, 0x4

    if-le v10, v11, :cond_68

    goto :goto_78

    :cond_68
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 1350
    aput-byte v10, v1, v4

    add-int/2addr v4, v9

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 1351
    aput-byte v8, v1, v7

    goto :goto_9

    :cond_78
    :goto_78
    return-object v7

    :cond_79
    :goto_79
    if-eq v4, v0, :cond_8a

    if-ne v5, v3, :cond_7e

    return-object v7

    :cond_7e
    sub-int p0, v4, v5

    rsub-int/lit8 p1, p0, 0x10

    .line 1365
    invoke-static {v1, v5, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 1366
    invoke-static {v1, v5, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1370
    :cond_8a
    :try_start_8a
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_8e
    .catch Ljava/net/UnknownHostException; {:try_start_8a .. :try_end_8e} :catch_8f

    return-object p0

    .line 1372
    :catch_8f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static greylist-max-o domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1419
    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1420
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    .line 1423
    :cond_12
    invoke-static {p0}, Lcom/android/okhttp/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_16} :catch_1a

    if-eqz v1, :cond_19

    return-object v0

    :cond_19
    return-object p0

    :catch_1a
    return-object v0
.end method

.method private static greylist-max-o inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 1456
    :goto_4
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_22

    move v4, v2

    :goto_a
    if-ge v4, v5, :cond_19

    .line 1458
    aget-byte v6, p0, v4

    if-nez v6, :cond_19

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_19

    add-int/lit8 v4, v4, 0x2

    goto :goto_a

    :cond_19
    sub-int v5, v4, v2

    if-le v5, v3, :cond_1f

    move v0, v2

    move v3, v5

    :cond_1f
    add-int/lit8 v2, v4, 0x2

    goto :goto_4

    .line 1469
    :cond_22
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1470
    :cond_27
    :goto_27
    array-length v4, p0

    if-ge v1, v4, :cond_51

    const/16 v4, 0x3a

    if-ne v1, v0, :cond_38

    .line 1472
    invoke-virtual {v2, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    add-int/2addr v1, v3

    if-ne v1, v5, :cond_27

    .line 1474
    invoke-virtual {v2, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_27

    :cond_38
    if-lez v1, :cond_3d

    .line 1476
    invoke-virtual {v2, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1477
    :cond_3d
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    int-to-long v6, v4

    .line 1478
    invoke-virtual {v2, v6, v7}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_27

    .line 1482
    :cond_51
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o isDot(Ljava/lang/String;)Z
    .registers 2

    .line 1153
    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "%2e"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o isDotDot(Ljava/lang/String;)Z
    .registers 2

    .line 1157
    const-string p0, ".."

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "%2e."

    .line 1158
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, ".%2e"

    .line 1159
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "%2e%2e"

    .line 1160
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o parsePort(Ljava/lang/String;II)I
    .registers 12

    const/4 v0, -0x1

    .line 1488
    :try_start_1
    const-string v4, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    .line 1489
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1a

    if-lez p0, :cond_1a

    const p1, 0xffff

    if-gt p0, p1, :cond_1a

    return p0

    :catch_1a
    :cond_1a
    return v0
.end method

.method private greylist-max-o pop()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1177
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1178
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1180
    :cond_2a
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static greylist-max-o portColonOffset(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1f

    .line 1272
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1b

    .line 1275
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p1

    :cond_1f
    return p2
.end method

.method private greylist-max-o push(Ljava/lang/String;IIZZ)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1133
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 1135
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_4c

    .line 1138
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 1139
    invoke-direct {p0}, Lcom/android/okhttp/HttpUrl$Builder;->pop()V

    return-void

    .line 1142
    :cond_1e
    iget-object p2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 1143
    iget-object p2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 1145
    :cond_3e
    iget-object p2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    if-eqz p4, :cond_4c

    .line 1148
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string p1, ""

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method private greylist-max-o removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5

    .line 870
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_8
    if-ltz v0, :cond_31

    .line 871
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 872
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 873
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 874
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 p1, 0x0

    .line 875
    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-void

    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    :cond_31
    return-void
.end method

.method private greylist-max-o resolvePath(Ljava/lang/String;II)V
    .registers 14

    if-ne p2, p3, :cond_3

    goto :goto_47

    .line 1109
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    .line 1110
    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    .line 1117
    :cond_13
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1112
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1113
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    :goto_2a
    move v6, p2

    :goto_2b
    if-ge v6, p3, :cond_47

    .line 1122
    const-string p2, "/\\"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p1, v6, p3, p2}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    if-ge v7, p3, :cond_37

    move v8, v3

    goto :goto_39

    :cond_37
    const/4 p2, 0x0

    move v8, p2

    :goto_39
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    .line 1124
    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    if-eqz v8, :cond_43

    add-int/lit8 v7, v7, 0x1

    :cond_43
    move v6, v7

    move-object p0, v4

    move-object p1, v5

    goto :goto_2b

    :cond_47
    :goto_47
    return-void
.end method

.method private static greylist-max-o schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 10

    sub-int v0, p2, p1

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ge v0, v1, :cond_7

    return v2

    .line 1231
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v4, :cond_1c

    :cond_17
    if-lt v0, v3, :cond_46

    if-le v0, v1, :cond_1c

    goto :goto_46

    :cond_1c
    :goto_1c
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_46

    .line 1235
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_28

    if-le v0, v4, :cond_1c

    :cond_28
    if-lt v0, v3, :cond_2c

    if-le v0, v1, :cond_1c

    :cond_2c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_34

    const/16 v6, 0x39

    if-le v0, v6, :cond_1c

    :cond_34
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_41

    goto :goto_1c

    :cond_41
    const/16 p0, 0x3a

    if-ne v0, p0, :cond_46

    return p1

    :cond_46
    :goto_46
    return v2
.end method

.method private greylist-max-o skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_1e

    .line 1190
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1b

    return p2

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1e
    return p3
.end method

.method private greylist-max-o skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-lt p3, p2, :cond_22

    .line 1210
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1f

    add-int/lit8 p3, p3, 0x1

    return p3

    :cond_1f
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_22
    return p2
.end method

.method private static greylist-max-o slashCount(Ljava/lang/String;II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_14

    .line 1258
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_14
    return v0
.end method


# virtual methods
.method public greylist-max-o addEncodedPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_f

    .line 755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    return-object v0

    .line 753
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedPathSegment == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 10

    if-eqz p1, :cond_32

    .line 831
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 832
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 833
    const-string v2, " \"<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 835
    const-string v1, " \"<>#&="

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    .line 834
    :goto_2e
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 830
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedName == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o addPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_f

    .line 747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    return-object v0

    .line 746
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pathSegment == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 10

    if-eqz p1, :cond_32

    .line 819
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 820
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 821
    const-string v2, " \"<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 820
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 823
    const-string v1, " \"<>#&="

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    .line 822
    :goto_2e
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 818
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist build()Lcom/android/okhttp/HttpUrl;
    .registers 3
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 925
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 926
    new-instance v0, Lcom/android/okhttp/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl$1;)V

    return-object v0

    .line 925
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "host == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 924
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "scheme == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist-max-o effectivePort()I
    .registers 3

    .line 742
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist-max-o encodedFragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 891
    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 892
    :goto_f
    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o encodedPassword(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 718
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    return-object p0

    .line 717
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedPassword == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o encodedPath(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4

    if-eqz p1, :cond_2a

    .line 793
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 796
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    return-object p0

    .line 794
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected encodedPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 792
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedPath == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_12

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 811
    const-string v1, " \"<>#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 810
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 812
    :goto_13
    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o encodedUsername(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 705
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    return-object p0

    .line 704
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedUsername == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o fragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 884
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 885
    :goto_f
    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 731
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    return-object p0

    .line 730
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 728
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "host == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist-max-o parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 982
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7, v2}, Lcom/android/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v3

    .line 983
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v9

    .line 986
    invoke-static {v1, v3, v9}, Lcom/android/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_47

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v2, 0x1

    .line 988
    const-string v4, "https:"

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 989
    const-string v1, "https"

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v1, p2

    goto :goto_4f

    :cond_30
    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v2, 0x1

    .line 991
    const-string v4, "http:"

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 992
    const-string v2, "http"

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5

    goto :goto_4f

    .line 995
    :cond_44
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0

    :cond_47
    if-eqz p1, :cond_1c0

    .line 998
    # getter for: Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$100(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1006
    :goto_4f
    invoke-static {v1, v3, v9}, Lcom/android/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x2

    const/16 v11, 0x3f

    const/16 v12, 0x23

    if-ge v2, v4, :cond_a2

    if-eqz p1, :cond_a2

    .line 1007
    # getter for: Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$100(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    goto :goto_a2

    .line 1070
    :cond_69
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1071
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1072
    # getter for: Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$300(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1073
    # getter for: Lcom/android/okhttp/HttpUrl;->port:I
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$400(Lcom/android/okhttp/HttpUrl;)I

    move-result v2

    iput v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1074
    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1075
    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v3, v9, :cond_97

    .line 1076
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_9e

    .line 1077
    :cond_97
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    :cond_9e
    const/16 v18, 0x1

    goto/16 :goto_17a

    :cond_a2
    :goto_a2
    add-int/2addr v3, v2

    move v2, v3

    move v14, v7

    move v15, v14

    .line 1020
    :goto_a6
    const-string v3, "@/\\?#"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v1, v2, v9, v3}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_b3

    .line 1022
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_b4

    :cond_b3
    move v4, v10

    :goto_b4
    if-eq v4, v10, :cond_14a

    if-eq v4, v12, :cond_14a

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_14a

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_14a

    if-eq v4, v11, :cond_14a

    const/16 v5, 0x40

    if-eq v4, v5, :cond_ca

    const/16 v18, 0x1

    goto/16 :goto_146

    .line 1027
    :cond_ca
    const-string v4, "%40"

    if-nez v14, :cond_11e

    .line 1028
    const-string v5, ":"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v1, v2, v3, v5}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v6, v4

    .line 1030
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move/from16 v16, v3

    move v3, v5

    const/4 v5, 0x1

    move-object/from16 v17, v6

    const/4 v6, 0x0

    move/from16 v13, v16

    move-object/from16 v12, v17

    const/16 v18, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v15, :cond_100

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1034
    :cond_100
    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    if-eq v3, v13, :cond_118

    add-int/lit8 v2, v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1037
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    move/from16 v14, v18

    goto :goto_119

    :cond_118
    move v3, v13

    :goto_119
    move-object/from16 v1, p2

    move/from16 v15, v18

    goto :goto_143

    :cond_11e
    move-object v12, v4

    const/16 v18, 0x1

    .line 1042
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    :goto_143
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    :goto_146
    const/16 v12, 0x23

    goto/16 :goto_a6

    :cond_14a
    const/16 v18, 0x1

    .line 1054
    invoke-static {v1, v2, v3}, Lcom/android/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_165

    .line 1056
    invoke-static {v1, v2, v4}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1057
    invoke-static {v1, v5, v3}, Lcom/android/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    if-ne v2, v10, :cond_173

    .line 1058
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0

    .line 1060
    :cond_165
    invoke-static {v1, v2, v4}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1061
    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1063
    :cond_173
    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v2, :cond_17a

    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0

    .line 1082
    :cond_17a
    :goto_17a
    const-string v2, "?#"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v1, v3, v9, v2}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1083
    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    if-ge v2, v9, :cond_1a4

    .line 1087
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_1a4

    .line 1088
    const-string v3, "#"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v1, v2, v9, v3}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1089
    const-string v4, " \"<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move v2, v3

    :cond_1a4
    if-ge v2, v9, :cond_1bd

    .line 1095
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1bd

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1096
    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v3, v9

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1100
    :cond_1bd
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0

    .line 1000
    :cond_1c0
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0
.end method

.method public greylist-max-o password(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 712
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    return-object p0

    .line 711
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "password == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o port(I)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4

    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 737
    iput p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    return-object p0

    .line 736
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o query(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_12

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 802
    const-string v1, " \"<>#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 804
    :goto_13
    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-object p0
.end method

.method greylist-max-o reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11

    .line 901
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    .line 902
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 903
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 904
    const-string v5, "[]"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 903
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 906
    :cond_25
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 907
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2d
    if-ge v1, v0, :cond_4c

    .line 908
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_49

    .line 910
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 911
    const-string v4, "\\^`{|}"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 915
    :cond_4c
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5c

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 916
    const-string v3, " \"#<>\\^`{|}"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    :cond_5c
    return-object p0
.end method

.method public greylist-max-o removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 9

    if-eqz p1, :cond_16

    .line 863
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 865
    const-string v2, " \"<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    return-object p0

    .line 862
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedName == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 9

    if-eqz p1, :cond_16

    .line 854
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 855
    const-string v2, " \"<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    return-object p0

    .line 853
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o removePathSegment(I)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3

    .line 784
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 785
    iget-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 786
    iget-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method public greylist-max-o scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4

    if-eqz p1, :cond_2f

    .line 687
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 688
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    return-object p0

    .line 689
    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 690
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    return-object p0

    .line 692
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 686
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scheme == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o setEncodedPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11

    if-eqz p2, :cond_3b

    .line 775
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 774
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    .line 776
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-direct {p0, p2}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    invoke-direct {p0, p2}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    return-object p0

    .line 778
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected path segment: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 772
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encodedPathSegment == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 848
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    return-object p0
.end method

.method public greylist-max-o setPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11

    if-eqz p2, :cond_3b

    .line 762
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 761
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    .line 763
    invoke-direct {p0, p2}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0, p2}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 766
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 764
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected path segment: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 760
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pathSegment == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 935
    :cond_21
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 937
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v1, 0x40

    .line 940
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    :cond_3b
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    const/16 v1, 0x5b

    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 946
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 947
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 949
    :cond_54
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :goto_59
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 953
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    :cond_6b
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 960
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_7e

    const/16 v1, 0x3f

    .line 961
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 962
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 965
    :cond_7e
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const/16 v1, 0x23

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o username(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8

    if-eqz p1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 699
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    return-object p0

    .line 698
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "username == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
