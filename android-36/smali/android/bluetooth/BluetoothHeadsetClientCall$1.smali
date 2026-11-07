.class Landroid/bluetooth/BluetoothHeadsetClientCall$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHeadsetClientCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 297
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 298
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_28

    move v6, v8

    goto :goto_29

    :cond_28
    move v6, v7

    .line 304
    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v8, :cond_32

    move v9, v7

    move v7, v8

    goto :goto_33

    :cond_32
    move v9, v7

    .line 305
    :goto_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v8, :cond_3a

    goto :goto_3b

    :cond_3a
    move v8, v9

    :goto_3b
    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V

    .line 297
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

    .line 294
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;
    .registers 3
    .param p1, "size"    # I

    .line 310
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClientCall;

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

    .line 294
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    return-object p1
.end method
