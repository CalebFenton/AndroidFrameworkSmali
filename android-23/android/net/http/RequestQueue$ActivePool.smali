.class Landroid/net/http/RequestQueue$ActivePool;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestQueue$ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivePool"
.end annotation


# instance fields
.field private mConnectionCount:I

.field mIdleCache:Landroid/net/http/IdleCache;

.field mThreads:[Landroid/net/http/ConnectionThread;

.field private mTotalConnection:I

.field private mTotalRequest:I

.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method static synthetic -get0(Landroid/net/http/RequestQueue$ActivePool;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/net/http/RequestQueue$ActivePool;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    #@2
    return p1
.end method

.method constructor <init>(Landroid/net/http/RequestQueue;I)V
    .locals 4
    .param p1, "this$0"    # Landroid/net/http/RequestQueue;
    .param p2, "connectionCount"    # I

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 74
    new-instance v1, Landroid/net/http/IdleCache;

    #@7
    invoke-direct {v1}, Landroid/net/http/IdleCache;-><init>()V

    #@a
    iput-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    #@c
    .line 75
    iput p2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@e
    .line 76
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@10
    new-array v1, v1, [Landroid/net/http/ConnectionThread;

    #@12
    iput-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@14
    .line 78
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 79
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@1b
    new-instance v2, Landroid/net/http/ConnectionThread;

    #@1d
    .line 80
    invoke-static {p1}, Landroid/net/http/RequestQueue;->-get0(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    #@20
    move-result-object v3

    #@21
    .line 79
    invoke-direct {v2, v3, v0, p0, p1}, Landroid/net/http/ConnectionThread;-><init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    #@24
    aput-object v2, v1, v0

    #@26
    .line 78
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method disablePersistence()V
    .locals 3

    #@0
    .prologue
    .line 143
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@3
    if-ge v1, v2, :cond_1

    #@5
    .line 144
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@7
    aget-object v2, v2, v1

    #@9
    iget-object v0, v2, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@b
    .line 145
    .local v0, "connection":Landroid/net/http/Connection;
    if-eqz v0, :cond_0

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v2}, Landroid/net/http/Connection;->setCanPersist(Z)V

    #@11
    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 147
    .end local v0    # "connection":Landroid/net/http/Connection;
    :cond_1
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    #@16
    invoke-virtual {v2}, Landroid/net/http/IdleCache;->clear()V

    #@19
    .line 142
    return-void
.end method

.method public getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 167
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@2
    invoke-static {v1, p2}, Landroid/net/http/RequestQueue;->-wrap0(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    #@5
    move-result-object p2

    #@6
    .line 168
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    #@8
    invoke-virtual {v1, p2}, Landroid/net/http/IdleCache;->getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    #@b
    move-result-object v0

    #@c
    .line 169
    .local v0, "con":Landroid/net/http/Connection;
    if-nez v0, :cond_0

    #@e
    .line 170
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    #@14
    .line 171
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@16
    invoke-static {v1}, Landroid/net/http/RequestQueue;->-get0(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@1c
    invoke-static {v2}, Landroid/net/http/RequestQueue;->-get1(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    #@1f
    move-result-object v2

    #@20
    .line 172
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@22
    .line 171
    invoke-static {v1, p2, v2, v3}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    #@25
    move-result-object v0

    #@26
    .line 174
    :cond_0
    return-object v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@2
    invoke-static {v0}, Landroid/net/http/RequestQueue;->-get1(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getThread(Lorg/apache/http/HttpHost;)Landroid/net/http/ConnectionThread;
    .locals 6
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 154
    iget-object v4, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@3
    monitor-enter v4

    #@4
    .line 155
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@7
    array-length v3, v3

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 156
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@c
    aget-object v1, v3, v2

    #@e
    .line 157
    .local v1, "ct":Landroid/net/http/ConnectionThread;
    iget-object v0, v1, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    #@10
    .line 158
    .local v0, "connection":Landroid/net/http/Connection;
    if-eqz v0, :cond_0

    #@12
    iget-object v3, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@14
    invoke-virtual {v3, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    monitor-exit v4

    #@1b
    .line 159
    return-object v1

    #@1c
    .line 155
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v0    # "connection":Landroid/net/http/Connection;
    .end local v1    # "ct":Landroid/net/http/ConnectionThread;
    :cond_1
    monitor-exit v4

    #@20
    .line 163
    return-object v5

    #@21
    .line 154
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3
.end method

.method logState()V
    .locals 4

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 128
    .local v0, "dump":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 129
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@c
    aget-object v2, v2, v1

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "\n"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 128
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    #@22
    .line 126
    return-void
.end method

.method public recycleConnection(Landroid/net/http/Connection;)Z
    .locals 2
    .param p1, "connection"    # Landroid/net/http/Connection;

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    #@2
    invoke-virtual {p1}, Landroid/net/http/Connection;->getHost()Lorg/apache/http/HttpHost;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/net/http/IdleCache;->cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method shutdown()V
    .locals 2

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 92
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@7
    aget-object v1, v1, v0

    #@9
    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->requestStop()V

    #@c
    .line 91
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 90
    :cond_0
    return-void
.end method

.method startConnectionThread()V
    .locals 2

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@2
    monitor-enter v1

    #@3
    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #@5
    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 96
    return-void

    #@a
    .line 97
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public startTiming()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 103
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 104
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@8
    aget-object v1, v2, v0

    #@a
    .line 105
    .local v1, "rt":Landroid/net/http/ConnectionThread;
    const-wide/16 v2, -0x1

    #@c
    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@e
    .line 106
    const-wide/16 v2, 0x0

    #@10
    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    #@12
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 108
    .end local v1    # "rt":Landroid/net/http/ConnectionThread;
    :cond_0
    iput v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    #@17
    .line 109
    iput v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    #@19
    .line 102
    return-void
.end method

.method startup()V
    .locals 2

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 86
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@7
    aget-object v1, v1, v0

    #@9
    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->start()V

    #@c
    .line 85
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 84
    :cond_0
    return-void
.end method

.method public stopTiming()V
    .locals 8

    #@0
    .prologue
    .line 113
    const/4 v2, 0x0

    #@1
    .line 114
    .local v2, "totalTime":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    #@4
    if-ge v0, v3, :cond_1

    #@6
    .line 115
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    #@8
    aget-object v1, v3, v0

    #@a
    .line 116
    .local v1, "rt":Landroid/net/http/ConnectionThread;
    iget-wide v4, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@c
    const-wide/16 v6, -0x1

    #@e
    cmp-long v3, v4, v6

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 117
    int-to-long v4, v2

    #@13
    iget-wide v6, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    #@15
    add-long/2addr v4, v6

    #@16
    long-to-int v2, v4

    #@17
    .line 119
    :cond_0
    const-wide/16 v4, 0x0

    #@19
    iput-wide v4, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    #@1b
    .line 114
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 121
    .end local v1    # "rt":Landroid/net/http/ConnectionThread;
    :cond_1
    const-string/jumbo v3, "Http"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Http thread used "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, " ms "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string/jumbo v5, " for "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 122
    iget v5, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    #@41
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 122
    const-string/jumbo v5, " requests and "

    #@48
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 122
    iget v5, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    #@4e
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 123
    const-string/jumbo v5, " new connections"

    #@55
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 112
    return-void
.end method
