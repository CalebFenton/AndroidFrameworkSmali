.class public abstract Landroid/bluetooth/IBluetoothVolumeControl$Stub;
.super Landroid/os/Binder;
.source "IBluetoothVolumeControl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothVolumeControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothVolumeControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAudioInputDescription:I = 0x1a

.field static final blacklist TRANSACTION_getAudioInputGainMode:I = 0x21

.field static final blacklist TRANSACTION_getAudioInputGainSetting:I = 0x1f

.field static final blacklist TRANSACTION_getAudioInputGainSettingMax:I = 0x19

.field static final blacklist TRANSACTION_getAudioInputGainSettingMin:I = 0x18

.field static final blacklist TRANSACTION_getAudioInputGainSettingUnit:I = 0x17

.field static final blacklist TRANSACTION_getAudioInputMute:I = 0x23

.field static final blacklist TRANSACTION_getAudioInputStatus:I = 0x1d

.field static final blacklist TRANSACTION_getAudioInputType:I = 0x1e

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x1

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x5

.field static final blacklist TRANSACTION_getConnectionState:I = 0x3

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x2

.field static final blacklist TRANSACTION_getGroupVolume:I = 0xa

.field static final blacklist TRANSACTION_getNumberOfAudioInputControlServices:I = 0x14

.field static final blacklist TRANSACTION_getNumberOfVolumeOffsetInstances:I = 0x7

.field static final blacklist TRANSACTION_isAudioInputDescriptionWritable:I = 0x1b

.field static final blacklist TRANSACTION_isVolumeOffsetAvailable:I = 0x6

.field static final blacklist TRANSACTION_mute:I = 0xd

.field static final blacklist TRANSACTION_muteGroup:I = 0xe

.field static final blacklist TRANSACTION_notifyNewRegisteredCallback:I = 0x13

.field static final blacklist TRANSACTION_registerAudioInputControlCallback:I = 0x15

.field static final blacklist TRANSACTION_registerCallback:I = 0x11

.field static final blacklist TRANSACTION_setAudioInputDescription:I = 0x1c

.field static final blacklist TRANSACTION_setAudioInputGainMode:I = 0x22

.field static final blacklist TRANSACTION_setAudioInputGainSetting:I = 0x20

.field static final blacklist TRANSACTION_setAudioInputMute:I = 0x24

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x4

.field static final blacklist TRANSACTION_setDeviceVolume:I = 0xc

.field static final blacklist TRANSACTION_setGroupActive:I = 0xb

.field static final blacklist TRANSACTION_setGroupVolume:I = 0x9

.field static final blacklist TRANSACTION_setVolumeOffset:I = 0x8

.field static final blacklist TRANSACTION_unmute:I = 0xf

.field static final blacklist TRANSACTION_unmuteGroup:I = 0x10

