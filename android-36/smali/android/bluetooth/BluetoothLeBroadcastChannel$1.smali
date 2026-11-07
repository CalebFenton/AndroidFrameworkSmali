.class Landroid/bluetooth/BluetoothLeBroadcastChannel$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;-><init>()V

    .line 145
    .local v0, "builder":Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setSelected(Z)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setChannelIndex(I)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    .line 147
    sget-object v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 147
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setCodecMetadata(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object v1

    return-object v1
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

    .line 141
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .registers 3
    .param p1, "size"    # I

    .line 153
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastChannel;

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

    .line 141
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object p1

    return-object p1
.end method
