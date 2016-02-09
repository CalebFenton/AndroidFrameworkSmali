.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
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
    .line 35
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 48
    const/4 v1, 0x0

    #@6
    .line 49
    .local v1, "count":I
    const-string/jumbo v7, "XTRA_SERVER_1"

    #@9
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 50
    .local v4, "server1":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_2"

    #@10
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 51
    .local v5, "server2":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_3"

    #@17
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 52
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 53
    :cond_0
    if-eqz v5, :cond_1

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    .line 54
    :cond_1
    if-eqz v6, :cond_2

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    .line 57
    :cond_2
    const-string/jumbo v7, "XTRA_USER_AGENT"

    #@29
    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 58
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_3

    #@33
    .line 59
    const-string/jumbo v7, "Android"

    #@36
    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    #@38
    .line 64
    :goto_0
    if-nez v1, :cond_4

    #@3a
    .line 65
    const-string/jumbo v7, "GpsXtraDownloader"

    #@3d
    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    #@40
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 66
    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@45
    .line 46
    :goto_1
    return-void

    #@46
    .line 61
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    #@48
    goto :goto_0

    #@49
    .line 68
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    #@4b
    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@4d
    .line 69
    const/4 v1, 0x0

    #@4e
    .line 70
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
    .line 71
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
    .line 72
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
    .line 75
    :goto_3
    new-instance v3, Ljava/util/Random;

    #@69
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    #@6c
    .line 76
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
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 105
    sget-boolean v4, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    const-string/jumbo v4, "GpsXtraDownloader"

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "Downloading XTRA data from "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 107
    :cond_0
    const/4 v1, 0x0

    #@20
    .line 109
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    #@22
    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@28
    move-result-object v4

    #@29
    move-object v0, v4

    #@2a
    check-cast v0, Ljava/net/HttpURLConnection;

    #@2c
    move-object v1, v0

    #@2d
    .line 111
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v4, "Accept"

    #@30
    .line 112
    const-string/jumbo v5, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    #@33
    .line 110
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 114
    const-string/jumbo v4, "x-wap-profile"

    #@39
    .line 115
    const-string/jumbo v5, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    #@3c
    .line 113
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    #@42
    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@45
    move-result v3

    #@46
    .line 119
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    #@48
    if-eq v3, v4, :cond_3

    #@4a
    .line 120
    sget-boolean v4, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@4c
    if-eqz v4, :cond_1

    #@4e
    const-string/jumbo v4, "GpsXtraDownloader"

    #@51
    new-instance v5, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v6, "HTTP error downloading gps XTRA: "

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    .line 128
    :cond_1
    if-eqz v1, :cond_2

    #@6a
    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    #@6d
    .line 121
    :cond_2
    return-object v7

    #@6e
    .line 124
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@71
    move-result-object v4

    #@72
    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    move-result-object v4

    #@76
    .line 128
    if-eqz v1, :cond_4

    #@78
    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    #@7b
    .line 124
    :cond_4
    return-object v4

    #@7c
    .line 125
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v2

    #@7d
    .line 126
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-boolean v4, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    #@7f
    if-eqz v4, :cond_5

    #@81
    const-string/jumbo v4, "GpsXtraDownloader"

    #@84
    const-string/jumbo v5, "Error downloading gps XTRA: "

    #@87
    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8a
    .line 128
    :cond_5
    if-eqz v1, :cond_6

    #@8c
    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    #@8f
    .line 132
    :cond_6
    return-object v7

    #@90
    .line 127
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@91
    .line 128
    if-eqz v1, :cond_7

    #@93
    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    #@96
    .line 127
    :cond_7
    throw v4
.end method

.method downloadXtraData()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 81
    const/4 v0, 0x0

    #@2
    .line 82
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@4
    .line 84
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 85
    return-object v3

    #@9
    .line 89
    .end local v0    # "result":[B
    :cond_0
    if-nez v0, :cond_2

    #@b
    .line 90
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
    .line 93
    .local v0, "result":[B
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@1b
    .line 94
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@1d
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    #@1f
    array-length v3, v3

    #@20
    if-ne v2, v3, :cond_1

    #@22
    .line 95
    const/4 v2, 0x0

    #@23
    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@25
    .line 98
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    #@27
    if-ne v2, v1, :cond_0

    #@29
    .line 101
    .end local v0    # "result":[B
    :cond_2
    return-object v0
.end method
