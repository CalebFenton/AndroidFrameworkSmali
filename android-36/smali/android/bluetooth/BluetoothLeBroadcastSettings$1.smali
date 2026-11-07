.class Landroid/bluetooth/BluetoothLeBroadcastSettings$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;-><init>()V

    .line 182
    .local v0, "builder":Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 185
    .local v1, "broadcastCode":[B
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    .line 186
    sget-object v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 186
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setPublicBroadcastMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, "subgroupSettings":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;>;"
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 192
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    .line 193
    .local v4, "setting":Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    .line 194
    .end local v4    # "setting":Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    goto :goto_33

    .line 195
    :cond_43
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v3

    return-object v3
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

    .line 179
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .registers 3
    .param p1, "size"    # I

    .line 199
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastSettings;

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

    .line 179
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object p1

    return-object p1
.end method
