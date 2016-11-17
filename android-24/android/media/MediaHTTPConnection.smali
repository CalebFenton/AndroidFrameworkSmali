.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final VERBOSE:Z


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

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

.field private mInputStream:Ljava/io/InputStream;

.field private mNativeContext:J

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 406
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 407
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    #@9
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v0, 0x0

    #@4
    .line 63
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    #@7
    .line 49
    iput-wide v2, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    #@9
    .line 50
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@b
    .line 51
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    #@d
    .line 52
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@f
    .line 53
    iput-wide v2, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    #@11
    .line 54
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    #@13
    .line 56
    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@15
    .line 57
    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    #@17
    .line 64
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    #@1a
    move-result-object v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 65
    new-instance v0, Ljava/net/CookieManager;

    #@1f
    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    #@22
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    #@25
    .line 68
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    #@28
    .line 63
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 111
    new-instance v2, Ljava/util/HashMap;

    #@3
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 113
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "\r\n"

    #@9
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 114
    .local v4, "pairs":[Ljava/lang/String;
    array-length v8, v4

    #@e
    move v6, v7

    #@f
    :goto_0
    if-ge v6, v8, :cond_1

    #@11
    aget-object v3, v4, v6

    #@13
    .line 115
    .local v3, "pair":Ljava/lang/String;
    const-string/jumbo v9, ":"

    #@16
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@19
    move-result v0

    #@1a
    .line 116
    .local v0, "colonPos":I
    if-ltz v0, :cond_0

    #@1c
    .line 117
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 118
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    #@22
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 120
    .local v5, "val":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    #@29
    move-result v9

    #@2a
    if-nez v9, :cond_0

    #@2c
    .line 121
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 114
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@31
    goto :goto_0

    #@32
    .line 126
    .end local v0    # "colonPos":I
    .end local v3    # "pair":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    const-string/jumbo v0, "android-allow-cross-domain-redirect"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 101
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@f
    .line 103
    iget-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@11
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    #@13
    .line 107
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 105
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 5
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 148
    if-nez p0, :cond_0

    #@4
    .line 149
    return v3

    #@5
    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 154
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_1

    #@b
    .line 155
    return v3

    #@c
    .line 159
    :cond_1
    :try_start_0
    const-string/jumbo v2, "localhost"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 160
    return v4

    #@16
    .line 162
    :cond_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 163
    return v4

    #@21
    .line 165
    :catch_0
    move-exception v1

    #@22
    .line 167
    :cond_3
    return v3
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native native_init()V
.end method

.method private final native native_readAt(JI)I
.end method

.method private final native native_setup()V
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 91
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-wide v2

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v2, v2, v4

    #@9
    if-eqz v2, :cond_0

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    const/4 v1, 0x0

    #@d
    goto :goto_0

    #@e
    .line 92
    :catch_0
    move-exception v0

    #@f
    .line 93
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "true"

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 94
    const-string/jumbo v1, "yes"

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    .line 93
    :cond_1
    return v1
.end method

.method private readAt(J[BI)I
    .locals 15
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    #@0
    .prologue
    .line 315
    new-instance v9, Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@2
    invoke-direct {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    #@5
    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@8
    move-result-object v9

    #@9
    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    #@c
    move-result-object v8

    #@d
    .line 317
    .local v8, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@10
    .line 320
    :try_start_0
    iget-wide v10, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    #@12
    cmp-long v9, p1, v10

    #@14
    if-eqz v9, :cond_0

    #@16
    .line 321
    invoke-direct/range {p0 .. p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    #@19
    .line 324
    :cond_0
    iget-object v9, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    #@1b
    const/4 v10, 0x0

    #@1c
    move-object/from16 v0, p3

    #@1e
    move/from16 v1, p4

    #@20
    invoke-virtual {v9, v0, v10, v1}, Ljava/io/InputStream;->read([BII)I

    #@23
    move-result v7

    #@24
    .line 326
    .local v7, "n":I
    const/4 v9, -0x1

    #@25
    if-ne v7, v9, :cond_1

    #@27
    .line 329
    const/4 v7, 0x0

    #@28
    .line 332
    :cond_1
    iget-wide v10, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    #@2a
    int-to-long v12, v7

    #@2b
    add-long/2addr v10, v12

    #@2c
    iput-wide v10, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 338
    return v7

    #@2f
    .line 353
    .end local v7    # "n":I
    :catch_0
    move-exception v3

    #@30
    .line 358
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, -0x1

    #@31
    return v9

    #@32
    .line 348
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@33
    .line 352
    .local v2, "e":Ljava/io/IOException;
    const/4 v9, -0x1

    #@34
    return v9

    #@35
    .line 345
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    #@36
    .line 346
    .local v6, "e":Ljava/net/UnknownServiceException;
    const-string/jumbo v9, "MediaHTTPConnection"

    #@39
    new-instance v10, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v11, "readAt "

    #@41
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v10

    #@45
    move-wide/from16 v0, p1

    #@47
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    const-string/jumbo v11, " / "

    #@4e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v10

    #@52
    move/from16 v0, p4

    #@54
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v10

    #@58
    const-string/jumbo v11, " => "

    #@5b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v10

    #@63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v10

    #@67
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 347
    const/16 v9, -0x3f2

    #@6c
    return v9

    #@6d
    .line 342
    .end local v6    # "e":Ljava/net/UnknownServiceException;
    :catch_3
    move-exception v4

    #@6e
    .line 343
    .local v4, "e":Ljava/net/NoRouteToHostException;
    const-string/jumbo v9, "MediaHTTPConnection"

    #@71
    new-instance v10, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v11, "readAt "

    #@79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v10

    #@7d
    move-wide/from16 v0, p1

    #@7f
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    const-string/jumbo v11, " / "

    #@86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v10

    #@8a
    move/from16 v0, p4

    #@8c
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    const-string/jumbo v11, " => "

    #@93
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v10

    #@97
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v10

    #@9f
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 344
    const/16 v9, -0x3f2

    #@a4
    return v9

    #@a5
    .line 339
    .end local v4    # "e":Ljava/net/NoRouteToHostException;
    :catch_4
    move-exception v5

    #@a6
    .line 340
    .local v5, "e":Ljava/net/ProtocolException;
    const-string/jumbo v9, "MediaHTTPConnection"

    #@a9
    new-instance v10, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v11, "readAt "

    #@b1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    move-wide/from16 v0, p1

    #@b7
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    const-string/jumbo v11, " / "

    #@be
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v10

    #@c2
    move/from16 v0, p4

    #@c4
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    const-string/jumbo v11, " => "

    #@cb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v10

    #@cf
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v10

    #@d3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v10

    #@d7
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    .line 341
    const/16 v9, -0x3f2

    #@dc
    return v9
.end method

.method private seekTo(J)V
    .locals 23
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    #@3
    .line 175
    const/4 v13, 0x0

    #@4
    .line 177
    .local v13, "redirectCount":I
    :try_start_0
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@8
    move-object/from16 v18, v0

    #@a
    .line 180
    .local v18, "url":Ljava/net/URL;
    invoke-static/range {v18 .. v18}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    #@d
    move-result v12

    #@e
    .line 183
    .local v12, "noProxy":Z
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    #@10
    .line 184
    sget-object v19, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@12
    invoke-virtual/range {v18 .. v19}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@15
    move-result-object v19

    #@16
    check-cast v19, Ljava/net/HttpURLConnection;

    #@18
    move-object/from16 v0, v19

    #@1a
    move-object/from16 v1, p0

    #@1c
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@1e
    .line 188
    :goto_1
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@22
    move-object/from16 v19, v0

    #@24
    const/16 v20, 0x7530

    #@26
    invoke-virtual/range {v19 .. v20}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@29
    .line 191
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@2d
    move-object/from16 v19, v0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@33
    move/from16 v20, v0

    #@35
    invoke-virtual/range {v19 .. v20}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@38
    .line 193
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    #@3c
    move-object/from16 v19, v0

    #@3e
    if-eqz v19, :cond_2

    #@40
    .line 194
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    #@44
    move-object/from16 v19, v0

    #@46
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@49
    move-result-object v19

    #@4a
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v8

    #@4e
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v19

    #@52
    if-eqz v19, :cond_2

    #@54
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v7

    #@58
    check-cast v7, Ljava/util/Map$Entry;

    #@5a
    .line 195
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@5e
    move-object/from16 v21, v0

    #@60
    .line 196
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@63
    move-result-object v19

    #@64
    check-cast v19, Ljava/lang/String;

    #@66
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@69
    move-result-object v20

    #@6a
    check-cast v20, Ljava/lang/String;

    #@6c
    .line 195
    move-object/from16 v0, v21

    #@6e
    move-object/from16 v1, v19

    #@70
    move-object/from16 v2, v20

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    goto :goto_2

    #@76
    .line 298
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "noProxy":Z
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    #@77
    .line 299
    .local v5, "e":Ljava/io/IOException;
    const-wide/16 v20, -0x1

    #@79
    move-wide/from16 v0, v20

    #@7b
    move-object/from16 v2, p0

    #@7d
    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    #@7f
    .line 300
    const/16 v19, 0x0

    #@81
    move-object/from16 v0, v19

    #@83
    move-object/from16 v1, p0

    #@85
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    #@87
    .line 301
    const/16 v19, 0x0

    #@89
    move-object/from16 v0, v19

    #@8b
    move-object/from16 v1, p0

    #@8d
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@8f
    .line 302
    const-wide/16 v20, -0x1

    #@91
    move-wide/from16 v0, v20

    #@93
    move-object/from16 v2, p0

    #@95
    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    #@97
    .line 304
    throw v5

    #@98
    .line 186
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v12    # "noProxy":Z
    .restart local v18    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@9b
    move-result-object v19

    #@9c
    check-cast v19, Ljava/net/HttpURLConnection;

    #@9e
    move-object/from16 v0, v19

    #@a0
    move-object/from16 v1, p0

    #@a2
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@a4
    goto/16 :goto_1

    #@a6
    .line 200
    :cond_2
    const-wide/16 v20, 0x0

    #@a8
    cmp-long v19, p1, v20

    #@aa
    if-lez v19, :cond_3

    #@ac
    .line 201
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@b0
    move-object/from16 v19, v0

    #@b2
    .line 202
    const-string/jumbo v20, "Range"

    #@b5
    new-instance v21, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v22, "bytes="

    #@bd
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v21

    #@c1
    move-object/from16 v0, v21

    #@c3
    move-wide/from16 v1, p1

    #@c5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v21

    #@c9
    const-string/jumbo v22, "-"

    #@cc
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v21

    #@d0
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v21

    #@d4
    .line 201
    invoke-virtual/range {v19 .. v21}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@d7
    .line 205
    :cond_3
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@db
    move-object/from16 v19, v0

    #@dd
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@e0
    move-result v14

    #@e1
    .line 206
    .local v14, "response":I
    const/16 v19, 0x12c

    #@e3
    move/from16 v0, v19

    #@e5
    if-eq v14, v0, :cond_6

    #@e7
    .line 207
    const/16 v19, 0x12d

    #@e9
    move/from16 v0, v19

    #@eb
    if-eq v14, v0, :cond_6

    #@ed
    .line 208
    const/16 v19, 0x12e

    #@ef
    move/from16 v0, v19

    #@f1
    if-eq v14, v0, :cond_6

    #@f3
    .line 209
    const/16 v19, 0x12f

    #@f5
    move/from16 v0, v19

    #@f7
    if-eq v14, v0, :cond_6

    #@f9
    .line 210
    const/16 v19, 0x133

    #@fb
    move/from16 v0, v19

    #@fd
    if-eq v14, v0, :cond_6

    #@ff
    .line 251
    move-object/from16 v0, p0

    #@101
    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@103
    move/from16 v19, v0

    #@105
    if-eqz v19, :cond_4

    #@107
    .line 254
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@10b
    move-object/from16 v19, v0

    #@10d
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    #@110
    move-result-object v19

    #@111
    move-object/from16 v0, v19

    #@113
    move-object/from16 v1, p0

    #@115
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@117
    .line 257
    :cond_4
    const/16 v19, 0xce

    #@119
    move/from16 v0, v19

    #@11b
    if-ne v14, v0, :cond_11

    #@11d
    .line 263
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@121
    move-object/from16 v19, v0

    #@123
    const-string/jumbo v20, "Content-Range"

    #@126
    invoke-virtual/range {v19 .. v20}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@129
    move-result-object v4

    #@12a
    .line 265
    .local v4, "contentRange":Ljava/lang/String;
    const-wide/16 v20, -0x1

    #@12c
    move-wide/from16 v0, v20

    #@12e
    move-object/from16 v2, p0

    #@130
    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    #@132
    .line 266
    if-eqz v4, :cond_5

    #@134
    .line 271
    const/16 v19, 0x2f

    #@136
    move/from16 v0, v19

    #@138
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@13b
    move-result v9

    #@13c
    .line 272
    .local v9, "lastSlashPos":I
    if-ltz v9, :cond_5

    #@13e
    .line 274
    add-int/lit8 v19, v9, 0x1

    #@140
    move/from16 v0, v19

    #@142
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@145
    move-result-object v17

    #@146
    .line 277
    .local v17, "total":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@149
    move-result-wide v20

    #@14a
    move-wide/from16 v0, v20

    #@14c
    move-object/from16 v2, p0

    #@14e
    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@150
    .line 288
    .end local v4    # "contentRange":Ljava/lang/String;
    .end local v9    # "lastSlashPos":I
    .end local v17    # "total":Ljava/lang/String;
    :cond_5
    :goto_3
    const-wide/16 v20, 0x0

    #@152
    cmp-long v19, p1, v20

    #@154
    if-lez v19, :cond_13

    #@156
    const/16 v19, 0xce

    #@158
    move/from16 v0, v19

    #@15a
    if-eq v14, v0, :cond_13

    #@15c
    .line 291
    :try_start_3
    new-instance v19, Ljava/net/ProtocolException;

    #@15e
    invoke-direct/range {v19 .. v19}, Ljava/net/ProtocolException;-><init>()V

    #@161
    throw v19

    #@162
    .line 215
    :cond_6
    add-int/lit8 v13, v13, 0x1

    #@164
    const/16 v19, 0x14

    #@166
    move/from16 v0, v19

    #@168
    if-le v13, v0, :cond_7

    #@16a
    .line 216
    new-instance v19, Ljava/net/NoRouteToHostException;

    #@16c
    new-instance v20, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v21, "Too many redirects: "

    #@174
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v20

    #@178
    move-object/from16 v0, v20

    #@17a
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v20

    #@17e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v20

    #@182
    invoke-direct/range {v19 .. v20}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    #@185
    throw v19

    #@186
    .line 219
    :cond_7
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@18a
    move-object/from16 v19, v0

    #@18c
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@18f
    move-result-object v11

    #@190
    .line 220
    .local v11, "method":Ljava/lang/String;
    const/16 v19, 0x133

    #@192
    move/from16 v0, v19

    #@194
    if-ne v14, v0, :cond_8

    #@196
    .line 221
    const-string/jumbo v19, "GET"

    #@199
    move-object/from16 v0, v19

    #@19b
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19e
    move-result v19

    #@19f
    if-eqz v19, :cond_9

    #@1a1
    .line 227
    :cond_8
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@1a5
    move-object/from16 v19, v0

    #@1a7
    const-string/jumbo v20, "Location"

    #@1aa
    invoke-virtual/range {v19 .. v20}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@1ad
    move-result-object v10

    #@1ae
    .line 228
    .local v10, "location":Ljava/lang/String;
    if-nez v10, :cond_a

    #@1b0
    .line 229
    new-instance v19, Ljava/net/NoRouteToHostException;

    #@1b2
    const-string/jumbo v20, "Invalid redirect"

    #@1b5
    invoke-direct/range {v19 .. v20}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    #@1b8
    throw v19

    #@1b9
    .line 221
    .end local v10    # "location":Ljava/lang/String;
    :cond_9
    const-string/jumbo v19, "HEAD"

    #@1bc
    move-object/from16 v0, v19

    #@1be
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c1
    move-result v19

    #@1c2
    if-nez v19, :cond_8

    #@1c4
    .line 225
    new-instance v19, Ljava/net/NoRouteToHostException;

    #@1c6
    const-string/jumbo v20, "Invalid redirect"

    #@1c9
    invoke-direct/range {v19 .. v20}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    #@1cc
    throw v19

    #@1cd
    .line 231
    .restart local v10    # "location":Ljava/lang/String;
    :cond_a
    new-instance v18, Ljava/net/URL;

    #@1cf
    .end local v18    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@1d3
    move-object/from16 v19, v0

    #@1d5
    move-object/from16 v0, v18

    #@1d7
    move-object/from16 v1, v19

    #@1d9
    invoke-direct {v0, v1, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@1dc
    .line 232
    .restart local v18    # "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1df
    move-result-object v19

    #@1e0
    const-string/jumbo v20, "https"

    #@1e3
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e6
    move-result v19

    #@1e7
    if-nez v19, :cond_b

    #@1e9
    .line 233
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1ec
    move-result-object v19

    #@1ed
    const-string/jumbo v20, "http"

    #@1f0
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f3
    move-result v19

    #@1f4
    if-eqz v19, :cond_e

    #@1f6
    .line 236
    :cond_b
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@1fa
    move-object/from16 v19, v0

    #@1fc
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1ff
    move-result-object v19

    #@200
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@203
    move-result-object v20

    #@204
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@207
    move-result v16

    #@208
    .line 237
    .local v16, "sameProtocol":Z
    move-object/from16 v0, p0

    #@20a
    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    #@20c
    move/from16 v19, v0

    #@20e
    if-nez v19, :cond_c

    #@210
    if-eqz v16, :cond_f

    #@212
    .line 240
    :cond_c
    move-object/from16 v0, p0

    #@214
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@216
    move-object/from16 v19, v0

    #@218
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@21b
    move-result-object v19

    #@21c
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@21f
    move-result-object v20

    #@220
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@223
    move-result v15

    #@224
    .line 241
    .local v15, "sameHost":Z
    move-object/from16 v0, p0

    #@226
    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@228
    move/from16 v19, v0

    #@22a
    if-nez v19, :cond_d

    #@22c
    if-eqz v15, :cond_10

    #@22e
    .line 245
    :cond_d
    const/16 v19, 0x133

    #@230
    move/from16 v0, v19

    #@232
    if-eq v14, v0, :cond_0

    #@234
    .line 247
    move-object/from16 v0, v18

    #@236
    move-object/from16 v1, p0

    #@238
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@23a
    goto/16 :goto_0

    #@23c
    .line 234
    .end local v15    # "sameHost":Z
    .end local v16    # "sameProtocol":Z
    :cond_e
    new-instance v19, Ljava/net/NoRouteToHostException;

    #@23e
    const-string/jumbo v20, "Unsupported protocol redirect"

    #@241
    invoke-direct/range {v19 .. v20}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    #@244
    throw v19

    #@245
    .line 238
    .restart local v16    # "sameProtocol":Z
    :cond_f
    new-instance v19, Ljava/net/NoRouteToHostException;

    #@247
    const-string/jumbo v20, "Cross-protocol redirects are disallowed"

    #@24a
    invoke-direct/range {v19 .. v20}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    #@24d
    throw v19

    #@24e
    .line 242
    .restart local v15    # "sameHost":Z
    :cond_10
    new-instance v19, Ljava/net/NoRouteToHostException;

    #@250
    const-string/jumbo v20, "Cross-domain redirects are disallowed"

    #@253
    invoke-direct/range {v19 .. v20}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    #@256
    throw v19

    #@257
    .line 282
    .end local v10    # "location":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/String;
    .end local v15    # "sameHost":Z
    .end local v16    # "sameProtocol":Z
    :cond_11
    const/16 v19, 0xc8

    #@259
    move/from16 v0, v19

    #@25b
    if-eq v14, v0, :cond_12

    #@25d
    .line 283
    new-instance v19, Ljava/io/IOException;

    #@25f
    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    #@262
    throw v19

    #@263
    .line 285
    :cond_12
    move-object/from16 v0, p0

    #@265
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@267
    move-object/from16 v19, v0

    #@269
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getContentLength()I

    #@26c
    move-result v19

    #@26d
    move/from16 v0, v19

    #@26f
    int-to-long v0, v0

    #@270
    move-wide/from16 v20, v0

    #@272
    move-wide/from16 v0, v20

    #@274
    move-object/from16 v2, p0

    #@276
    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    #@278
    goto/16 :goto_3

    #@27a
    .line 295
    :cond_13
    new-instance v19, Ljava/io/BufferedInputStream;

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@280
    move-object/from16 v20, v0

    #@282
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@285
    move-result-object v20

    #@286
    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@289
    .line 294
    move-object/from16 v0, v19

    #@28b
    move-object/from16 v1, p0

    #@28d
    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    #@28f
    .line 297
    move-wide/from16 v0, p1

    #@291
    move-object/from16 v2, p0

    #@293
    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@295
    .line 170
    return-void

    #@296
    .line 278
    .restart local v4    # "contentRange":Ljava/lang/String;
    .restart local v9    # "lastSlashPos":I
    .restart local v17    # "total":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@297
    .local v6, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3
.end method

.method private teardownConnection()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 138
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    #@7
    .line 140
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@c
    .line 141
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@e
    .line 143
    const-wide/16 v0, -0x1

    #@10
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    #@12
    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    #@3
    .line 79
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    #@6
    .line 80
    new-instance v1, Ljava/net/URL;

    #@8
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@d
    .line 81
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 86
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 82
    :catch_0
    move-exception v0

    #@19
    .line 83
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    #@4
    .line 132
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    #@6
    .line 133
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@8
    .line 130
    return-void
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    #@3
    .line 394
    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 377
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 379
    const-wide/16 v2, 0x0

    #@6
    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 385
    :cond_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 380
    :catch_0
    move-exception v0

    #@11
    .line 381
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "application/octet-stream"

    #@14
    return-object v1
.end method

.method public getSize()J
    .locals 4

    #@0
    .prologue
    .line 364
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 366
    const-wide/16 v2, 0x0

    #@6
    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 372
    :cond_0
    iget-wide v2, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    #@b
    return-wide v2

    #@c
    .line 367
    :catch_0
    move-exception v0

    #@d
    .line 368
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    #@f
    return-wide v2
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    #@2
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readAt(JI)I
    .locals 1
    .param p1, "offset"    # J
    .param p3, "size"    # I

    #@0
    .prologue
    .line 310
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method
