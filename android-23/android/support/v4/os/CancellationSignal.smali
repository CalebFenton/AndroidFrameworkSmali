.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 2

    #@0
    .prologue
    .line 150
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    goto :goto_0

    #@8
    .line 153
    :catch_0
    move-exception v0

    #@9
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    #@a
    .line 149
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 67
    monitor-enter p0

    #@1
    .line 68
    :try_start_0
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 69
    return-void

    #@7
    .line 71
    :cond_0
    const/4 v2, 0x1

    #@8
    :try_start_1
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    #@a
    .line 72
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    #@d
    .line 73
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    #@f
    .line 74
    .local v0, "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0

    #@12
    .line 78
    if-eqz v0, :cond_1

    #@14
    .line 79
    :try_start_2
    invoke-interface {v0}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    #@17
    .line 81
    :cond_1
    if-eqz v1, :cond_2

    #@19
    .line 82
    invoke-static {v1}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@1c
    .line 85
    :cond_2
    monitor-enter p0

    #@1d
    .line 86
    const/4 v2, 0x0

    #@1e
    :try_start_3
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    #@20
    .line 87
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23
    monitor-exit p0

    #@24
    .line 64
    return-void

    #@25
    .line 67
    .end local v0    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2

    #@28
    .line 85
    .restart local v0    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .restart local v1    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2

    #@2b
    .line 84
    :catchall_2
    move-exception v2

    #@2c
    .line 85
    monitor-enter p0

    #@2d
    .line 86
    const/4 v3, 0x0

    #@2e
    :try_start_4
    iput-boolean v3, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    #@30
    .line 87
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@33
    monitor-exit p0

    #@34
    .line 84
    throw v2

    #@35
    .line 85
    :catchall_3
    move-exception v2

    #@36
    monitor-exit p0

    #@37
    throw v2
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    const/16 v1, 0x10

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 136
    return-object v2

    #@8
    .line 138
    :cond_0
    monitor-enter p0

    #@9
    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 140
    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@13
    .line 141
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 142
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    #@19
    invoke-static {v0}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    #@1c
    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    return-object v0

    #@20
    .line 138
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    #@0
    .prologue
    .line 44
    monitor-enter p0

    #@1
    .line 45
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    .line 44
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    #@0
    .prologue
    .line 109
    monitor-enter p0

    #@1
    .line 110
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    #@4
    .line 112
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne v0, p1, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 113
    return-void

    #@a
    .line 115
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    #@c
    .line 116
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    if-eqz v0, :cond_1

    #@10
    if-nez p1, :cond_2

    #@12
    :cond_1
    monitor-exit p0

    #@13
    .line 117
    return-void

    #@14
    :cond_2
    monitor-exit p0

    #@15
    .line 120
    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    #@18
    .line 108
    return-void

    #@19
    .line 109
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public throwIfCanceled()V
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 56
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    #@8
    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    #@b
    throw v0

    #@c
    .line 54
    :cond_0
    return-void
.end method
