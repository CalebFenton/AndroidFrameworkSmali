.class public Lcom/android/okhttp/okio/ForwardingTimeout;
.super Lcom/android/okhttp/okio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Timeout;)V
    .locals 2
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Timeout;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    #@3
    .line 26
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "delegate == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 27
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@10
    .line 25
    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final delegate()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;
    .locals 2
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Timeout;

    #@0
    .prologue
    .line 36
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "delegate == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 37
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@d
    .line 38
    return-object p0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    #@5
    .line 69
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public timeoutNanos()J
    .locals 2

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->timeoutNanos()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
