.class public Landroid/telephony/ims/stub/ImsEcbmImplBase;
.super Ljava/lang/Object;
.source "ImsEcbmImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsEcbmImplBase"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

.field private greylist-max-o mListener:Lcom/android/ims/internal/IImsEcbmListener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsEcbmImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-void
.end method


# virtual methods
.method public final whitelist enteredEcbm()V
    .registers 4

    .line 115
    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Entered ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 119
    .local v1, "listener":Lcom/android/ims/internal/IImsEcbmListener;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    .line 120
    if-eqz v1, :cond_1a

    .line 122
    :try_start_f
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 125
    goto :goto_1a

    .line 123
    :catch_13
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void

    .line 119
    .end local v1    # "listener":Lcom/android/ims/internal/IImsEcbmListener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist exitEmergencyCallbackMode()V
    .registers 3

    .line 106
    const-string v0, "ImsEcbmImplBase"

    const-string v1, "exitEmergencyCallbackMode() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public final whitelist exitedEcbm()V
    .registers 4

    .line 135
    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Exited ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 139
    .local v1, "listener":Lcom/android/ims/internal/IImsEcbmListener;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    .line 140
    if-eqz v1, :cond_1a

    .line 142
    :try_start_f
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 145
    goto :goto_1a

    .line 143
    :catch_13
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void

    .line 139
    .end local v1    # "listener":Lcom/android/ims/internal/IImsEcbmListener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public greylist-max-o getImsEcbm()Lcom/android/ims/internal/IImsEcbm;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-object v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 156
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 157
    return-void
.end method
