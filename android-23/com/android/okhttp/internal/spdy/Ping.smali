.class public final Lcom/android/okhttp/internal/spdy/Ping;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private received:J

.field private sent:J


# direct methods
.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    #@d
    .line 26
    iput-wide v2, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@f
    .line 27
    iput-wide v2, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@11
    .line 29
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 44
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_1

    #@e
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@13
    throw v0

    #@14
    .line 45
    :cond_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@16
    const-wide/16 v2, 0x1

    #@18
    sub-long/2addr v0, v2

    #@19
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@1b
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@20
    .line 43
    return-void
.end method

.method receive()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 38
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_1

    #@e
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@13
    throw v0

    #@14
    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@1a
    .line 40
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@1f
    .line 37
    return-void
.end method

.method public roundTripTime()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    #@5
    .line 56
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@7
    iget-wide v2, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@9
    sub-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method public roundTripTime(JLjava/util/concurrent/TimeUnit;)J
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 66
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->received:J

    #@a
    iget-wide v2, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@c
    sub-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 68
    :cond_0
    const-wide/16 v0, -0x2

    #@10
    return-wide v0
.end method

.method send()V
    .locals 4

    #@0
    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v0

    #@e
    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/Ping;->sent:J

    #@14
    .line 32
    return-void
.end method
