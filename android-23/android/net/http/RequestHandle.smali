.class public Landroid/net/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final MAX_REDIRECT_COUNT:I = 0x10

.field private static final PROXY_AUTHORIZATION_HEADER:Ljava/lang/String; = "Proxy-Authorization"


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field private mConnection:Landroid/net/http/Connection;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mRedirectCount:I

.field private mRequest:Landroid/net/http/Request;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mUri:Landroid/net/compatibility/WebAddress;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V
    .locals 1
    .param p1, "requestQueue"    # Landroid/net/http/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p4, "method"    # Ljava/lang/String;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .param p8, "request"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    #@6
    .line 62
    if-nez p5, :cond_0

    #@8
    .line 63
    new-instance p5, Ljava/util/HashMap;

    #@a
    .end local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 65
    .restart local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iput-object p5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@f
    .line 66
    iput-object p6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@11
    .line 67
    iput p7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    #@13
    .line 68
    if-nez p4, :cond_1

    #@15
    const-string/jumbo p4, "GET"

    #@18
    .end local p4    # "method":Ljava/lang/String;
    :cond_1
    iput-object p4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@1a
    .line 70
    iput-object p2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@1c
    .line 71
    iput-object p3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    #@1e
    .line 73
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    #@20
    .line 75
    iput-object p8, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@22
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V
    .locals 0
    .param p1, "requestQueue"    # Landroid/net/http/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p4, "method"    # Ljava/lang/String;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .param p8, "request"    # Landroid/net/http/Request;
    .param p9, "conn"    # Landroid/net/http/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            "Landroid/net/http/Connection;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p8}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    #@3
    .line 88
    iput-object p9, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    #@5
    .line 85
    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 392
    if-eqz p1, :cond_0

    #@3
    .line 394
    :try_start_0
    const-string/jumbo v3, "MD5"

    #@6
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@9
    move-result-object v2

    #@a
    .line 396
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    #@11
    move-result-object v0

    #@12
    .line 397
    .local v0, "d":[B
    if-eqz v0, :cond_0

    #@14
    .line 398
    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->bufferToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 400
    .end local v0    # "d":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    #@1a
    .line 401
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@1c
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v3

    #@20
    .line 405
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    return-object v4
.end method

.method private KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public static authorizationHeader(Z)Ljava/lang/String;
    .locals 1
    .param p0, "isProxy"    # Z

    #@0
    .prologue
    .line 354
    if-nez p0, :cond_0

    #@2
    .line 355
    const-string/jumbo v0, "Authorization"

    #@5
    return-object v0

    #@6
    .line 357
    :cond_0
    const-string/jumbo v0, "Proxy-Authorization"

    #@9
    return-object v0
.end method

.method private bufferToHex([B)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 413
    const/16 v6, 0x10

    #@3
    new-array v2, v6, [C

    #@5
    .local v2, "hexChars":[C
    fill-array-data v2, :array_0

    #@8
    .line 415
    if-eqz p1, :cond_2

    #@a
    .line 416
    array-length v5, p1

    #@b
    .line 417
    .local v5, "length":I
    if-lez v5, :cond_1

    #@d
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    mul-int/lit8 v6, v5, 0x2

    #@11
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@14
    .line 420
    .local v1, "hex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    #@17
    .line 421
    aget-byte v6, p1, v3

    #@19
    and-int/lit8 v6, v6, 0xf

    #@1b
    int-to-byte v4, v6

    #@1c
    .line 422
    .local v4, "l":B
    aget-byte v6, p1, v3

    #@1e
    and-int/lit16 v6, v6, 0xf0

    #@20
    shr-int/lit8 v6, v6, 0x4

    #@22
    int-to-byte v0, v6

    #@23
    .line 424
    .local v0, "h":B
    aget-char v6, v2, v0

    #@25
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 425
    aget-char v6, v2, v4

    #@2a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 420
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 428
    .end local v0    # "h":B
    .end local v4    # "l":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    return-object v6

    #@35
    .line 430
    .end local v1    # "hex":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :cond_1
    const-string/jumbo v6, ""

    #@38
    return-object v6

    #@39
    .line 434
    .end local v5    # "length":I
    :cond_2
    return-object v7

    #@3a
    .line 413
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    if-nez p0, :cond_0

    #@2
    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "username == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 279
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "password == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 284
    :cond_1
    new-instance v0, Ljava/lang/String;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const/16 v2, 0x3a

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@32
    move-result-object v1

    #@33
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@3a
    return-object v0
.end method

.method private computeCnonce()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 441
    new-instance v1, Ljava/util/Random;

    #@2
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    #@5
    .line 442
    .local v1, "rand":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    #@8
    move-result v0

    #@9
    .line 443
    .local v0, "nextInt":I
    const/high16 v2, -0x80000000

    #@b
    if-ne v0, v2, :cond_0

    #@d
    .line 444
    const v0, 0x7fffffff

    #@10
    .line 445
    :goto_0
    const/16 v2, 0x10

    #@12
    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 444
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method

.method private computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "A1"    # Ljava/lang/String;
    .param p2, "A2"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "QOP"    # Ljava/lang/String;
    .param p5, "nc"    # Ljava/lang/String;
    .param p6, "cnonce"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 370
    if-nez p4, :cond_0

    #@3
    .line 371
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ":"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {p0, v0, v1}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 373
    :cond_0
    const-string/jumbo v0, "auth"

    #@2b
    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 374
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, ":"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, ":"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, ":"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    const-string/jumbo v2, ":"

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-direct {p0, v0, v1}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    return-object v0

    #@77
    .line 378
    :cond_1
    return-object v1
.end method

.method private computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/lang/String;
    .param p5, "QOP"    # Ljava/lang/String;
    .param p6, "algorithm"    # Ljava/lang/String;
    .param p7, "opaque"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    if-nez p1, :cond_0

    #@2
    .line 309
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "username == null"

    #@7
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 312
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 313
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v4, "password == null"

    #@12
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 316
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 317
    new-instance v1, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v4, "realm == null"

    #@1d
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 320
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v4, ":"

    #@2d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v4, ":"

    #@38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 321
    .local v2, "A1":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v4, ":"

    #@52
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 324
    .local v3, "A2":Ljava/lang/String;
    const-string/jumbo v6, "00000001"

    #@63
    .line 325
    .local v6, "nc":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->computeCnonce()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    .local v7, "cnonce":Ljava/lang/String;
    move-object v1, p0

    #@68
    move-object v4, p4

    #@69
    move-object v5, p5

    #@6a
    .line 326
    invoke-direct/range {v1 .. v7}, Landroid/net/http/RequestHandle;->computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v8

    #@6e
    .line 328
    .local v8, "digest":Ljava/lang/String;
    const-string/jumbo v9, ""

    #@71
    .line 329
    .local v9, "response":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    const-string/jumbo v4, "username="

    #@7d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    const-string/jumbo v4, ", "

    #@8c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    const-string/jumbo v4, "realm="

    #@a0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-direct {p0, p3}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    const-string/jumbo v4, ", "

    #@af
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v9

    #@b7
    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    const-string/jumbo v4, "nonce="

    #@c3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    invoke-direct {p0, p4}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@ca
    move-result-object v4

    #@cb
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    const-string/jumbo v4, ", "

    #@d2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v9

    #@da
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    const-string/jumbo v4, "uri="

    #@e6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@ec
    invoke-direct {p0, v4}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v1

    #@f4
    const-string/jumbo v4, ", "

    #@f7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v1

    #@fb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v9

    #@ff
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    const-string/jumbo v4, "response="

    #@10b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    invoke-direct {p0, v8}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@112
    move-result-object v4

    #@113
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v9

    #@11b
    .line 335
    if-eqz p7, :cond_3

    #@11d
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v1

    #@126
    const-string/jumbo v4, ", opaque="

    #@129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    move-object/from16 v0, p7

    #@12f
    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@132
    move-result-object v4

    #@133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v1

    #@137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v9

    #@13b
    .line 339
    :cond_3
    if-eqz p6, :cond_4

    #@13d
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v1

    #@146
    const-string/jumbo v4, ", algorithm="

    #@149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v1

    #@14d
    move-object/from16 v0, p6

    #@14f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v1

    #@153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v9

    #@157
    .line 343
    :cond_4
    if-eqz p5, :cond_5

    #@159
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v1

    #@162
    const-string/jumbo v4, ", qop="

    #@165
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v1

    #@169
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v1

    #@16d
    const-string/jumbo v4, ", nc="

    #@170
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v1

    #@174
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v1

    #@178
    const-string/jumbo v4, ", cnonce="

    #@17b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v1

    #@17f
    invoke-direct {p0, v7}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    #@182
    move-result-object v4

    #@183
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v1

    #@187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v9

    #@18b
    .line 347
    :cond_5
    return-object v9
.end method

.method private createAndQueueNewRequest()V
    .locals 9

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 465
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    #@6
    .line 466
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@8
    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    #@a
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@c
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@e
    iget-object v5, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@10
    iget-object v5, v5, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@12
    .line 467
    iget-object v6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@14
    iget v7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    #@16
    .line 465
    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    #@19
    move-result-object v8

    #@1a
    .line 468
    .local v8, "newHandle":Landroid/net/http/RequestHandle;
    iget-object v0, v8, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@1c
    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@1e
    .line 469
    iget-object v0, v8, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    #@20
    iput-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    #@22
    .line 470
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    #@25
    .line 471
    return-void

    #@26
    .line 473
    .end local v8    # "newHandle":Landroid/net/http/RequestHandle;
    :cond_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    #@28
    .line 474
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@2a
    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    #@2c
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@2e
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@30
    iget-object v5, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@32
    iget-object v5, v5, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@34
    .line 475
    iget-object v6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@36
    .line 476
    iget v7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    #@38
    .line 473
    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    #@3b
    move-result-object v0

    #@3c
    iget-object v0, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@3e
    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@40
    .line 462
    return-void
.end method

.method private doubleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 452
    if-eqz p1, :cond_0

    #@3
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "\""

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "\""

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 456
    :cond_0
    return-object v0
.end method

.method private setupAuthResponse()V
    .locals 2

    #@0
    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@6
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 261
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    #@c
    .line 253
    return-void

    #@d
    .line 256
    :catch_0
    move-exception v0

    #@e
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 96
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@6
    invoke-virtual {v0}, Landroid/net/http/Request;->cancel()V

    #@9
    .line 94
    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRedirectCount()I
    .locals 1

    #@0
    .prologue
    .line 128
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    #@2
    return v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 1
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@6
    invoke-virtual {v0, p1}, Landroid/net/http/Request;->handleSslErrorResponse(Z)V

    #@9
    .line 114
    :cond_0
    return-void
.end method

.method public isRedirectMax()Z
    .locals 2

    #@0
    .prologue
    .line 124
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public pauseRequest(Z)V
    .locals 1
    .param p1, "pause"    # Z

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 106
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@6
    invoke-virtual {v0, p1}, Landroid/net/http/Request;->setLoadingPaused(Z)V

    #@9
    .line 104
    :cond_0
    return-void
.end method

.method public processRequest()V
    .locals 2

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 293
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    #@6
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@8
    invoke-virtual {v0, v1}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    #@b
    .line 291
    :cond_0
    return-void
.end method

.method public setRedirectCount(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 132
    iput p1, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    #@2
    .line 131
    return-void
.end method

.method public setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isProxy"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    invoke-static {p2, p3}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@6
    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Basic "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 229
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    #@24
    .line 223
    return-void
.end method

.method public setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "isProxy"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "nonce"    # Ljava/lang/String;
    .param p6, "QOP"    # Ljava/lang/String;
    .param p7, "algorithm"    # Ljava/lang/String;
    .param p8, "opaque"    # Ljava/lang/String;

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move-object v2, p3

    #@3
    move-object v3, p4

    #@4
    move-object v4, p5

    #@5
    move-object v5, p6

    #@6
    move-object/from16 v6, p7

    #@8
    move-object/from16 v7, p8

    #@a
    .line 244
    invoke-direct/range {v0 .. v7}, Landroid/net/http/RequestHandle;->computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    .line 249
    .local v8, "response":Ljava/lang/String;
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@10
    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Digest "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 250
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    #@2e
    .line 242
    return-void
.end method

.method public setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 7
    .param p1, "redirectTo"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 152
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@4
    const-string/jumbo v4, "Authorization"

    #@7
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 153
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@c
    const-string/jumbo v4, "Proxy-Authorization"

    #@f
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 155
    iget v3, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    #@14
    add-int/lit8 v3, v3, 0x1

    #@16
    iput v3, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    #@18
    const/16 v4, 0x10

    #@1a
    if-ne v3, v4, :cond_0

    #@1c
    .line 160
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@1e
    .line 161
    const-string/jumbo v4, "The page contains too many server redirects."

    #@21
    .line 160
    const/16 v5, -0x9

    #@23
    invoke-virtual {v3, v5, v4}, Landroid/net/http/Request;->error(ILjava/lang/String;)V

    #@26
    .line 162
    return v6

    #@27
    .line 165
    :cond_0
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@29
    const-string/jumbo v4, "https:"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    const-string/jumbo v3, "http:"

    #@35
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_1

    #@3b
    .line 170
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@3d
    const-string/jumbo v4, "Referer"

    #@40
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 173
    :cond_1
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@45
    .line 175
    :try_start_0
    new-instance v3, Landroid/net/compatibility/WebAddress;

    #@47
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    #@49
    invoke-direct {v3, v4}, Landroid/net/compatibility/WebAddress;-><init>(Ljava/lang/String;)V

    #@4c
    iput-object v3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 181
    :goto_0
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@50
    const-string/jumbo v4, "Cookie"

    #@53
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 182
    const/4 v0, 0x0

    #@57
    .line 183
    .local v0, "cookie":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    #@59
    if-eqz v3, :cond_2

    #@5b
    .line 184
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    #@5e
    move-result-object v3

    #@5f
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    #@61
    invoke-virtual {v4}, Landroid/net/compatibility/WebAddress;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 186
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    #@6b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6e
    move-result v3

    #@6f
    if-lez v3, :cond_3

    #@71
    .line 187
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@73
    const-string/jumbo v4, "Cookie"

    #@76
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 190
    :cond_3
    const/16 v3, 0x12e

    #@7b
    if-eq p2, v3, :cond_4

    #@7d
    const/16 v3, 0x12f

    #@7f
    if-ne p2, v3, :cond_5

    #@81
    :cond_4
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@83
    const-string/jumbo v4, "POST"

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v3

    #@8a
    if-eqz v3, :cond_5

    #@8c
    .line 194
    const-string/jumbo v3, "GET"

    #@8f
    iput-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    #@91
    .line 198
    :cond_5
    const/16 v3, 0x133

    #@93
    if-ne p2, v3, :cond_7

    #@95
    .line 200
    :try_start_1
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@97
    if-eqz v3, :cond_6

    #@99
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@9b
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@9e
    .line 214
    :cond_6
    :goto_1
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@a0
    invoke-interface {v3, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@a3
    .line 216
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    #@a6
    .line 217
    const/4 v3, 0x1

    #@a7
    return v3

    #@a8
    .line 176
    :catch_0
    move-exception v1

    #@a9
    .line 177
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@ac
    goto :goto_0

    #@ad
    .line 201
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    #@ae
    .line 205
    .local v2, "ex":Ljava/io/IOException;
    return v6

    #@af
    .line 209
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_7
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    #@b1
    const-string/jumbo v4, "Content-Type"

    #@b4
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 210
    iput-object v5, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    #@b9
    goto :goto_1
.end method

.method public waitUntilComplete()V
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    #@2
    invoke-virtual {v0}, Landroid/net/http/Request;->waitUntilComplete()V

    #@5
    .line 287
    return-void
.end method
