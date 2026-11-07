.class public abstract Landroid/bluetooth/IBluetoothLeAudio$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeAudio.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeAudio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeAudio$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getActiveDevices:I = 0x7

.field static final blacklist TRANSACTION_getAllBroadcastMetadata:I = 0x20

.field static final blacklist TRANSACTION_getAudioLocation:I = 0x18

.field static final blacklist TRANSACTION_getBroadcastToUnicastFallbackGroup:I = 0xe

.field static final blacklist TRANSACTION_getCodecStatus:I = 0xb

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectedGroupLeadDevice:I = 0xa

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x9

.field static final blacklist TRANSACTION_getConnectionState:I = 0x5

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final blacklist TRANSACTION_getGroupId:I = 0x14

.field static final blacklist TRANSACTION_getMaximumNumberOfBroadcasts:I = 0x21

.field static final blacklist TRANSACTION_getMaximumStreamsPerBroadcast:I = 0x22

.field static final blacklist TRANSACTION_getMaximumSubgroupsPerBroadcast:I = 0x23

.field static final blacklist TRANSACTION_groupAddNode:I = 0x16

.field static final blacklist TRANSACTION_groupRemoveNode:I = 0x17

.field static final blacklist TRANSACTION_isBroadcastActive:I = 0x24

.field static final blacklist TRANSACTION_isInbandRingtoneEnabled:I = 0x19

.field static final blacklist TRANSACTION_isPlaying:I = 0x1f

.field static final blacklist TRANSACTION_registerCallback:I = 0xf

.field static final blacklist TRANSACTION_registerLeBroadcastCallback:I = 0x1a

.field static final blacklist TRANSACTION_setActiveDevice:I = 0x6

.field static final blacklist TRANSACTION_setBroadcastToUnicastFallbackGroup:I = 0xd

.field static final blacklist TRANSACTION_setCcidInformation:I = 0x11

.field static final blacklist TRANSACTION_setCodecConfigPreference:I = 0xc

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x8

.field static final blacklist TRANSACTION_setInCall:I = 0x12

.field static final blacklist TRANSACTION_setInactiveForHfpHandover:I = 0x13

.field static final blacklist TRANSACTION_setVolume:I = 0x15

.field static final blacklist TRANSACTION_startBroadcast:I = 0x1c

.field static final blacklist TRANSACTION_stopBroadcast:I = 0x1d

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x10

.field static final blacklist TRANSACTION_unregisterLeBroadcastCallback:I = 0x1b

