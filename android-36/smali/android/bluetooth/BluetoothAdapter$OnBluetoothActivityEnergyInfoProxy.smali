.class Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;
.super Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBluetoothActivityEnergyInfoProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1015
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;-><init>()V

    .line 1004
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    .line 1016
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1017
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1018
    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothActivityEnergyInfoAvailable$0(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1037
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothActivityEnergyInfoAvailable$1(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1040
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .param p1, "errorCode"    # I

    .line 1059
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1025
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v1, :cond_c

    goto :goto_2a

    .line 1029
    :cond_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1030
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1031
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1032
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1033
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2c

    .line 1034
    if-nez p1, :cond_21

    .line 1035
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_29

    .line 1039
    :cond_21
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 1042
    :goto_29
    return-void

    .line 1027
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    .line 1033
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist onError(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .line 1049
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v1, :cond_c

    goto :goto_1f

    .line 1053
    :cond_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1054
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1055
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1056
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 1057
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_21

    .line 1058
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 1060
    return-void

    .line 1051
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v0

    return-void

    .line 1057
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw v1
.end method
