.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final greylist-max-o CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final greylist-max-o HTTP_TEMP_REDIRECT:I = 0x133

.field private static final greylist-max-o MAX_REDIRECTS:I = 0x14

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final greylist-max-o VERBOSE:Z = false


# instance fields
.field private greylist mAllowCrossDomainRedirect:Z

.field private greylist mAllowCrossProtocolRedirect:Z

.field private volatile greylist mConnection:Ljava/net/HttpURLConnection;

.field private greylist mCurrentOffset:J

.field private greylist mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private greylist mTotalSize:J

.field private greylist mURL:Ljava/net/URL;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 488
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    .line 490
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 93
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 60
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 66
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 69
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 73
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 80
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 95
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-nez v0, :cond_2c

    .line 96
    const-string v1, "MediaHTTPConnection"

    const-string v2, "MediaHTTPConnection: Unexpected. No CookieHandler found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2c
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    .line 100
    return-void
.end method

.method private declared-synchronized greylist-max-o convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "pairs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    .line 147
    .local v5, "pair":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 148
    .local v6, "colonPos":I
    if-ltz v6, :cond_2e

    .line 149
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v7, v8}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 153
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    .line 146
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "colonPos":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 158
    :cond_31
    monitor-exit p0

    return-object v0

    .line 142
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pairs":[Ljava/lang/String;
    .end local p1    # "headers":Ljava/lang/String;
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private declared-synchronized greylist-max-o filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    monitor-enter p0

    .line 132
    :try_start_1
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 133
    invoke-static {p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 135
    iget-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    .line 139
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 137
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_16
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 131
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "val":Ljava/lang/String;
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private static final greylist-max-o isLocalHost(Ljava/net/URL;)Z
    .registers 5
    .param p0, "url"    # Ljava/net/URL;

    .line 203
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 204
    return v0

    .line 207
    :cond_4
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 210
    return v0

    .line 214
    :cond_b
    :try_start_b
    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    .line 215
    return v3

    .line 217
    :cond_15
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1d} :catch_21

    if-eqz v2, :cond_20

    .line 218
    return v3

    .line 221
    :cond_20
    goto :goto_22

    .line 220
    :catch_21
    move-exception v2

    .line 222
    :goto_22
    return v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_readAt(JI)I
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private static greylist-max-o parseBoolean(Ljava/lang/String;)Z
    .registers 7
    .param p0, "val"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 124
    :catch_f
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "true"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 126
    const-string v3, "yes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_23

    :cond_21
    move v0, v1

    goto :goto_24

    :cond_23
    :goto_23
    nop

    .line 125
    :goto_24
    return v0
.end method

.method private declared-synchronized greylist-max-o readAt(J[BI)I
    .registers 13
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    monitor-enter p0

    .line 394
    :try_start_1
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 395
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 397
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_c6

    .line 400
    const/16 v1, -0x3f2

    const/4 v2, -0x1

    :try_start_14
    iget-wide v3, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_16
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_16} :catch_97
    .catch Ljava/net/NoRouteToHostException; {:try_start_14 .. :try_end_16} :catch_68
    .catch Ljava/net/UnknownServiceException; {:try_start_14 .. :try_end_16} :catch_39
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_16} :catch_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_16} :catch_33
    .catchall {:try_start_14 .. :try_end_16} :catchall_c6

    cmp-long v3, p1, v3

    if-eqz v3, :cond_1d

    .line 401
    :try_start_1a
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    .line 404
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_1d
    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 406
    .local v3, "n":I
    if-ne v3, v2, :cond_27

    .line 409
    const/4 v3, 0x0

    .line 412
    :cond_27
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_2d
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_2d} :catch_97
    .catch Ljava/net/NoRouteToHostException; {:try_start_1a .. :try_end_2d} :catch_68
    .catch Ljava/net/UnknownServiceException; {:try_start_1a .. :try_end_2d} :catch_31
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_33
    .catchall {:try_start_1a .. :try_end_2d} :catchall_c6

    .line 418
    monitor-exit p0

    return v3

    .line 428
    .end local v3    # "n":I
    :catch_2f
    move-exception v1

    goto :goto_37

    .line 425
    :catch_31
    move-exception v2

    goto :goto_3a

    .line 433
    :catch_33
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/Exception;
    monitor-exit p0

    return v2

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_36
    move-exception v1

    .line 432
    .local v1, "e":Ljava/io/IOException;
    :goto_37
    monitor-exit p0

    return v2

    .line 425
    .end local v1    # "e":Ljava/io/IOException;
    :catch_39
    move-exception v2

    .line 426
    .local v2, "e":Ljava/net/UnknownServiceException;
    :goto_3a
    :try_start_3a
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_3a .. :try_end_66} :catchall_c6

    .line 427
    monitor-exit p0

    return v1

    .line 422
    .end local v2    # "e":Ljava/net/UnknownServiceException;
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_68
    move-exception v2

    .line 423
    .local v2, "e":Ljava/net/NoRouteToHostException;
    :try_start_69
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_69 .. :try_end_95} :catchall_c6

    .line 424
    monitor-exit p0

    return v1

    .line 419
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    :catch_97
    move-exception v2

    .line 420
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_98
    const-string v3, "MediaHTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_98 .. :try_end_c4} :catchall_c6

    .line 421
    monitor-exit p0

    return v1

    .line 393
    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "e":Ljava/net/ProtocolException;
    .end local p1    # "offset":J
    .end local p3    # "data":[B
    .end local p4    # "size":I
    :catchall_c6
    move-exception p1

    :try_start_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p1
