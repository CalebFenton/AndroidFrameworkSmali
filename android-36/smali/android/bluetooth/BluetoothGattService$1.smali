.class Landroid/bluetooth/BluetoothGattService$1;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothGattService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothGattService;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattService-IA;)V

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

    .line 156
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothGattService;
    .registers 3
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Landroid/bluetooth/BluetoothGattService;

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

    .line 156
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService$1;->newArray(I)[Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    return-object p1
.end method
