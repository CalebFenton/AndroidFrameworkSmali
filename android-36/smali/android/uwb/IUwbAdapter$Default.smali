.class public Landroid/uwb/IUwbAdapter$Default;
.super Ljava/lang/Object;
.source "IUwbAdapter.java"

# interfaces
.implements Landroid/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbAdapter;
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
.method public blacklist addControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public blacklist addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 452
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeRanging(Landroid/uwb/SessionHandle;)V
    .registers 2
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public blacklist getAdapterState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdfCertificateAndInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllServiceProfiles()Landroid/os/PersistableBundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChipIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChipInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultChipId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "chipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTimestampResolutionNanos(Ljava/lang/String;)J
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getUwbActivityEnergyInfoAsync(Landroid/uwb/IOnUwbActivityEnergyInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/uwb/IOnUwbActivityEnergyInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    return-void
.end method

.method public blacklist isHwEnableRequested(Landroid/content/AttributionSource;)Z
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHwIdleTurnOffEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p3, "rangingCallbacks"    # Landroid/uwb/IUwbRangingCallbacks;
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .param p5, "chipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist pause(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    return-void
.end method

.method public blacklist provisionProfileAdfByScript(Landroid/os/PersistableBundle;Landroid/uwb/IUwbAdfProvisionStateCallbacks;)V
    .registers 3
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;
    .param p2, "callback"    # Landroid/uwb/IUwbAdfProvisionStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    return-void
.end method

.method public blacklist queryMaxDataSizeBytes(Landroid/uwb/SessionHandle;)I
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryUwbsTimestampMicros()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    .registers 2
    .param p1, "adapterStateCallbacks"    # Landroid/uwb/IUwbAdapterStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist registerOemExtensionCallback(Landroid/uwb/IUwbOemExtensionCallback;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbOemExtensionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist registerVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbVendorUciCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist removeControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public blacklist removeProfileAdf(Landroid/os/PersistableBundle;)I
    .registers 3
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeServiceProfile(Landroid/os/PersistableBundle;)I
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestHwEnabled(ZLandroid/content/AttributionSource;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    return-void
.end method

.method public blacklist resume(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    return-void
.end method

.method public blacklist sendData(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "params"    # Landroid/os/PersistableBundle;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist sendVendorUciMessage(III[B)I
    .registers 6
    .param p1, "mt"    # I
    .param p2, "gid"    # I
    .param p3, "oid"    # I
    .param p4, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataTransferPhaseConfig(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public blacklist setHybridSessionControleeConfiguration(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    return-void
.end method

.method public blacklist setHybridSessionControllerConfiguration(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    return-void
.end method

.method public blacklist startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist stopRanging(Landroid/uwb/SessionHandle;)V
    .registers 2
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbAdapterStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist unregisterOemExtensionCallback(Landroid/uwb/IUwbOemExtensionCallback;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbOemExtensionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist unregisterVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbVendorUciCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist updatePose(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    return-void
.end method

.method public blacklist updateRangingRoundsDtTag(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    return-void
.end method
