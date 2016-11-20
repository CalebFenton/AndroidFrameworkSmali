.class public final Landroid/net/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HASH_ACCEPT_RANGES:I = 0x53476b3b

.field private static final HASH_CACHE_CONTROL:I = -0xc71a9ee

.field private static final HASH_CONN_DIRECTIVE:I = -0x2e3b8122

.field private static final HASH_CONTENT_DISPOSITION:I = -0x4b88f79d

.field private static final HASH_CONTENT_ENCODING:I = 0x7ce07427

.field private static final HASH_CONTENT_LEN:I = -0x4384d946

.field private static final HASH_CONTENT_TYPE:I = 0x2ed4600e

.field private static final HASH_ETAG:I = 0x2fa915

.field private static final HASH_EXPIRES:I = -0x4e0958cc

.field private static final HASH_LAST_MODIFIED:I = 0x8f17c20

.field private static final HASH_LOCATION:I = 0x714f9fb5

.field private static final HASH_PRAGMA:I = -0x3a6d1ac4

.field private static final HASH_PROXY_AUTHENTICATE:I = -0x11fc9c2c

.field private static final HASH_PROXY_CONNECTION:I = 0x110aef9d

.field private static final HASH_REFRESH:I = 0x40b292db

.field private static final HASH_SET_COOKIE:I = 0x49be662f

.field private static final HASH_TRANSFER_ENCODING:I = 0x4bf6b0f5

.field private static final HASH_WWW_AUTHENTICATE:I = -0xe7c74b5

.field private static final HASH_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = -0x5034229e

.field private static final HEADER_COUNT:I = 0x13

.field private static final IDX_ACCEPT_RANGES:I = 0xa

.field private static final IDX_CACHE_CONTROL:I = 0xc

.field private static final IDX_CONN_DIRECTIVE:I = 0x4

.field private static final IDX_CONTENT_DISPOSITION:I = 0x9

.field private static final IDX_CONTENT_ENCODING:I = 0x3

.field private static final IDX_CONTENT_LEN:I = 0x1

.field private static final IDX_CONTENT_TYPE:I = 0x2

.field private static final IDX_ETAG:I = 0xe

.field private static final IDX_EXPIRES:I = 0xb

.field private static final IDX_LAST_MODIFIED:I = 0xd

.field private static final IDX_LOCATION:I = 0x5

.field private static final IDX_PRAGMA:I = 0x10

.field private static final IDX_PROXY_AUTHENTICATE:I = 0x8

.field private static final IDX_PROXY_CONNECTION:I = 0x6

.field private static final IDX_REFRESH:I = 0x11

.field private static final IDX_SET_COOKIE:I = 0xf

.field private static final IDX_TRANSFER_ENCODING:I = 0x0

.field private static final IDX_WWW_AUTHENTICATE:I = 0x7

