.class public Landroid/system/virtualizationservice/IVirtualizationService$Default;
.super Ljava/lang/Object;
.source "IVirtualizationService.java"

# interfaces
.implements Landroid/system/virtualizationservice/IVirtualizationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/IVirtualizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocateInstanceId()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist claimVmInstance([B)V
    .registers 2
    .param p1, "instanceId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "inputFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "idsigFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist createVm(Landroid/system/virtualizationservice/VirtualMachineConfig;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualizationservice/IVirtualMachine;
    .registers 7
    .param p1, "config"    # Landroid/system/virtualizationservice/VirtualMachineConfig;
    .param p2, "consoleOutFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "consoleInFd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "osLogFd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "dumpDtFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist debugListVms()[Landroid/system/virtualizationservice/VirtualMachineDebugInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableTestAttestation()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist getAssignableDevices()[Landroid/system/virtualizationservice/AssignableDevice;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDebugPolicy()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedOSList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V
    .registers 5
    .param p1, "imageFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sizeBytes"    # J
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist isFeatureEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemoteAttestationSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUpdatableVmSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeVmInstance([B)V
    .registers 2
    .param p1, "instanceId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist setEncryptedStorageSize(Landroid/os/ParcelFileDescriptor;J)V
    .registers 4
    .param p1, "imageFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method
