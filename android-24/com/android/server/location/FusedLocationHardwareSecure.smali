.class public Lcom/android/server/location/FusedLocationHardwareSecure;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FusedLocationHardwareSecure.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private final mPermissionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IFusedLocationHardware;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "permissionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    .line 39
    iput-object p2, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mContext:Landroid/content/Context;

    #@7
    .line 40
    iput-object p3, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    #@9
    .line 37
    return-void
.end method

.method private checkPermissions()V
    .locals 6

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mContext:Landroid/content/Context;

    #@2
    .line 45
    iget-object v1, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    #@4
    .line 47
    const-string/jumbo v2, "Permission \'%s\' not granted to access FusedLocationHardware"

    #@7
    .line 46
    const/4 v3, 0x1

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    .line 48
    iget-object v4, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    #@c
    const/4 v5, 0x0

    #@d
    aput-object v4, v3, v5

    #@f
    .line 46
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 43
    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 123
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->flushBatchedLocations()V

    #@8
    .line 121
    return-void
.end method

.method public getSupportedBatchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 66
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->getSupportedBatchSize()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 129
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->getVersion()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1
    .param p1, "deviceEnabledContext"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 117
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDeviceContext(I)V

    #@8
    .line 115
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 105
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDiagnosticData(Ljava/lang/String;)V

    #@8
    .line 103
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 1
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 54
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    #@8
    .line 52
    return-void
.end method

.method public requestBatchOfLocations(I)V
    .locals 1
    .param p1, "batchSizeRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 93
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->requestBatchOfLocations(I)V

    #@8
    .line 91
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Landroid/location/FusedBatchOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 72
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IFusedLocationHardware;->startBatching(ILandroid/location/FusedBatchOptions;)V

    #@8
    .line 70
    return-void
.end method

.method public stopBatching(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 78
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->stopBatching(I)V

    #@8
    .line 76
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 111
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->supportsDeviceContextInjection()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 99
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->supportsDiagnosticDataInjection()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 1
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 60
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    #@8
    .line 58
    return-void
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "batchoOptions"    # Landroid/location/FusedBatchOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    #@3
    .line 87
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IFusedLocationHardware;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    #@8
    .line 85
    return-void
.end method
