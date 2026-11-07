.class public final Lcom/android/okhttp/internal/framed/Ping;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final blacklist latch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist received:J

.field private blacklist sent:J


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    .line 29
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    return-void
.end method


# virtual methods
.method blacklist cancel()V
    .registers 5

    .line 46
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 47
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    .line 48
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 46
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method blacklist receive()V
    .registers 5

    .line 40
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    .line 42
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 40
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public blacklist roundTripTime()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 58
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    iget-wide v2, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist roundTripTime(JLjava/util/concurrent/TimeUnit;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 68
    iget-wide p1, p0, Lcom/android/okhttp/internal/framed/Ping;->received:J

    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_e
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method blacklist send()V
    .registers 5

    .line 35
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/Ping;->sent:J

    return-void

    .line 35
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
