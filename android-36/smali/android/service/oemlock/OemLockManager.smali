.class public Landroid/service/oemlock/OemLockManager;
.super Ljava/lang/Object;
.source "OemLockManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private greylist-max-o mService:Landroid/service/oemlock/IOemLockService;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/service/oemlock/IOemLockService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/oemlock/IOemLockService;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist getLockName()Ljava/lang/String;
    .registers 3

    .line 57
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->getLockName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 58
    :catch_7
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isDeviceOemUnlocked()Z
    .registers 3

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isDeviceOemUnlocked()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 158
    :catch_7
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isOemUnlockAllowed()Z
    .registers 3

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 145
    :catch_7
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isOemUnlockAllowedByCarrier()Z
    .registers 3

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByCarrier()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 98
    :catch_7
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isOemUnlockAllowedByUser()Z
    .registers 3

    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByUser()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 132
    :catch_7
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOemUnlockAllowedByCarrier(Z[B)V
    .registers 5
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0, p1, p2}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catch_7
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOemUnlockAllowedByUser(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0, p1}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByUser(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_7
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
