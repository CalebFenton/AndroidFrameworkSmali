.class public abstract Ljava/lang/Process;
.super Ljava/lang/Object;
.source "Process.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api destroy()V
.end method

.method public whitelist test-api destroyForcibly()Ljava/lang/Process;
    .registers 1

    .line 245
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 246
    return-object p0
.end method

.method public abstract whitelist test-api exitValue()I
.end method

.method public abstract whitelist test-api getErrorStream()Ljava/io/InputStream;
.end method

.method public abstract whitelist test-api getInputStream()Ljava/io/InputStream;
.end method

.method public abstract whitelist test-api getOutputStream()Ljava/io/OutputStream;
.end method

.method public whitelist test-api isAlive()Z
    .registers 3

    .line 259
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_3} :catch_5

    .line 260
    const/4 v0, 0x0

    return v0

    .line 261
    :catch_5
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const/4 v1, 0x1

    return v1
.end method

.method public abstract whitelist test-api waitFor()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public whitelist test-api waitFor(JLjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 190
    .local v0, "startTime":J
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 194
    .local v2, "rem":J
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_8 .. :try_end_b} :catch_d

    .line 195
    const/4 v4, 0x1

    return v4

    .line 196
    :catch_d
    move-exception v4

    .line 197
    .local v4, "ex":Ljava/lang/IllegalThreadStateException;
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_26

    .line 198
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 199
    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide/16 v9, 0x64

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 198
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 201
    .end local v4    # "ex":Ljava/lang/IllegalThreadStateException;
    :cond_26
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v0

    sub-long v2, v7, v9

    .line 202
    cmp-long v4, v2, v5

    if-gtz v4, :cond_8

    .line 203
    const/4 v4, 0x0

    return v4
.end method
