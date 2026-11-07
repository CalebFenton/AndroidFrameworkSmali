.class public Lcom/android/okhttp/okio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final greylist-max-o NONE:Lcom/android/okhttp/okio/Timeout;


# instance fields
.field private greylist-max-o deadlineNanoTime:J

.field private greylist-max-o hasDeadline:Z

.field private greylist-max-o timeoutNanos:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/okhttp/okio/Timeout$1;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    return-object p0
.end method

.method public greylist-max-o clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 3

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public final greylist-max-o deadline(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    if-eqz p3, :cond_16

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0

    .line 124
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duration <= 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o deadlineNanoTime()J
    .registers 3

    .line 106
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_7

    .line 107
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    return-wide v0

    .line 106
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No deadline"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .registers 4

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    .line 117
    iput-wide p1, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    return-object p0
.end method

.method public greylist-max-o hasDeadline()Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    return p0
.end method

.method public greylist-max-o throwIfReached()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 150
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_18

    goto :goto_20

    .line 151
    :cond_18
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "deadline reached"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    return-void

    .line 147
    :cond_21
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "thread interrupted"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    if-eqz p3, :cond_f

    .line 85
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    return-object p0

    .line 84
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeout < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o timeoutNanos()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    return-wide v0
.end method
