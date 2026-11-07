.class public Landroid/os/IStatsd$Default;
.super Ljava/lang/Object;
.source "IStatsd.java"

# interfaces
.implements Landroid/os/IStatsd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConfiguration(J[BI)V
    .registers 5
    .param p1, "configId"    # J
    .param p3, "config"    # [B
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist addSubscription([BLandroid/os/IStatsSubscriptionCallback;)V
    .registers 3
    .param p1, "subscriptionConfig"    # [B
    .param p2, "callback"    # Landroid/os/IStatsSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    return-void
.end method

.method public blacklist allPullersFromBootRegistered()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bootCompleted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist flushSubscription(Landroid/os/IStatsSubscriptionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/os/IStatsSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    return-void
.end method

.method public blacklist getData(JI)[B
    .registers 5
    .param p1, "key"    # J
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDataFd(JILandroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "key"    # J
    .param p3, "callingUid"    # I
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    return-void
.end method

.method public blacklist getMetadata()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
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

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist informAlarmForSubscriberTriggeringFired()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist informAllUidData(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist informAnomalyAlarmFired()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist informDeviceShutdown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist informOnePackage(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "version"    # J
    .param p5, "version_string"    # Ljava/lang/String;
    .param p6, "installer"    # Ljava/lang/String;
    .param p7, "certificate_hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist informOnePackageRemoved(Ljava/lang/String;I)V
    .registers 3
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist informPollAlarmFired()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist querySql(Ljava/lang/String;I[BLandroid/os/IStatsQueryCallback;JLjava/lang/String;I)V
    .registers 9
    .param p1, "sqlQuery"    # Ljava/lang/String;
    .param p2, "minSqlClientVersion"    # I
    .param p3, "policyConfig"    # [B
    .param p4, "queryCallback"    # Landroid/os/IStatsQueryCallback;
    .param p5, "configKey"    # J
    .param p7, "configPackage"    # Ljava/lang/String;
    .param p8, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public blacklist registerNativePullAtomCallback(IJJ[ILandroid/os/IPullAtomCallback;)V
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

    .line 207
    return-void
.end method

.method public blacklist registerPullAtomCallback(IIJJ[ILandroid/os/IPullAtomCallback;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "atomTag"    # I
    .param p3, "coolDownMillis"    # J
    .param p5, "timeoutMillis"    # J
    .param p7, "additiveFields"    # [I
    .param p8, "pullerCallback"    # Landroid/os/IPullAtomCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist removeActiveConfigsChangedOperation(I)V
    .registers 2
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist removeConfiguration(JI)V
    .registers 4
    .param p1, "configId"    # J
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    return-void
.end method

.method public blacklist removeDataFetchOperation(JI)V
    .registers 4
    .param p1, "configId"    # J
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist removeRestrictedMetricsChangedOperation(JLjava/lang/String;I)V
    .registers 5
    .param p1, "configKey"    # J
    .param p3, "configPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    return-void
.end method

.method public blacklist removeSubscription(Landroid/os/IStatsSubscriptionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/os/IStatsSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist setActiveConfigsChangedOperation(Landroid/os/IPendingIntentRef;I)[J
    .registers 4
    .param p1, "pendingIntentRef"    # Landroid/os/IPendingIntentRef;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setBroadcastSubscriber(JJLandroid/os/IPendingIntentRef;I)V
    .registers 7
    .param p1, "configId"    # J
    .param p3, "subscriberId"    # J
    .param p5, "pir"    # Landroid/os/IPendingIntentRef;
    .param p6, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist setDataFetchOperation(JLandroid/os/IPendingIntentRef;I)V
    .registers 5
    .param p1, "configId"    # J
    .param p3, "pendingIntentRef"    # Landroid/os/IPendingIntentRef;
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist setRestrictedMetricsChangedOperation(JLjava/lang/String;Landroid/os/IPendingIntentRef;I)[J
    .registers 7
    .param p1, "configKey"    # J
    .param p3, "configPackage"    # Ljava/lang/String;
    .param p4, "pir"    # Landroid/os/IPendingIntentRef;
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist statsCompanionReady()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist systemRunning()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist unregisterNativePullAtomCallback(I)V
    .registers 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist unregisterPullAtomCallback(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    return-void
.end method

.method public blacklist unsetBroadcastSubscriber(JJI)V
    .registers 6
    .param p1, "configId"    # J
    .param p3, "subscriberId"    # J
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist updateProperties([Landroid/util/PropertyParcel;)V
    .registers 2
    .param p1, "properties"    # [Landroid/util/PropertyParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    return-void
.end method
