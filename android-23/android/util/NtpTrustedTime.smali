.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    #@5
    .line 55
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    #@7
    .line 52
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v10, Landroid/util/NtpTrustedTime;

    #@2
    monitor-enter v10

    #@3
    .line 59
    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    #@5
    if-nez v7, :cond_0

    #@7
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    .line 61
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v4

    #@f
    .line 64
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x1040038

    #@12
    .line 63
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 66
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e007c

    #@19
    .line 65
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    #@1c
    move-result v7

    #@1d
    int-to-long v2, v7

    #@1e
    .line 69
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    #@21
    .line 68
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 71
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    #@28
    .line 70
    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@2b
    move-result-wide v8

    #@2c
    .line 73
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    #@2e
    move-object v6, v5

    #@2f
    .line 74
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    #@31
    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    #@34
    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    #@36
    .line 75
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    #@38
    .line 78
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v10

    #@3b
    return-object v7

    #@3c
    .line 73
    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    #@3d
    .restart local v6    # "server":Ljava/lang/String;
    goto :goto_0

    #@3e
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    #@3f
    monitor-exit v10

    #@40
    throw v7
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Missing authoritative time source"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 147
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    #@f
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    #@12
    move-result-wide v2

    #@13
    add-long/2addr v0, v2

    #@14
    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 83
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    #@4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 85
    return v6

    #@b
    .line 89
    :cond_0
    monitor-enter p0

    #@c
    .line 90
    :try_start_0
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 91
    sget-object v2, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    #@12
    const-string/jumbo v3, "connectivity"

    #@15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/net/ConnectivityManager;

    #@1b
    iput-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_1
    monitor-exit p0

    #@1e
    .line 95
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    #@20
    if-nez v2, :cond_2

    #@22
    const/4 v1, 0x0

    #@23
    .line 96
    :goto_0
    if-eqz v1, :cond_3

    #@25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 103
    new-instance v0, Landroid/net/SntpClient;

    #@2d
    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    #@30
    .line 104
    .local v0, "client":Landroid/net/SntpClient;
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    #@32
    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    #@34
    long-to-int v3, v4

    #@35
    invoke-virtual {v0, v2, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_4

    #@3b
    .line 105
    iput-boolean v7, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    #@3d
    .line 106
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    #@40
    move-result-wide v2

    #@41
    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    #@43
    .line 107
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    #@46
    move-result-wide v2

    #@47
    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    #@49
    .line 108
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    #@4c
    move-result-wide v2

    #@4d
    const-wide/16 v4, 0x2

    #@4f
    div-long/2addr v2, v4

    #@50
    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    #@52
    .line 109
    return v7

    #@53
    .line 89
    .end local v0    # "client":Landroid/net/SntpClient;
    :catchall_0
    move-exception v2

    #@54
    monitor-exit p0

    #@55
    throw v2

    #@56
    .line 95
    :cond_2
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    #@58
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@5b
    move-result-object v1

    #@5c
    .local v1, "ni":Landroid/net/NetworkInfo;
    goto :goto_0

    #@5d
    .line 98
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    return v6

    #@5e
    .line 111
    .restart local v0    # "client":Landroid/net/SntpClient;
    :cond_4
    return v6
.end method

.method public getCacheAge()J
    .locals 4

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    #@a
    sub-long/2addr v0, v2

    #@b
    return-wide v0

    #@c
    .line 125
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@11
    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    #@6
    return-wide v0

    #@7
    .line 134
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@c
    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    #@0
    .prologue
    .line 152
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    #@2
    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    #@0
    .prologue
    .line 156
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    #@2
    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    #@0
    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    #@2
    return v0
.end method
