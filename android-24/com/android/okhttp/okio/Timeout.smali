.class public Lcom/android/okhttp/okio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/okio/Timeout$1;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/android/okhttp/okio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Lcom/android/okhttp/okio/Timeout$1;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    #@3
    .line 135
    return-object p0
.end method

.method public clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .locals 2

    #@0
    .prologue
    .line 128
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    #@4
    .line 129
    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .locals 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 121
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gtz v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "duration <= 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 122
    :cond_0
    if-nez p3, :cond_1

    #@22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "unit == null"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 123
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@2e
    move-result-wide v0

    #@2f
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@32
    move-result-wide v2

    #@33
    add-long/2addr v0, v2

    #@34
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "No deadline"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    #@f
    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    #@0
    .prologue
    .line 114
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    #@3
    .line 115
    iput-wide p1, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    #@5
    .line 116
    return-object p0
.end method

.method public hasDeadline()Z
    .locals 1

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    #@2
    return v0
.end method

.method public throwIfReached()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 145
    new-instance v0, Ljava/io/InterruptedIOException;

    #@8
    const-string/jumbo v1, "thread interrupted"

    #@b
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    #@15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@18
    move-result-wide v2

    #@19
    sub-long/2addr v0, v2

    #@1a
    const-wide/16 v2, 0x0

    #@1c
    cmp-long v0, v0, v2

    #@1e
    if-gtz v0, :cond_1

    #@20
    .line 149
    new-instance v0, Ljava/io/InterruptedIOException;

    #@22
    const-string/jumbo v1, "deadline reached"

    #@25
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 143
    :cond_1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 81
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "timeout < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 82
    :cond_0
    if-nez p3, :cond_1

    #@22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "unit == null"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 83
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@2e
    move-result-wide v0

    #@2f
    iput-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    #@31
    .line 84
    return-object p0
.end method

.method public timeoutNanos()J
    .locals 2

    #@0
    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    #@2
    return-wide v0
.end method
