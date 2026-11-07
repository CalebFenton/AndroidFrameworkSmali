.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final blacklist TRANSACTION_addService:I = 0x1d

.field static final blacklist TRANSACTION_beginReliableWrite:I = 0x11

.field static final blacklist TRANSACTION_clearServices:I = 0x1f

.field static final blacklist TRANSACTION_clientConnect:I = 0x4

.field static final blacklist TRANSACTION_clientDisconnect:I = 0x5

.field static final blacklist TRANSACTION_clientReadPhy:I = 0x7

.field static final blacklist TRANSACTION_clientSetPreferredPhy:I = 0x6

.field static final blacklist TRANSACTION_configureMTU:I = 0x14

.field static final blacklist TRANSACTION_connectionParameterUpdate:I = 0x15

.field static final blacklist TRANSACTION_disconnectAll:I = 0x22

.field static final blacklist TRANSACTION_discoverServiceByUuid:I = 0xa

.field static final blacklist TRANSACTION_discoverServices:I = 0x9

.field static final blacklist TRANSACTION_endReliableWrite:I = 0x12

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final blacklist TRANSACTION_leConnectionUpdate:I = 0x16

.field static final blacklist TRANSACTION_readCharacteristic:I = 0xb

.field static final blacklist TRANSACTION_readDescriptor:I = 0xe

.field static final blacklist TRANSACTION_readRemoteRssi:I = 0x13

.field static final blacklist TRANSACTION_readUsingCharacteristicUuid:I = 0xc

.field static final blacklist TRANSACTION_refreshDevice:I = 0x8

.field static final blacklist TRANSACTION_registerClient:I = 0x2

.field static final blacklist TRANSACTION_registerForNotification:I = 0x10

.field static final blacklist TRANSACTION_registerServer:I = 0x17

.field static final blacklist TRANSACTION_removeService:I = 0x1e

.field static final blacklist TRANSACTION_sendNotification:I = 0x21

.field static final blacklist TRANSACTION_sendResponse:I = 0x20

.field static final blacklist TRANSACTION_serverConnect:I = 0x19

.field static final blacklist TRANSACTION_serverDisconnect:I = 0x1a

.field static final blacklist TRANSACTION_serverReadPhy:I = 0x1c

.field static final blacklist TRANSACTION_serverSetPreferredPhy:I = 0x1b

.field static final blacklist TRANSACTION_subrateModeRequest:I = 0x23

.field static final blacklist TRANSACTION_unregisterClient:I = 0x3

.field static final blacklist TRANSACTION_unregisterServer:I = 0x18

.field static final blacklist TRANSACTION_writeCharacteristic:I = 0xd

