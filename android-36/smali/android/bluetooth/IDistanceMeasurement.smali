.class public interface abstract Landroid/bluetooth/IDistanceMeasurement;
.super Ljava/lang/Object;
.source "IDistanceMeasurement.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IDistanceMeasurement$_Parcel;,
        Landroid/bluetooth/IDistanceMeasurement$Stub;,
        Landroid/bluetooth/IDistanceMeasurement$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IDistanceMeasurement"


# virtual methods
.method public abstract blacklist getChannelSoundingMaxSupportedSecurityLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getChannelSoundingSupportedSecurityLevels(Landroid/content/AttributionSource;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLocalChannelSoundingMaxSupportedSecurityLevel(Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedDistanceMeasurementMethods(Landroid/content/AttributionSource;)Ljava/util/List;
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
.end method

.method public abstract blacklist startDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/le/DistanceMeasurementParams;Landroid/bluetooth/le/IDistanceMeasurementCallback;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopDistanceMeasurement(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
