.class public interface abstract Landroid/system/virtualizationservice/IVirtualizationService;
.super Ljava/lang/Object;
.source "IVirtualizationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/IVirtualizationService$Stub;,
        Landroid/system/virtualizationservice/IVirtualizationService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.system.virtualizationservice.IVirtualizationService"

.field public static final blacklist FEATURE_DICE_CHANGES:Ljava/lang/String; = "com.android.kvm.DICE_CHANGES"

.field public static final blacklist FEATURE_LLPVM_CHANGES:Ljava/lang/String; = "com.android.kvm.LLPVM_CHANGES"

.field public static final blacklist FEATURE_MULTI_TENANT:Ljava/lang/String; = "com.android.kvm.MULTI_TENANT"

.field public static final blacklist FEATURE_NETWORK:Ljava/lang/String; = "com.android.kvm.NETWORK"

.field public static final blacklist FEATURE_REMOTE_ATTESTATION:Ljava/lang/String; = "com.android.kvm.REMOTE_ATTESTATION"

.field public static final blacklist FEATURE_VENDOR_MODULES:Ljava/lang/String; = "com.android.kvm.VENDOR_MODULES"


# virtual methods
.method public abstract blacklist allocateInstanceId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist claimVmInstance([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createVm(Landroid/system/virtualizationservice/VirtualMachineConfig;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualizationservice/IVirtualMachine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist debugListVms()[Landroid/system/virtualizationservice/VirtualMachineDebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableTestAttestation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAssignableDevices()[Landroid/system/virtualizationservice/AssignableDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDebugPolicy()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedOSList()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isFeatureEnabled(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isRemoteAttestationSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isUpdatableVmSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeVmInstance([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setEncryptedStorageSize(Landroid/os/ParcelFileDescriptor;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
