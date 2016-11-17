.class public Lsun/net/www/http/KeepAliveStream;
.super Lsun/net/www/MeteredStream;
.source "KeepAliveStream.java"

# interfaces
.implements Lsun/net/www/http/Hurryable;


# static fields
.field private static cleanerThread:Ljava/lang/Thread;

.field private static final queue:Lsun/net/www/http/KeepAliveStreamCleaner;


# instance fields
.field hc:Lsun/net/www/http/HttpClient;

.field hurried:Z

.field protected queuedForCleanup:Z


# direct methods
.method static synthetic -get0()Ljava/lang/Thread;
    .locals 1

    #@0
    sget-object v0, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Lsun/net/www/http/KeepAliveStreamCleaner;
    .locals 1

    #@0
    sget-object v0, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    #@0
    sput-object p0, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    #@2
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Lsun/net/www/http/KeepAliveStreamCleaner;

    #@2
    invoke-direct {v0}, Lsun/net/www/http/KeepAliveStreamCleaner;-><init>()V

    #@5
    sput-object v0, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lsun/net/ProgressSource;JLsun/net/www/http/HttpClient;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "expected"    # J
    .param p5, "hc"    # Lsun/net/www/http/HttpClient;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@6
    .line 58
    iput-object p5, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@8
    .line 56
    return-void
.end method

