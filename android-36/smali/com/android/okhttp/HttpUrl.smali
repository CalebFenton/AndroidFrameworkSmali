.class public final Lcom/android/okhttp/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final greylist-max-o FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final greylist-max-o FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final greylist-max-o FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final greylist-max-o HEX_DIGITS:[C

.field static final greylist-max-o PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final greylist-max-o PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final greylist-max-o PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final greylist-max-o QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"<>#&="

.field static final greylist-max-o QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final greylist-max-o QUERY_ENCODE_SET:Ljava/lang/String; = " \"<>#"

.field static final greylist-max-o USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final greylist-max-o fragment:Ljava/lang/String;

.field private final greylist-max-o host:Ljava/lang/String;

.field private final greylist-max-o password:Ljava/lang/String;

.field private final greylist-max-o pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o port:I

.field private final greylist-max-o queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o scheme:Ljava/lang/String;

.field private final greylist-max-o url:Ljava/lang/String;

.field private final greylist-max-o username:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 258
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/HttpUrl$Builder;)V
    .registers 6

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    .line 314
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    .line 316
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    .line 317
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    const/4 v3, 0x1

    .line 318
    invoke-direct {p0, v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, v2

    .line 319
    :goto_36
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 320
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 321
    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_40
    iput-object v2, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl$1;)V
    .registers 3

    .line 257
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$200(Ljava/lang/String;IILjava/lang/String;)I
    .registers 4

    .line 257
    invoke-static {p0, p1, p2, p3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/HttpUrl;)I
    .registers 1

    .line 257
    iget p0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    return p0
.end method

