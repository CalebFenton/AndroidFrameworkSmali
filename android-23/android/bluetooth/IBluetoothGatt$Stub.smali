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
    .locals 65
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
    .line 718
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
    move-result-object v53

    #@1e
    .line 54
    .local v53, "_arg0":[I
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v53

    #@22
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@25
    move-result-object v63

    #@26
    .line 55
    .local v63, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 56
    move-object/from16 v0, p3

    #@2b
    move-object/from16 v1, v63

    #@2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@30
    .line 57
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 61
    .end local v53    # "_arg0":[I
    .end local v63    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
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
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getClass()Ljava/lang/Class;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@64
    move-result-object v64

    #@65
    .line 77
    .local v64, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@67
    move-object/from16 v1, v64

    #@69
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@6c
    move-result-object v9

    #@6d
    .line 79
    .local v9, "_arg4":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    #@73
    .line 80
    invoke-virtual/range {v4 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    #@76
    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 82
    const/4 v4, 0x1

    #@7a
    return v4

    #@7b
    .line 65
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v9    # "_arg4":Ljava/util/List;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v64    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v6, 0x0

    #@7c
    .restart local v6    # "_arg1":Z
    goto :goto_0

    #@7d
    .line 71
    :cond_1
    const/4 v7, 0x0

    #@7e
    .local v7, "_arg2":Landroid/bluetooth/le/ScanSettings;
    goto :goto_1

    #@7f
    .line 86
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@82
    move-object/from16 v0, p2

    #@84
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v5

    #@8b
    .line 90
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v4

    #@8f
    if-eqz v4, :cond_2

    #@91
    const/4 v6, 0x1

    #@92
    .line 91
    .restart local v6    # "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    #@97
    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    .line 93
    const/4 v4, 0x1

    #@9b
    return v4

    #@9c
    .line 90
    .end local v6    # "_arg1":Z
    :cond_2
    const/4 v6, 0x0

    #@9d
    .restart local v6    # "_arg1":Z
    goto :goto_2

    #@9e
    .line 97
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v5

    #@aa
    .line 101
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v4

    #@ae
    if-eqz v4, :cond_3

    #@b0
    const/4 v6, 0x1

    #@b1
    .line 102
    .restart local v6    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@b3
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(IZ)V

    #@b6
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b9
    .line 104
    const/4 v4, 0x1

    #@ba
    return v4

    #@bb
    .line 101
    .end local v6    # "_arg1":Z
    :cond_3
    const/4 v6, 0x0

    #@bc
    .restart local v6    # "_arg1":Z
    goto :goto_3

    #@bd
    .line 108
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Z
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@c0
    move-object/from16 v0, p2

    #@c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8
    move-result v5

    #@c9
    .line 112
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v4

    #@cd
    if-eqz v4, :cond_4

    #@cf
    .line 113
    sget-object v4, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d6
    move-result-object v56

    #@d7
    check-cast v56, Landroid/bluetooth/le/AdvertiseData;

    #@d9
    .line 119
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v4

    #@dd
    if-eqz v4, :cond_5

    #@df
    .line 120
    sget-object v4, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e1
    move-object/from16 v0, p2

    #@e3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e6
    move-result-object v58

    #@e7
    check-cast v58, Landroid/bluetooth/le/AdvertiseData;

    #@e9
    .line 126
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v4

    #@ed
    if-eqz v4, :cond_6

    #@ef
    .line 127
    sget-object v4, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f6
    move-result-object v60

    #@f7
    check-cast v60, Landroid/bluetooth/le/AdvertiseSettings;

    #@f9
    .line 132
    :goto_6
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v56

    #@fd
    move-object/from16 v2, v58

    #@ff
    move-object/from16 v3, v60

    #@101
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    #@104
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@107
    .line 134
    const/4 v4, 0x1

    #@108
    return v4

    #@109
    .line 116
    :cond_4
    const/16 v56, 0x0

    #@10b
    .local v56, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_4

    #@10c
    .line 123
    .end local v56    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :cond_5
    const/16 v58, 0x0

    #@10e
    .local v58, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_5

    #@10f
    .line 130
    .end local v58    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    :cond_6
    const/16 v60, 0x0

    #@111
    .local v60, "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_6

    #@112
    .line 138
    .end local v5    # "_arg0":I
    .end local v60    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v5

    #@11e
    .line 141
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@120
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopMultiAdvertising(I)V

    #@123
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 143
    const/4 v4, 0x1

    #@127
    return v4

    #@128
    .line 147
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@12b
    move-object/from16 v0, p2

    #@12d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@130
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@133
    move-result v4

    #@134
    if-eqz v4, :cond_7

    #@136
    .line 150
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13d
    move-result-object v52

    #@13e
    check-cast v52, Landroid/os/ParcelUuid;

    #@140
    .line 156
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@143
    move-result-object v4

    #@144
    invoke-static {v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    #@147
    move-result-object v54

    #@148
    .line 157
    .local v54, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    #@14a
    move-object/from16 v1, v52

    #@14c
    move-object/from16 v2, v54

    #@14e
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    #@151
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@154
    .line 159
    const/4 v4, 0x1

    #@155
    return v4

    #@156
    .line 153
    .end local v54    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :cond_7
    const/16 v52, 0x0

    #@158
    .local v52, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_7

    #@159
    .line 163
    .end local v52    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@161
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v5

    #@165
    .line 166
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    #@16a
    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    .line 168
    const/4 v4, 0x1

    #@16e
    return v4

    #@16f
    .line 172
    .end local v5    # "_arg0":I
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@172
    move-object/from16 v0, p2

    #@174
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@177
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17a
    move-result v5

    #@17b
    .line 176
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17e
    move-result-object v13

    #@17f
    .line 178
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v4

    #@183
    if-eqz v4, :cond_8

    #@185
    const/16 v59, 0x1

    #@187
    .line 180
    .local v59, "_arg2":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v15

    #@18b
    .line 181
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    #@18d
    move/from16 v1, v59

    #@18f
    invoke-virtual {v0, v5, v13, v1, v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZI)V

    #@192
    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@195
    .line 183
    const/4 v4, 0x1

    #@196
    return v4

    #@197
    .line 178
    .end local v15    # "_arg3":I
    .end local v59    # "_arg2":Z
    :cond_8
    const/16 v59, 0x0

    #@199
    .restart local v59    # "_arg2":Z
    goto :goto_8

    #@19a
    .line 187
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v59    # "_arg2":Z
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a2
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v5

    #@1a6
    .line 191
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a9
    move-result-object v13

    #@1aa
    .line 192
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ac
    invoke-virtual {v0, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    #@1af
    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b2
    .line 194
    const/4 v4, 0x1

    #@1b3
    return v4

    #@1b4
    .line 198
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1b7
    move-object/from16 v0, p2

    #@1b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf
    move-result v5

    #@1c0
    .line 202
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c3
    move-result-object v13

    #@1c4
    .line 203
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c6
    invoke-virtual {v0, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    #@1c9
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cc
    .line 205
    const/4 v4, 0x1

    #@1cd
    return v4

    #@1ce
    .line 209
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1d1
    move-object/from16 v0, p2

    #@1d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d6
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d9
    move-result v5

    #@1da
    .line 213
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dd
    move-result-object v13

    #@1de
    .line 214
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e0
    invoke-virtual {v0, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    #@1e3
    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e6
    .line 216
    const/4 v4, 0x1

    #@1e7
    return v4

    #@1e8
    .line 220
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@1eb
    move-object/from16 v0, p2

    #@1ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f3
    move-result v5

    #@1f4
    .line 224
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f7
    move-result-object v13

    #@1f8
    .line 226
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v14

    #@1fc
    .line 228
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v15

    #@200
    .line 230
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v4

    #@204
    if-eqz v4, :cond_9

    #@206
    .line 231
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20d
    move-result-object v16

    #@20e
    check-cast v16, Landroid/os/ParcelUuid;

    #@210
    .line 237
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v17

    #@214
    .line 239
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v4

    #@218
    if-eqz v4, :cond_a

    #@21a
    .line 240
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@221
    move-result-object v18

    #@222
    check-cast v18, Landroid/os/ParcelUuid;

    #@224
    .line 246
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@227
    move-result v19

    #@228
    .local v19, "_arg7":I
    move-object/from16 v11, p0

    #@22a
    move v12, v5

    #@22b
    .line 247
    invoke-virtual/range {v11 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    #@22e
    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@231
    .line 249
    const/4 v4, 0x1

    #@232
    return v4

    #@233
    .line 234
    .end local v17    # "_arg5":I
    .end local v19    # "_arg7":I
    :cond_9
    const/16 v16, 0x0

    #@235
    .local v16, "_arg4":Landroid/os/ParcelUuid;
    goto :goto_9

    #@236
    .line 243
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v17    # "_arg5":I
    :cond_a
    const/16 v18, 0x0

    #@238
    .local v18, "_arg6":Landroid/os/ParcelUuid;
    goto :goto_a

    #@239
    .line 253
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_e
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@23c
    move-object/from16 v0, p2

    #@23e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@241
    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@244
    move-result v5

    #@245
    .line 257
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@248
    move-result-object v13

    #@249
    .line 259
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24c
    move-result v14

    #@24d
    .line 261
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@250
    move-result v15

    #@251
    .line 263
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@254
    move-result v4

    #@255
    if-eqz v4, :cond_b

    #@257
    .line 264
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25e
    move-result-object v16

    #@25f
    check-cast v16, Landroid/os/ParcelUuid;

    #@261
    .line 270
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@264
    move-result v17

    #@265
    .line 272
    .restart local v17    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@268
    move-result v4

    #@269
    if-eqz v4, :cond_c

    #@26b
    .line 273
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26d
    move-object/from16 v0, p2

    #@26f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@272
    move-result-object v18

    #@273
    check-cast v18, Landroid/os/ParcelUuid;

    #@275
    .line 279
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@278
    move-result v19

    #@279
    .line 281
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27c
    move-result v20

    #@27d
    .line 283
    .local v20, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@280
    move-result-object v21

    #@281
    .local v21, "_arg9":[B
    move-object/from16 v11, p0

    #@283
    move v12, v5

    #@284
    .line 284
    invoke-virtual/range {v11 .. v21}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    #@287
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28a
    .line 286
    const/4 v4, 0x1

    #@28b
    return v4

    #@28c
    .line 267
    .end local v17    # "_arg5":I
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":I
    .end local v21    # "_arg9":[B
    :cond_b
    const/16 v16, 0x0

    #@28e
    .restart local v16    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_b

    #@28f
    .line 276
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v17    # "_arg5":I
    :cond_c
    const/16 v18, 0x0

    #@291
    .restart local v18    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_c

    #@292
    .line 290
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@295
    move-object/from16 v0, p2

    #@297
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29a
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29d
    move-result v5

    #@29e
    .line 294
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a1
    move-result-object v13

    #@2a2
    .line 296
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a5
    move-result v14

    #@2a6
    .line 298
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a9
    move-result v15

    #@2aa
    .line 300
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v4

    #@2ae
    if-eqz v4, :cond_d

    #@2b0
    .line 301
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b7
    move-result-object v16

    #@2b8
    check-cast v16, Landroid/os/ParcelUuid;

    #@2ba
    .line 307
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bd
    move-result v17

    #@2be
    .line 309
    .restart local v17    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c1
    move-result v4

    #@2c2
    if-eqz v4, :cond_e

    #@2c4
    .line 310
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c6
    move-object/from16 v0, p2

    #@2c8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cb
    move-result-object v18

    #@2cc
    check-cast v18, Landroid/os/ParcelUuid;

    #@2ce
    .line 316
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d1
    move-result v19

    #@2d2
    .line 318
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d5
    move-result v4

    #@2d6
    if-eqz v4, :cond_f

    #@2d8
    .line 319
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2da
    move-object/from16 v0, p2

    #@2dc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2df
    move-result-object v31

    #@2e0
    check-cast v31, Landroid/os/ParcelUuid;

    #@2e2
    .line 325
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e5
    move-result v32

    #@2e6
    .local v32, "_arg9":I
    move-object/from16 v22, p0

    #@2e8
    move/from16 v23, v5

    #@2ea
    move-object/from16 v24, v13

    #@2ec
    move/from16 v25, v14

    #@2ee
    move/from16 v26, v15

    #@2f0
    move-object/from16 v27, v16

    #@2f2
    move/from16 v28, v17

    #@2f4
    move-object/from16 v29, v18

    #@2f6
    move/from16 v30, v19

    #@2f8
    .line 326
    invoke-virtual/range {v22 .. v32}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    #@2fb
    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fe
    .line 328
    const/4 v4, 0x1

    #@2ff
    return v4

    #@300
    .line 304
    .end local v17    # "_arg5":I
    .end local v19    # "_arg7":I
    .end local v32    # "_arg9":I
    :cond_d
    const/16 v16, 0x0

    #@302
    .restart local v16    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_d

    #@303
    .line 313
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v17    # "_arg5":I
    :cond_e
    const/16 v18, 0x0

    #@305
    .restart local v18    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_e

    #@306
    .line 322
    .end local v18    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v19    # "_arg7":I
    :cond_f
    const/16 v31, 0x0

    #@308
    .local v31, "_arg8":Landroid/os/ParcelUuid;
    goto :goto_f

    #@309
    .line 332
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v17    # "_arg5":I
    .end local v19    # "_arg7":I
    .end local v31    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_10
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@30c
    move-object/from16 v0, p2

    #@30e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@311
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@314
    move-result v5

    #@315
    .line 336
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@318
    move-result-object v13

    #@319
    .line 338
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31c
    move-result v14

    #@31d
    .line 340
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@320
    move-result v15

    #@321
    .line 342
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v4

    #@325
    if-eqz v4, :cond_10

    #@327
    .line 343
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@329
    move-object/from16 v0, p2

    #@32b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32e
    move-result-object v16

    #@32f
    check-cast v16, Landroid/os/ParcelUuid;

    #@331
    .line 349
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@334
    move-result v17

    #@335
    .line 351
    .restart local v17    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@338
    move-result v4

    #@339
    if-eqz v4, :cond_11

    #@33b
    .line 352
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33d
    move-object/from16 v0, p2

    #@33f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@342
    move-result-object v18

    #@343
    check-cast v18, Landroid/os/ParcelUuid;

    #@345
    .line 358
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v19

    #@349
    .line 360
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34c
    move-result v4

    #@34d
    if-eqz v4, :cond_12

    #@34f
    .line 361
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@351
    move-object/from16 v0, p2

    #@353
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@356
    move-result-object v31

    #@357
    check-cast v31, Landroid/os/ParcelUuid;

    #@359
    .line 367
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35c
    move-result v32

    #@35d
    .line 369
    .restart local v32    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@360
    move-result v33

    #@361
    .line 371
    .local v33, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@364
    move-result-object v34

    #@365
    .local v34, "_arg11":[B
    move-object/from16 v22, p0

    #@367
    move/from16 v23, v5

    #@369
    move-object/from16 v24, v13

    #@36b
    move/from16 v25, v14

    #@36d
    move/from16 v26, v15

    #@36f
    move-object/from16 v27, v16

    #@371
    move/from16 v28, v17

    #@373
    move-object/from16 v29, v18

    #@375
    move/from16 v30, v19

    #@377
    .line 372
    invoke-virtual/range {v22 .. v34}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    #@37a
    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37d
    .line 374
    const/4 v4, 0x1

    #@37e
    return v4

    #@37f
    .line 346
    .end local v17    # "_arg5":I
    .end local v19    # "_arg7":I
    .end local v32    # "_arg9":I
    .end local v33    # "_arg10":I
    .end local v34    # "_arg11":[B
    :cond_10
    const/16 v16, 0x0

    #@381
    .restart local v16    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_10

    #@382
    .line 355
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v17    # "_arg5":I
    :cond_11
    const/16 v18, 0x0

    #@384
    .restart local v18    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_11

    #@385
    .line 364
    .end local v18    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v19    # "_arg7":I
    :cond_12
    const/16 v31, 0x0

    #@387
    .restart local v31    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_12

    #@388
    .line 378
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v17    # "_arg5":I
    .end local v19    # "_arg7":I
    .end local v31    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_11
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@38b
    move-object/from16 v0, p2

    #@38d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@390
    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@393
    move-result v5

    #@394
    .line 382
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@397
    move-result-object v13

    #@398
    .line 384
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39b
    move-result v14

    #@39c
    .line 386
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39f
    move-result v15

    #@3a0
    .line 388
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a3
    move-result v4

    #@3a4
    if-eqz v4, :cond_13

    #@3a6
    .line 389
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a8
    move-object/from16 v0, p2

    #@3aa
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ad
    move-result-object v16

    #@3ae
    check-cast v16, Landroid/os/ParcelUuid;

    #@3b0
    .line 395
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b3
    move-result v17

    #@3b4
    .line 397
    .restart local v17    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b7
    move-result v4

    #@3b8
    if-eqz v4, :cond_14

    #@3ba
    .line 398
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3bc
    move-object/from16 v0, p2

    #@3be
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c1
    move-result-object v18

    #@3c2
    check-cast v18, Landroid/os/ParcelUuid;

    #@3c4
    .line 404
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c7
    move-result v4

    #@3c8
    if-eqz v4, :cond_15

    #@3ca
    const/16 v30, 0x1

    #@3cc
    .local v30, "_arg7":Z
    :goto_15
    move-object/from16 v22, p0

    #@3ce
    move/from16 v23, v5

    #@3d0
    move-object/from16 v24, v13

    #@3d2
    move/from16 v25, v14

    #@3d4
    move/from16 v26, v15

    #@3d6
    move-object/from16 v27, v16

    #@3d8
    move/from16 v28, v17

    #@3da
    move-object/from16 v29, v18

    #@3dc
    .line 405
    invoke-virtual/range {v22 .. v30}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V

    #@3df
    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e2
    .line 407
    const/4 v4, 0x1

    #@3e3
    return v4

    #@3e4
    .line 392
    .end local v17    # "_arg5":I
    .end local v30    # "_arg7":Z
    :cond_13
    const/16 v16, 0x0

    #@3e6
    .restart local v16    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_13

    #@3e7
    .line 401
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v17    # "_arg5":I
    :cond_14
    const/16 v18, 0x0

    #@3e9
    .restart local v18    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_14

    #@3ea
    .line 404
    .end local v18    # "_arg6":Landroid/os/ParcelUuid;
    :cond_15
    const/16 v30, 0x0

    #@3ec
    .restart local v30    # "_arg7":Z
    goto :goto_15

    #@3ed
    .line 411
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v17    # "_arg5":I
    .end local v30    # "_arg7":Z
    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@3f0
    move-object/from16 v0, p2

    #@3f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f5
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f8
    move-result v5

    #@3f9
    .line 415
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3fc
    move-result-object v13

    #@3fd
    .line 416
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ff
    invoke-virtual {v0, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    #@402
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@405
    .line 418
    const/4 v4, 0x1

    #@406
    return v4

    #@407
    .line 422
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@40a
    move-object/from16 v0, p2

    #@40c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40f
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@412
    move-result v5

    #@413
    .line 426
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@416
    move-result-object v13

    #@417
    .line 428
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41a
    move-result v4

    #@41b
    if-eqz v4, :cond_16

    #@41d
    const/16 v59, 0x1

    #@41f
    .line 429
    .restart local v59    # "_arg2":Z
    :goto_16
    move-object/from16 v0, p0

    #@421
    move/from16 v1, v59

    #@423
    invoke-virtual {v0, v5, v13, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    #@426
    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@429
    .line 431
    const/4 v4, 0x1

    #@42a
    return v4

    #@42b
    .line 428
    .end local v59    # "_arg2":Z
    :cond_16
    const/16 v59, 0x0

    #@42d
    .restart local v59    # "_arg2":Z
    goto :goto_16

    #@42e
    .line 435
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v59    # "_arg2":Z
    :sswitch_14
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@431
    move-object/from16 v0, p2

    #@433
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@436
    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@439
    move-result v5

    #@43a
    .line 439
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43d
    move-result-object v13

    #@43e
    .line 440
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@440
    invoke-virtual {v0, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    #@443
    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@446
    .line 442
    const/4 v4, 0x1

    #@447
    return v4

    #@448
    .line 446
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@44b
    move-object/from16 v0, p2

    #@44d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@450
    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@453
    move-result v5

    #@454
    .line 450
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@457
    move-result-object v13

    #@458
    .line 452
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45b
    move-result v14

    #@45c
    .line 453
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    #@45e
    invoke-virtual {v0, v5, v13, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    #@461
    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@464
    .line 455
    const/4 v4, 0x1

    #@465
    return v4

    #@466
    .line 459
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    :sswitch_16
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@469
    move-object/from16 v0, p2

    #@46b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46e
    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@471
    move-result v5

    #@472
    .line 463
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@475
    move-result-object v13

    #@476
    .line 465
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@479
    move-result v14

    #@47a
    .line 466
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    #@47c
    invoke-virtual {v0, v5, v13, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    #@47f
    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@482
    .line 468
    const/4 v4, 0x1

    #@483
    return v4

    #@484
    .line 472
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    :sswitch_17
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@487
    move-object/from16 v0, p2

    #@489
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48c
    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48f
    move-result v4

    #@490
    if-eqz v4, :cond_17

    #@492
    .line 475
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@494
    move-object/from16 v0, p2

    #@496
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@499
    move-result-object v52

    #@49a
    check-cast v52, Landroid/os/ParcelUuid;

    #@49c
    .line 481
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@49f
    move-result-object v4

    #@4a0
    invoke-static {v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    #@4a3
    move-result-object v55

    #@4a4
    .line 482
    .local v55, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    move-object/from16 v0, p0

    #@4a6
    move-object/from16 v1, v52

    #@4a8
    move-object/from16 v2, v55

    #@4aa
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    #@4ad
    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b0
    .line 484
    const/4 v4, 0x1

    #@4b1
    return v4

    #@4b2
    .line 478
    .end local v55    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_17
    const/16 v52, 0x0

    #@4b4
    .restart local v52    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_17

    #@4b5
    .line 488
    .end local v52    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_18
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@4b8
    move-object/from16 v0, p2

    #@4ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bd
    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c0
    move-result v5

    #@4c1
    .line 491
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@4c3
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    #@4c6
    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c9
    .line 493
    const/4 v4, 0x1

    #@4ca
    return v4

    #@4cb
    .line 497
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d3
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d6
    move-result v5

    #@4d7
    .line 501
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4da
    move-result-object v13

    #@4db
    .line 503
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4de
    move-result v4

    #@4df
    if-eqz v4, :cond_18

    #@4e1
    const/16 v59, 0x1

    #@4e3
    .line 505
    .restart local v59    # "_arg2":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e6
    move-result v15

    #@4e7
    .line 506
    .restart local v15    # "_arg3":I
    move-object/from16 v0, p0

    #@4e9
    move/from16 v1, v59

    #@4eb
    invoke-virtual {v0, v5, v13, v1, v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    #@4ee
    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f1
    .line 508
    const/4 v4, 0x1

    #@4f2
    return v4

    #@4f3
    .line 503
    .end local v15    # "_arg3":I
    .end local v59    # "_arg2":Z
    :cond_18
    const/16 v59, 0x0

    #@4f5
    .restart local v59    # "_arg2":Z
    goto :goto_18

    #@4f6
    .line 512
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v59    # "_arg2":Z
    :sswitch_1a
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@4f9
    move-object/from16 v0, p2

    #@4fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fe
    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@501
    move-result v5

    #@502
    .line 516
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@505
    move-result-object v13

    #@506
    .line 517
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@508
    invoke-virtual {v0, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    #@50b
    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50e
    .line 519
    const/4 v4, 0x1

    #@50f
    return v4

    #@510
    .line 523
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@513
    move-object/from16 v0, p2

    #@515
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@518
    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51b
    move-result v5

    #@51c
    .line 527
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v24

    #@520
    .line 529
    .local v24, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@523
    move-result v14

    #@524
    .line 531
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@527
    move-result v15

    #@528
    .line 533
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52b
    move-result v4

    #@52c
    if-eqz v4, :cond_19

    #@52e
    .line 534
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@530
    move-object/from16 v0, p2

    #@532
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@535
    move-result-object v16

    #@536
    check-cast v16, Landroid/os/ParcelUuid;

    #@538
    .line 540
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53b
    move-result v4

    #@53c
    if-eqz v4, :cond_1a

    #@53e
    const/16 v28, 0x1

    #@540
    .local v28, "_arg5":Z
    :goto_1a
    move-object/from16 v22, p0

    #@542
    move/from16 v23, v5

    #@544
    move/from16 v25, v14

    #@546
    move/from16 v26, v15

    #@548
    move-object/from16 v27, v16

    #@54a
    .line 541
    invoke-virtual/range {v22 .. v28}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    #@54d
    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@550
    .line 543
    const/4 v4, 0x1

    #@551
    return v4

    #@552
    .line 537
    .end local v28    # "_arg5":Z
    :cond_19
    const/16 v16, 0x0

    #@554
    .restart local v16    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_19

    #@555
    .line 540
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    :cond_1a
    const/16 v28, 0x0

    #@557
    .restart local v28    # "_arg5":Z
    goto :goto_1a

    #@558
    .line 547
    .end local v5    # "_arg0":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v24    # "_arg1":I
    .end local v28    # "_arg5":Z
    :sswitch_1c
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@55b
    move-object/from16 v0, p2

    #@55d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@560
    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@563
    move-result v5

    #@564
    .line 551
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@567
    move-result v24

    #@568
    .line 553
    .restart local v24    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56b
    move-result v14

    #@56c
    .line 555
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56f
    move-result v4

    #@570
    if-eqz v4, :cond_1b

    #@572
    .line 556
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@574
    move-object/from16 v0, p2

    #@576
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@579
    move-result-object v61

    #@57a
    check-cast v61, Landroid/os/ParcelUuid;

    #@57c
    .line 561
    :goto_1b
    move-object/from16 v0, p0

    #@57e
    move/from16 v1, v24

    #@580
    move-object/from16 v2, v61

    #@582
    invoke-virtual {v0, v5, v1, v14, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    #@585
    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@588
    .line 563
    const/4 v4, 0x1

    #@589
    return v4

    #@58a
    .line 559
    :cond_1b
    const/16 v61, 0x0

    #@58c
    .local v61, "_arg3":Landroid/os/ParcelUuid;
    goto :goto_1b

    #@58d
    .line 567
    .end local v5    # "_arg0":I
    .end local v14    # "_arg2":I
    .end local v24    # "_arg1":I
    .end local v61    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_1d
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@590
    move-object/from16 v0, p2

    #@592
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@595
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@598
    move-result v5

    #@599
    .line 571
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59c
    move-result v4

    #@59d
    if-eqz v4, :cond_1c

    #@59f
    .line 572
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a1
    move-object/from16 v0, p2

    #@5a3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5a6
    move-result-object v57

    #@5a7
    check-cast v57, Landroid/os/ParcelUuid;

    #@5a9
    .line 578
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ac
    move-result v14

    #@5ad
    .line 580
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b0
    move-result v15

    #@5b1
    .line 581
    .restart local v15    # "_arg3":I
    move-object/from16 v0, p0

    #@5b3
    move-object/from16 v1, v57

    #@5b5
    invoke-virtual {v0, v5, v1, v14, v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    #@5b8
    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5bb
    .line 583
    const/4 v4, 0x1

    #@5bc
    return v4

    #@5bd
    .line 575
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    :cond_1c
    const/16 v57, 0x0

    #@5bf
    .local v57, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1c

    #@5c0
    .line 587
    .end local v5    # "_arg0":I
    .end local v57    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_1e
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@5c3
    move-object/from16 v0, p2

    #@5c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c8
    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5cb
    move-result v5

    #@5cc
    .line 591
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5cf
    move-result v4

    #@5d0
    if-eqz v4, :cond_1d

    #@5d2
    .line 592
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d4
    move-object/from16 v0, p2

    #@5d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d9
    move-result-object v57

    #@5da
    check-cast v57, Landroid/os/ParcelUuid;

    #@5dc
    .line 598
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5df
    move-result v14

    #@5e0
    .line 599
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    #@5e2
    move-object/from16 v1, v57

    #@5e4
    invoke-virtual {v0, v5, v1, v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    #@5e7
    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ea
    .line 601
    const/4 v4, 0x1

    #@5eb
    return v4

    #@5ec
    .line 595
    .end local v14    # "_arg2":I
    :cond_1d
    const/16 v57, 0x0

    #@5ee
    .restart local v57    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1d

    #@5ef
    .line 605
    .end local v5    # "_arg0":I
    .end local v57    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_1f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@5f2
    move-object/from16 v0, p2

    #@5f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f7
    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5fa
    move-result v5

    #@5fb
    .line 608
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@5fd
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    #@600
    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@603
    .line 610
    const/4 v4, 0x1

    #@604
    return v4

    #@605
    .line 614
    .end local v5    # "_arg0":I
    :sswitch_20
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@608
    move-object/from16 v0, p2

    #@60a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60d
    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@610
    move-result v5

    #@611
    .line 618
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@614
    move-result v24

    #@615
    .line 620
    .restart local v24    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@618
    move-result v14

    #@619
    .line 622
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61c
    move-result v4

    #@61d
    if-eqz v4, :cond_1e

    #@61f
    .line 623
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@621
    move-object/from16 v0, p2

    #@623
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@626
    move-result-object v61

    #@627
    check-cast v61, Landroid/os/ParcelUuid;

    #@629
    .line 628
    :goto_1e
    move-object/from16 v0, p0

    #@62b
    move/from16 v1, v24

    #@62d
    move-object/from16 v2, v61

    #@62f
    invoke-virtual {v0, v5, v1, v14, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    #@632
    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@635
    .line 630
    const/4 v4, 0x1

    #@636
    return v4

    #@637
    .line 626
    :cond_1e
    const/16 v61, 0x0

    #@639
    .restart local v61    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_1e

    #@63a
    .line 634
    .end local v5    # "_arg0":I
    .end local v14    # "_arg2":I
    .end local v24    # "_arg1":I
    .end local v61    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_21
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@63d
    move-object/from16 v0, p2

    #@63f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@642
    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@645
    move-result v5

    #@646
    .line 637
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@648
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    #@64b
    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64e
    .line 639
    const/4 v4, 0x1

    #@64f
    return v4

    #@650
    .line 643
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@653
    move-object/from16 v0, p2

    #@655
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@658
    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65b
    move-result v5

    #@65c
    .line 647
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@65f
    move-result-object v13

    #@660
    .line 649
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@663
    move-result v14

    #@664
    .line 651
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@667
    move-result v15

    #@668
    .line 653
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66b
    move-result v40

    #@66c
    .line 655
    .local v40, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@66f
    move-result-object v41

    #@670
    .local v41, "_arg5":[B
    move-object/from16 v35, p0

    #@672
    move/from16 v36, v5

    #@674
    move-object/from16 v37, v13

    #@676
    move/from16 v38, v14

    #@678
    move/from16 v39, v15

    #@67a
    .line 656
    invoke-virtual/range {v35 .. v41}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    #@67d
    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@680
    .line 658
    const/4 v4, 0x1

    #@681
    return v4

    #@682
    .line 662
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v40    # "_arg4":I
    .end local v41    # "_arg5":[B
    :sswitch_23
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@685
    move-object/from16 v0, p2

    #@687
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68a
    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68d
    move-result v5

    #@68e
    .line 666
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@691
    move-result-object v13

    #@692
    .line 668
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@695
    move-result v14

    #@696
    .line 670
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@699
    move-result v15

    #@69a
    .line 672
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69d
    move-result v4

    #@69e
    if-eqz v4, :cond_1f

    #@6a0
    .line 673
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6a2
    move-object/from16 v0, p2

    #@6a4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6a7
    move-result-object v16

    #@6a8
    check-cast v16, Landroid/os/ParcelUuid;

    #@6aa
    .line 679
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ad
    move-result v17

    #@6ae
    .line 681
    .restart local v17    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b1
    move-result v4

    #@6b2
    if-eqz v4, :cond_20

    #@6b4
    .line 682
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b6
    move-object/from16 v0, p2

    #@6b8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6bb
    move-result-object v18

    #@6bc
    check-cast v18, Landroid/os/ParcelUuid;

    #@6be
    .line 688
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c1
    move-result v4

    #@6c2
    if-eqz v4, :cond_21

    #@6c4
    const/16 v30, 0x1

    #@6c6
    .line 690
    .restart local v30    # "_arg7":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@6c9
    move-result-object v51

    #@6ca
    .local v51, "_arg8":[B
    move-object/from16 v42, p0

    #@6cc
    move/from16 v43, v5

    #@6ce
    move-object/from16 v44, v13

    #@6d0
    move/from16 v45, v14

    #@6d2
    move/from16 v46, v15

    #@6d4
    move-object/from16 v47, v16

    #@6d6
    move/from16 v48, v17

    #@6d8
    move-object/from16 v49, v18

    #@6da
    move/from16 v50, v30

    #@6dc
    .line 691
    invoke-virtual/range {v42 .. v51}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    #@6df
    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e2
    .line 693
    const/4 v4, 0x1

    #@6e3
    return v4

    #@6e4
    .line 676
    .end local v17    # "_arg5":I
    .end local v30    # "_arg7":Z
    .end local v51    # "_arg8":[B
    :cond_1f
    const/16 v16, 0x0

    #@6e6
    .restart local v16    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_1f

    #@6e7
    .line 685
    .end local v16    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v17    # "_arg5":I
    :cond_20
    const/16 v18, 0x0

    #@6e9
    .restart local v18    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_20

    #@6ea
    .line 688
    .end local v18    # "_arg6":Landroid/os/ParcelUuid;
    :cond_21
    const/16 v30, 0x0

    #@6ec
    .restart local v30    # "_arg7":Z
    goto :goto_21

    #@6ed
    .line 697
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v17    # "_arg5":I
    .end local v30    # "_arg7":Z
    :sswitch_24
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@6f0
    move-object/from16 v0, p2

    #@6f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f5
    .line 698
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll()V

    #@6f8
    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fb
    .line 700
    const/4 v4, 0x1

    #@6fc
    return v4

    #@6fd
    .line 704
    :sswitch_25
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@700
    move-object/from16 v0, p2

    #@702
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@705
    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll()V

    #@708
    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70b
    .line 707
    const/4 v4, 0x1

    #@70c
    return v4

    #@70d
    .line 711
    :sswitch_26
    const-string/jumbo v4, "android.bluetooth.IBluetoothGatt"

    #@710
    move-object/from16 v0, p2

    #@712
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@715
    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable()I

    #@718
    move-result v62

    #@719
    .line 713
    .local v62, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71c
    .line 714
    move-object/from16 v0, p3

    #@71e
    move/from16 v1, v62

    #@720
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@723
    .line 715
    const/4 v4, 0x1

    #@724
    return v4

    #@725
    .line 42
    nop

    #@726
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
