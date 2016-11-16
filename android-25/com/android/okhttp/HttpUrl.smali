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
.field private static final synthetic -com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I = null

.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/HttpUrl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/okhttp/HttpUrl;->-com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/okhttp/HttpUrl;->-com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@10
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@19
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@22
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@2b
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@34
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Lcom/android/okhttp/HttpUrl;->-com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 257
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 256
    sput-object v0, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    #@9
    .line 255
    return-void

    #@a
    .line 257
    :array_0
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

.method private constructor <init>(Lcom/android/okhttp/HttpUrl$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/okhttp/HttpUrl$Builder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 309
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@7
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@9
    .line 310
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@b
    invoke-static {v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@11
    .line 311
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@13
    invoke-static {v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@19
    .line 312
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@1b
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@1d
    .line 313
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@23
    .line 314
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@25
    invoke-direct {p0, v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    #@2b
    .line 315
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 316
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    #@31
    const/4 v2, 0x1

    #@32
    invoke-direct {p0, v0, v2}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    #@35
    move-result-object v0

    #@36
    .line 315
    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@38
    .line 318
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 319
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@3e
    invoke-static {v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 318
    :cond_0
    iput-object v1, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    #@44
    .line 321
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@4a
    .line 308
    return-void

    #@4b
    :cond_1
    move-object v0, v1

    #@4c
    .line 317
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/HttpUrl$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;)V

    #@3
    return-void
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;
    .param p4, "alreadyEncoded"    # Z
    .param p5, "strict"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z

    #@0
    .prologue
    .line 1653
    move v2, p1

    #@1
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_5

    #@3
    .line 1654
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    #@6
    move-result v9

    #@7
    .line 1655
    .local v9, "codePoint":I
    const/16 v1, 0x20

    #@9
    if-lt v9, v1, :cond_0

    #@b
    .line 1656
    const/16 v1, 0x7f

    #@d
    if-ne v9, v1, :cond_1

    #@f
    .line 1662
    :cond_0
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@11
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@14
    .line 1663
    .local v0, "out":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v0, p0, p1, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    #@17
    move-object v1, p0

    #@18
    move v3, p2

    #@19
    move-object v4, p3

    #@1a
    move v5, p4

    #@1b
    move v6, p5

    #@1c
    move/from16 v7, p6

    #@1e
    move/from16 v8, p7

    #@20
    .line 1664
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    #@23
    .line 1666
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 1657
    .end local v0    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_1
    const/16 v1, 0x80

    #@2a
    if-lt v9, v1, :cond_2

    #@2c
    .line 1655
    if-nez p7, :cond_0

    #@2e
    .line 1658
    :cond_2
    invoke-virtual {p3, v9}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v1

    #@32
    const/4 v3, -0x1

    #@33
    if-ne v1, v3, :cond_0

    #@35
    .line 1659
    const/16 v1, 0x25

    #@37
    if-ne v9, v1, :cond_3

    #@39
    if-eqz p4, :cond_0

    #@3b
    if-eqz p5, :cond_3

    #@3d
    invoke-static {p0, v2, p2}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_0

    #@43
    .line 1660
    :cond_3
    const/16 v1, 0x2b

    #@45
    if-ne v9, v1, :cond_4

    #@47
    .line 1655
    if-nez p6, :cond_0

    #@49
    .line 1653
    :cond_4
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    #@4c
    move-result v1

    #@4d
    add-int/2addr v2, v1

    #@4e
    goto :goto_0

    #@4f
    .line 1671
    .end local v9    # "codePoint":I
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    return-object v1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z

    #@0
    .prologue
    .line 1712
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    const/4 v1, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v3, p1

    #@7
    move v4, p2

    #@8
    move v5, p3

    #@9
    move v6, p4

    #@a
    move v7, p5

    #@b
    .line 1711
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method static canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .locals 7
    .param p0, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;
    .param p5, "alreadyEncoded"    # Z
    .param p6, "strict"    # Z
    .param p7, "plusIsSpace"    # Z
    .param p8, "asciiOnly"    # Z

    #@0
    .prologue
    const/16 v6, 0x25

    #@2
    .line 1676
    const/4 v3, 0x0

    #@3
    .line 1678
    .local v3, "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    move v2, p2

    #@4
    .end local v3    # "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_a

    #@6
    .line 1679
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@9
    move-result v1

    #@a
    .line 1680
    .local v1, "codePoint":I
    if-eqz p5, :cond_2

    #@c
    .line 1681
    const/16 v4, 0x9

    #@e
    if-eq v1, v4, :cond_0

    #@10
    const/16 v4, 0xa

    #@12
    if-ne v1, v4, :cond_1

    #@14
    .line 1678
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr v2, v4

    #@19
    goto :goto_0

    #@1a
    .line 1681
    :cond_1
    const/16 v4, 0xc

    #@1c
    if-eq v1, v4, :cond_0

    #@1e
    const/16 v4, 0xd

    #@20
    if-eq v1, v4, :cond_0

    #@22
    .line 1683
    :cond_2
    const/16 v4, 0x2b

    #@24
    if-ne v1, v4, :cond_4

    #@26
    if-eqz p7, :cond_4

    #@28
    .line 1685
    if-eqz p5, :cond_3

    #@2a
    const-string/jumbo v4, "+"

    #@2d
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@30
    goto :goto_1

    #@31
    :cond_3
    const-string/jumbo v4, "%2B"

    #@34
    goto :goto_2

    #@35
    .line 1686
    :cond_4
    const/16 v4, 0x20

    #@37
    if-lt v1, v4, :cond_5

    #@39
    .line 1687
    const/16 v4, 0x7f

    #@3b
    if-ne v1, v4, :cond_7

    #@3d
    .line 1692
    :cond_5
    if-nez v3, :cond_6

    #@3f
    .line 1693
    new-instance v3, Lcom/android/okhttp/okio/Buffer;

    #@41
    invoke-direct {v3}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@44
    .line 1695
    :cond_6
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@47
    .line 1696
    :goto_3
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    #@4a
    move-result v4

    #@4b
    if-nez v4, :cond_0

    #@4d
    .line 1697
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@50
    move-result v4

    #@51
    and-int/lit16 v0, v4, 0xff

    #@53
    .line 1698
    .local v0, "b":I
    invoke-virtual {p0, v6}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@56
    .line 1699
    sget-object v4, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    #@58
    shr-int/lit8 v5, v0, 0x4

    #@5a
    and-int/lit8 v5, v5, 0xf

    #@5c
    aget-char v4, v4, v5

    #@5e
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@61
    .line 1700
    sget-object v4, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    #@63
    and-int/lit8 v5, v0, 0xf

    #@65
    aget-char v4, v4, v5

    #@67
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@6a
    goto :goto_3

    #@6b
    .line 1688
    .end local v0    # "b":I
    :cond_7
    const/16 v4, 0x80

    #@6d
    if-lt v1, v4, :cond_8

    #@6f
    .line 1686
    if-nez p8, :cond_5

    #@71
    .line 1689
    :cond_8
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    #@74
    move-result v4

    #@75
    const/4 v5, -0x1

    #@76
    if-ne v4, v5, :cond_5

    #@78
    .line 1690
    if-ne v1, v6, :cond_9

    #@7a
    if-eqz p5, :cond_5

    #@7c
    if-eqz p6, :cond_9

    #@7e
    invoke-static {p1, v2, p3}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_5

    #@84
    .line 1704
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@87
    goto :goto_1

    #@88
    .line 1675
    .end local v1    # "codePoint":I
    :cond_a
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 1628
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
    .line 1629
    :cond_0
    const/16 v0, 0x61

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 1630
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 1631
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    const-string/jumbo v0, "http"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 436
    const/16 v0, 0x50

    #@b
    return v0

    #@c
    .line 437
    :cond_0
    const-string/jumbo v0, "https"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 438
    const/16 v0, 0x1bb

    #@17
    return v0

    #@18
    .line 440
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method private static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1566
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 1567
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-eq v1, v2, :cond_0

    #@e
    return v0

    #@f
    .line 1566
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1569
    :cond_1
    return p2
.end method

.method public static get(Ljava/net/URI;)Lcom/android/okhttp/HttpUrl;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 684
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 654
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 667
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v2, v3}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(ZLcom/android/okhttp/HttpUrl$Builder;)V

    #@7
    .line 669
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    invoke-virtual {v0, v3, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@a
    move-result-object v1

    #@b
    .line 670
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    invoke-static {}, Lcom/android/okhttp/HttpUrl;->-getcom-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues()[I

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    #@12
    move-result v3

    #@13
    aget v2, v2, v3

    #@15
    packed-switch v2, :pswitch_data_0

    #@18
    .line 679
    :pswitch_0
    new-instance v2, Ljava/net/MalformedURLException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Invalid URL: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, " for "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 672
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    #@40
    move-result-object v2

    #@41
    return-object v2

    #@42
    .line 674
    :pswitch_2
    new-instance v2, Ljava/net/UnknownHostException;

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Invalid host: "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 508
    .local p1, "namesAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v2

    #@5
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@7
    .line 509
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/String;

    #@d
    .line 510
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    #@f
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Ljava/lang/String;

    #@15
    .line 511
    .local v3, "value":Ljava/lang/String;
    if-lez v0, :cond_0

    #@17
    const/16 v4, 0x26

    #@19
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 512
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 513
    if-eqz v3, :cond_1

    #@21
    .line 514
    const/16 v4, 0x3d

    #@23
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 515
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 508
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@2b
    goto :goto_0

    #@2c
    .line 507
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 643
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-direct {v0, v3, v2}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(ZLcom/android/okhttp/HttpUrl$Builder;)V

    #@7
    .line 645
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    invoke-virtual {v0, v2, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@a
    move-result-object v1

    #@b
    .line 646
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@d
    if-ne v1, v3, :cond_0

    #@f
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    #@12
    move-result-object v2

    #@13
    :cond_0
    return-object v2
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 466
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 467
    const/16 v2, 0x2f

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 468
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/lang/String;

    #@12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 466
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 465
    :cond_0
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    #@0
    .prologue
    .line 1585
    move v1, p1

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    #@3
    .line 1586
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 1587
    .local v0, "c":C
    const/16 v3, 0x25

    #@9
    if-eq v0, v3, :cond_0

    #@b
    const/16 v3, 0x2b

    #@d
    if-ne v0, v3, :cond_1

    #@f
    if-eqz p3, :cond_1

    #@11
    .line 1589
    :cond_0
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    #@13
    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@16
    .line 1590
    .local v2, "out":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v2, p0, p1, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    #@19
    .line 1591
    invoke-static {v2, p0, v1, p2, p3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V

    #@1c
    .line 1592
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 1585
    .end local v2    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1597
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    return-object v3
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "plusIsSpace"    # Z

    #@0
    .prologue
    .line 1573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0, p1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p2, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v3

    #@7
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 1578
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    .line 1579
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1c
    invoke-static {v1, p2}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    :cond_0
    move-object v3, v4

    #@25
    goto :goto_1

    #@26
    .line 1581
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@29
    move-result-object v3

    #@2a
    return-object v3
.end method

.method static percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V
    .locals 6
    .param p0, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1602
    move v3, p2

    #@2
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    #@4
    .line 1603
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    #@7
    move-result v0

    #@8
    .line 1604
    .local v0, "codePoint":I
    const/16 v4, 0x25

    #@a
    if-ne v0, v4, :cond_0

    #@c
    add-int/lit8 v4, v3, 0x2

    #@e
    if-ge v4, p3, :cond_0

    #@10
    .line 1605
    add-int/lit8 v4, v3, 0x1

    #@12
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v4

    #@16
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@19
    move-result v1

    #@1a
    .line 1606
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    #@1c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v4

    #@20
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@23
    move-result v2

    #@24
    .line 1607
    .local v2, "d2":I
    if-eq v1, v5, :cond_1

    #@26
    if-eq v2, v5, :cond_1

    #@28
    .line 1608
    shl-int/lit8 v4, v1, 0x4

    #@2a
    add-int/2addr v4, v2

    #@2b
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@2e
    .line 1609
    add-int/lit8 v3, v3, 0x2

    #@30
    .line 1602
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@33
    move-result v4

    #@34
    add-int/2addr v3, v4

    #@35
    goto :goto_0

    #@36
    .line 1612
    :cond_0
    const/16 v4, 0x2b

    #@38
    if-ne v0, v4, :cond_1

    #@3a
    if-eqz p4, :cond_1

    #@3c
    .line 1613
    const/16 v4, 0x20

    #@3e
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@41
    goto :goto_1

    #@42
    .line 1616
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@45
    goto :goto_1

    #@46
    .line 1600
    .end local v0    # "codePoint":I
    :cond_2
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 1621
    add-int/lit8 v1, p1, 0x2

    #@4
    if-ge v1, p2, :cond_0

    #@6
    .line 1622
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v1

    #@a
    const/16 v2, 0x25

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 1623
    add-int/lit8 v1, p1, 0x1

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    invoke-static {v1}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@17
    move-result v1

    #@18
    if-eq v1, v3, :cond_0

    #@1a
    .line 1624
    add-int/lit8 v1, p1, 0x2

    #@1c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    invoke-static {v1}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@23
    move-result v1

    #@24
    if-eq v1, v3, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    .line 1621
    :cond_0
    return v0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "encodedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 527
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 528
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@7
    .local v2, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    if-gt v2, v4, :cond_3

    #@d
    .line 529
    const/16 v4, 0x26

    #@f
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v0

    #@13
    .line 530
    .local v0, "ampersandOffset":I
    if-ne v0, v5, :cond_0

    #@15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v0

    #@19
    .line 532
    :cond_0
    const/16 v4, 0x3d

    #@1b
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    #@1e
    move-result v1

    #@1f
    .line 533
    .local v1, "equalsOffset":I
    if-eq v1, v5, :cond_1

    #@21
    if-le v1, v0, :cond_2

    #@23
    .line 534
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 535
    const/4 v4, 0x0

    #@2b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 540
    :goto_1
    add-int/lit8 v2, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 537
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 538
    add-int/lit8 v4, v1, 0x1

    #@3a
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_1

    #@42
    .line 542
    .end local v0    # "ampersandOffset":I
    .end local v1    # "equalsOffset":I
    :cond_3
    return-object v3
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 599
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v2

    #@6
    .line 600
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@8
    const/16 v2, 0x23

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    add-int/lit8 v0, v1, 0x1

    #@10
    .line 601
    .local v0, "fragmentStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public encodedPassword()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 384
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@e
    const/16 v3, 0x3a

    #@10
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v4, v4, 0x3

    #@18
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@1b
    move-result v2

    #@1c
    add-int/lit8 v1, v2, 0x1

    #@1e
    .line 385
    .local v1, "passwordStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@20
    const/16 v3, 0x40

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@25
    move-result v0

    #@26
    .line 386
    .local v0, "passwordEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method public encodedPath()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@2
    const/16 v3, 0x2f

    #@4
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    add-int/lit8 v4, v4, 0x3

    #@c
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@f
    move-result v1

    #@10
    .line 457
    .local v1, "pathStart":I
    const/4 v2, -0x1

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 458
    const-string/jumbo v2, ""

    #@16
    return-object v2

    #@17
    .line 461
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@19
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1e
    move-result v3

    #@1f
    const-string/jumbo v4, "?#"

    #@22
    invoke-static {v2, v1, v3, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@25
    move-result v0

    #@26
    .line 462
    .local v0, "pathEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method public encodedPathSegments()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 473
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@2
    const/16 v6, 0x2f

    #@4
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@9
    move-result v7

    #@a
    add-int/lit8 v7, v7, 0x3

    #@c
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    #@f
    move-result v2

    #@10
    .line 475
    .local v2, "pathStart":I
    const/4 v5, -0x1

    #@11
    if-ne v2, v5, :cond_0

    #@13
    .line 476
    new-instance v5, Ljava/util/ArrayList;

    #@15
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@18
    return-object v5

    #@19
    .line 480
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@1b
    iget-object v6, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@1d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@20
    move-result v6

    #@21
    const-string/jumbo v7, "?#"

    #@24
    invoke-static {v5, v2, v6, v7}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@27
    move-result v1

    #@28
    .line 481
    .local v1, "pathEnd":I
    new-instance v3, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2d
    .line 482
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, v2

    #@2e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@30
    .line 483
    add-int/lit8 v0, v0, 0x1

    #@32
    .line 484
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@34
    const-string/jumbo v6, "/"

    #@37
    invoke-static {v5, v0, v1, v6}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@3a
    move-result v4

    #@3b
    .line 485
    .local v4, "segmentEnd":I
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@3d
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    .line 486
    move v0, v4

    #@45
    goto :goto_0

    #@46
    .line 488
    .end local v4    # "segmentEnd":I
    :cond_1
    return-object v3
.end method

.method public encodedQuery()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 501
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v3

    #@6
    .line 502
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@8
    const/16 v3, 0x3f

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v2

    #@e
    add-int/lit8 v1, v2, 0x1

    #@10
    .line 503
    .local v1, "queryStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@12
    add-int/lit8 v3, v1, 0x1

    #@14
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    const-string/jumbo v5, "#"

    #@1d
    invoke-static {v2, v3, v4, v5}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@20
    move-result v0

    #@21
    .line 504
    .local v0, "queryEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method public encodedUsername()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    add-int/lit8 v1, v2, 0x3

    #@14
    .line 373
    .local v1, "usernameStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@16
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    const-string/jumbo v4, ":@"

    #@1f
    invoke-static {v2, v1, v3, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@22
    move-result v0

    #@23
    .line 374
    .local v0, "usernameEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 688
    instance-of v0, p1, Lcom/android/okhttp/HttpUrl;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/okhttp/HttpUrl;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@8
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public fragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "https"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public newBuilder()Lcom/android/okhttp/HttpUrl$Builder;
    .locals 3

    #@0
    .prologue
    .line 621
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(ZLcom/android/okhttp/HttpUrl$Builder;)V

    #@7
    .line 623
    .local v0, "result":Lcom/android/okhttp/HttpUrl$Builder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@9
    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@b
    .line 624
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    #@11
    .line 625
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    #@17
    .line 626
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@19
    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@1b
    .line 628
    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@1d
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@1f
    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@22
    move-result v2

    #@23
    if-eq v1, v2, :cond_0

    #@25
    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@27
    :goto_0
    iput v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@29
    .line 629
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@2b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@2e
    .line 630
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    #@30
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@37
    .line 631
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@3e
    .line 632
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedFragment()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    #@44
    .line 633
    return-object v0

    #@45
    .line 628
    :cond_0
    const/4 v1, -0x1

    #@46
    goto :goto_0
.end method

.method public password()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public pathSize()I
    .locals 1

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public port()I
    .locals 1

    #@0
    .prologue
    .line 427
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@2
    return v0
.end method

.method public query()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 546
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v2

    #@6
    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 548
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@d
    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    #@10
    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 561
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v3

    #@6
    .line 562
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@9
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v1

    #@d
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 563
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@11
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 564
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@1d
    add-int/lit8 v3, v0, 0x1

    #@1f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/String;

    #@25
    return-object v2

    #@26
    .line 562
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@28
    goto :goto_0

    #@29
    .line 567
    :cond_2
    return-object v3
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public queryParameterNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@2
    if-nez v3, :cond_0

    #@4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@7
    move-result-object v3

    #@8
    return-object v3

    #@9
    .line 572
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    #@b
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@e
    .line 573
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@14
    move-result v2

    #@15
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@17
    .line 574
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@19
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Ljava/lang/String;

    #@1f
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 573
    add-int/lit8 v0, v0, 0x2

    #@24
    goto :goto_0

    #@25
    .line 576
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@28
    move-result-object v3

    #@29
    return-object v3
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 580
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@2
    if-nez v3, :cond_0

    #@4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    return-object v3

    #@9
    .line 581
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 582
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@14
    move-result v2

    #@15
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@17
    .line 583
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@19
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 584
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@25
    add-int/lit8 v4, v0, 0x1

    #@27
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/lang/String;

    #@2d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    .line 582
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@32
    goto :goto_0

    #@33
    .line 587
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@36
    move-result-object v3

    #@37
    return-object v3
.end method

.method public querySize()I
    .locals 1

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    div-int/lit8 v0, v0, 0x2

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .locals 4
    .param p1, "link"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 612
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-direct {v0, v3, v2}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(ZLcom/android/okhttp/HttpUrl$Builder;)V

    #@7
    .line 614
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@a
    move-result-object v1

    #@b
    .line 615
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@d
    if-ne v1, v3, :cond_0

    #@f
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    #@12
    move-result-object v2

    #@13
    :cond_0
    return-object v2
.end method

.method public rfc2732host()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@2
    const/16 v1, 0x3a

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 415
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@d
    return-object v0

    #@e
    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "["

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "]"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 6

    #@0
    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->newBuilder()Lcom/android/okhttp/HttpUrl$Builder;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl$Builder;->reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 348
    .local v3, "uri":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URI;

    #@e
    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v4

    #@12
    .line 349
    :catch_0
    move-exception v0

    #@13
    .line 352
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string/jumbo v4, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    #@16
    const-string/jumbo v5, ""

    #@19
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 353
    .local v2, "stripped":Ljava/lang/String;
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    move-result-object v4

    #@21
    return-object v4

    #@22
    .line 354
    .end local v2    # "stripped":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@23
    .line 355
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@25
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v4
.end method

.method public url()Ljava/net/URL;
    .locals 3

    #@0
    .prologue
    .line 327
    :try_start_0
    new-instance v1, Ljava/net/URL;

    #@2
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@4
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    return-object v1

    #@8
    .line 328
    :catch_0
    move-exception v0

    #@9
    .line 329
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method public username()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@2
    return-object v0
.end method
