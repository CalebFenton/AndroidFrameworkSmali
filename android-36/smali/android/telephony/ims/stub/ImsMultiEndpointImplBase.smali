.class public Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.super Ljava/lang/Object;
.source "ImsMultiEndpointImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MultiEndpointImplBase"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

.field private greylist-max-o mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-void
.end method


# virtual methods
.method public greylist-max-o getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object v0
.end method

.method public final whitelist onImsExternalCallStateUpdate(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "externalCallDialogs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const-string v0, "MultiEndpointImplBase"

    const-string v1, "ims external call state update triggered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 115
    .local v1, "listener":Lcom/android/ims/internal/IImsExternalCallStateListener;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    .line 116
    if-eqz v1, :cond_1a

    .line 118
    :try_start_f
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 121
    goto :goto_1a

    .line 119
    :catch_13
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void

    .line 115
    .end local v1    # "listener":Lcom/android/ims/internal/IImsExternalCallStateListener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist requestImsExternalCallStateInfo()V
    .registers 3

    .line 130
    const-string v0, "MultiEndpointImplBase"

    const-string/jumbo v1, "requestImsExternalCallStateInfo() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 140
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 141
    return-void
.end method