.field static final blacklist TRANSACTION_writeDescriptor:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGatt;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 165
    packed-switch p0, :pswitch_data_6e

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 305
    :pswitch_5
    const-string v0, "subrateModeRequest"

    return-object v0

    .line 301
    :pswitch_8
    const-string v0, "disconnectAll"

    return-object v0

    .line 297
    :pswitch_b
    const-string v0, "sendNotification"

    return-object v0

    .line 293
    :pswitch_e
    const-string v0, "sendResponse"

    return-object v0

    .line 289
    :pswitch_11
    const-string v0, "clearServices"

    return-object v0

    .line 285
    :pswitch_14
    const-string v0, "removeService"

    return-object v0

    .line 281
    :pswitch_17
    const-string v0, "addService"

    return-object v0

    .line 277
    :pswitch_1a
    const-string v0, "serverReadPhy"

    return-object v0

    .line 273
    :pswitch_1d
    const-string v0, "serverSetPreferredPhy"

    return-object v0

    .line 269
    :pswitch_20
    const-string v0, "serverDisconnect"

    return-object v0

    .line 265
    :pswitch_23
    const-string v0, "serverConnect"

    return-object v0

    .line 261
    :pswitch_26
    const-string v0, "unregisterServer"

    return-object v0

    .line 257
    :pswitch_29
    const-string v0, "registerServer"

    return-object v0

    .line 253
    :pswitch_2c
    const-string v0, "leConnectionUpdate"

    return-object v0

    .line 249
    :pswitch_2f
    const-string v0, "connectionParameterUpdate"

    return-object v0

    .line 245
    :pswitch_32
    const-string v0, "configureMTU"

    return-object v0

    .line 241
    :pswitch_35
    const-string v0, "readRemoteRssi"

    return-object v0

    .line 237
    :pswitch_38
    const-string v0, "endReliableWrite"

    return-object v0

    .line 233
    :pswitch_3b
    const-string v0, "beginReliableWrite"

    return-object v0

    .line 229
    :pswitch_3e
    const-string v0, "registerForNotification"

    return-object v0

    .line 225
    :pswitch_41
    const-string v0, "writeDescriptor"

    return-object v0

    .line 221
    :pswitch_44
    const-string v0, "readDescriptor"

    return-object v0

    .line 217
    :pswitch_47
    const-string v0, "writeCharacteristic"

    return-object v0

    .line 213
    :pswitch_4a
    const-string v0, "readUsingCharacteristicUuid"

    return-object v0

    .line 209
    :pswitch_4d
    const-string v0, "readCharacteristic"

    return-object v0

    .line 205
    :pswitch_50
    const-string v0, "discoverServiceByUuid"

    return-object v0

    .line 201
    :pswitch_53
    const-string v0, "discoverServices"

    return-object v0

    .line 197
    :pswitch_56
    const-string v0, "refreshDevice"

    return-object v0

    .line 193
    :pswitch_59
    const-string v0, "clientReadPhy"

    return-object v0

    .line 189
    :pswitch_5c
    const-string v0, "clientSetPreferredPhy"

    return-object v0

    .line 185
    :pswitch_5f
    const-string v0, "clientDisconnect"

    return-object v0

    .line 181
    :pswitch_62
    const-string v0, "clientConnect"

    return-object v0

    .line 177
    :pswitch_65
    const-string v0, "unregisterClient"

    return-object v0

    .line 173
    :pswitch_68
    const-string v0, "registerClient"

    return-object v0

    .line 169
    :pswitch_6b
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
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

    .line 160
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1598
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 316
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.bluetooth.IBluetoothGatt"

    .line 321
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v1, 0xffffff

    if-gt v10, v1, :cond_13

    .line 322
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    :cond_13
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 325
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    return v14

    .line 328
    :cond_1c
    packed-switch v10, :pswitch_data_4ce

    .line 882
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 867
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 869
    .local v1, "_arg0":I
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 871
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 873
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 874
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->subrateModeRequest(ILandroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)I

    move-result v5

    .line 876
    .local v5, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    goto/16 :goto_4cd

    .line 858
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_4b
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 859
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll(Landroid/content/AttributionSource;)V

    .line 861
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    goto/16 :goto_4cd

    .line 838
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    :pswitch_5e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 844
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 846
    .local v4, "_arg3":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 848
    .local v5, "_arg4":[B
    sget-object v6, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSource;

    .line 849
    .local v6, "_arg5":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IZ[BLandroid/content/AttributionSource;)I

    move-result v7

    .line 851
    .local v7, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    goto/16 :goto_4cd

    .line 817
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":Landroid/content/AttributionSource;
    .end local v7    # "_result":I
    :pswitch_8a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 819
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 821
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 823
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 825
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 827
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 829
    .local v6, "_arg5":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/AttributionSource;

    .line 830
    .local v7, "_arg6":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[BLandroid/content/AttributionSource;)V

    .line 832
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    goto/16 :goto_4cd

    .line 806
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":Landroid/content/AttributionSource;
    :pswitch_b7
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 808
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 809
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(ILandroid/content/AttributionSource;)V

    .line 811
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    goto/16 :goto_4cd

    .line 793
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_ce
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 798
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IILandroid/content/AttributionSource;)V

    .line 800
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    goto/16 :goto_4cd

    .line 780
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_e9
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 782
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 784
    .local v2, "_arg1":Landroid/bluetooth/BluetoothGattService;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 785
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->addService(ILandroid/bluetooth/BluetoothGattService;Landroid/content/AttributionSource;)V

    .line 787
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    goto/16 :goto_4cd

    .line 767
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_108
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 772
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 774
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_4cd

    .line 748
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_123
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 750
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 752
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 754
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 756
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 758
    .restart local v5    # "_arg4":I
    sget-object v6, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSource;

    .line 759
    .local v6, "_arg5":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;)V

    .line 761
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto/16 :goto_4cd

    .line 735
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/AttributionSource;
    :pswitch_14b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 739
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 740
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 742
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    goto/16 :goto_4cd

    .line 716
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_166
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 718
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 720
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 722
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 724
    .local v4, "_arg3":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 726
    .restart local v5    # "_arg4":I
    sget-object v6, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSource;

    .line 727
    .restart local v6    # "_arg5":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;IZILandroid/content/AttributionSource;)V

    .line 729
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_4cd

    .line 705
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/AttributionSource;
    :pswitch_18e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 707
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 708
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(ILandroid/content/AttributionSource;)V

    .line 710
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    goto/16 :goto_4cd

    .line 690
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_1a5
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 692
    .local v1, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    .line 694
    .local v2, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 696
    .local v3, "_arg2":Z
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 697
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;ZLandroid/content/AttributionSource;)V

    .line 699
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_4cd

    .line 665
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_1cc
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 667
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 671
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 673
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 675
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 677
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 679
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 681
    .local v8, "_arg7":I
    sget-object v9, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/AttributionSource;

    .line 682
    .local v9, "_arg8":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/IBluetoothGatt$Stub;->leConnectionUpdate(ILjava/lang/String;IIIIIILandroid/content/AttributionSource;)V

    .line 684
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_4cd

    .line 650
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/content/AttributionSource;
    :pswitch_200
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 654
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 656
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 657
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;ILandroid/content/AttributionSource;)V

    .line 659
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    goto/16 :goto_4cd

    .line 635
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_21f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 637
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 639
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 641
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 642
    .restart local v4    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;ILandroid/content/AttributionSource;)V

    .line 644
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_4cd

    .line 622
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_23e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 624
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 626
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 627
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 629
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto/16 :goto_4cd

    .line 607
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_259
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 613
    .local v3, "_arg2":Z
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 614
    .restart local v4    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;)V

    .line 616
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    goto/16 :goto_4cd

    .line 594
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_278
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 599
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 601
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_4cd

    .line 577
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_293
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 579
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 585
    .local v4, "_arg3":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 586
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IZLandroid/content/AttributionSource;)V

    .line 588
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto/16 :goto_4cd

    .line 557
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_2b7
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 565
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 567
    .local v5, "_arg4":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/AttributionSource;

    .line 568
    .local v6, "_arg5":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;)I

    move-result v7

    .line 570
    .local v7, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    goto/16 :goto_4cd

    .line 540
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":Landroid/content/AttributionSource;
    .end local v7    # "_result":I
    :pswitch_2e4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 546
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 548
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/AttributionSource;

    .line 549
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;)V

    .line 551
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    goto/16 :goto_4cd

    .line 518
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_309
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 526
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 528
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 530
    .local v6, "_arg5":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/AttributionSource;

    .line 531
    .local v7, "_arg6":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;)I

    move-result v8

    .line 533
    .local v8, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    goto/16 :goto_4cd

    .line 497
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":Landroid/content/AttributionSource;
    .end local v8    # "_result":I
    :pswitch_33a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelUuid;

    .line 503
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 505
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 507
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 509
    .local v6, "_arg5":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/AttributionSource;

    .line 510
    .restart local v7    # "_arg6":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;IIILandroid/content/AttributionSource;)V

    .line 512
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_4cd

    .line 480
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/content/AttributionSource;
    :pswitch_36c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 484
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 486
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 488
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/AttributionSource;

    .line 489
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;)V

    .line 491
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_4cd

    .line 465
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_391
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 471
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 472
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)V

    .line 474
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto/16 :goto_4cd

    .line 452
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_3b4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 456
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 457
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 459
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    goto/16 :goto_4cd

    .line 439
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_3cf
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 444
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 446
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    goto/16 :goto_4cd

    .line 426
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_3ea
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 431
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 433
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_4cd

    .line 407
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_405
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 413
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 415
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 417
    .local v5, "_arg4":I
    sget-object v6, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSource;

    .line 418
    .local v6, "_arg5":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;)V

    .line 420
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_4cd

    .line 394
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/AttributionSource;
    :pswitch_42d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 399
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 401
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_4cd

    .line 371
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_448
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 377
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 379
    .local v4, "_arg3":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 381
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 383
    .local v6, "_arg5":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 385
    .local v7, "_arg6":I
    sget-object v8, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/AttributionSource;

    .line 386
    .local v8, "_arg7":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;IZIZILandroid/content/AttributionSource;)V

    .line 388
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto :goto_4cd

    .line 360
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/content/AttributionSource;
    :pswitch_477
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 363
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(ILandroid/content/AttributionSource;)V

    .line 365
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto :goto_4cd

    .line 345
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_48d
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 347
    .local v1, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v2

    .line 349
    .local v2, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 351
    .local v3, "_arg2":Z
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 352
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;)V

    .line 354
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto :goto_4cd

    .line 333
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_4b3
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 335
    .local v1, "_arg0":[I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 336
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 338
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-static {v12, v3, v14}, Landroid/bluetooth/IBluetoothGatt$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 340
    nop

    .line 885
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_4cd
    return v14

    :pswitch_data_4ce
    .packed-switch 0x1
        :pswitch_4b3
        :pswitch_48d
        :pswitch_477
        :pswitch_448
        :pswitch_42d
        :pswitch_405
        :pswitch_3ea
        :pswitch_3cf
        :pswitch_3b4
        :pswitch_391
        :pswitch_36c
        :pswitch_33a
        :pswitch_309
        :pswitch_2e4
        :pswitch_2b7
        :pswitch_293
        :pswitch_278
        :pswitch_259
        :pswitch_23e
        :pswitch_21f
        :pswitch_200
        :pswitch_1cc
        :pswitch_1a5
        :pswitch_18e
        :pswitch_166
        :pswitch_14b
        :pswitch_123
        :pswitch_108
        :pswitch_e9
        :pswitch_ce
        :pswitch_b7
        :pswitch_8a
        :pswitch_5e
        :pswitch_4b
        :pswitch_24
    .end packed-switch
.end method
