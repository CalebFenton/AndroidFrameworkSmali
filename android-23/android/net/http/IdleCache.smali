.class Landroid/net/http/IdleCache;
.super Ljava/lang/Object;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/IdleCache$Entry;,
        Landroid/net/http/IdleCache$IdleReaper;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:I = 0x7d0

.field private static final EMPTY_CHECK_MAX:I = 0x5

.field private static final IDLE_CACHE_MAX:I = 0x8

.field private static final TIMEOUT:I = 0x1770


# instance fields
.field private mCached:I

.field private mCount:I

.field private mEntries:[Landroid/net/http/IdleCache$Entry;

.field private mReused:I

.field private mThread:Landroid/net/http/IdleCache$IdleReaper;


# direct methods
.method static synthetic -get0(Landroid/net/http/IdleCache;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/http/IdleCache;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/http/IdleCache;->clearIdle()V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 43
    new-array v1, v3, [Landroid/net/http/IdleCache$Entry;

    #@8
    iput-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    #@a
    .line 45
    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I

    #@c
    .line 47
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    #@f
    .line 50
    iput v2, p0, Landroid/net/http/IdleCache;->mCached:I

    #@11
    .line 51
    iput v2, p0, Landroid/net/http/IdleCache;->mReused:I

    #@13
    .line 54
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@16
    .line 55
    iget-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    #@18
    new-instance v2, Landroid/net/http/IdleCache$Entry;

    #@1a
    invoke-direct {v2, p0}, Landroid/net/http/IdleCache$Entry;-><init>(Landroid/net/http/IdleCache;)V

    #@1d
    aput-object v2, v1, v0

    #@1f
    .line 54
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 53
    :cond_0
    return-void
.end method

.method private declared-synchronized clearIdle()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    #@3
    if-lez v4, :cond_1

    #@5
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8
    move-result-wide v2

    #@9
    .line 129
    .local v2, "time":J
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    const/16 v4, 0x8

    #@c
    if-ge v1, v4, :cond_1

    #@e
    .line 130
    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    #@10
    aget-object v0, v4, v1

    #@12
    .line 131
    .local v0, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@14
    if-eqz v4, :cond_0

    #@16
    iget-wide v4, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    #@18
    cmp-long v4, v2, v4

    #@1a
    if-lez v4, :cond_0

    #@1c
    .line 132
    const/4 v4, 0x0

    #@1d
    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@1f
    .line 133
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@21
    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    #@24
    .line 134
    const/4 v4, 0x0

    #@25
    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@27
    .line 135
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    #@29
    add-int/lit8 v4, v4, -0x1

    #@2b
    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .end local v0    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local v1    # "i":I
    .end local v2    # "time":J
    :cond_1
    monitor-exit p0

    #@31
    .line 126
    return-void

    #@32
    :catchall_0
    move-exception v4

    #@33
    monitor-exit p0

    #@34
    throw v4
.end method


# virtual methods
.method declared-synchronized cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z
    .locals 8
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "connection"    # Landroid/net/http/Connection;

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    monitor-enter p0

    #@3
    .line 66
    const/4 v2, 0x0

    #@4
    .line 72
    .local v2, "ret":Z
    :try_start_0
    iget v3, p0, Landroid/net/http/IdleCache;->mCount:I

    #@6
    if-ge v3, v6, :cond_0

    #@8
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v4

    #@c
    .line 74
    .local v4, "time":J
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    #@f
    .line 75
    iget-object v3, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    #@11
    aget-object v0, v3, v1

    #@13
    .line 76
    .local v0, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v3, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 77
    iput-object p1, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@19
    .line 78
    iput-object p2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@1b
    .line 79
    const-wide/16 v6, 0x1770

    #@1d
    add-long/2addr v6, v4

    #@1e
    iput-wide v6, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    #@20
    .line 80
    iget v3, p0, Landroid/net/http/IdleCache;->mCount:I

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    iput v3, p0, Landroid/net/http/IdleCache;->mCount:I

    #@26
    .line 82
    const/4 v2, 0x1

    #@27
    .line 83
    iget-object v3, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 84
    new-instance v3, Landroid/net/http/IdleCache$IdleReaper;

    #@2d
    const/4 v6, 0x0

    #@2e
    invoke-direct {v3, p0, v6}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)V

    #@31
    iput-object v3, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    #@33
    .line 85
    iget-object v3, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    #@35
    invoke-virtual {v3}, Landroid/net/http/IdleCache$IdleReaper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .end local v0    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local v1    # "i":I
    .end local v4    # "time":J
    :cond_0
    monitor-exit p0

    #@39
    .line 91
    return v2

    #@3a
    .line 74
    .restart local v0    # "entry":Landroid/net/http/IdleCache$Entry;
    .restart local v1    # "i":I
    .restart local v4    # "time":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .end local v0    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local v1    # "i":I
    .end local v4    # "time":J
    :catchall_0
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3
.end method

.method declared-synchronized clear()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 115
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    #@4
    if-lez v2, :cond_1

    #@6
    const/16 v2, 0x8

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 116
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    #@c
    aget-object v0, v2, v1

    #@e
    .line 117
    .local v0, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 118
    const/4 v2, 0x0

    #@13
    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@15
    .line 119
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@17
    invoke-virtual {v2}, Landroid/net/http/Connection;->closeConnection()V

    #@1a
    .line 120
    const/4 v2, 0x0

    #@1b
    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@1d
    .line 121
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    #@1f
    add-int/lit8 v2, v2, -0x1

    #@21
    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .end local v0    # "entry":Landroid/net/http/IdleCache$Entry;
    :cond_1
    monitor-exit p0

    #@27
    .line 114
    return-void

    #@28
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2
.end method

.method declared-synchronized getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .locals 5
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 95
    const/4 v3, 0x0

    #@2
    .line 97
    .local v3, "ret":Landroid/net/http/Connection;
    :try_start_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    #@4
    if-lez v4, :cond_0

    #@6
    .line 98
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    const/16 v4, 0x8

    #@9
    if-ge v2, v4, :cond_0

    #@b
    .line 99
    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    #@d
    aget-object v1, v4, v2

    #@f
    .line 100
    .local v1, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v0, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@11
    .line 101
    .local v0, "eHost":Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 102
    iget-object v3, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@1b
    .line 103
    .local v3, "ret":Landroid/net/http/Connection;
    const/4 v4, 0x0

    #@1c
    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    #@1e
    .line 104
    const/4 v4, 0x0

    #@1f
    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    #@21
    .line 105
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    #@23
    add-int/lit8 v4, v4, -0x1

    #@25
    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v0    # "eHost":Lorg/apache/http/HttpHost;
    .end local v1    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local v2    # "i":I
    .end local v3    # "ret":Landroid/net/http/Connection;
    :cond_0
    monitor-exit p0

    #@28
    .line 111
    return-object v3

    #@29
    .line 98
    .restart local v0    # "eHost":Lorg/apache/http/HttpHost;
    .restart local v1    # "entry":Landroid/net/http/IdleCache$Entry;
    .restart local v2    # "i":I
    .local v3, "ret":Landroid/net/http/Connection;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v0    # "eHost":Lorg/apache/http/HttpHost;
    .end local v1    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local v2    # "i":I
    .end local v3    # "ret":Landroid/net/http/Connection;
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit p0

    #@2e
    throw v4
.end method
