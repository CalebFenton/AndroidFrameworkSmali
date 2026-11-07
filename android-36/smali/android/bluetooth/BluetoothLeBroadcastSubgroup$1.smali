.class Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;-><init>()V

    .line 183
    .local v0, "builder":Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setCodecId(J)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    .line 184
    sget-object v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 185
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 184
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setCodecSpecificConfig(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    .line 186
    sget-object v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 186
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastChannel;>;"
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 191
    .local v3, "channel":Landroid/bluetooth/BluetoothLeBroadcastChannel;
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->addChannel(Landroid/bluetooth/BluetoothLeBroadcastChannel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    .line 192
    .end local v3    # "channel":Landroid/bluetooth/BluetoothLeBroadcastChannel;
    goto :goto_30

    .line 193
    :cond_40
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object v2

    return-object v2
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

    .line 180
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .registers 3
    .param p1, "size"    # I

    .line 197
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

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

    .line 180
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object p1

    return-object p1
.end method