.method static greylist-max-o canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 17

    move v2, p1

    :goto_1
    if-ge v2, p2, :cond_4f

    .line 1591
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_37

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_37

    const/16 v1, 0x80

    if-lt v0, v1, :cond_15

    if-nez p7, :cond_37

    .line 1595
    :cond_15
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_37

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2a

    if-eqz p4, :cond_37

    if-eqz p5, :cond_2a

    .line 1596
    invoke-static {p0, v2, p2}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_2a
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_31

    if-eqz p6, :cond_31

    goto :goto_37

    .line 1590
    :cond_31
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 1599
    :cond_37
    :goto_37
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1600
    invoke-virtual {v0, p0, p1, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 1601
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1603
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1608
    :cond_4f
    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 14

    .line 1648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .registers 15

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_87

    .line 1616
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p5, :cond_1b

    const/16 v2, 0x9

    if-eq v1, v2, :cond_80

    const/16 v2, 0xa

    if-eq v1, v2, :cond_80

    const/16 v2, 0xc

    if-eq v1, v2, :cond_80

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1b

    goto/16 :goto_80

    :cond_1b
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2c

    if-eqz p7, :cond_2c

    if-eqz p5, :cond_26

    .line 1622
    const-string v2, "+"

    goto :goto_28

    :cond_26
    const-string v2, "%2B"

    :goto_28
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    goto :goto_80

    :cond_2c
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_54

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_54

    const/16 v2, 0x80

    if-lt v1, v2, :cond_3c

    if-nez p8, :cond_54

    .line 1626
    :cond_3c
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_54

    if-ne v1, v3, :cond_50

    if-eqz p5, :cond_54

    if-eqz p6, :cond_50

    .line 1627
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_54

    .line 1641
    :cond_50
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_80

    :cond_54
    :goto_54
    if-nez v0, :cond_5b

    .line 1630
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1632
    :cond_5b
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 1633
    :goto_5e
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_80

    .line 1634
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    .line 1635
    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1636
    sget-object v5, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/lit8 v2, v2, 0xf

    .line 1637
    aget-char v2, v5, v2

    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_5e

    .line 1615
    :cond_80
    :goto_80
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto/16 :goto_1

    :cond_87
    return-void
.end method

.method static greylist-max-o decodeHexDigit(C)I
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x66

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    const/16 v0, 0x41

    if-lt p0, v0, :cond_20

    const/16 v0, 0x46

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist-max-o defaultPort(Ljava/lang/String;)I
    .registers 2

    .line 424
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x50

    return p0

    .line 426
    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x1bb

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private static greylist-max-o delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_11

    .line 1504
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_11
    return p2
.end method

.method public static greylist-max-o get(Ljava/net/URI;)Lcom/android/okhttp/HttpUrl;
    .registers 1

    .line 652
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;
    .registers 1

    .line 625
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 636
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    const/4 v1, 0x0

    .line 637
    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_49

    const/4 v0, 0x4

    if-eq v2, v0, :cond_32

    .line 647
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_32
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_49
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 485
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    .line 486
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 487
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_1c

    const/16 v4, 0x26

    .line 488
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_29

    const/16 v2, 0x3d

    .line 491
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_2c
    return-void
.end method

.method public static greylist parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 615
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    const/4 v1, 0x0

    .line 616
    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object p0

    .line 617
    sget-object v2, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    if-ne p0, v2, :cond_13

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v1
.end method

.method static greylist-max-o pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    const/16 v2, 0x2f

    .line 450
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return-void
.end method

.method static greylist-max-o percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_25

    .line 1523
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_15

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_12

    if-eqz p3, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1526
    :cond_15
    :goto_15
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1527
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    .line 1528
    invoke-static {v1, p0, v0, p2, p3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 1529
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1534
    :cond_25
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 1510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1514
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 1516
    invoke-static {v0, p2}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1518
    :cond_25
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V
    .registers 10

    :goto_0
    if-ge p2, p3, :cond_42

    .line 1540
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2d

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_2d

    add-int/lit8 v2, p2, 0x1

    .line 1542
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 1543
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_39

    if-eq v3, v4, :cond_39

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    .line 1545
    invoke-virtual {p0, p2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move p2, v1

    goto :goto_3c

    :cond_2d
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_39

    if-eqz p4, :cond_39

    const/16 v1, 0x20

    .line 1550
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_3c

    .line 1553
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 1539
    :goto_3c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_42
    return-void
.end method

.method static greylist-max-o percentEncoded(Ljava/lang/String;II)Z
    .registers 5

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_24

    .line 1559
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_24

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 1560
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_24

    .line 1561
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result p0

    if-eq p0, v1, :cond_24

    return p2

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method static greylist-max-o queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 505
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_43

    const/16 v2, 0x26

    .line 506
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_19
    const/16 v4, 0x3d

    .line 509
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_35

    if-le v4, v2, :cond_24

    goto :goto_35

    .line 514
    :cond_24
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 515
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 511
    :cond_35
    :goto_35
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 512
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_40
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_43
    return-object v0
.end method


# virtual methods
.method public greylist-max-o encodedFragment()Ljava/lang/String;
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 578
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 579
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o encodedPassword()Ljava/lang/String;
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 386
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 387
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 388
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist encodedPath()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 444
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 445
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o encodedPathSegments()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    if-ge v0, v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    .line 461
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v3, v0, v1, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 462
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_21

    :cond_38
    return-object v2
.end method

.method public greylist-max-o encodedQuery()Ljava/lang/String;
    .registers 6

    .line 478
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 480
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "#"

    invoke-static {v2, v0, v3, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 481
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o encodedUsername()Ljava/lang/String;
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 374
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 375
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 376
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 656
    instance-of v0, p1, Lcom/android/okhttp/HttpUrl;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/okhttp/HttpUrl;

    iget-object p1, p1, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o fragment()Ljava/lang/String;
    .registers 1

    .line 583
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 660
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public greylist-max-o host()Ljava/lang/String;
    .registers 1

    .line 407
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o isHttps()Z
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist newBuilder()Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 595
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 596
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 599
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 601
    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 602
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 603
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 605
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o password()Ljava/lang/String;
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o pathSegments()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o pathSize()I
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public greylist-max-o port()I
    .registers 1

    .line 416
    iget p0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    return p0
.end method

.method public greylist query()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 525
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 539
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 540
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_27

    .line 541
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 542
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_b

    :cond_27
    return-object v1
.end method

.method public greylist-max-o queryParameterName(I)Ljava/lang/String;
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o queryParameterNames()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 550
    :cond_7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 551
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_23

    .line 552
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_13

    .line 554
    :cond_23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o queryParameterValue(I)Ljava/lang/String;
    .registers 2

    .line 573
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 559
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_31

    .line 561
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 562
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x2

    goto :goto_13

    .line 565
    :cond_31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o querySize()I
    .registers 1

    .line 531
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 3

    .line 588
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 589
    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object p0

    .line 590
    sget-object p1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    if-ne p0, p1, :cond_12

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o scheme()Ljava/lang/String;
    .registers 1

    .line 364
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 664
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o uri()Ljava/net/URI;
    .registers 4

    .line 348
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->newBuilder()Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl$Builder;->reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 350
    :try_start_c
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    .line 354
    :try_start_13
    const-string v1, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    return-object p0

    .line 357
    :catch_20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public greylist-max-o url()Ljava/net/URL;
    .registers 2

    .line 329
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception p0

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist-max-o username()Ljava/lang/String;
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    return-object p0
.end method
