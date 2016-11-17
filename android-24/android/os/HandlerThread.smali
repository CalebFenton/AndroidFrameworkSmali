.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field mLooper:Landroid/os/Looper;

.field mPriority:I

.field mTid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@3
    .line 25
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    #@6
    .line 30
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/os/HandlerThread;->mPriority:I

    #@9
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@3
    .line 25
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    #@6
    .line 41
    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    #@8
    .line 39
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 73
    return-object v2

    #@8
    .line 77
    :cond_0
    monitor-enter p0

    #@9
    .line 78
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-nez v1, :cond_1

    #@13
    .line 80
    :try_start_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    .line 81
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@19
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit p0

    #@1a
    .line 85
    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    #@1c
    return-object v1

    #@1d
    .line 77
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method public getThreadId()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    #@2
    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    #@0
    .prologue
    .line 48
    return-void
.end method

.method public quit()Z
    .locals 2

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    .line 109
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@6
    .line 110
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@9
    .line 111
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 113
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public quitSafely()Z
    .locals 2

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    .line 136
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@6
    .line 137
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    #@9
    .line 138
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 140
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    #@6
    .line 54
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@9
    .line 55
    monitor-enter p0

    #@a
    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    #@10
    .line 57
    invoke-virtual {p0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 59
    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    #@16
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@19
    .line 60
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    #@1c
    .line 61
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@1f
    .line 62
    const/4 v0, -0x1

    #@20
    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    #@22
    .line 52
    return-void

    #@23
    .line 55
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method
