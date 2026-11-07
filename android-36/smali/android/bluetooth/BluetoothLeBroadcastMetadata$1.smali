.class Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 457
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>()V

    .line 458
    .local v0, "builder":Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .local v1, "sourceAddressType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .local v2, "deviceExist":I
    const/4 v3, 0x0

    .line 461
    .local v3, "sourceDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    .line 462
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 464
    :cond_1a
    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setSourceDevice(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setSourceAdvertisingSid(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPaSyncInterval(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setEncrypted(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 470
    .local v4, "codeLen":I
    const/4 v5, 0x0

    .line 471
    .local v5, "broadcastCode":[B
    const/4 v6, -0x1

    if-eq v4, v6, :cond_48

    .line 472
    new-array v5, v4, [B

    .line 473
    if-ltz v4, :cond_48

    .line 474
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 477
    :cond_48
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPresentationDelayMicros(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 479
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v6, "subgroups":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastSubgroup;>;"
    sget-object v7, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 481
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_60
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_70

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 482
    .local v8, "subgroup":Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->addSubgroup(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 483
    .end local v8    # "subgroup":Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    goto :goto_60

    .line 484
    :cond_70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setAudioConfigQuality(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 487
    sget-object v7, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 488
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 487
    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPublicBroadcastMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setRssi(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v7

    return-object v7
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

    .line 455
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .registers 3
    .param p1, "size"    # I

    .line 494
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastMetadata;

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

    .line 455
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    return-object p1
.end method
