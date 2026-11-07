.class Ljava/lang/ref/FinalizerReference$Sentinel;
.super Ljava/lang/Object;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ref/FinalizerReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sentinel"
.end annotation


# instance fields
.field greylist-max-o finalized:Z


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ref/FinalizerReference-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized greylist-max-o awaitFinalization(J)V
    .registers 13
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 163
    .local v0, "startTime":J
    add-long v2, v0, p1

    .line 164
    .local v2, "endTime":J
    :goto_7
    iget-boolean v4, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    if-nez v4, :cond_2c

    .line 166
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-eqz v6, :cond_28

    .line 167
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 168
    .local v6, "deltaTime":J
    cmp-long v4, v6, v4

    if-gtz v4, :cond_1c

    .line 169
    goto :goto_2c

    .line 171
    :cond_1c
    const-wide/32 v4, 0xf4240

    div-long v8, v6, v4

    rem-long v4, v6, v4

    long-to-int v4, v4

    invoke-virtual {p0, v8, v9, v4}, Ljava/lang/Object;->wait(JI)V

    .line 173
    .end local v6    # "deltaTime":J
    goto :goto_7

    .line 174
    .end local p0    # "this":Ljava/lang/ref/FinalizerReference$Sentinel;
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    goto :goto_7

    .line 177
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "startTime":J
    .end local v2    # "endTime":J
    .end local p1    # "timeout":J
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method protected declared-synchronized whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    if-nez v0, :cond_d

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    .line 159
    monitor-exit p0

    return-void

    .line 155
    .end local p0    # "this":Ljava/lang/ref/FinalizerReference$Sentinel;
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw v0
.end method
