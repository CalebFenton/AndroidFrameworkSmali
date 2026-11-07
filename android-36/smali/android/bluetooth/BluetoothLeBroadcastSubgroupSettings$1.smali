.class Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroupSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;-><init>()V

    .line 149
    .local v0, "builder":Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setPreferredQuality(I)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    .line 150
    sget-object v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 151
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 150
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    .line 152
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

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

    .line 145
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    .registers 3
    .param p1, "size"    # I

    .line 156
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

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

    .line 145
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object p1

    return-object p1
.end method
