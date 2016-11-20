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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addCharacteristic:I = 0x1d

.field static final TRANSACTION_addDescriptor:I = 0x1e

.field static final TRANSACTION_addIncludedService:I = 0x1c

.field static final TRANSACTION_beginReliableWrite:I = 0x12

.field static final TRANSACTION_beginServiceDeclaration:I = 0x1b

.field static final TRANSACTION_clearServices:I = 0x21

.field static final TRANSACTION_clientConnect:I = 0x9

.field static final TRANSACTION_clientDisconnect:I = 0xa

.field static final TRANSACTION_configureMTU:I = 0x15

.field static final TRANSACTION_connectionParameterUpdate:I = 0x16

.field static final TRANSACTION_disconnectAll:I = 0x24

.field static final TRANSACTION_discoverServices:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x13

.field static final TRANSACTION_endServiceDeclaration:I = 0x1f

.field static final TRANSACTION_flushPendingBatchResults:I = 0x4

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_numHwTrackFiltersAvailable:I = 0x26

.field static final TRANSACTION_readCharacteristic:I = 0xd

.field static final TRANSACTION_readDescriptor:I = 0xf

.field static final TRANSACTION_readRemoteRssi:I = 0x14

.field static final TRANSACTION_refreshDevice:I = 0xb

.field static final TRANSACTION_registerClient:I = 0x7

.field static final TRANSACTION_registerForNotification:I = 0x11

.field static final TRANSACTION_registerServer:I = 0x17

.field static final TRANSACTION_removeService:I = 0x20

.field static final TRANSACTION_sendNotification:I = 0x23

.field static final TRANSACTION_sendResponse:I = 0x22

.field static final TRANSACTION_serverConnect:I = 0x19

.field static final TRANSACTION_serverDisconnect:I = 0x1a

.field static final TRANSACTION_startMultiAdvertising:I = 0x5

.field static final TRANSACTION_startScan:I = 0x2

.field static final TRANSACTION_stopMultiAdvertising:I = 0x6

.field static final TRANSACTION_stopScan:I = 0x3

.field static final TRANSACTION_unregAll:I = 0x25

.field static final TRANSACTION_unregisterClient:I = 0x8

.field static final TRANSACTION_unregisterServer:I = 0x18

.field static final TRANSACTION_writeCharacteristic:I = 0xe

