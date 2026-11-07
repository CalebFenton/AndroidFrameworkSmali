.class Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1553
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1554
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v3

    .line 1556
    :goto_15
    move v5, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1557
    move v6, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v6, :cond_26

    move v5, v6

    :cond_26
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;-><init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V

    .line 1553
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

    .line 1551
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .registers 3
    .param p1, "size"    # I

    .line 1562
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

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

    .line 1551
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-result-object p1

    return-object p1
.end method
