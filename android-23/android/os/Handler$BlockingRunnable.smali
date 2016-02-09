.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 753
    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    #@5
    .line 752
    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "timeout"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 769
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 770
    return v8

    #@a
    .line 773
    :cond_0
    monitor-enter p0

    #@b
    .line 774
    cmp-long v3, p2, v10

    #@d
    if-lez v3, :cond_2

    #@f
    .line 775
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v6

    #@13
    add-long v4, v6, p2

    #@15
    .line 776
    .local v4, "expirationTime":J
    :goto_0
    iget-boolean v3, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    #@17
    if-nez v3, :cond_3

    #@19
    .line 777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v6

    #@1d
    sub-long v0, v4, v6

    #@1f
    .line 778
    .local v0, "delay":J
    cmp-long v3, v0, v10

    #@21
    if-gtz v3, :cond_1

    #@23
    monitor-exit p0

    #@24
    .line 779
    return v8

    #@25
    .line 782
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler$BlockingRunnable;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 783
    :catch_0
    move-exception v2

    #@2a
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    #@2b
    .line 787
    .end local v0    # "delay":J
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .end local v4    # "expirationTime":J
    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    if-nez v3, :cond_3

    #@2f
    .line 789
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    goto :goto_1

    #@33
    .line 790
    :catch_1
    move-exception v2

    #@34
    .restart local v2    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    #@35
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit p0

    #@36
    .line 795
    const/4 v3, 0x1

    #@37
    return v3

    #@38
    .line 773
    :catchall_0
    move-exception v3

    #@39
    monitor-exit p0

    #@3a
    throw v3
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 759
    :try_start_0
    iget-object v0, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5
    .line 761
    monitor-enter p0

    #@6
    .line 762
    const/4 v0, 0x1

    #@7
    :try_start_1
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    #@9
    .line 763
    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 757
    return-void

    #@e
    .line 761
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 760
    :catchall_1
    move-exception v0

    #@12
    .line 761
    monitor-enter p0

    #@13
    .line 762
    const/4 v1, 0x1

    #@14
    :try_start_2
    iput-boolean v1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    #@16
    .line 763
    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@19
    monitor-exit p0

    #@1a
    .line 760
    throw v0

    #@1b
    .line 761
    :catchall_2
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method
