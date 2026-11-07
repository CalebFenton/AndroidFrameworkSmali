.class public Lcom/android/okhttp/okio/ForwardingTimeout;
.super Lcom/android/okhttp/okio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private blacklist delegate:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Timeout;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    if-eqz p1, :cond_8

    .line 29
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    return-void

    .line 28
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "delegate == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public blacklist clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public blacklist deadlineNanoTime()J
    .registers 3

    .line 56
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .registers 3

    .line 60
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist delegate()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    return-object p0
.end method

.method public blacklist hasDeadline()Z
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    move-result p0

    return p0
.end method

.method public final blacklist setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;
    .registers 2

    if-eqz p1, :cond_5

    .line 39
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    return-object p0

    .line 38
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "delegate == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist throwIfReached()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    return-void
.end method

.method public blacklist timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 4

    .line 44
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public blacklist timeoutNanos()J
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
