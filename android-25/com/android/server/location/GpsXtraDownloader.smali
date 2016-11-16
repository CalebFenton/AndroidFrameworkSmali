.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "GpsXtraDownloader"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@a
    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@c
    const-wide/16 v2, 0x1e

    #@e
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@11
    move-result-wide v0

    #@12
    long-to-int v0, v0

    #@13
    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    #@15
    .line 40
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 10
    .param p1, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 55
    const/4 v1, 0x0

    #@6
    .line 56
    .local v1, "count":I
    const-string/jumbo v7, "XTRA_SERVER_1"

    #@9
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 57
    .local v4, "server1":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_2"

    #@10
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 58
    .local v5, "server2":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_3"

    #@17
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 59
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 60
    :cond_0
    if-eqz v5, :cond_1

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    .line 61
    :cond_1
    if-eqz v6, :cond_2

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    .line 64
    :cond_2
    const-string/jumbo v7, "XTRA_USER_AGENT"

    #@29
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 65
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_3

    #@33
    .line 66
    const-string/jumbo v7, "Android"

    #@36
    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    #@38
    .line 71
    :goto_0
    if-nez v1, :cond_4

    #@3a
    .line 72
    const-string/jumbo v7, "GpsXtraDownloader"

    #@3d
    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    #@40
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 73
    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@45
    .line 53
    :goto_1
    return-void

    #@46
    .line 68
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    #@48
    goto :goto_0

    #@49
    .line 75
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    #@4b
    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@4d
    .line 76
    const/4 v1, 0x0

    #@4e
    .line 77
    if-eqz v4, :cond_7

    #@50
    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@52
    const/4 v1, 0x1

    #@53
    aput-object v4, v7, v8

    #@55
    move v2, v1

    #@56
    .line 78
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_2
    if-eqz v5, :cond_5

    #@58
    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@5a
    add-int/lit8 v1, v2, 0x1

    #@5c
    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    #@5e
    move v2, v1

    #@5f
    .line 79
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    #@61
    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@63
    add-int/lit8 v1, v2, 0x1

    #@65
    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    #@67
    .line 82
    :goto_3
    new-instance v3, Ljava/util/Random;

    #@69
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    #@6c
    .line 83
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    #@6f
    move-result v7

    #@70
    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@72
    goto :goto_1

    #@73
    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    #@74
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    #@75
    :cond_7
    move v2, v1

    #@76
    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@2
    if-eqz v9, :cond_0

    #@4
    const-string/jumbo v9, "GpsXtraDownloader"

    #@7
    new-instance v10, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v11, "Downloading XTRA data from "

    #@f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v10

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 114
    :cond_0
    const/4 v4, 0x0

    #@21
    .line 116
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@2b
    move-result-object v9

    #@2c
    move-object v0, v9

    #@2d
    check-cast v0, Ljava/net/HttpURLConnection;

    #@2f
    move-object v4, v0

    #@30
    .line 118
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v9, "Accept"

    #@33
    .line 119
    const-string/jumbo v10, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    #@36
    .line 117
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 121
    const-string/jumbo v9, "x-wap-profile"

    #@3c
    .line 122
    const-string/jumbo v10, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    #@3f
    .line 120
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 123
    sget v9, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    #@44
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@47
    .line 125
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    #@4a
    .line 126
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@4d
    move-result v8

    #@4e
    .line 127
    .local v8, "statusCode":I
    const/16 v9, 0xc8

    #@50
    if-eq v8, v9, :cond_3

    #@52
    .line 128
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@54
    if-eqz v9, :cond_1

    #@56
    const-string/jumbo v9, "GpsXtraDownloader"

    #@59
    new-instance v10, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v11, "HTTP error downloading gps XTRA: "

    #@61
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v10

    #@69
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .line 129
    :cond_1
    const/4 v9, 0x0

    #@71
    .line 148
    if-eqz v4, :cond_2

    #@73
    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    #@76
    .line 129
    :cond_2
    return-object v9

    #@77
    .line 132
    :cond_3
    const/4 v10, 0x0

    #@78
    const/4 v6, 0x0

    #@79
    .local v6, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@7c
    move-result-object v6

    #@7d
    .line 133
    .local v6, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@7f
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@82
    .line 134
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    #@84
    new-array v2, v9, [B

    #@86
    .line 136
    .local v2, "buffer":[B
    :cond_4
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    #@89
    move-result v5

    #@8a
    .local v5, "count":I
    const/4 v9, -0x1

    #@8b
    if-eq v5, v9, :cond_b

    #@8d
    .line 137
    const/4 v9, 0x0

    #@8e
    invoke-virtual {v3, v2, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@91
    .line 138
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    #@94
    move-result v9

    #@95
    int-to-long v12, v9

    #@96
    const-wide/32 v14, 0xf4240

    #@99
    cmp-long v9, v12, v14

    #@9b
    if-lez v9, :cond_4

    #@9d
    .line 139
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@9f
    if-eqz v9, :cond_5

    #@a1
    const-string/jumbo v9, "GpsXtraDownloader"

    #@a4
    const-string/jumbo v11, "XTRA file too large"

    #@a7
    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@aa
    .line 144
    :cond_5
    if-eqz v6, :cond_6

    #@ac
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@af
    :cond_6
    :goto_0
    if-eqz v10, :cond_9

    #@b1
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b2
    .line 145
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catch_0
    move-exception v7

    #@b3
    .line 146
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_4
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@b5
    if-eqz v9, :cond_7

    #@b7
    const-string/jumbo v9, "GpsXtraDownloader"

    #@ba
    const-string/jumbo v10, "Error downloading gps XTRA: "

    #@bd
    invoke-static {v9, v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c0
    .line 148
    :cond_7
    if-eqz v4, :cond_8

    #@c2
    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    #@c5
    .line 152
    :cond_8
    const/4 v9, 0x0

    #@c6
    return-object v9

    #@c7
    .line 144
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :catch_1
    move-exception v10

    #@c8
    goto :goto_0

    #@c9
    .line 140
    :cond_9
    const/4 v9, 0x0

    #@ca
    .line 148
    if-eqz v4, :cond_a

    #@cc
    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    #@cf
    .line 140
    :cond_a
    return-object v9

    #@d0
    .line 143
    :cond_b
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@d3
    move-result-object v9

    #@d4
    .line 144
    if-eqz v6, :cond_c

    #@d6
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d9
    :cond_c
    :goto_1
    if-eqz v10, :cond_e

    #@db
    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@dc
    .line 147
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catchall_0
    move-exception v9

    #@dd
    .line 148
    if-eqz v4, :cond_d

    #@df
    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    #@e2
    .line 147
    :cond_d
    throw v9

    #@e3
    .line 144
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :catch_2
    move-exception v10

    #@e4
    goto :goto_1

    #@e5
    .line 148
    :cond_e
    if-eqz v4, :cond_f

    #@e7
    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    #@ea
    .line 143
    :cond_f
    return-object v9

    #@eb
    .line 144
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v9

    #@ec
    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@ed
    :catchall_1
    move-exception v10

    #@ee
    move-object/from16 v16, v10

    #@f0
    move-object v10, v9

    #@f1
    move-object/from16 v9, v16

    #@f3
    :goto_2
    if-eqz v6, :cond_10

    #@f5
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@f8
    :cond_10
    :goto_3
    if-eqz v10, :cond_12

    #@fa
    :try_start_a
    throw v10

    #@fb
    :catch_4
    move-exception v11

    #@fc
    if-nez v10, :cond_11

    #@fe
    move-object v10, v11

    #@ff
    goto :goto_3

    #@100
    :cond_11
    if-eq v10, v11, :cond_10

    #@102
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@105
    goto :goto_3

    #@106
    :cond_12
    throw v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@107
    :catchall_2
    move-exception v9

    #@108
    goto :goto_2
.end method

.method downloadXtraData()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 88
    const/4 v0, 0x0

    #@2
    .line 89
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@4
    .line 91
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 92
    return-object v3

    #@9
    .line 96
    .end local v0    # "result":[B
    :cond_0
    if-nez v0, :cond_2

    #@b
    .line 97
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@d
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@f
    aget-object v2, v2, v3

    #@11
    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    #@14
    move-result-object v0

    #@15
    .line 100
    .local v0, "result":[B
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@1b
    .line 101
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@1d
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@1f
    array-length v3, v3

    #@20
    if-ne v2, v3, :cond_1

    #@22
    .line 102
    const/4 v2, 0x0

    #@23
    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@25
    .line 105
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@27
    if-ne v2, v1, :cond_0

    #@29
    .line 108
    .end local v0    # "result":[B
    :cond_2
    return-object v0
.end method
