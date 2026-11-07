.class public Landroid/provider/DeviceConfigManager;
.super Ljava/lang/Object;
.source "DeviceConfigManager.java"


# instance fields
.field private blacklist mService:Landroid/provider/aidl/IDeviceConfigManager;


# direct methods
.method public constructor blacklist <init>(Landroid/provider/aidl/IDeviceConfigManager;)V
    .registers 2
    .param p1, "service"    # Landroid/provider/aidl/IDeviceConfigManager;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/provider/DeviceConfigManager;->mService:Landroid/provider/aidl/IDeviceConfigManager;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/provider/DeviceConfigManager;->mService:Landroid/provider/aidl/IDeviceConfigManager;

    invoke-interface {v0, p1, p2}, Landroid/provider/aidl/IDeviceConfigManager;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 72
    :catch_7
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 45
    :try_start_0
    iget-object v0, p0, Landroid/provider/DeviceConfigManager;->mService:Landroid/provider/aidl/IDeviceConfigManager;

    invoke-interface {v0, p1, p2}, Landroid/provider/aidl/IDeviceConfigManager;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 46
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/provider/DeviceConfig$Properties;

    invoke-direct {v1, p1, v0}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 47
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_c
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setProperties(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 54
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/provider/DeviceConfigManager;->mService:Landroid/provider/aidl/IDeviceConfigManager;

    invoke-interface {v0, p1, p2}, Landroid/provider/aidl/IDeviceConfigManager;->setProperties(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 55
    :catch_7
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/provider/DeviceConfigManager;->mService:Landroid/provider/aidl/IDeviceConfigManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/provider/aidl/IDeviceConfigManager;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 64
    :catch_7
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
