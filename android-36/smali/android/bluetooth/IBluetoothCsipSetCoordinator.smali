.class public interface abstract Landroid/bluetooth/IBluetoothCsipSetCoordinator;
.super Ljava/lang/Object;
.source "IBluetoothCsipSetCoordinator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothCsipSetCoordinator$_Parcel;,
        Landroid/bluetooth/IBluetoothCsipSetCoordinator$Stub;,
        Landroid/bluetooth/IBluetoothCsipSetCoordinator$Default;
    }
.end annotation


# static fields
.field public static final blacklist CSIS_GROUP_ID_INVALID:I = -0x1

.field public static final blacklist CSIS_GROUP_LOCK_FAILED_GROUP_EMPTY:I = 0x2

.field public static final blacklist CSIS_GROUP_LOCK_FAILED_GROUP_NOT_CONNECTED:I = 0x3

.field public static final blacklist CSIS_GROUP_LOCK_FAILED_INVALID_GROUP:I = 0x1

.field public static final blacklist CSIS_GROUP_LOCK_FAILED_LOCKED_BY_OTHER:I = 0x4

.field public static final blacklist CSIS_GROUP_LOCK_FAILED_OTHER_REASON:I = 0x5

.field public static final blacklist CSIS_GROUP_LOCK_SUCCESS:I = 0x0

.field public static final blacklist CSIS_GROUP_SIZE_UNKNOWN:I = 0x1

.field public static final blacklist CSIS_LOCKED_GROUP_MEMBER_LOST:I = 0x6

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothCsipSetCoordinator"


# virtual methods
.method public abstract blacklist getAllGroupIds(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDesiredGroupSize(ILandroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist lockGroup(ILandroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback;Landroid/content/AttributionSource;)Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlockGroup(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
