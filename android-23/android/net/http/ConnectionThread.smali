.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field mCurrentThreadTime:J

.field private mId:I

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mTotalThreadTime:J

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "connectionManager"    # Landroid/net/http/RequestQueue$ConnectionManager;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    #@6
    .line 47
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    #@8
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "http"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Landroid/net/http/ConnectionThread;->setName(Ljava/lang/String;)V

    #@1f
    .line 49
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    #@21
    .line 50
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    #@23
    .line 51
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@25
    .line 45
    return-void
.end method


# virtual methods
.method requestStop()V
    .locals 2

    #@0
    .prologue
    .line 55
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@2
    monitor-enter v1

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    #@6
    .line 57
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 54
    return-void

    #@d
    .line 55
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public run()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const-wide/16 v8, 0x0

    #@4
    .line 66
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@7
    .line 74
    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@9
    .line 75
    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    #@b
    .line 77
    :cond_0
    :goto_0
    iget-boolean v4, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    #@d
    if-eqz v4, :cond_6

    #@f
    .line 78
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@11
    const-wide/16 v6, -0x1

    #@13
    cmp-long v4, v4, v6

    #@15
    if-nez v4, :cond_1

    #@17
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@1a
    move-result-wide v4

    #@1b
    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@1d
    .line 85
    :cond_1
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@1f
    invoke-interface {v4}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    #@22
    move-result-object v1

    #@23
    .line 88
    .local v1, "request":Landroid/net/http/Request;
    if-nez v1, :cond_3

    #@25
    .line 89
    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@27
    monitor-enter v5

    #@28
    .line 91
    const/4 v4, 0x1

    #@29
    :try_start_0
    iput-boolean v4, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 93
    :try_start_1
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@2d
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 96
    :goto_1
    const/4 v4, 0x0

    #@31
    :try_start_2
    iput-boolean v4, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    #@33
    .line 97
    iget-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@35
    cmp-long v4, v6, v8

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@3c
    move-result-wide v6

    #@3d
    iput-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    :cond_2
    monitor-exit v5

    #@40
    goto :goto_0

    #@41
    .line 89
    :catchall_0
    move-exception v4

    #@42
    monitor-exit v5

    #@43
    throw v4

    #@44
    .line 106
    :cond_3
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    #@46
    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    #@48
    .line 107
    iget-object v6, v1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@4a
    .line 106
    invoke-interface {v4, v5, v6}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    #@4d
    move-result-object v4

    #@4e
    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@50
    .line 108
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@52
    invoke-virtual {v4, v1}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    #@55
    .line 109
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@57
    invoke-virtual {v4}, Landroid/net/http/Connection;->getCanPersist()Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_5

    #@5d
    .line 110
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    #@5f
    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@61
    invoke-interface {v4, v5}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    #@64
    move-result v4

    #@65
    if-nez v4, :cond_4

    #@67
    .line 111
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@69
    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    #@6c
    .line 116
    :cond_4
    :goto_2
    iput-object v10, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@6e
    .line 118
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@70
    cmp-long v4, v4, v8

    #@72
    if-lez v4, :cond_0

    #@74
    .line 119
    iget-wide v2, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@76
    .line 120
    .local v2, "start":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    #@79
    move-result-wide v4

    #@7a
    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@7c
    .line 121
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    #@7e
    iget-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@80
    sub-long/2addr v6, v2

    #@81
    add-long/2addr v4, v6

    #@82
    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    #@84
    goto :goto_0

    #@85
    .line 114
    .end local v2    # "start":J
    :cond_5
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@87
    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    #@8a
    goto :goto_2

    #@8b
    .line 65
    .end local v1    # "request":Landroid/net/http/Request;
    :cond_6
    return-void

    #@8c
    .line 94
    .restart local v1    # "request":Landroid/net/http/Request;
    :catch_0
    move-exception v0

    #@8d
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 129
    :try_start_0
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@3
    if-nez v2, :cond_0

    #@5
    const-string/jumbo v1, ""

    #@8
    .line 130
    .local v1, "con":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    const-string/jumbo v0, "w"

    #@f
    .line 131
    .local v0, "active":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "cid "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, " "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result-object v2

    #@3b
    monitor-exit p0

    #@3c
    return-object v2

    #@3d
    .line 129
    .end local v0    # "active":Ljava/lang/String;
    .end local v1    # "con":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@3f
    invoke-virtual {v2}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .restart local v1    # "con":Ljava/lang/String;
    goto :goto_0

    #@44
    .line 130
    :cond_1
    const-string/jumbo v0, "a"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .restart local v0    # "active":Ljava/lang/String;
    goto :goto_1

    #@48
    .end local v0    # "active":Ljava/lang/String;
    .end local v1    # "con":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@49
    monitor-exit p0

    #@4a
    throw v2
.end method
