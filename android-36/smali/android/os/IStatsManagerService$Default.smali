.class public Landroid/os/IStatsManagerService$Default;
.super Ljava/lang/Object;
.source "IStatsManagerService.java"

# interfaces
.implements Landroid/os/IStatsManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConfiguration(J[BLjava/lang/String;)V
    .registers 5
    .param p1, "configId"    # J
    .param p3, "config"    # [B
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getData(JLjava/lang/String;)[B
    .registers 5
    .param p1, "key"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDataFd(JLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "key"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public blacklist getMetadata(Ljava/lang/String;)[B
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRegisteredExperimentIds()[J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist querySql(Ljava/lang/String;I[BLandroid/os/IStatsQueryCallback;JLjava/lang/String;)V
    .registers 8
    .param p1, "sqlQuery"    # Ljava/lang/String;
    .param p2, "minSqlClientVersion"    # I
    .param p3, "policyConfig"    # [B
    .param p4, "queryCallback"    # Landroid/os/IStatsQueryCallback;
    .param p5, "configKey"    # J
    .param p7, "configPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public blacklist registerPullAtomCallback(IJJ[ILandroid/os/IPullAtomCallback;)V
    .registers 8
    .param p1, "atomTag"    # I
    .param p2, "coolDownMillis"    # J
    .param p4, "timeoutMillis"    # J
    .param p6, "additiveFields"    # [I
    .param p7, "pullerCallback"    # Landroid/os/IPullAtomCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist removeActiveConfigsChangedOperation(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist removeConfiguration(JLjava/lang/String;)V
    .registers 4
    .param p1, "configId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist removeDataFetchOperation(JLjava/lang/String;)V
    .registers 4
    .param p1, "configId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist removeRestrictedMetricsChangedOperation(JLjava/lang/String;)V
    .registers 4
    .param p1, "configKey"    # J
    .param p3, "configPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist setActiveConfigsChangedOperation(Landroid/app/PendingIntent;Ljava/lang/String;)[J
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setBroadcastSubscriber(JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 7
    .param p1, "configKey"    # J
    .param p3, "subscriberId"    # J
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist setDataFetchOperation(JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5
    .param p1, "configId"    # J
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setRestrictedMetricsChangedOperation(Landroid/app/PendingIntent;JLjava/lang/String;)[J
    .registers 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "configKey"    # J
    .param p4, "configPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterPullAtomCallback(I)V
    .registers 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public blacklist unsetBroadcastSubscriber(JJLjava/lang/String;)V
    .registers 6
    .param p1, "configKey"    # J
    .param p3, "subscriberId"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method