.field static final TRANSACTION_writeDescriptor:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.bluetooth.IBluetoothGatt"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGatt"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 50
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 617
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1d
    move-result-object v37

    #@1e
    .line 54
    .local v37, "_arg0":[I
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v37

    #@22
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@25
    move-result-object v48

    #@26
    .line 55
    .local v48, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 56
    move-object/from16 v0, p3

    #@2b
    move-object/from16 v1, v48

    #@2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@30
    .line 57
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 61
    .end local v37    # "_arg0":[I
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v5

    #@3e
    .line 65
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    const/4 v6, 0x1

    #@45
    .line 67
    .local v6, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_1

    #@4b
    .line 68
    sget-object v4, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v7

    #@53
    check-cast v7, Landroid/bluetooth/le/ScanSettings;

    #@55
    .line 74
    :goto_1
    sget-object v4, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@5c
    move-result-object v8

    #@5d
    .line 76
    .local v8, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_2

    #@63
    .line 77
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6a
    move-result-object v9

    #@6b
    check-cast v9, Landroid/os/WorkSource;

    #@6d
    .line 83
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getClass()Ljava/lang/Class;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@74
    move-result-object v49

    #@75
    .line 84
    .local v49, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@77
    move-object/from16 v1, v49

    #@79
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@7c
    move-result-object v10

    #@7d
    .line 86
    .local v10, "_arg5":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@80
    move-result-object v11

    #@81
    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    #@83
    .line 87
    invoke-virtual/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    #@86
    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@89
    .line 89
    const/4 v4, 0x1

    #@8a
    return v4

    #@8b
    .line 65
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v10    # "_arg5":Ljava/util/List;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v49    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v6, 0x0

    #@8c
    .restart local v6    # "_arg1":Z
    goto :goto_0

    #@8d
    .line 71
    :cond_1
    const/4 v7, 0x0

    #@8e
    .local v7, "_arg2":Landroid/bluetooth/le/ScanSettings;
    goto :goto_1

    #@8f
    .line 80
    .end local v7    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    .restart local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :cond_2
    const/4 v9, 0x0

    #@90
    .local v9, "_arg4":Landroid/os/WorkSource;
    goto :goto_2

    #@91
    .line 93
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v9    # "_arg4":Landroid/os/WorkSource;
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v5

    #@9d
    .line 97
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v4

    #@a1
    if-eqz v4, :cond_3

    #@a3
    const/4 v6, 0x1

    #@a4
    .line 98
    .local v6, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    #@a9
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 100
    const/4 v4, 0x1

    #@ad
    return v4

    #@ae
    .line 97
    .end local v6    # "_arg1":Z
    :cond_3
    const/4 v6, 0x0

    #@af
    goto :goto_3

    #@b0
    .line 104
    .end local v5    # "_arg0":I
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@b3
    move-object/from16 v0, p2

    #@b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v5

    #@bc
    .line 108
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v4

    #@c0
    if-eqz v4, :cond_4

    #@c2
    const/4 v6, 0x1

    #@c3
    .line 109
    .restart local v6    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(IZ)V

    #@c8
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 111
    const/4 v4, 0x1

    #@cc
    return v4

    #@cd
    .line 108
    .end local v6    # "_arg1":Z
    :cond_4
    const/4 v6, 0x0

    #@ce
    goto :goto_4

    #@cf
    .line 115
    .end local v5    # "_arg0":I
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@da
    move-result v5

    #@db
    .line 119
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@de
    move-result v4

    #@df
    if-eqz v4, :cond_5

    #@e1
    .line 120
    sget-object v4, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e3
    move-object/from16 v0, p2

    #@e5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e8
    move-result-object v40

    #@e9
    check-cast v40, Landroid/bluetooth/le/AdvertiseData;

    #@eb
    .line 126
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee
    move-result v4

    #@ef
    if-eqz v4, :cond_6

    #@f1
    .line 127
    sget-object v4, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f8
    move-result-object v42

    #@f9
    check-cast v42, Landroid/bluetooth/le/AdvertiseData;

    #@fb
    .line 133
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v4

    #@ff
    if-eqz v4, :cond_7

    #@101
    .line 134
    sget-object v4, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@108
    move-result-object v44

    #@109
    check-cast v44, Landroid/bluetooth/le/AdvertiseSettings;

    #@10b
    .line 139
    :goto_7
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v40

    #@10f
    move-object/from16 v2, v42

    #@111
    move-object/from16 v3, v44

    #@113
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    #@116
    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@119
    .line 141
    const/4 v4, 0x1

    #@11a
    return v4

    #@11b
    .line 123
    :cond_5
    const/16 v40, 0x0

    #@11d
    .local v40, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_5

    #@11e
    .line 130
    .end local v40    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :cond_6
    const/16 v42, 0x0

    #@120
    .local v42, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_6

    #@121
    .line 137
    .end local v42    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    :cond_7
    const/16 v44, 0x0

    #@123
    .local v44, "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_7

    #@124
    .line 145
    .end local v5    # "_arg0":I
    .end local v44    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@127
    move-object/from16 v0, p2

    #@129
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12c
    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f
    move-result v5

    #@130
    .line 148
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@132
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopMultiAdvertising(I)V

    #@135
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    .line 150
    const/4 v4, 0x1

    #@139
    return v4

    #@13a
    .line 154
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@13d
    move-object/from16 v0, p2

    #@13f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v4

    #@146
    if-eqz v4, :cond_8

    #@148
    .line 157
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14a
    move-object/from16 v0, p2

    #@14c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14f
    move-result-object v36

    #@150
    check-cast v36, Landroid/os/ParcelUuid;

    #@152
    .line 163
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@155
    move-result-object v4

    #@156
    invoke-static {v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    #@159
    move-result-object v38

    #@15a
    .line 164
    .local v38, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v36

    #@15e
    move-object/from16 v2, v38

    #@160
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    #@163
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@166
    .line 166
    const/4 v4, 0x1

    #@167
    return v4

    #@168
    .line 160
    .end local v38    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :cond_8
    const/16 v36, 0x0

    #@16a
    .local v36, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_8

    #@16b
    .line 170
    .end local v36    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@16e
    move-object/from16 v0, p2

    #@170
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@173
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v5

    #@177
    .line 173
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@179
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    #@17c
    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17f
    .line 175
    const/4 v4, 0x1

    #@180
    return v4

    #@181
    .line 179
    .end local v5    # "_arg0":I
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v5

    #@18d
    .line 183
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@190
    move-result-object v14

    #@191
    .line 185
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194
    move-result v4

    #@195
    if-eqz v4, :cond_9

    #@197
    const/16 v43, 0x1

    #@199
    .line 187
    .local v43, "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c
    move-result v16

    #@19d
    .line 188
    .local v16, "_arg3":I
    move-object/from16 v0, p0

    #@19f
    move/from16 v1, v43

    #@1a1
    move/from16 v2, v16

    #@1a3
    invoke-virtual {v0, v5, v14, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZI)V

    #@1a6
    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a9
    .line 190
    const/4 v4, 0x1

    #@1aa
    return v4

    #@1ab
    .line 185
    .end local v16    # "_arg3":I
    .end local v43    # "_arg2":Z
    :cond_9
    const/16 v43, 0x0

    #@1ad
    .restart local v43    # "_arg2":Z
    goto :goto_9

    #@1ae
    .line 194
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v43    # "_arg2":Z
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b9
    move-result v5

    #@1ba
    .line 198
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bd
    move-result-object v14

    #@1be
    .line 199
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c0
    invoke-virtual {v0, v5, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    #@1c3
    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c6
    .line 201
    const/4 v4, 0x1

    #@1c7
    return v4

    #@1c8
    .line 205
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1cb
    move-object/from16 v0, p2

    #@1cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d0
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d3
    move-result v5

    #@1d4
    .line 209
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d7
    move-result-object v14

    #@1d8
    .line 210
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1da
    invoke-virtual {v0, v5, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    #@1dd
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e0
    .line 212
    const/4 v4, 0x1

    #@1e1
    return v4

    #@1e2
    .line 216
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed
    move-result v5

    #@1ee
    .line 220
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f1
    move-result-object v14

    #@1f2
    .line 221
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f4
    invoke-virtual {v0, v5, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    #@1f7
    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fa
    .line 223
    const/4 v4, 0x1

    #@1fb
    return v4

    #@1fc
    .line 227
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1ff
    move-object/from16 v0, p2

    #@201
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@204
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v5

    #@208
    .line 231
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20b
    move-result-object v14

    #@20c
    .line 233
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f
    move-result v15

    #@210
    .line 235
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v16

    #@214
    .line 236
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    #@216
    move/from16 v1, v16

    #@218
    invoke-virtual {v0, v5, v14, v15, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;II)V

    #@21b
    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21e
    .line 238
    const/4 v4, 0x1

    #@21f
    return v4

    #@220
    .line 242
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :sswitch_e
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@223
    move-object/from16 v0, p2

    #@225
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@228
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22b
    move-result v5

    #@22c
    .line 246
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22f
    move-result-object v14

    #@230
    .line 248
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v15

    #@234
    .line 250
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v16

    #@238
    .line 252
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b
    move-result v17

    #@23c
    .line 254
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@23f
    move-result-object v18

    #@240
    .local v18, "_arg5":[B
    move-object/from16 v12, p0

    #@242
    move v13, v5

    #@243
    .line 255
    invoke-virtual/range {v12 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;III[B)V

    #@246
    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249
    .line 257
    const/4 v4, 0x1

    #@24a
    return v4

    #@24b
    .line 261
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[B
    :sswitch_f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@253
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v5

    #@257
    .line 265
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25a
    move-result-object v14

    #@25b
    .line 267
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25e
    move-result v15

    #@25f
    .line 269
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@262
    move-result v16

    #@263
    .line 270
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    #@265
    move/from16 v1, v16

    #@267
    invoke-virtual {v0, v5, v14, v15, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;II)V

    #@26a
    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26d
    .line 272
    const/4 v4, 0x1

    #@26e
    return v4

    #@26f
    .line 276
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :sswitch_10
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@272
    move-object/from16 v0, p2

    #@274
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@277
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27a
    move-result v5

    #@27b
    .line 280
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27e
    move-result-object v14

    #@27f
    .line 282
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@282
    move-result v15

    #@283
    .line 284
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@286
    move-result v16

    #@287
    .line 286
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28a
    move-result v17

    #@28b
    .line 288
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@28e
    move-result-object v18

    #@28f
    .restart local v18    # "_arg5":[B
    move-object/from16 v12, p0

    #@291
    move v13, v5

    #@292
    .line 289
    invoke-virtual/range {v12 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;III[B)V

    #@295
    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@298
    .line 291
    const/4 v4, 0x1

    #@299
    return v4

    #@29a
    .line 295
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[B
    :sswitch_11
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@29d
    move-object/from16 v0, p2

    #@29f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a2
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a5
    move-result v5

    #@2a6
    .line 299
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a9
    move-result-object v14

    #@2aa
    .line 301
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v15

    #@2ae
    .line 303
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b1
    move-result v4

    #@2b2
    if-eqz v4, :cond_a

    #@2b4
    const/16 v46, 0x1

    #@2b6
    .line 304
    .local v46, "_arg3":Z
    :goto_a
    move-object/from16 v0, p0

    #@2b8
    move/from16 v1, v46

    #@2ba
    invoke-virtual {v0, v5, v14, v15, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IZ)V

    #@2bd
    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c0
    .line 306
    const/4 v4, 0x1

    #@2c1
    return v4

    #@2c2
    .line 303
    .end local v46    # "_arg3":Z
    :cond_a
    const/16 v46, 0x0

    #@2c4
    goto :goto_a

    #@2c5
    .line 310
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cd
    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d0
    move-result v5

    #@2d1
    .line 314
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d4
    move-result-object v14

    #@2d5
    .line 315
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d7
    invoke-virtual {v0, v5, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    #@2da
    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dd
    .line 317
    const/4 v4, 0x1

    #@2de
    return v4

    #@2df
    .line 321
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@2e2
    move-object/from16 v0, p2

    #@2e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e7
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ea
    move-result v5

    #@2eb
    .line 325
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ee
    move-result-object v14

    #@2ef
    .line 327
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f2
    move-result v4

    #@2f3
    if-eqz v4, :cond_b

    #@2f5
    const/16 v43, 0x1

    #@2f7
    .line 328
    .local v43, "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    #@2f9
    move/from16 v1, v43

    #@2fb
    invoke-virtual {v0, v5, v14, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    #@2fe
    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@301
    .line 330
    const/4 v4, 0x1

    #@302
    return v4

    #@303
    .line 327
    .end local v43    # "_arg2":Z
    :cond_b
    const/16 v43, 0x0

    #@305
    goto :goto_b

    #@306
    .line 334
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@309
    move-object/from16 v0, p2

    #@30b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30e
    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@311
    move-result v5

    #@312
    .line 338
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@315
    move-result-object v14

    #@316
    .line 339
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@318
    invoke-virtual {v0, v5, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    #@31b
    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31e
    .line 341
    const/4 v4, 0x1

    #@31f
    return v4

    #@320
    .line 345
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@323
    move-object/from16 v0, p2

    #@325
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@328
    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32b
    move-result v5

    #@32c
    .line 349
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32f
    move-result-object v14

    #@330
    .line 351
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@333
    move-result v15

    #@334
    .line 352
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@336
    invoke-virtual {v0, v5, v14, v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    #@339
    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33c
    .line 354
    const/4 v4, 0x1

    #@33d
    return v4

    #@33e
    .line 358
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    :sswitch_16
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@341
    move-object/from16 v0, p2

    #@343
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@346
    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@349
    move-result v5

    #@34a
    .line 362
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34d
    move-result-object v14

    #@34e
    .line 364
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@351
    move-result v15

    #@352
    .line 365
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@354
    invoke-virtual {v0, v5, v14, v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    #@357
    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35a
    .line 367
    const/4 v4, 0x1

    #@35b
    return v4

    #@35c
    .line 371
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    :sswitch_17
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@367
    move-result v4

    #@368
    if-eqz v4, :cond_c

    #@36a
    .line 374
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36c
    move-object/from16 v0, p2

    #@36e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@371
    move-result-object v36

    #@372
    check-cast v36, Landroid/os/ParcelUuid;

    #@374
    .line 380
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@377
    move-result-object v4

    #@378
    invoke-static {v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    #@37b
    move-result-object v39

    #@37c
    .line 381
    .local v39, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    move-object/from16 v0, p0

    #@37e
    move-object/from16 v1, v36

    #@380
    move-object/from16 v2, v39

    #@382
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    #@385
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    .line 383
    const/4 v4, 0x1

    #@389
    return v4

    #@38a
    .line 377
    .end local v39    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_c
    const/16 v36, 0x0

    #@38c
    .restart local v36    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_c

    #@38d
    .line 387
    .end local v36    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_18
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@390
    move-object/from16 v0, p2

    #@392
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@395
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@398
    move-result v5

    #@399
    .line 390
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@39b
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    #@39e
    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 392
    const/4 v4, 0x1

    #@3a2
    return v4

    #@3a3
    .line 396
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@3a6
    move-object/from16 v0, p2

    #@3a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ab
    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ae
    move-result v5

    #@3af
    .line 400
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b2
    move-result-object v14

    #@3b3
    .line 402
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b6
    move-result v4

    #@3b7
    if-eqz v4, :cond_d

    #@3b9
    const/16 v43, 0x1

    #@3bb
    .line 404
    .local v43, "_arg2":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3be
    move-result v16

    #@3bf
    .line 405
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    #@3c1
    move/from16 v1, v43

    #@3c3
    move/from16 v2, v16

    #@3c5
    invoke-virtual {v0, v5, v14, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    #@3c8
    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cb
    .line 407
    const/4 v4, 0x1

    #@3cc
    return v4

    #@3cd
    .line 402
    .end local v16    # "_arg3":I
    .end local v43    # "_arg2":Z
    :cond_d
    const/16 v43, 0x0

    #@3cf
    .restart local v43    # "_arg2":Z
    goto :goto_d

    #@3d0
    .line 411
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v43    # "_arg2":Z
    :sswitch_1a
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@3d3
    move-object/from16 v0, p2

    #@3d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d8
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3db
    move-result v5

    #@3dc
    .line 415
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3df
    move-result-object v14

    #@3e0
    .line 416
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3e2
    invoke-virtual {v0, v5, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    #@3e5
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e8
    .line 418
    const/4 v4, 0x1

    #@3e9
    return v4

    #@3ea
    .line 422
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@3ed
    move-object/from16 v0, p2

    #@3ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f2
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f5
    move-result v5

    #@3f6
    .line 426
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f9
    move-result v21

    #@3fa
    .line 428
    .local v21, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fd
    move-result v15

    #@3fe
    .line 430
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@401
    move-result v16

    #@402
    .line 432
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@405
    move-result v4

    #@406
    if-eqz v4, :cond_e

    #@408
    .line 433
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40a
    move-object/from16 v0, p2

    #@40c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40f
    move-result-object v24

    #@410
    check-cast v24, Landroid/os/ParcelUuid;

    #@412
    .line 439
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@415
    move-result v4

    #@416
    if-eqz v4, :cond_f

    #@418
    const/16 v25, 0x1

    #@41a
    .local v25, "_arg5":Z
    :goto_f
    move-object/from16 v19, p0

    #@41c
    move/from16 v20, v5

    #@41e
    move/from16 v22, v15

    #@420
    move/from16 v23, v16

    #@422
    .line 440
    invoke-virtual/range {v19 .. v25}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    #@425
    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@428
    .line 442
    const/4 v4, 0x1

    #@429
    return v4

    #@42a
    .line 436
    .end local v25    # "_arg5":Z
    :cond_e
    const/16 v24, 0x0

    #@42c
    .local v24, "_arg4":Landroid/os/ParcelUuid;
    goto :goto_e

    #@42d
    .line 439
    .end local v24    # "_arg4":Landroid/os/ParcelUuid;
    :cond_f
    const/16 v25, 0x0

    #@42f
    goto :goto_f

    #@430
    .line 446
    .end local v5    # "_arg0":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v21    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@433
    move-object/from16 v0, p2

    #@435
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@438
    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43b
    move-result v5

    #@43c
    .line 450
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43f
    move-result v21

    #@440
    .line 452
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@443
    move-result v15

    #@444
    .line 454
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@447
    move-result v4

    #@448
    if-eqz v4, :cond_10

    #@44a
    .line 455
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44c
    move-object/from16 v0, p2

    #@44e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@451
    move-result-object v45

    #@452
    check-cast v45, Landroid/os/ParcelUuid;

    #@454
    .line 460
    :goto_10
    move-object/from16 v0, p0

    #@456
    move/from16 v1, v21

    #@458
    move-object/from16 v2, v45

    #@45a
    invoke-virtual {v0, v5, v1, v15, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    #@45d
    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@460
    .line 462
    const/4 v4, 0x1

    #@461
    return v4

    #@462
    .line 458
    :cond_10
    const/16 v45, 0x0

    #@464
    .local v45, "_arg3":Landroid/os/ParcelUuid;
    goto :goto_10

    #@465
    .line 466
    .end local v5    # "_arg0":I
    .end local v15    # "_arg2":I
    .end local v21    # "_arg1":I
    .end local v45    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_1d
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@468
    move-object/from16 v0, p2

    #@46a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46d
    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@470
    move-result v5

    #@471
    .line 470
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@474
    move-result v4

    #@475
    if-eqz v4, :cond_11

    #@477
    .line 471
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@479
    move-object/from16 v0, p2

    #@47b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47e
    move-result-object v41

    #@47f
    check-cast v41, Landroid/os/ParcelUuid;

    #@481
    .line 477
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@484
    move-result v15

    #@485
    .line 479
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@488
    move-result v16

    #@489
    .line 480
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    #@48b
    move-object/from16 v1, v41

    #@48d
    move/from16 v2, v16

    #@48f
    invoke-virtual {v0, v5, v1, v15, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    #@492
    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@495
    .line 482
    const/4 v4, 0x1

    #@496
    return v4

    #@497
    .line 474
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :cond_11
    const/16 v41, 0x0

    #@499
    .local v41, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_11

    #@49a
    .line 486
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_1e
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@49d
    move-object/from16 v0, p2

    #@49f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a2
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a5
    move-result v5

    #@4a6
    .line 490
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a9
    move-result v4

    #@4aa
    if-eqz v4, :cond_12

    #@4ac
    .line 491
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4ae
    move-object/from16 v0, p2

    #@4b0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b3
    move-result-object v41

    #@4b4
    check-cast v41, Landroid/os/ParcelUuid;

    #@4b6
    .line 497
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b9
    move-result v15

    #@4ba
    .line 498
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    #@4bc
    move-object/from16 v1, v41

    #@4be
    invoke-virtual {v0, v5, v1, v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    #@4c1
    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c4
    .line 500
    const/4 v4, 0x1

    #@4c5
    return v4

    #@4c6
    .line 494
    .end local v15    # "_arg2":I
    :cond_12
    const/16 v41, 0x0

    #@4c8
    .restart local v41    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_12

    #@4c9
    .line 504
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_1f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d1
    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d4
    move-result v5

    #@4d5
    .line 507
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@4d7
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    #@4da
    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4dd
    .line 509
    const/4 v4, 0x1

    #@4de
    return v4

    #@4df
    .line 513
    .end local v5    # "_arg0":I
    :sswitch_20
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@4e2
    move-object/from16 v0, p2

    #@4e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e7
    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ea
    move-result v5

    #@4eb
    .line 517
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ee
    move-result v21

    #@4ef
    .line 519
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f2
    move-result v15

    #@4f3
    .line 521
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f6
    move-result v4

    #@4f7
    if-eqz v4, :cond_13

    #@4f9
    .line 522
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4fb
    move-object/from16 v0, p2

    #@4fd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@500
    move-result-object v45

    #@501
    check-cast v45, Landroid/os/ParcelUuid;

    #@503
    .line 527
    :goto_13
    move-object/from16 v0, p0

    #@505
    move/from16 v1, v21

    #@507
    move-object/from16 v2, v45

    #@509
    invoke-virtual {v0, v5, v1, v15, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    #@50c
    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50f
    .line 529
    const/4 v4, 0x1

    #@510
    return v4

    #@511
    .line 525
    :cond_13
    const/16 v45, 0x0

    #@513
    .restart local v45    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_13

    #@514
    .line 533
    .end local v5    # "_arg0":I
    .end local v15    # "_arg2":I
    .end local v21    # "_arg1":I
    .end local v45    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_21
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@517
    move-object/from16 v0, p2

    #@519
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51c
    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v5

    #@520
    .line 536
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@522
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    #@525
    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@528
    .line 538
    const/4 v4, 0x1

    #@529
    return v4

    #@52a
    .line 542
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@52d
    move-object/from16 v0, p2

    #@52f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@532
    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@535
    move-result v5

    #@536
    .line 546
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@539
    move-result-object v14

    #@53a
    .line 548
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53d
    move-result v15

    #@53e
    .line 550
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@541
    move-result v16

    #@542
    .line 552
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@545
    move-result v17

    #@546
    .line 554
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@549
    move-result-object v18

    #@54a
    .restart local v18    # "_arg5":[B
    move-object/from16 v12, p0

    #@54c
    move v13, v5

    #@54d
    .line 555
    invoke-virtual/range {v12 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    #@550
    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@553
    .line 557
    const/4 v4, 0x1

    #@554
    return v4

    #@555
    .line 561
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[B
    :sswitch_23
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@558
    move-object/from16 v0, p2

    #@55a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55d
    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@560
    move-result v5

    #@561
    .line 565
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@564
    move-result-object v14

    #@565
    .line 567
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v15

    #@569
    .line 569
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56c
    move-result v16

    #@56d
    .line 571
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@570
    move-result v4

    #@571
    if-eqz v4, :cond_14

    #@573
    .line 572
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@575
    move-object/from16 v0, p2

    #@577
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57a
    move-result-object v24

    #@57b
    check-cast v24, Landroid/os/ParcelUuid;

    #@57d
    .line 578
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@580
    move-result v32

    #@581
    .line 580
    .local v32, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@584
    move-result v4

    #@585
    if-eqz v4, :cond_15

    #@587
    .line 581
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@589
    move-object/from16 v0, p2

    #@58b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58e
    move-result-object v33

    #@58f
    check-cast v33, Landroid/os/ParcelUuid;

    #@591
    .line 587
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@594
    move-result v4

    #@595
    if-eqz v4, :cond_16

    #@597
    const/16 v34, 0x1

    #@599
    .line 589
    .local v34, "_arg7":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@59c
    move-result-object v35

    #@59d
    .local v35, "_arg8":[B
    move-object/from16 v26, p0

    #@59f
    move/from16 v27, v5

    #@5a1
    move-object/from16 v28, v14

    #@5a3
    move/from16 v29, v15

    #@5a5
    move/from16 v30, v16

    #@5a7
    move-object/from16 v31, v24

    #@5a9
    .line 590
    invoke-virtual/range {v26 .. v35}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    #@5ac
    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5af
    .line 592
    const/4 v4, 0x1

    #@5b0
    return v4

    #@5b1
    .line 575
    .end local v32    # "_arg5":I
    .end local v34    # "_arg7":Z
    .end local v35    # "_arg8":[B
    :cond_14
    const/16 v24, 0x0

    #@5b3
    .restart local v24    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_14

    #@5b4
    .line 584
    .end local v24    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v32    # "_arg5":I
    :cond_15
    const/16 v33, 0x0

    #@5b6
    .local v33, "_arg6":Landroid/os/ParcelUuid;
    goto :goto_15

    #@5b7
    .line 587
    .end local v33    # "_arg6":Landroid/os/ParcelUuid;
    :cond_16
    const/16 v34, 0x0

    #@5b9
    .restart local v34    # "_arg7":Z
    goto :goto_16

    #@5ba
    .line 596
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v32    # "_arg5":I
    .end local v34    # "_arg7":Z
    :sswitch_24
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@5bd
    move-object/from16 v0, p2

    #@5bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c2
    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll()V

    #@5c5
    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c8
    .line 599
    const/4 v4, 0x1

    #@5c9
    return v4

    #@5ca
    .line 603
    :sswitch_25
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@5cd
    move-object/from16 v0, p2

    #@5cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d2
    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll()V

    #@5d5
    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d8
    .line 606
    const/4 v4, 0x1

    #@5d9
    return v4

    #@5da
    .line 610
    :sswitch_26
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@5dd
    move-object/from16 v0, p2

    #@5df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e2
    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable()I

    #@5e5
    move-result v47

    #@5e6
    .line 612
    .local v47, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e9
    .line 613
    move-object/from16 v0, p3

    #@5eb
    move/from16 v1, v47

    #@5ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f0
    .line 614
    const/4 v4, 0x1

    #@5f1
    return v4

    #@5f2
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
