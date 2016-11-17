.class public Lcom/android/okhttp/okio/AsyncTimeout;
.super Lcom/android/okhttp/okio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static head:Lcom/android/okhttp/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lcom/android/okhttp/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static synthetic -wrap0()Lcom/android/okhttp/okio/AsyncTimeout;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    #@3
    return-void
.end method

.method private static declared-synchronized awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/32 v12, 0xf4240

    #@3
    const/4 v10, 0x0

    #@4
    const-class v6, Lcom/android/okhttp/okio/AsyncTimeout;

    #@6
    monitor-enter v6

    #@7
    .line 307
    :try_start_0
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@9
    iget-object v0, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@b
    .line 310
    .local v0, "node":Lcom/android/okhttp/okio/AsyncTimeout;
    if-nez v0, :cond_0

    #@d
    .line 311
    const-class v1, Lcom/android/okhttp/okio/AsyncTimeout;

    #@f
    invoke-virtual {v1}, Ljava/lang/Class;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v6

    #@13
    .line 312
    return-object v10

    #@14
    .line 315
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@17
    move-result-wide v8

    #@18
    invoke-direct {v0, v8, v9}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    #@1b
    move-result-wide v4

    #@1c
    .line 318
    .local v4, "waitNanos":J
    const-wide/16 v8, 0x0

    #@1e
    cmp-long v1, v4, v8

    #@20
    if-lez v1, :cond_1

    #@22
    .line 321
    const-wide/32 v8, 0xf4240

    #@25
    div-long v2, v4, v8

    #@27
    .line 322
    .local v2, "waitMillis":J
    mul-long v8, v2, v12

    #@29
    sub-long/2addr v4, v8

    #@2a
    .line 323
    const-class v1, Lcom/android/okhttp/okio/AsyncTimeout;

    #@2c
    long-to-int v7, v4

    #@2d
    invoke-virtual {v1, v2, v3, v7}, Ljava/lang/Class;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v6

    #@31
    .line 324
    return-object v10

    #@32
    .line 328
    .end local v2    # "waitMillis":J
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@34
    iget-object v7, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@36
    iput-object v7, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@38
    .line 329
    const/4 v1, 0x0

    #@39
    iput-object v1, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    monitor-exit v6

    #@3c
    .line 330
    return-object v0

    #@3d
    .end local v4    # "waitNanos":J
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v6

    #@3f
    throw v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z
    .locals 3
    .param p0, "node"    # Lcom/android/okhttp/okio/AsyncTimeout;

    #@0
    .prologue
    const-class v2, Lcom/android/okhttp/okio/AsyncTimeout;

    #@2
    monitor-enter v2

    #@3
    .line 117
    :try_start_0
    sget-object v0, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@5
    .local v0, "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :goto_0
    if-eqz v0, :cond_1

    #@7
    .line 118
    iget-object v1, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@9
    if-ne v1, p0, :cond_0

    #@b
    .line 119
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@d
    iput-object v1, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@f
    .line 120
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 121
    const/4 v1, 0x0

    #@13
    monitor-exit v2

    #@14
    return v1

    #@15
    .line 117
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    goto :goto_0

    #@18
    .line 126
    :cond_1
    const/4 v1, 0x1

    #@19
    monitor-exit v2

    #@1a
    return v1

    #@1b
    .end local v0    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method private remainingNanos(J)J
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    #@2
    sub-long/2addr v0, p1

    #@3
    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V
    .locals 11
    .param p0, "node"    # Lcom/android/okhttp/okio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const-class v6, Lcom/android/okhttp/okio/AsyncTimeout;

    #@4
    monitor-enter v6

    #@5
    .line 75
    :try_start_0
    sget-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@7
    if-nez v3, :cond_0

    #@9
    .line 76
    new-instance v3, Lcom/android/okhttp/okio/AsyncTimeout;

    #@b
    invoke-direct {v3}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    #@e
    sput-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@10
    .line 77
    new-instance v3, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;

    #@12
    invoke-direct {v3}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;-><init>()V

    #@15
    invoke-virtual {v3}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;->start()V

    #@18
    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1b
    move-result-wide v0

    #@1c
    .line 81
    .local v0, "now":J
    cmp-long v3, p1, v8

    #@1e
    if-eqz v3, :cond_3

    #@20
    if-eqz p3, :cond_3

    #@22
    .line 84
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->deadlineNanoTime()J

    #@25
    move-result-wide v8

    #@26
    sub-long/2addr v8, v0

    #@27
    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@2a
    move-result-wide v8

    #@2b
    add-long/2addr v8, v0

    #@2c
    iput-wide v8, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    #@2e
    .line 94
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    #@31
    move-result-wide v4

    #@32
    .line 95
    .local v4, "remainingNanos":J
    sget-object v2, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@34
    .line 96
    .local v2, "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    :goto_1
    iget-object v3, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@36
    if-eqz v3, :cond_1

    #@38
    iget-object v3, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@3a
    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    #@3d
    move-result-wide v8

    #@3e
    cmp-long v3, v4, v8

    #@40
    if-gez v3, :cond_6

    #@42
    .line 97
    :cond_1
    iget-object v3, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@44
    iput-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@46
    .line 98
    iput-object p0, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    #@48
    .line 99
    sget-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    #@4a
    if-ne v2, v3, :cond_2

    #@4c
    .line 100
    const-class v3, Lcom/android/okhttp/okio/AsyncTimeout;

    #@4e
    invoke-virtual {v3}, Ljava/lang/Class;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    :cond_2
    monitor-exit v6

    #@52
    .line 73
    return-void

    #@53
    .line 85
    .end local v2    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    .end local v4    # "remainingNanos":J
    :cond_3
    cmp-long v3, p1, v8

    #@55
    if-eqz v3, :cond_4

    #@57
    .line 86
    add-long v8, v0, p1

    #@59
    :try_start_1
    iput-wide v8, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .end local v0    # "now":J
    :catchall_0
    move-exception v3

    #@5d
    monitor-exit v6

    #@5e
    throw v3

    #@5f
    .line 87
    .restart local v0    # "now":J
    :cond_4
    if-eqz p3, :cond_5

    #@61
    .line 88
    :try_start_2
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->deadlineNanoTime()J

    #@64
    move-result-wide v8

    #@65
    iput-wide v8, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    #@67
    goto :goto_0

    #@68
    .line 90
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    #@6a
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@6d
    throw v3

    #@6e
    .line 95
    .restart local v2    # "prev":Lcom/android/okhttp/okio/AsyncTimeout;
    .restart local v4    # "remainingNanos":J
    :cond_6
    iget-object v2, v2, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    goto :goto_1
