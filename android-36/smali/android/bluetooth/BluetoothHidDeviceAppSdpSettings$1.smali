.class Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    .line 100
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .registers 3
    .param p1, "size"    # I

    .line 110
    new-array v0, p1, [Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    move-result-object p1

    return-object p1
.end method
