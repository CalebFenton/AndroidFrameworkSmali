.class public Landroid/bluetooth/IDistanceMeasurement$Default;
.super Ljava/lang/Object;
.source "IDistanceMeasurement.java"

# interfaces
.implements Landroid/bluetooth/IDistanceMeasurement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IDistanceMeasurement;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelSoundingMaxSupportedSecurityLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChannelSoundingSupportedSecurityLevels(Landroid/content/AttributionSource;)[I
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLocalChannelSoundingMaxSupportedSecurityLevel(Landroid/content/AttributionSource;)I
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedDistanceMeasurementMethods(Landroid/content/AttributionSource;)Ljava/util/List;
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/DistanceMeasurementMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/le/DistanceMeasurementParams;Landroid/bluetooth/le/IDistanceMeasurementCallback;Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "params"    # Landroid/bluetooth/le/DistanceMeasurementParams;
    .param p3, "callback"    # Landroid/bluetooth/le/IDistanceMeasurementCallback;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist stopDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I
    .registers 6
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "method"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method
