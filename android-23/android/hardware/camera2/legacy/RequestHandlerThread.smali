.class public Landroid/hardware/camera2/legacy/RequestHandlerThread;
.super Landroid/os/HandlerThread;
.source "RequestHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestHandlerThread$1;
    }
.end annotation


# static fields
.field public static final MSG_POKE_IDLE_HANDLER:I = -0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private volatile mHandler:Landroid/os/Handler;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private final mStarted:Landroid/os/ConditionVariable;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/RequestHandlerThread;)Landroid/os/ConditionVariable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    #@0
    .prologue
    .line 41
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@5
    .line 35
    new-instance v0, Landroid/os/ConditionVariable;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    #@d
    .line 36
    new-instance v0, Landroid/os/ConditionVariable;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    #@15
    .line 88
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;

    #@17
    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;-><init>(Landroid/hardware/camera2/legacy/RequestHandlerThread;)V

    #@1a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    #@1c
    .line 42
    iput-object p2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    #@1e
    .line 40
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public hasAnyMessages([I)Z
    .locals 6
    .param p1, "what"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 69
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@a
    move-result-object v3

    #@b
    monitor-enter v3

    #@c
    .line 70
    :try_start_0
    array-length v4, p1

    #@d
    move v1, v2

    #@e
    :goto_0
    if-ge v1, v4, :cond_1

    #@10
    aget v0, p1, v1

    #@12
    .line 71
    .local v0, "i":I
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    #@14
    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 72
    const/4 v1, 0x1

    #@1b
    monitor-exit v3

    #@1c
    return v1

    #@1d
    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .end local v0    # "i":I
    :cond_1
    monitor-exit v3

    #@21
    .line 76
    return v2

    #@22
    .line 69
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v3

    #@24
    throw v1
.end method

.method protected onLooperPrepared()V
    .locals 3

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    #@8
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    #@d
    .line 48
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    #@f
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@12
    .line 46
    return-void
.end method

.method public removeMessages([I)V
    .locals 5
    .param p1, "what"    # [I

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 82
    const/4 v1, 0x0

    #@c
    :try_start_0
    array-length v3, p1

    #@d
    :goto_0
    if-ge v1, v3, :cond_0

    #@f
    aget v0, p1, v1

    #@11
    .line 83
    .local v0, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    #@13
    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 82
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .end local v0    # "i":I
    :cond_0
    monitor-exit v2

    #@1a
    .line 80
    return-void

    #@1b
    .line 81
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public waitAndGetHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    #@3
    .line 64
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public waitUntilIdle()V
    .locals 3

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@b
    move-result-object v1

    #@c
    .line 100
    .local v1, "queue":Landroid/os/MessageQueue;
    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 101
    return-void

    #@13
    .line 103
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    #@15
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    #@18
    .line 104
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@1d
    .line 106
    const/4 v2, -0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@21
    .line 107
    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 108
    return-void

    #@28
    .line 110
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    #@2a
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    #@2d
    .line 97
    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@5
    .line 52
    return-void
.end method
