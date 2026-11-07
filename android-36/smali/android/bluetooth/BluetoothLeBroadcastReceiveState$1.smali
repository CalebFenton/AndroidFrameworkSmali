.class Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastReceiveState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    .local v1, "sourceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .local v2, "sourceAddressType":I
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 549
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 550
    .local v3, "sourceDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 551
    .local v4, "sourceAdvertisingSid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 552
    .local v5, "broadcastId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 553
    .local v6, "paSyncState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 554
    .local v7, "bigEncryptionState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 555
    .local v8, "badCode":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 556
    .local v9, "numSubGroups":B
    const-class v0, Ljava/lang/Long;

    .line 557
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v10, Ljava/lang/Long;

    invoke-virtual {p1, v0, v10}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v10

    .line 558
    .local v10, "bisSyncState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 559
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 561
    .local v11, "subgroupMetadata":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioContentMetadata;>;"
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    invoke-direct/range {v0 .. v11}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;-><init>(IILandroid/bluetooth/BluetoothDevice;IIII[BILjava/util/List;Ljava/util/List;)V

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

    .line 543
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    .registers 3
    .param p1, "size"    # I

    .line 576
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

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

    .line 543
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    move-result-object p1

    return-object p1
.end method