.field private static final IDX_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = 0x12

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOGTAG:Ljava/lang/String; = "Http"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final sHeaderNames:[Ljava/lang/String;


# instance fields
.field private connectionType:I

.field private contentLength:J

.field private cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:[Ljava/lang/String;

.field private transferEncoding:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 126
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 127
    const-string/jumbo v1, "transfer-encoding"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 128
    const-string/jumbo v1, "content-length"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 129
    const-string/jumbo v1, "content-type"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 130
    const-string/jumbo v1, "content-encoding"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 131
    const-string/jumbo v1, "connection"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 132
    const-string/jumbo v1, "location"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 133
    const-string/jumbo v1, "proxy-connection"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 134
    const-string/jumbo v1, "www-authenticate"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 135
    const-string/jumbo v1, "proxy-authenticate"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 136
    const-string/jumbo v1, "content-disposition"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 137
    const-string/jumbo v1, "accept-ranges"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 138
    const-string/jumbo v1, "expires"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 139
    const-string/jumbo v1, "cache-control"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 140
    const-string/jumbo v1, "last-modified"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 141
    const-string/jumbo v1, "etag"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 142
    const-string/jumbo v1, "set-cookie"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 143
    const-string/jumbo v1, "pragma"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 144
    const-string/jumbo v1, "refresh"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 145
    const-string/jumbo v1, "x-permitted-cross-domain-policies"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 126
    sput-object v0, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    #@83
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    #@c
    .line 125
    const/16 v0, 0x13

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@12
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@17
    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    #@19
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    #@20
    .line 153
    const-wide/16 v0, 0x0

    #@22
    iput-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    #@24
    .line 154
    const-wide/16 v0, -0x1

    #@26
    iput-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    #@28
    .line 155
    const/4 v0, 0x0

    #@29
    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    #@2b
    .line 152
    return-void
.end method

.method static containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    .locals 8
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "beginIndex"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@3
    move-result v4

    #@4
    .line 480
    .local v4, "len":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    #@7
    move-result-object v2

    #@8
    .line 481
    .local v2, "chars":[C
    :goto_0
    if-ge p1, v4, :cond_0

    #@a
    aget-char v7, v2, p1

    #@c
    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 482
    add-int/lit8 p1, p1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 484
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    .line 485
    .local v6, "size":I
    add-int v7, p1, v6

    #@1b
    if-lt v4, v7, :cond_2

    #@1d
    const/4 v5, 0x1

    #@1e
    .line 486
    .local v5, "ok":Z
    :goto_1
    const/4 v3, 0x0

    #@1f
    .local v3, "j":I
    :goto_2
    if-eqz v5, :cond_4

    #@21
    if-ge v3, v6, :cond_4

    #@23
    .line 487
    add-int v7, p1, v3

    #@25
    aget-char v0, v2, v7

    #@27
    .line 488
    .local v0, "a":C
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 489
    .local v1, "b":C
    if-eq v0, v1, :cond_1

    #@2d
    .line 490
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@30
    move-result v0

    #@31
    .line 491
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    #@34
    move-result v1

    #@35
    .line 492
    if-ne v0, v1, :cond_3

    #@37
    const/4 v5, 0x1

    #@38
    .line 486
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 485
    .end local v0    # "a":C
    .end local v1    # "b":C
    .end local v3    # "j":I
    .end local v5    # "ok":Z
    :cond_2
    const/4 v5, 0x0

    #@3c
    .restart local v5    # "ok":Z
    goto :goto_1

    #@3d
    .line 492
    .restart local v0    # "a":C
    .restart local v1    # "b":C
    .restart local v3    # "j":I
    :cond_3
    const/4 v5, 0x0

    #@3e
    goto :goto_3

    #@3f
    .line 496
    .end local v0    # "a":C
    .end local v1    # "b":C
    :cond_4
    const/4 v7, 0x1

    #@40
    return v7
.end method

.method private setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 460
    const-string/jumbo v0, "Close"

    #@3
    invoke-static {p1, p2, v0}, Landroid/net/http/Headers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 461
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    #@c
    .line 459
    :cond_0
    :goto_0
    return-void

    #@d
    .line 463
    :cond_1
    const-string/jumbo v0, "Keep-Alive"

    #@10
    .line 462
    invoke-static {p1, p2, v0}, Landroid/net/http/Headers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 464
    const/4 v0, 0x2

    #@17
    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    #@19
    goto :goto_0
.end method

.method static setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 5
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 506
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@3
    move-result v2

    #@4
    .line 507
    .local v2, "endIndex":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    #@7
    move-result-object v0

    #@8
    .line 505
    .local v0, "chars":[C
    const/4 v3, 0x0

    #@9
    .line 509
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@b
    .line 510
    aget-char v1, v0, v3

    #@d
    .line 511
    .local v1, "current":C
    if-ne v1, p1, :cond_0

    #@f
    .line 512
    return v3

    #@10
    .line 514
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    #@13
    move-result v4

    #@14
    aput-char v4, v0, v3

    #@16
    .line 509
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 517
    .end local v1    # "current":C
    :cond_1
    const/4 v4, -0x1

    #@1a
    return v4
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xa

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xc

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    #@0
    .prologue
    .line 318
    iget v0, p0, Landroid/net/http/Headers;->connectionType:I

    #@2
    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x9

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x3

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 314
    iget-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    #@2
    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x2

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xe

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xb

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getHeaders(Landroid/net/http/Headers$HeaderCallback;)V
    .locals 5
    .param p1, "hcb"    # Landroid/net/http/Headers$HeaderCallback;

    #@0
    .prologue
    .line 441
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x13

    #@3
    if-ge v2, v3, :cond_1

    #@5
    .line 442
    iget-object v3, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@7
    aget-object v1, v3, v2

    #@9
    .line 443
    .local v1, "h":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@b
    .line 444
    sget-object v3, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    #@d
    aget-object v3, v3, v2

    #@f
    invoke-interface {p1, v3, v1}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 447
    .end local v1    # "h":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    .line 448
    .local v0, "extraLen":I
    const/4 v2, 0x0

    #@1c
    :goto_1
    if-ge v2, v0, :cond_2

    #@1e
    .line 453
    iget-object v3, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/String;

    #@26
    .line 454
    iget-object v4, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Ljava/lang/String;

    #@2e
    .line 453
    invoke-interface {p1, v3, v4}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 448
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_1

    #@34
    .line 440
    :cond_2
    return-void
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xd

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x5

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x10

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x8

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x11

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public getSetCookie()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTransferEncoding()J
    .locals 2

    #@0
    .prologue
    .line 310
    iget-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    #@2
    return-wide v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x7

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x12

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 12
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    const/16 v9, 0xc

    #@4
    const/4 v7, 0x0

    #@5
    .line 159
    const/16 v6, 0x3a

    #@7
    invoke-static {p1, v6}, Landroid/net/http/Headers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    #@a
    move-result v4

    #@b
    .line 160
    .local v4, "pos":I
    const/4 v6, -0x1

    #@c
    if-ne v4, v6, :cond_0

    #@e
    .line 161
    return-void

    #@f
    .line 163
    :cond_0
    invoke-virtual {p1, v7, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 164
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_1

    #@19
    .line 165
    return-void

    #@1a
    .line 167
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@1c
    .line 169
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@1f
    move-result v6

    #@20
    invoke-virtual {p1, v4, v6}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 174
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@27
    move-result v6

    #@28
    sparse-switch v6, :sswitch_data_0

    #@2b
    .line 304
    iget-object v6, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 305
    iget-object v6, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 158
    :cond_2
    :goto_0
    return-void

    #@36
    .line 176
    :sswitch_0
    const-string/jumbo v6, "transfer-encoding"

    #@39
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 177
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@41
    aput-object v5, v6, v7

    #@43
    .line 178
    sget-object v6, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@45
    .line 179
    new-instance v7, Lorg/apache/http/message/ParserCursor;

    #@47
    .line 180
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@4a
    move-result v8

    #@4b
    .line 179
    invoke-direct {v7, v4, v8}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@4e
    .line 178
    invoke-virtual {v6, p1, v7}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    #@51
    move-result-object v1

    #@52
    .line 183
    .local v1, "encodings":[Lorg/apache/http/HeaderElement;
    array-length v2, v1

    #@53
    .line 184
    .local v2, "len":I
    const-string/jumbo v6, "identity"

    #@56
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_3

    #@5c
    .line 185
    iput-wide v10, p0, Landroid/net/http/Headers;->transferEncoding:J

    #@5e
    goto :goto_0

    #@5f
    .line 186
    :cond_3
    if-lez v2, :cond_4

    #@61
    .line 187
    const-string/jumbo v6, "chunked"

    #@64
    .line 188
    add-int/lit8 v7, v2, -0x1

    #@66
    aget-object v7, v1, v7

    #@68
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6f
    move-result v6

    #@70
    .line 186
    if-eqz v6, :cond_4

    #@72
    .line 189
    const-wide/16 v6, -0x2

    #@74
    iput-wide v6, p0, Landroid/net/http/Headers;->transferEncoding:J

    #@76
    goto :goto_0

    #@77
    .line 191
    :cond_4
    iput-wide v10, p0, Landroid/net/http/Headers;->transferEncoding:J

    #@79
    goto :goto_0

    #@7a
    .line 196
    .end local v1    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v2    # "len":I
    :sswitch_1
    const-string/jumbo v6, "content-length"

    #@7d
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v6

    #@81
    if-eqz v6, :cond_2

    #@83
    .line 197
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@85
    const/4 v7, 0x1

    #@86
    aput-object v5, v6, v7

    #@88
    .line 199
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@8b
    move-result-wide v6

    #@8c
    iput-wide v6, p0, Landroid/net/http/Headers;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8e
    goto :goto_0

    #@8f
    .line 200
    :catch_0
    move-exception v0

    #@90
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@91
    .line 209
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :sswitch_2
    const-string/jumbo v6, "content-type"

    #@94
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v6

    #@98
    if-eqz v6, :cond_2

    #@9a
    .line 210
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@9c
    const/4 v7, 0x2

    #@9d
    aput-object v5, v6, v7

    #@9f
    goto :goto_0

    #@a0
    .line 214
    :sswitch_3
    const-string/jumbo v6, "content-encoding"

    #@a3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_2

    #@a9
    .line 215
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@ab
    const/4 v7, 0x3

    #@ac
    aput-object v5, v6, v7

    #@ae
    goto :goto_0

    #@af
    .line 219
    :sswitch_4
    const-string/jumbo v6, "connection"

    #@b2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v6

    #@b6
    if-eqz v6, :cond_2

    #@b8
    .line 220
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@ba
    const/4 v7, 0x4

    #@bb
    aput-object v5, v6, v7

    #@bd
    .line 221
    invoke-direct {p0, p1, v4}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 225
    :sswitch_5
    const-string/jumbo v6, "location"

    #@c5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v6

    #@c9
    if-eqz v6, :cond_2

    #@cb
    .line 226
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@cd
    const/4 v7, 0x5

    #@ce
    aput-object v5, v6, v7

    #@d0
    goto/16 :goto_0

    #@d2
    .line 230
    :sswitch_6
    const-string/jumbo v6, "proxy-connection"

    #@d5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v6

    #@d9
    if-eqz v6, :cond_2

    #@db
    .line 231
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@dd
    const/4 v7, 0x6

    #@de
    aput-object v5, v6, v7

    #@e0
    .line 232
    invoke-direct {p0, p1, v4}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 236
    :sswitch_7
    const-string/jumbo v6, "www-authenticate"

    #@e8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v6

    #@ec
    if-eqz v6, :cond_2

    #@ee
    .line 237
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@f0
    const/4 v7, 0x7

    #@f1
    aput-object v5, v6, v7

    #@f3
    goto/16 :goto_0

    #@f5
    .line 241
    :sswitch_8
    const-string/jumbo v6, "proxy-authenticate"

    #@f8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v6

    #@fc
    if-eqz v6, :cond_2

    #@fe
    .line 242
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@100
    const/16 v7, 0x8

    #@102
    aput-object v5, v6, v7

    #@104
    goto/16 :goto_0

    #@106
    .line 246
    :sswitch_9
    const-string/jumbo v6, "content-disposition"

    #@109
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v6

    #@10d
    if-eqz v6, :cond_2

    #@10f
    .line 247
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@111
    const/16 v7, 0x9

    #@113
    aput-object v5, v6, v7

    #@115
    goto/16 :goto_0

    #@117
    .line 251
    :sswitch_a
    const-string/jumbo v6, "accept-ranges"

    #@11a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v6

    #@11e
    if-eqz v6, :cond_2

    #@120
    .line 252
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@122
    const/16 v7, 0xa

    #@124
    aput-object v5, v6, v7

    #@126
    goto/16 :goto_0

    #@128
    .line 256
    :sswitch_b
    const-string/jumbo v6, "expires"

    #@12b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12e
    move-result v6

    #@12f
    if-eqz v6, :cond_2

    #@131
    .line 257
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@133
    const/16 v7, 0xb

    #@135
    aput-object v5, v6, v7

    #@137
    goto/16 :goto_0

    #@139
    .line 261
    :sswitch_c
    const-string/jumbo v6, "cache-control"

    #@13c
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v6

    #@140
    if-eqz v6, :cond_2

    #@142
    .line 264
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@144
    aget-object v6, v6, v9

    #@146
    if-eqz v6, :cond_5

    #@148
    .line 265
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@14a
    aget-object v6, v6, v9

    #@14c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@14f
    move-result v6

    #@150
    if-lez v6, :cond_5

    #@152
    .line 266
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@154
    new-instance v7, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    aget-object v8, v6, v9

    #@15b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v7

    #@15f
    const/16 v8, 0x2c

    #@161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@164
    move-result-object v7

    #@165
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v7

    #@169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v7

    #@16d
    aput-object v7, v6, v9

    #@16f
    goto/16 :goto_0

    #@171
    .line 268
    :cond_5
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@173
    aput-object v5, v6, v9

    #@175
    goto/16 :goto_0

    #@177
    .line 273
    :sswitch_d
    const-string/jumbo v6, "last-modified"

    #@17a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17d
    move-result v6

    #@17e
    if-eqz v6, :cond_2

    #@180
    .line 274
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@182
    const/16 v7, 0xd

    #@184
    aput-object v5, v6, v7

    #@186
    goto/16 :goto_0

    #@188
    .line 278
    :sswitch_e
    const-string/jumbo v6, "etag"

    #@18b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18e
    move-result v6

    #@18f
    if-eqz v6, :cond_2

    #@191
    .line 279
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@193
    const/16 v7, 0xe

    #@195
    aput-object v5, v6, v7

    #@197
    goto/16 :goto_0

    #@199
    .line 283
    :sswitch_f
    const-string/jumbo v6, "set-cookie"

    #@19c
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19f
    move-result v6

    #@1a0
    if-eqz v6, :cond_2

    #@1a2
    .line 284
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@1a4
    const/16 v7, 0xf

    #@1a6
    aput-object v5, v6, v7

    #@1a8
    .line 285
    iget-object v6, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    #@1aa
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 289
    :sswitch_10
    const-string/jumbo v6, "pragma"

    #@1b2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b5
    move-result v6

    #@1b6
    if-eqz v6, :cond_2

    #@1b8
    .line 290
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@1ba
    const/16 v7, 0x10

    #@1bc
    aput-object v5, v6, v7

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 294
    :sswitch_11
    const-string/jumbo v6, "refresh"

    #@1c3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c6
    move-result v6

    #@1c7
    if-eqz v6, :cond_2

    #@1c9
    .line 295
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@1cb
    const/16 v7, 0x11

    #@1cd
    aput-object v5, v6, v7

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 299
    :sswitch_12
    const-string/jumbo v6, "x-permitted-cross-domain-policies"

    #@1d4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d7
    move-result v6

    #@1d8
    if-eqz v6, :cond_2

    #@1da
    .line 300
    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@1dc
    const/16 v7, 0x12

    #@1de
    aput-object v5, v6, v7

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 174
    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_b
        -0x4b88f79d -> :sswitch_9
        -0x4384d946 -> :sswitch_1
        -0x3a6d1ac4 -> :sswitch_10
        -0x2e3b8122 -> :sswitch_4
        -0x11fc9c2c -> :sswitch_8
        -0xe7c74b5 -> :sswitch_7
        -0xc71a9ee -> :sswitch_c
        0x2fa915 -> :sswitch_e
        0x8f17c20 -> :sswitch_d
        0x110aef9d -> :sswitch_6
        0x2ed4600e -> :sswitch_2
        0x40b292db -> :sswitch_11
        0x49be662f -> :sswitch_f
        0x4bf6b0f5 -> :sswitch_0
        0x53476b3b -> :sswitch_a
        0x714f9fb5 -> :sswitch_5
        0x7ce07427 -> :sswitch_3
    .end sparse-switch
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xa

    #@4
    aput-object p1, v0, v1

    #@6
    .line 409
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xc

    #@4
    aput-object p1, v0, v1

    #@6
    .line 417
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x9

    #@4
    aput-object p1, v0, v1

    #@6
    .line 405
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x3

    #@3
    aput-object p1, v0, v1

    #@5
    .line 389
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 382
    iput-wide p1, p0, Landroid/net/http/Headers;->contentLength:J

    #@2
    .line 381
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x2

    #@3
    aput-object p1, v0, v1

    #@5
    .line 385
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xe

    #@4
    aput-object p1, v0, v1

    #@6
    .line 425
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xb

    #@4
    aput-object p1, v0, v1

    #@6
    .line 413
    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0xd

    #@4
    aput-object p1, v0, v1

    #@6
    .line 421
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x5

    #@3
    aput-object p1, v0, v1

    #@5
    .line 393
    return-void
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x8

    #@4
    aput-object p1, v0, v1

    #@6
    .line 401
    return-void
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/4 v1, 0x7

    #@3
    aput-object p1, v0, v1

    #@5
    .line 397
    return-void
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    #@2
    const/16 v1, 0x12

    #@4
    aput-object p1, v0, v1

    #@6
    .line 429
    return-void
.end method
