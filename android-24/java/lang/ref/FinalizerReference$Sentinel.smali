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
.field finalized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/lang/ref/FinalizerReference$Sentinel;, "Ljava/lang/ref/FinalizerReference<TT;>.Sentinel;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    #@6
    .line 136
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/FinalizerReference$Sentinel;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/FinalizerReference$Sentinel;, "Ljava/lang/ref/FinalizerReference<TT;>.Sentinel;"
    invoke-direct {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method declared-synchronized awaitFinalization(J)V
    .locals 13
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/FinalizerReference$Sentinel;, "Ljava/lang/ref/FinalizerReference<TT;>.Sentinel;"
    monitor-enter p0

    #@1
    .line 148
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4
    move-result-wide v6

    #@5
    .line 149
    .local v6, "startTime":J
    add-long v4, v6, p1

    #@7
    .line 150
    .local v4, "endTime":J
    :goto_0
    iget-boolean v8, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    #@9
    if-nez v8, :cond_0

    #@b
    .line 152
    const-wide/16 v8, 0x0

    #@d
    cmp-long v8, p1, v8

    #@f
    if-eqz v8, :cond_2

    #@11
    .line 153
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-wide v0

    #@15
    .line 154
    .local v0, "currentTime":J
    cmp-long v8, v0, v4

    #@17
    if-ltz v8, :cond_1

    #@19
    .end local v0    # "currentTime":J
    :cond_0
    monitor-exit p0

    #@1a
    .line 147
    return-void

    #@1b
    .line 157
    .restart local v0    # "currentTime":J
    :cond_1
    sub-long v2, v4, v0

    #@1d
    .line 158
    .local v2, "deltaTime":J
    const-wide/32 v8, 0xf4240

    #@20
    :try_start_1
    div-long v8, v2, v8

    #@22
    const-wide/32 v10, 0xf4240

    #@25
    rem-long v10, v2, v10

    #@27
    long-to-int v10, v10

    #@28
    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/ref/FinalizerReference$Sentinel;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .end local v0    # "currentTime":J
    .end local v2    # "deltaTime":J
    .end local v4    # "endTime":J
    .end local v6    # "startTime":J
    :catchall_0
    move-exception v8

    #@2d
    monitor-exit p0

    #@2e
    throw v8

    #@2f
    .line 161
    .restart local v4    # "endTime":J
    .restart local v6    # "startTime":J
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_0
.end method

.method protected declared-synchronized finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/FinalizerReference$Sentinel;, "Ljava/lang/ref/FinalizerReference<TT;>.Sentinel;"
    monitor-enter p0

    #@1
    .line 140
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 143
    :cond_0
    const/4 v0, 0x1

    #@f
    :try_start_1
    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    #@11
    .line 144
    invoke-virtual {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 139
    return-void
.end method