.end method

.method private declared-synchronized greylist-max-o seekTo(J)V
    .registers 21
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    .line 226
    :try_start_5
    invoke-direct {v1}, Landroid/media/MediaHTTPConnection;->teardownConnection()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1fa

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "redirectCount":I
    const-wide/16 v4, -0x1

    :try_start_b
    iget-object v6, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 235
    .local v6, "url":Ljava/net/URL;
    invoke-static {v6}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v7

    move-object v8, v6

    move v6, v0

    .line 248
    .end local v0    # "redirectCount":I
    .local v6, "redirectCount":I
    .local v7, "noProxy":Z
    .local v8, "url":Ljava/net/URL;
    :goto_13
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1e9

    .line 251
    if-eqz v7, :cond_28

    .line 252
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v8, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_30

    .line 254
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_28
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 261
    :goto_30
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1e1

    .line 268
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v9, 0x7530

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 271
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-boolean v9, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 273
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_72

    .line 274
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 275
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 276
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 275
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_54

    .line 280
    :cond_72
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_98

    .line 281
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_98
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v11, v0

    .line 286
    .local v11, "response":I
    const/16 v0, 0x12c

    const/16 v12, 0x133

    if-eq v11, v0, :cond_126

    const/16 v0, 0x12d

    if-eq v11, v0, :cond_126

    const/16 v0, 0x12e

    if-eq v11, v0, :cond_126

    const/16 v0, 0x12f

    if-eq v11, v0, :cond_126

    if-eq v11, v12, :cond_126

    .line 292
    nop

    .line 331
    iget-boolean v0, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-eqz v0, :cond_c0

    .line 334
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 337
    :cond_c0
    const/16 v12, 0xce

    if-ne v11, v12, :cond_f2

    .line 342
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v13, "Content-Range"

    .line 343
    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 345
    .local v13, "contentRange":Ljava/lang/String;
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 346
    if-eqz v13, :cond_ef

    .line 351
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v14, v0

    .line 352
    .local v14, "lastSlashPos":I
    if-ltz v14, :cond_ec

    .line 353
    add-int/lit8 v0, v14, 0x1

    .line 354
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e0} :catch_1f1
    .catchall {:try_start_b .. :try_end_e0} :catchall_1fa

    move-object v15, v0

    .line 357
    .local v15, "total":Ljava/lang/String;
    move-wide/from16 v16, v9

    :try_start_e3
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_e9} :catch_ea
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e9} :catch_1f1
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_1fa

    .line 359
    goto :goto_f1

    .line 358
    :catch_ea
    move-exception v0

    goto :goto_f1

    .line 352
    .end local v15    # "total":Ljava/lang/String;
    :cond_ec
    move-wide/from16 v16, v9

    goto :goto_f1

    .line 346
    .end local v14    # "lastSlashPos":I
    :cond_ef
    move-wide/from16 v16, v9

    .line 362
    .end local v13    # "contentRange":Ljava/lang/String;
    :goto_f1
    goto :goto_101

    :cond_f2
    move-wide/from16 v16, v9

    const/16 v0, 0xc8

    if-ne v11, v0, :cond_120

    .line 365
    :try_start_f8
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 368
    :goto_101
    cmp-long v0, v2, v16

    if-lez v0, :cond_10e

    if-ne v11, v12, :cond_108

    goto :goto_10e

    .line 371
    :cond_108
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0}, Ljava/net/ProtocolException;-><init>()V

    .end local p1    # "offset":J
    throw v0

    .line 374
    .restart local p1    # "offset":J
    :cond_10e
    :goto_10e
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v9, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 375
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 377
    iput-wide v2, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_11d} :catch_1f1
    .catchall {:try_start_f8 .. :try_end_11d} :catchall_1fa

    .line 384
    .end local v6    # "redirectCount":I
    .end local v7    # "noProxy":Z
    .end local v8    # "url":Ljava/net/URL;
    .end local v11    # "response":I
    nop

    .line 385
    monitor-exit p0

    return-void

    .line 363
    .restart local v6    # "redirectCount":I
    .restart local v7    # "noProxy":Z
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v11    # "response":I
    :cond_120
    :try_start_120
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .end local p1    # "offset":J
    throw v0

    .line 295
    .restart local p1    # "offset":J
    :cond_126
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x14

    if-gt v6, v0, :cond_1c8

    .line 299
    iget-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "method":Ljava/lang/String;
    if-ne v11, v12, :cond_14d

    const-string v9, "GET"

    .line 301
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14d

    const-string v9, "HEAD"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_145

    goto :goto_14d

    .line 305
    :cond_145
    new-instance v9, Ljava/net/NoRouteToHostException;

    const-string v10, "Invalid redirect"

    invoke-direct {v9, v10}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v9

    .line 307
    .restart local p1    # "offset":J
    :cond_14d
    :goto_14d
    iget-object v9, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v10, "Location"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, "location":Ljava/lang/String;
    if-eqz v9, :cond_1c0

    .line 311
    new-instance v10, Ljava/net/URL;

    iget-object v13, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {v10, v13, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v8, v10

    .line 312
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v13, "https"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_180

    .line 313
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v13, "http"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_178

    goto :goto_180

    .line 314
    :cond_178
    new-instance v10, Ljava/net/NoRouteToHostException;

    const-string v12, "Unsupported protocol redirect"

    invoke-direct {v10, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v10

    .line 316
    .restart local p1    # "offset":J
    :cond_180
    :goto_180
    iget-object v10, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 317
    .local v10, "sameProtocol":Z
    iget-boolean v13, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    if-nez v13, :cond_19d

    if-eqz v10, :cond_195

    goto :goto_19d

    .line 318
    :cond_195
    new-instance v12, Ljava/net/NoRouteToHostException;

    const-string v13, "Cross-protocol redirects are disallowed"

    invoke-direct {v12, v13}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v12

    .line 320
    .restart local p1    # "offset":J
    :cond_19d
    :goto_19d
    iget-object v13, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 321
    .local v13, "sameHost":Z
    iget-boolean v14, v1, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-nez v14, :cond_1ba

    if-eqz v13, :cond_1b2

    goto :goto_1ba

    .line 322
    :cond_1b2
    new-instance v12, Ljava/net/NoRouteToHostException;

    const-string v14, "Cross-domain redirects are disallowed"

    invoke-direct {v12, v14}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v12

    .line 325
    .restart local p1    # "offset":J
    :cond_1ba
    :goto_1ba
    if-eq v11, v12, :cond_1be

    .line 327
    iput-object v8, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 329
    .end local v0    # "method":Ljava/lang/String;
    .end local v9    # "location":Ljava/lang/String;
    .end local v10    # "sameProtocol":Z
    .end local v13    # "sameHost":Z
    :cond_1be
    goto/16 :goto_13

    .line 309
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v9    # "location":Ljava/lang/String;
    :cond_1c0
    new-instance v10, Ljava/net/NoRouteToHostException;

    const-string v12, "Invalid redirect"

    invoke-direct {v10, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v10

    .line 296
    .end local v0    # "method":Ljava/lang/String;
    .end local v9    # "location":Ljava/lang/String;
    .restart local p1    # "offset":J
    :cond_1c8
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many redirects: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0

    .line 262
    .end local v11    # "response":I
    .restart local p1    # "offset":J
    :cond_1e1
    new-instance v0, Ljava/io/IOException;

    const-string v9, "concurrently disconnecting"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0

    .line 249
    .restart local p1    # "offset":J
    :cond_1e9
    new-instance v0, Ljava/io/IOException;

    const-string v9, "concurrently disconnecting"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "offset":J
    throw v0
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_1f1} :catch_1f1
    .catchall {:try_start_120 .. :try_end_1f1} :catchall_1fa

    .line 378
    .end local v6    # "redirectCount":I
    .end local v7    # "noProxy":Z
    .end local v8    # "url":Ljava/net/URL;
    .restart local p1    # "offset":J
    :catch_1f1
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    :try_start_1f2
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 380
    invoke-direct {v1}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 381
    iput-wide v4, v1, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 383
    throw v0

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "offset":J
    :catchall_1fa
    move-exception v0

    monitor-exit p0
    :try_end_1fc
    .catchall {:try_start_1f2 .. :try_end_1fc} :catchall_1fa

    throw v0
.end method

.method private declared-synchronized greylist-max-o teardownConnection()V
    .registers 3

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1e

    .line 187
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 189
    :try_start_a
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10
    .catchall {:try_start_a .. :try_end_f} :catchall_20

    .line 191
    goto :goto_11

    .line 190
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_10
    move-exception v0

    .line 192
    :goto_11
    :try_start_11
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 195
    :cond_13
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_20

    .line 200
    :cond_1e
    monitor-exit p0

    return-void

    .line 185
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method


# virtual methods
.method public declared-synchronized greylist connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    monitor-enter p0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 112
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 113
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_1e
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    .line 116
    nop

    .line 118
    :try_start_15
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 109
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    .end local p1    # "uri":Ljava/lang/String;
    .end local p2    # "headers":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    .line 114
    .restart local p1    # "uri":Ljava/lang/String;
    .restart local p2    # "headers":Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 115
    .local v0, "e":Ljava/net/MalformedURLException;
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist disconnect()V
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 166
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 169
    .local v0, "connectionToDisconnect":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_c

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_20

    .line 176
    :try_start_d
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 178
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 179
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1d

    .line 181
    .end local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 182
    nop

    .line 183
    return-void

    .line 179
    .restart local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :try_start_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 181
    .end local v0    # "connectionToDisconnect":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_20
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 182
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 477
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    .line 478
    return-void
.end method

.method public declared-synchronized greylist getMIMEType()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 458
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_10

    .line 460
    const-wide/16 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_18

    .line 463
    goto :goto_10

    .line 461
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_b
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    :try_start_c
    const-string v1, "application/octet-stream"
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_18

    monitor-exit p0

    return-object v1

    .line 466
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 457
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized greylist-max-o getSize()J
    .registers 4

    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_10

    .line 446
    const-wide/16 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 449
    goto :goto_10

    .line 447
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catch_b
    move-exception v0

    .line 448
    .local v0, "e":Ljava/io/IOException;
    monitor-exit p0

    const-wide/16 v1, -0x1

    return-wide v1

    .line 452
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnection;
    :cond_10
    :goto_10
    :try_start_10
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-wide v0

    .line 443
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized greylist getUri()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 472
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 472
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist readAt(JI)I
    .registers 5
    .param p1, "offset"    # J
    .param p3, "size"    # I

    monitor-enter p0

    .line 390
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 390
    .end local p0    # "this":Landroid/media/MediaHTTPConnection;
    .end local p1    # "offset":J
    .end local p3    # "size":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method