.end method


# virtual methods
.method public final enter()V
    .locals 6

    #@0
    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v4, "Unbalanced enter/exit"

    #@9
    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutNanos()J

    #@10
    move-result-wide v2

    #@11
    .line 64
    .local v2, "timeoutNanos":J
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->hasDeadline()Z

    #@14
    move-result v0

    #@15
    .line 65
    .local v0, "hasDeadline":Z
    const-wide/16 v4, 0x0

    #@17
    cmp-long v1, v2, v4

    #@19
    if-nez v1, :cond_1

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 68
    :cond_1
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    #@20
    .line 69
    invoke-static {p0, v2, v3, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V

    #@23
    .line 61
    return-void

    #@24
    .line 66
    :cond_2
    return-void
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    return-object p1

    #@7
    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method final exit(Z)V
    .locals 2
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    #@3
    move-result v0

    #@4
    .line 250
    .local v0, "timedOut":Z
    if-eqz v0, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    #@c
    move-result-object v1

    #@d
    throw v1

    #@e
    .line 248
    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    iget-boolean v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    #@3
    if-nez v0, :cond_0

    #@5
    return v1

    #@6
    .line 110
    :cond_0
    iput-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    #@8
    .line 111
    invoke-static {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/io/InterruptedIOException;

    #@2
    const-string/jumbo v1, "timeout"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    #@8
    .line 271
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_0

    #@a
    .line 272
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@d
    .line 274
    :cond_0
    return-object v0
.end method

.method public final sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 150
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$1;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V

    #@5
    return-object v0
.end method

.method public final source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;
    .locals 1
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    .line 206
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$2;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$2;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V

    #@5
    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    #@0
    .prologue
    .line 141
    return-void
.end method
