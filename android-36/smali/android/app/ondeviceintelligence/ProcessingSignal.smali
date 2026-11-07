.class public final Landroid/app/ondeviceintelligence/ProcessingSignal;
.super Ljava/lang/Object;
.source "ProcessingSignal.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;,
        Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;
    }
.end annotation


# static fields
.field private static final blacklist MAX_QUEUE_SIZE:I = 0xa


# instance fields
.field private final blacklist mActionParamsQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

.field private blacklist mRemote:Landroid/app/ondeviceintelligence/IProcessingSignal;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    .line 59
    return-void
.end method

.method public static blacklist createTransport()Landroid/app/ondeviceintelligence/IProcessingSignal;
    .registers 2

    .line 199
    new-instance v0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal-IA;)V

    return-object v0
.end method

.method public static blacklist fromTransport(Landroid/app/ondeviceintelligence/IProcessingSignal;)Landroid/app/ondeviceintelligence/ProcessingSignal;
    .registers 2
    .param p0, "transport"    # Landroid/app/ondeviceintelligence/IProcessingSignal;

    .line 210
    instance-of v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;

    if-eqz v0, :cond_a

    .line 211
    move-object v0, p0

    check-cast v0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;

    iget-object v0, v0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;->mProcessingSignal:Landroid/app/ondeviceintelligence/ProcessingSignal;

    return-object v0

    .line 213
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$sendSignal$0(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "callback"    # Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 106
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;->onSignalReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$setOnProcessingSignalCallback$1(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "callback"    # Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 157
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;->onSignalReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public whitelist sendSignal(Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "actionParams"    # Landroid/os/PersistableBundle;

    .line 92
    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_52

    .line 98
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    .line 100
    .local v1, "callback":Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;
    iget-object v2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mRemote:Landroid/app/ondeviceintelligence/IProcessingSignal;

    .line 102
    .local v2, "remote":Landroid/app/ondeviceintelligence/IProcessingSignal;
    if-eqz v1, :cond_33

    .line 103
    :goto_18
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 104
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 105
    .local v3, "params":Landroid/os/PersistableBundle;
    iget-object v4, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v3}, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda1;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    .end local v3    # "params":Landroid/os/PersistableBundle;
    goto :goto_18

    .line 109
    :cond_33
    if-eqz v2, :cond_50

    .line 110
    :goto_35
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_5a

    if-nez v3, :cond_50

    .line 112
    :try_start_3d
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    invoke-interface {v2, v3}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_48} :catch_49
    .catchall {:try_start_3d .. :try_end_48} :catchall_5a

    .line 115
    goto :goto_35

    .line 113
    :catch_49
    move-exception v3

    .line 114
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4a
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ondeviceintelligence/ProcessingSignal;
    .end local p1    # "actionParams":Landroid/os/PersistableBundle;
    throw v4

    .line 118
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ondeviceintelligence/ProcessingSignal;
    .restart local p1    # "actionParams":Landroid/os/PersistableBundle;
    :cond_50
    monitor-exit v0

    .line 119
    return-void

    .line 94
    .end local v1    # "callback":Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;
    .end local v2    # "remote":Landroid/app/ondeviceintelligence/IProcessingSignal;
    :cond_52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Maximum actions that can be queued are : 10"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ondeviceintelligence/ProcessingSignal;
    .end local p1    # "actionParams":Landroid/os/PersistableBundle;
    throw v1

    .line 118
    .restart local p0    # "this":Landroid/app/ondeviceintelligence/ProcessingSignal;
    .restart local p1    # "actionParams":Landroid/os/PersistableBundle;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public whitelist setOnProcessingSignalCallback(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    .line 143
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_6
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    if-ne v1, p2, :cond_c

    .line 146
    monitor-exit v0

    return-void

    .line 149
    :cond_c
    iput-object p2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    .line 150
    iput-object p1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 151
    if-eqz p2, :cond_38

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_38

    .line 155
    :cond_1b
    :goto_1b
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 156
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 157
    .local v1, "params":Landroid/os/PersistableBundle;
    iget-object v2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v1}, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    .end local v1    # "params":Landroid/os/PersistableBundle;
    goto :goto_1b

    .line 159
    :cond_36
    monitor-exit v0

    .line 160
    return-void

    .line 152
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    .line 159
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method blacklist setRemote(Landroid/app/ondeviceintelligence/IProcessingSignal;)V
    .registers 6
    .param p1, "remote"    # Landroid/app/ondeviceintelligence/IProcessingSignal;

    .line 175
    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iput-object p1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mRemote:Landroid/app/ondeviceintelligence/IProcessingSignal;

    .line 177
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    if-nez p1, :cond_10

    goto :goto_2f

    .line 181
    :cond_10
    :goto_10
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_31

    if-nez v1, :cond_2d

    .line 183
    :try_start_18
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    invoke-interface {p1, v1}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_31

    .line 186
    goto :goto_10

    .line 184
    :catch_24
    move-exception v1

    .line 185
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_25
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to send action to remote signal"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ondeviceintelligence/ProcessingSignal;
    .end local p1    # "remote":Landroid/app/ondeviceintelligence/IProcessingSignal;
    throw v2

    .line 188
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ondeviceintelligence/ProcessingSignal;
    .restart local p1    # "remote":Landroid/app/ondeviceintelligence/IProcessingSignal;
    :cond_2d
    monitor-exit v0

    .line 189
    return-void

    .line 178
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    .line 188
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw v1
.end method
