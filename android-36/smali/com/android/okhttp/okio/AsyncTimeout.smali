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
.field private static greylist-max-o head:Lcom/android/okhttp/okio/AsyncTimeout;


# instance fields
.field private greylist-max-o inQueue:Z

.field private greylist-max-o next:Lcom/android/okhttp/okio/AsyncTimeout;

.field private greylist-max-o timeoutAt:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/android/okhttp/okio/AsyncTimeout;->awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized greylist-max-o awaitTimeout()Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-class v0, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v0

    .line 309
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    iget-object v1, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 313
    const-class v1, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 314
    monitor-exit v0

    return-object v2

    :catchall_11
    move-exception v1

    goto :goto_3a

    .line 317
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_30

    const-wide/32 v5, 0xf4240

    .line 323
    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 325
    const-class v1, Lcom/android/okhttp/okio/AsyncTimeout;

    long-to-int v3, v3

    invoke-virtual {v1, v7, v8, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_11

    .line 326
    monitor-exit v0

    return-object v2

    .line 330
    :cond_30
    :try_start_30
    sget-object v3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    iget-object v4, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v4, v3, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 331
    iput-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_11

    .line 332
    monitor-exit v0

    return-object v1

    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_11

    throw v1
.end method

.method private static declared-synchronized greylist-max-o cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v0

    .line 119
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_19

    .line 120
    iget-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    if-ne v2, p0, :cond_17

    .line 121
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    .line 123
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_15
    move-exception p0

    goto :goto_1c

    :cond_17
    move-object v1, v2

    goto :goto_5

    .line 128
    :cond_19
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_15

    throw p0
.end method

.method private greylist-max-o remainingNanos(J)J
    .registers 5

    .line 136
    iget-wide v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized greylist-max-o scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V
    .registers 9

    const-class v0, Lcom/android/okhttp/okio/AsyncTimeout;

    monitor-enter v0

    .line 77
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    if-nez v1, :cond_19

    .line 78
    new-instance v1, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-direct {v1}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 79
    new-instance v1, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lcom/android/okhttp/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_6d

    .line 82
    :cond_19
    :goto_19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_32

    if-eqz p3, :cond_32

    .line 86
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_40

    :cond_32
    if-eqz v3, :cond_38

    add-long/2addr p1, v1

    .line 88
    iput-wide p1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_40

    :cond_38
    if-eqz p3, :cond_67

    .line 90
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->timeoutAt:J

    .line 96
    :goto_40
    invoke-direct {p0, v1, v2}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    .line 97
    sget-object p3, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 98
    :goto_46
    iget-object v3, p3, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    if-eqz v3, :cond_56

    invoke-direct {v3, v1, v2}, Lcom/android/okhttp/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_53

    goto :goto_56

    .line 97
    :cond_53
    iget-object p3, p3, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    goto :goto_46

    .line 99
    :cond_56
    :goto_56
    iget-object p1, p3, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 100
    iput-object p0, p3, Lcom/android/okhttp/okio/AsyncTimeout;->next:Lcom/android/okhttp/okio/AsyncTimeout;

    .line 101
    sget-object p0, Lcom/android/okhttp/okio/AsyncTimeout;->head:Lcom/android/okhttp/okio/AsyncTimeout;

    if-ne p3, p0, :cond_65

    .line 102
    const-class p0, Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_17

    .line 107
    :cond_65
    monitor-exit v0

    return-void

    .line 92
    :cond_67
    :try_start_67
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_17

    throw p0
.end method


# virtual methods
.method public final greylist-max-o enter()V
    .registers 6

    .line 64
    iget-boolean v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 65
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 66
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    .line 70
    iput-boolean v3, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    .line 71
    invoke-static {p0, v0, v1, v2}, Lcom/android/okhttp/okio/AsyncTimeout;->scheduleTimeout(Lcom/android/okhttp/okio/AsyncTimeout;JZ)V

    return-void

    .line 64
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unbalanced enter/exit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final greylist-max-o exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 263
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method final greylist-max-o exit(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public final greylist-max-o exit()Z
    .registers 3

    .line 111
    iget-boolean v0, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 112
    :cond_6
    iput-boolean v1, p0, Lcom/android/okhttp/okio/AsyncTimeout;->inQueue:Z

    .line 113
    invoke-static {p0}, Lcom/android/okhttp/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/android/okhttp/okio/AsyncTimeout;)Z

    move-result p0

    return p0
.end method

.method protected greylist-max-o newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    .line 272
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 274
    invoke-virtual {p0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object p0
.end method

.method public final greylist-max-o sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;
    .registers 3

    .line 152
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$1;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V

    return-object v0
.end method

.method public final greylist-max-o source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;
    .registers 3

    .line 208
    new-instance v0, Lcom/android/okhttp/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/AsyncTimeout$2;-><init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V

    return-object v0
.end method

.method protected greylist-max-o timedOut()V
    .registers 1

    .line 0
    return-void
.end method