.field static final blacklist TRANSACTION_updateBroadcast:I = 0x1e


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 167
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 168
    const-string v0, "android.bluetooth.IBluetoothLeAudio"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudio;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 176
    if-nez p0, :cond_4

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeAudio"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 180
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeAudio;

    if-eqz v1, :cond_14

    .line 181
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeAudio;

    return-object v1

    .line 183
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeAudio$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeAudio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 192
    packed-switch p0, :pswitch_data_72

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 336
    :pswitch_5
    const-string v0, "isBroadcastActive"

    return-object v0

    .line 332
    :pswitch_8
    const-string v0, "getMaximumSubgroupsPerBroadcast"

    return-object v0

    .line 328
    :pswitch_b
    const-string v0, "getMaximumStreamsPerBroadcast"

    return-object v0

    .line 324
    :pswitch_e
    const-string v0, "getMaximumNumberOfBroadcasts"

    return-object v0

    .line 320
    :pswitch_11
    const-string v0, "getAllBroadcastMetadata"

    return-object v0

    .line 316
    :pswitch_14
    const-string v0, "isPlaying"

    return-object v0

    .line 312
    :pswitch_17
    const-string v0, "updateBroadcast"

    return-object v0

    .line 308
    :pswitch_1a
    const-string v0, "stopBroadcast"

    return-object v0

    .line 304
    :pswitch_1d
    const-string v0, "startBroadcast"

    return-object v0

    .line 300
    :pswitch_20
    const-string v0, "unregisterLeBroadcastCallback"

    return-object v0

    .line 296
    :pswitch_23
    const-string v0, "registerLeBroadcastCallback"

    return-object v0

    .line 292
    :pswitch_26
    const-string v0, "isInbandRingtoneEnabled"

    return-object v0

    .line 288
    :pswitch_29
    const-string v0, "getAudioLocation"

    return-object v0

    .line 284
    :pswitch_2c
    const-string v0, "groupRemoveNode"

    return-object v0

    .line 280
    :pswitch_2f
    const-string v0, "groupAddNode"

    return-object v0

    .line 276
    :pswitch_32
    const-string v0, "setVolume"

    return-object v0

    .line 272
    :pswitch_35
    const-string v0, "getGroupId"

    return-object v0

    .line 268
    :pswitch_38
    const-string v0, "setInactiveForHfpHandover"

    return-object v0

    .line 264
    :pswitch_3b
    const-string v0, "setInCall"

    return-object v0

    .line 260
    :pswitch_3e
    const-string v0, "setCcidInformation"

    return-object v0

    .line 256
    :pswitch_41
    const-string v0, "unregisterCallback"

    return-object v0

    .line 252
    :pswitch_44
    const-string v0, "registerCallback"

    return-object v0

    .line 248
    :pswitch_47
    const-string v0, "getBroadcastToUnicastFallbackGroup"

    return-object v0

    .line 244
    :pswitch_4a
    const-string v0, "setBroadcastToUnicastFallbackGroup"

    return-object v0

    .line 240
    :pswitch_4d
    const-string v0, "setCodecConfigPreference"

    return-object v0

    .line 236
    :pswitch_50
    const-string v0, "getCodecStatus"

    return-object v0

    .line 232
    :pswitch_53
    const-string v0, "getConnectedGroupLeadDevice"

    return-object v0

    .line 228
    :pswitch_56
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 224
    :pswitch_59
    const-string v0, "setConnectionPolicy"

    return-object v0

    .line 220
    :pswitch_5c
    const-string v0, "getActiveDevices"

    return-object v0

    .line 216
    :pswitch_5f
    const-string v0, "setActiveDevice"

    return-object v0

    .line 212
    :pswitch_62
    const-string v0, "getConnectionState"

    return-object v0

    .line 208
    :pswitch_65
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 204
    :pswitch_68
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 200
    :pswitch_6b
    const-string v0, "disconnect"

    return-object v0

    .line 196
    :pswitch_6e
    const-string v0, "connect"

    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 187
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1468
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 347
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    const-string v0, "android.bluetooth.IBluetoothLeAudio"

    .line 352
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 353
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 356
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    return v1

    .line 359
    :cond_16
    packed-switch p1, :pswitch_data_3d8

    .line 770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 761
    :pswitch_1e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 762
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->isBroadcastActive(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 764
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 766
    goto/16 :goto_3d7

    .line 753
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_35
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getMaximumSubgroupsPerBroadcast()I

    move-result v2

    .line 754
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    goto/16 :goto_3d7

    .line 746
    .end local v2    # "_result":I
    :pswitch_41
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getMaximumStreamsPerBroadcast()I

    move-result v2

    .line 747
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    goto/16 :goto_3d7

    .line 739
    .end local v2    # "_result":I
    :pswitch_4d
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getMaximumNumberOfBroadcasts()I

    move-result v2

    .line 740
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    goto/16 :goto_3d7

    .line 730
    .end local v2    # "_result":I
    :pswitch_59
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 731
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getAllBroadcastMetadata(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 733
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastMetadata;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-static {p3, v3, v1}, Landroid/bluetooth/IBluetoothLeAudio$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 735
    goto/16 :goto_3d7

    .line 718
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastMetadata;>;"
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 720
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 721
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->isPlaying(ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 723
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    goto/16 :goto_3d7

    .line 705
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 707
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastSettings;

    .line 709
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeBroadcastSettings;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 710
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->updateBroadcast(ILandroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_3d7

    .line 694
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 696
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 697
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->stopBroadcast(ILandroid/content/AttributionSource;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_3d7

    .line 683
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_c1
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastSettings;

    .line 685
    .local v2, "_arg0":Landroid/bluetooth/BluetoothLeBroadcastSettings;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 686
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_3d7

    .line 672
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    move-result-object v2

    .line 674
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 675
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->unregisterLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    goto/16 :goto_3d7

    .line 661
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    move-result-object v2

    .line 663
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 664
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    goto/16 :goto_3d7

    .line 649
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_112
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 651
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 652
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->isInbandRingtoneEnabled(Landroid/content/AttributionSource;I)Z

    move-result v4

    .line 654
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 656
    goto/16 :goto_3d7

    .line 637
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 639
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 640
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 642
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    goto/16 :goto_3d7

    .line 623
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 625
    .local v2, "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 627
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 628
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 630
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_3d7

    .line 609
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 613
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 614
    .restart local v4    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->groupAddNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 616
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 618
    goto/16 :goto_3d7

    .line 599
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 602
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setVolume(ILandroid/content/AttributionSource;)V

    .line 604
    goto/16 :goto_3d7

    .line 587
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_1a6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 589
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 590
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 592
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    goto/16 :goto_3d7

    .line 576
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_1c5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 578
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 579
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setInactiveForHfpHandover(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_3d7

    .line 565
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 567
    .local v2, "_arg0":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 568
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setInCall(ZLandroid/content/AttributionSource;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto/16 :goto_3d7

    .line 550
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_1f7
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 552
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 556
    .local v4, "_arg2":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 557
    .local v5, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setCcidInformation(Landroid/os/ParcelUuid;IILandroid/content/AttributionSource;)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_3d7

    .line 540
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudioCallback;

    move-result-object v2

    .line 542
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothLeAudioCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 543
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;)V

    .line 545
    goto/16 :goto_3d7

    .line 530
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeAudioCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudioCallback;

    move-result-object v2

    .line 532
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeAudioCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 533
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;)V

    .line 535
    goto/16 :goto_3d7

    .line 520
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeAudioCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_24a
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 521
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getBroadcastToUnicastFallbackGroup(Landroid/content/AttributionSource;)I

    move-result v3

    .line 523
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    goto/16 :goto_3d7

    .line 509
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 511
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 512
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setBroadcastToUnicastFallbackGroup(ILandroid/content/AttributionSource;)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    goto/16 :goto_3d7

    .line 494
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 496
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 498
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    sget-object v4, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 500
    .local v4, "_arg2":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 501
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setCodecConfigPreference(ILandroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/content/AttributionSource;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_3d7

    .line 482
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_29f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 485
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getCodecStatus(ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v4

    .line 487
    .local v4, "_result":Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 489
    goto/16 :goto_3d7

    .line 470
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    :pswitch_2ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 473
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getConnectedGroupLeadDevice(ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 475
    .local v4, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 477
    goto/16 :goto_3d7

    .line 458
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2d5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 460
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 461
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 463
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    goto/16 :goto_3d7

    .line 444
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_2f4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 446
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 448
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 449
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v5

    .line 451
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 453
    goto/16 :goto_3d7

    .line 434
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_317
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 435
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getActiveDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 437
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-static {p3, v3, v1}, Landroid/bluetooth/IBluetoothLeAudio$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 439
    goto/16 :goto_3d7

    .line 422
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_32e
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 424
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 425
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 427
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 429
    goto/16 :goto_3d7

    .line 410
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_34d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 412
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 413
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 415
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    goto :goto_3d7

    .line 398
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_36b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 400
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 401
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 403
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-static {p3, v4, v1}, Landroid/bluetooth/IBluetoothLeAudio$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 405
    goto :goto_3d7

    .line 388
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_385
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 389
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 391
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-static {p3, v3, v1}, Landroid/bluetooth/IBluetoothLeAudio$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 393
    goto :goto_3d7

    .line 376
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_39b
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 378
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 379
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 381
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 383
    goto :goto_3d7

    .line 364
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_3b9
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 366
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 367
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 369
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    nop

    .line 773
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :goto_3d7
    return v1

    :pswitch_data_3d8
    .packed-switch 0x1
        :pswitch_3b9
        :pswitch_39b
        :pswitch_385
        :pswitch_36b
        :pswitch_34d
        :pswitch_32e
        :pswitch_317
        :pswitch_2f4
        :pswitch_2d5
        :pswitch_2ba
        :pswitch_29f
        :pswitch_278
        :pswitch_261
        :pswitch_24a
        :pswitch_232
        :pswitch_21a
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1c5
        :pswitch_1a6
        :pswitch_192
        :pswitch_16f
        :pswitch_14c
        :pswitch_12d
        :pswitch_112
        :pswitch_f7
        :pswitch_dc
        :pswitch_c1
        :pswitch_aa
        :pswitch_8b
        :pswitch_70
        :pswitch_59
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
