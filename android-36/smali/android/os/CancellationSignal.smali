.class public final Landroid/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignal$OnCancelListener;,
        Landroid/os/CancellationSignal$Transport;
    }
.end annotation


# instance fields
.field private greylist-max-p mCancelInProgress:Z

.field private greylist-max-p mIsCanceled:Z

.field private greylist-max-p mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

.field private greylist-max-p mRemote:Landroid/os/ICancellationSignal;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static greylist-max-o createTransport()Landroid/os/ICancellationSignal;
    .registers 2

    .line 179
    new-instance v0, Landroid/os/CancellationSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CancellationSignal$Transport;-><init>(Landroid/os/CancellationSignal-IA;)V

    return-object v0
.end method

.method public static greylist-max-o fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2
    .param p0, "transport"    # Landroid/os/ICancellationSignal;

    .line 191
    instance-of v0, p0, Landroid/os/CancellationSignal$Transport;

    if-eqz v0, :cond_a

    .line 192
    move-object v0, p0

    check-cast v0, Landroid/os/CancellationSignal$Transport;

    iget-object v0, v0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0

    .line 194
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-p waitForCancelFinishedLocked()V
    .registers 2

    .line 162
    nop

    :goto_1
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_b

    .line 164
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 166
    :goto_8
    goto :goto_1

    .line 165
    :catch_9
    move-exception v0

    goto :goto_8

    .line 168
    :cond_b
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 5

    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_7

    .line 72
    monitor-exit p0

    return-void

    .line 74
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    .line 75
    iput-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 76
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 77
    .local v0, "listener":Landroid/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 78
    .local v1, "remote":Landroid/os/ICancellationSignal;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_38

    .line 81
    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 82
    :try_start_14
    invoke-interface {v0}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1a

    .line 91
    :catchall_18
    move-exception v3

    goto :goto_20

    .line 84
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2c

    .line 86
    :try_start_1c
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_2b
    .catchall {:try_start_1c .. :try_end_1f} :catchall_18

    .line 88
    goto :goto_2c

    .line 91
    :goto_20
    monitor-enter p0

    .line 92
    :try_start_21
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    .line 95
    throw v3

    .line 94
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 87
    :catch_2b
    move-exception v3

    .line 91
    :cond_2c
    :goto_2c
    monitor-enter p0

    .line 92
    :try_start_2d
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit p0

    .line 95
    nop

    .line 96
    return-void

    .line 94
    :catchall_35
    move-exception v2

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v2

    .line 78
    .end local v0    # "listener":Landroid/os/CancellationSignal$OnCancelListener;
    .end local v1    # "remote":Landroid/os/ICancellationSignal;
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public whitelist isCanceled()Z
    .registers 2

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 49
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/CancellationSignal$OnCancelListener;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 118
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    .line 119
    monitor-exit p0

    return-void

    .line 121
    :cond_a
    iput-object p1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 122
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 125
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 126
    invoke-interface {p1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 127
    return-void

    .line 123
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    .line 125
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public greylist-max-o setRemote(Landroid/os/ICancellationSignal;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/ICancellationSignal;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 146
    iget-object v0, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    if-ne v0, p1, :cond_a

    .line 147
    monitor-exit p0

    return-void

    .line 149
    :cond_a
    iput-object p1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 150
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1a

    if-nez p1, :cond_13

    goto :goto_1a

    .line 153
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 155
    :try_start_14
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 157
    goto :goto_19

    .line 156
    :catch_18
    move-exception v0

    .line 158
    :goto_19
    return-void

    .line 151
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    return-void

    .line 153
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public whitelist throwIfCanceled()V
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 61
    return-void

    .line 59
    :cond_7
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0
.end method