.method private static queueForCleanup(Lsun/net/www/http/KeepAliveCleanerEntry;)V
    .locals 3
    .param p0, "kace"    # Lsun/net/www/http/KeepAliveCleanerEntry;

    #@0
    .prologue
    .line 155
    sget-object v2, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    #@2
    monitor-enter v2

    #@3
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCleanerEntry;->getQueuedForCleanup()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 157
    sget-object v1, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    #@b
    invoke-virtual {v1, p0}, Lsun/net/www/http/KeepAliveStreamCleaner;->offer(Lsun/net/www/http/KeepAliveCleanerEntry;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 158
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCleanerEntry;->getHttpClient()Lsun/net/www/http/HttpClient;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 159
    return-void

    #@1a
    .line 162
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCleanerEntry;->setQueuedForCleanup()V

    #@1d
    .line 163
    sget-object v1, Lsun/net/www/http/KeepAliveStream;->queue:Lsun/net/www/http/KeepAliveStreamCleaner;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    #@22
    .line 166
    :cond_1
    sget-object v1, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    #@24
    if-nez v1, :cond_4

    #@26
    const/4 v0, 0x1

    #@27
    .line 167
    .local v0, "startCleanupThread":Z
    :goto_0
    if-nez v0, :cond_2

    #@29
    .line 168
    sget-object v1, Lsun/net/www/http/KeepAliveStream;->cleanerThread:Ljava/lang/Thread;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 169
    const/4 v0, 0x1

    #@32
    .line 173
    :cond_2
    if-eqz v0, :cond_3

    #@34
    .line 175
    new-instance v1, Lsun/net/www/http/KeepAliveStream$1;

    #@36
    invoke-direct {v1}, Lsun/net/www/http/KeepAliveStream$1;-><init>()V

    #@39
    .line 174
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    :cond_3
    monitor-exit v2

    #@3d
    .line 154
    return-void

    #@3e
    .line 166
    .end local v0    # "startCleanupThread":Z
    :cond_4
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "startCleanupThread":Z
    goto :goto_0

    #@40
    .line 155
    .end local v0    # "startCleanupThread":Z
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 66
    iget-boolean v4, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 67
    return-void

    #@7
    .line 71
    :cond_0
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 72
    return-void

    #@c
    .line 83
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    #@e
    iget-wide v6, p0, Lsun/net/www/MeteredStream;->count:J

    #@10
    cmp-long v4, v4, v6

    #@12
    if-lez v4, :cond_4

    #@14
    .line 84
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    #@16
    iget-wide v6, p0, Lsun/net/www/MeteredStream;->count:J

    #@18
    sub-long v2, v4, v6

    #@1a
    .line 85
    .local v2, "nskip":J
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->available()I

    #@1d
    move-result v4

    #@1e
    int-to-long v4, v4

    #@1f
    cmp-long v4, v2, v4

    #@21
    if-gtz v4, :cond_2

    #@23
    .line 86
    const-wide/16 v0, 0x0

    #@25
    .line 87
    .local v0, "n":J
    :goto_0
    cmp-long v4, v0, v2

    #@27
    if-gez v4, :cond_4

    #@29
    .line 88
    sub-long/2addr v2, v0

    #@2a
    .line 89
    invoke-virtual {p0, v2, v3}, Lsun/net/www/MeteredStream;->skip(J)J

    #@2d
    move-result-wide v0

    #@2e
    goto :goto_0

    #@2f
    .line 91
    .end local v0    # "n":J
    :cond_2
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    #@31
    sget v6, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    #@33
    int-to-long v6, v6

    #@34
    cmp-long v4, v4, v6

    #@36
    if-gtz v4, :cond_3

    #@38
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->hurried:Z

    #@3a
    if-eqz v4, :cond_8

    #@3c
    .line 96
    :cond_3
    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@3e
    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@41
    .line 99
    .end local v2    # "nskip":J
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@43
    if-nez v4, :cond_5

    #@45
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->hurried:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    if-eqz v4, :cond_b

    #@49
    .line 103
    :cond_5
    :goto_2
    iget-object v4, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@4b
    if-eqz v4, :cond_6

    #@4d
    .line 104
    iget-object v4, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@4f
    invoke-virtual {v4}, Lsun/net/ProgressSource;->finishTracking()V

    #@52
    .line 106
    :cond_6
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@54
    if-nez v4, :cond_7

    #@56
    .line 109
    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    #@58
    .line 110
    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@5a
    .line 111
    iput-boolean v9, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@5c
    .line 64
    :cond_7
    return-void

    #@5d
    .line 94
    .restart local v2    # "nskip":J
    :cond_8
    :try_start_1
    new-instance v4, Lsun/net/www/http/KeepAliveCleanerEntry;

    #@5f
    iget-object v5, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@61
    invoke-direct {v4, p0, v5}, Lsun/net/www/http/KeepAliveCleanerEntry;-><init>(Lsun/net/www/http/KeepAliveStream;Lsun/net/www/http/HttpClient;)V

    #@64
    invoke-static {v4}, Lsun/net/www/http/KeepAliveStream;->queueForCleanup(Lsun/net/www/http/KeepAliveCleanerEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    goto :goto_1

    #@68
    .line 102
    .end local v2    # "nskip":J
    :catchall_0
    move-exception v4

    #@69
    .line 103
    iget-object v5, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@6b
    if-eqz v5, :cond_9

    #@6d
    .line 104
    iget-object v5, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@6f
    invoke-virtual {v5}, Lsun/net/ProgressSource;->finishTracking()V

    #@72
    .line 106
    :cond_9
    iget-boolean v5, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@74
    if-nez v5, :cond_a

    #@76
    .line 109
    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    #@78
    .line 110
    iput-object v8, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@7a
    .line 111
    iput-boolean v9, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@7c
    .line 102
    :cond_a
    throw v4

    #@7d
    .line 99
    :cond_b
    :try_start_2
    iget-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@7f
    if-nez v4, :cond_5

    #@81
    .line 100
    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@83
    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->finished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@86
    goto :goto_2
.end method

.method public declared-synchronized hurry()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 131
    :try_start_0
    iget-boolean v4, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@5
    if-nez v4, :cond_0

    #@7
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    #@9
    iget-wide v6, p0, Lsun/net/www/MeteredStream;->expected:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    cmp-long v4, v4, v6

    #@d
    if-ltz v4, :cond_1

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 132
    return v10

    #@11
    .line 133
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    #@13
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    #@16
    move-result v4

    #@17
    int-to-long v4, v4

    #@18
    iget-wide v6, p0, Lsun/net/www/MeteredStream;->expected:J

    #@1a
    iget-wide v8, p0, Lsun/net/www/MeteredStream;->count:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    sub-long/2addr v6, v8

    #@1d
    cmp-long v4, v4, v6

    #@1f
    if-gez v4, :cond_2

    #@21
    monitor-exit p0

    #@22
    .line 135
    return v10

    #@23
    .line 140
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    #@25
    iget-wide v6, p0, Lsun/net/www/MeteredStream;->count:J

    #@27
    sub-long/2addr v4, v6

    #@28
    long-to-int v3, v4

    #@29
    .line 141
    .local v3, "size":I
    new-array v0, v3, [B

    #@2b
    .line 142
    .local v0, "buf":[B
    new-instance v1, Ljava/io/DataInputStream;

    #@2d
    iget-object v4, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    #@2f
    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@32
    .line 143
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@35
    .line 144
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@37
    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@3a
    iput-object v4, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    #@3c
    .line 145
    const/4 v4, 0x1

    #@3d
    iput-boolean v4, p0, Lsun/net/www/http/KeepAliveStream;->hurried:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    .line 146
    return v11

    #@41
    .line 148
    .end local v0    # "buf":[B
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "size":I
    :catch_0
    move-exception v2

    #@42
    .local v2, "e":Ljava/io/IOException;
    monitor-exit p0

    #@43
    .line 150
    return v10

    #@44
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@45
    monitor-exit p0

    #@46
    throw v4
.end method

.method public mark(I)V
    .locals 0
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 122
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected remainingToRead()J
    .locals 4

    #@0
    .prologue
    .line 200
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    #@2
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    #@4
    sub-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark/reset not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected setClosed()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 204
    iput-object v0, p0, Lsun/net/www/http/KeepAliveStream;->in:Ljava/io/InputStream;

    #@3
    .line 205
    iput-object v0, p0, Lsun/net/www/http/KeepAliveStream;->hc:Lsun/net/www/http/HttpClient;

    #@5
    .line 206
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@8
    .line 203
    return-void
.end method
