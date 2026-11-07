.class public Landroid/os/DeviceIdleManager;
.super Ljava/lang/Object;
.source "DeviceIdleManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IDeviceIdleController;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/os/DeviceIdleManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist endIdle(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_7
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getService()Landroid/os/IDeviceIdleController;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public blacklist getSystemPowerWhitelist()[Ljava/lang/String;
    .registers 3

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 89
    :catch_7
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 3

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