.field static final blacklist TRANSACTION_unregisterAudioInputControlCallback:I = 0x16

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 164
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 165
    const-string v0, "android.bluetooth.IBluetoothVolumeControl"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 173
    if-nez p0, :cond_4

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothVolumeControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 177
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothVolumeControl;

    if-eqz v1, :cond_14

    .line 178
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothVolumeControl;

    return-object v1

    .line 180
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothVolumeControl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothVolumeControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 189
    packed-switch p0, :pswitch_data_72

    .line 337
    const/4 v0, 0x0

    return-object v0

    .line 333
    :pswitch_5
    const-string v0, "setAudioInputMute"

    return-object v0

    .line 329
    :pswitch_8
    const-string v0, "getAudioInputMute"

    return-object v0

    .line 325
    :pswitch_b
    const-string v0, "setAudioInputGainMode"

    return-object v0

    .line 321
    :pswitch_e
    const-string v0, "getAudioInputGainMode"

    return-object v0

    .line 317
    :pswitch_11
    const-string v0, "setAudioInputGainSetting"

    return-object v0

    .line 313
    :pswitch_14
    const-string v0, "getAudioInputGainSetting"

    return-object v0

    .line 309
    :pswitch_17
    const-string v0, "getAudioInputType"

    return-object v0

    .line 305
    :pswitch_1a
    const-string v0, "getAudioInputStatus"

    return-object v0

    .line 301
    :pswitch_1d
    const-string v0, "setAudioInputDescription"

    return-object v0

    .line 297
    :pswitch_20
    const-string v0, "isAudioInputDescriptionWritable"

    return-object v0

    .line 293
    :pswitch_23
    const-string v0, "getAudioInputDescription"

    return-object v0

    .line 289
    :pswitch_26
    const-string v0, "getAudioInputGainSettingMax"

    return-object v0

    .line 285
    :pswitch_29
    const-string v0, "getAudioInputGainSettingMin"

    return-object v0

    .line 281
    :pswitch_2c
    const-string v0, "getAudioInputGainSettingUnit"

    return-object v0

    .line 277
    :pswitch_2f
    const-string v0, "unregisterAudioInputControlCallback"

    return-object v0

    .line 273
    :pswitch_32
    const-string v0, "registerAudioInputControlCallback"

    return-object v0

    .line 269
    :pswitch_35
    const-string v0, "getNumberOfAudioInputControlServices"

    return-object v0

    .line 265
    :pswitch_38
    const-string v0, "notifyNewRegisteredCallback"

    return-object v0

    .line 261
    :pswitch_3b
    const-string v0, "unregisterCallback"

    return-object v0

    .line 257
    :pswitch_3e
    const-string v0, "registerCallback"

    return-object v0

    .line 253
    :pswitch_41
    const-string v0, "unmuteGroup"

    return-object v0

    .line 249
    :pswitch_44
    const-string v0, "unmute"

    return-object v0

    .line 245
    :pswitch_47
    const-string v0, "muteGroup"

    return-object v0

    .line 241
    :pswitch_4a
    const-string v0, "mute"

    return-object v0

    .line 237
    :pswitch_4d
    const-string v0, "setDeviceVolume"

    return-object v0

    .line 233
    :pswitch_50
    const-string v0, "setGroupActive"

    return-object v0

    .line 229
    :pswitch_53
    const-string v0, "getGroupVolume"

    return-object v0

    .line 225
    :pswitch_56
    const-string v0, "setGroupVolume"

    return-object v0

    .line 221
    :pswitch_59
    const-string v0, "setVolumeOffset"

    return-object v0

    .line 217
    :pswitch_5c
    const-string v0, "getNumberOfVolumeOffsetInstances"

    return-object v0

    .line 213
    :pswitch_5f
    const-string v0, "isVolumeOffsetAvailable"

    return-object v0

    .line 209
    :pswitch_62
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 205
    :pswitch_65
    const-string v0, "setConnectionPolicy"

    return-object v0

    .line 201
    :pswitch_68
    const-string v0, "getConnectionState"

    return-object v0

    .line 197
    :pswitch_6b
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 193
    :pswitch_6e
    const-string v0, "getConnectedDevices"

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

    .line 184
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1570
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 344
    invoke-static {p1}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    const-string v0, "android.bluetooth.IBluetoothVolumeControl"

    .line 349
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 350
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 353
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    return v1

    .line 356
    :cond_16
    packed-switch p1, :pswitch_data_49e

    .line 835
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 820
    :pswitch_1e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 822
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 824
    .local v3, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 826
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 827
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setAudioInputMute(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v6

    .line 829
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    goto/16 :goto_49d

    .line 806
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_45
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 808
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 810
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 811
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputMute(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 813
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    goto/16 :goto_49d

    .line 790
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_68
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 792
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 794
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 796
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 797
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setAudioInputGainMode(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v6

    .line 799
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 801
    goto/16 :goto_49d

    .line 776
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_8f
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 778
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 780
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 781
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputGainMode(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 783
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    goto/16 :goto_49d

    .line 760
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_b2
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 762
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 764
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 766
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 767
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setAudioInputGainSetting(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v6

    .line 769
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 771
    goto/16 :goto_49d

    .line 746
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_d9
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 748
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 750
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 751
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputGainSetting(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 753
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    goto/16 :goto_49d

    .line 732
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_fc
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 734
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 736
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 737
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputType(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 739
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    goto/16 :goto_49d

    .line 718
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_11f
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 720
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 722
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 723
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputStatus(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 725
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    goto/16 :goto_49d

    .line 702
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_142
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 704
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 706
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 708
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setAudioInputDescription(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    move-result v6

    .line 711
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 713
    goto/16 :goto_49d

    .line 688
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_169
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 690
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 692
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 693
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->isAudioInputDescriptionWritable(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    .line 695
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    goto/16 :goto_49d

    .line 674
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_18c
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 676
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 678
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 679
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputDescription(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    goto/16 :goto_49d

    .line 660
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_1af
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 662
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 664
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 665
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputGainSettingMax(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 667
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    goto/16 :goto_49d

    .line 646
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_1d2
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 648
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 650
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 651
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputGainSettingMin(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 653
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    goto/16 :goto_49d

    .line 632
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_1f5
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 634
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 636
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 637
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getAudioInputGainSettingUnit(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    .line 639
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    goto/16 :goto_49d

    .line 617
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_218
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 619
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 621
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 623
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IAudioInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAudioInputCallback;

    move-result-object v5

    .line 624
    .local v5, "_arg3":Landroid/bluetooth/IAudioInputCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->unregisterAudioInputControlCallback(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IAudioInputCallback;)V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    goto/16 :goto_49d

    .line 602
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/bluetooth/IAudioInputCallback;
    :pswitch_23f
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 604
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 606
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 608
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IAudioInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAudioInputCallback;

    move-result-object v5

    .line 609
    .restart local v5    # "_arg3":Landroid/bluetooth/IAudioInputCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->registerAudioInputControlCallback(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IAudioInputCallback;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_49d

    .line 590
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/bluetooth/IAudioInputCallback;
    :pswitch_266
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 592
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 593
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getNumberOfAudioInputControlServices(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 595
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    goto/16 :goto_49d

    .line 579
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":I
    :pswitch_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControlCallback;

    move-result-object v2

    .line 581
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothVolumeControlCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 582
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->notifyNewRegisteredCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_49d

    .line 568
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothVolumeControlCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_2a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControlCallback;

    move-result-object v2

    .line 570
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothVolumeControlCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 571
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    goto/16 :goto_49d

    .line 557
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothVolumeControlCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_2bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControlCallback;

    move-result-object v2

    .line 559
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothVolumeControlCallback;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 560
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_49d

    .line 546
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothVolumeControlCallback;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 549
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->unmuteGroup(ILandroid/content/AttributionSource;)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    goto/16 :goto_49d

    .line 535
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_2ed
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 537
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 538
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->unmute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    goto/16 :goto_49d

    .line 524
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 526
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 527
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->muteGroup(ILandroid/content/AttributionSource;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto/16 :goto_49d

    .line 513
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_31f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 515
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 516
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->mute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    goto/16 :goto_49d

    .line 498
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_33a
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 500
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 504
    .local v4, "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 505
    .local v5, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZLandroid/content/AttributionSource;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_49d

    .line 485
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_35d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 489
    .local v3, "_arg1":Z
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 490
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setGroupActive(IZLandroid/content/AttributionSource;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_49d

    .line 473
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 476
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getGroupVolume(ILandroid/content/AttributionSource;)I

    move-result v4

    .line 478
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    goto/16 :goto_49d

    .line 460
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 464
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 465
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setGroupVolume(IILandroid/content/AttributionSource;)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_49d

    .line 445
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_3ae
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 447
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 449
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 451
    .local v4, "_arg2":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 452
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setVolumeOffset(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto/16 :goto_49d

    .line 433
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_3d1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 435
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 436
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getNumberOfVolumeOffsetInstances(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 438
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    goto/16 :goto_49d

    .line 421
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_3f0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 423
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 424
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->isVolumeOffsetAvailable(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 426
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 428
    goto/16 :goto_49d

    .line 409
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_40f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 411
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 412
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 414
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    goto :goto_49d

    .line 395
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_42d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 397
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 399
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 400
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v5

    .line 402
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 404
    goto :goto_49d

    .line 383
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_44f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 385
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 386
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 388
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    goto :goto_49d

    .line 371
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_46d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 373
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 374
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 376
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-static {p3, v4, v1}, Landroid/bluetooth/IBluetoothVolumeControl$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 378
    goto :goto_49d

    .line 361
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_487
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 362
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 364
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-static {p3, v3, v1}, Landroid/bluetooth/IBluetoothVolumeControl$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 366
    nop

    .line 838
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_49d
    return v1

    :pswitch_data_49e
    .packed-switch 0x1
        :pswitch_487
        :pswitch_46d
        :pswitch_44f
        :pswitch_42d
        :pswitch_40f
        :pswitch_3f0
        :pswitch_3d1
        :pswitch_3ae
        :pswitch_393
        :pswitch_378
        :pswitch_35d
        :pswitch_33a
        :pswitch_31f
        :pswitch_308
        :pswitch_2ed
        :pswitch_2d6
        :pswitch_2bb
        :pswitch_2a0
        :pswitch_285
        :pswitch_266
        :pswitch_23f
        :pswitch_218
        :pswitch_1f5
        :pswitch_1d2
        :pswitch_1af
        :pswitch_18c
        :pswitch_169
        :pswitch_142
        :pswitch_11f
        :pswitch_fc
        :pswitch_d9
        :pswitch_b2
        :pswitch_8f
        :pswitch_68
        :pswitch_45
        :pswitch_1e
    .end packed-switch
.end method
