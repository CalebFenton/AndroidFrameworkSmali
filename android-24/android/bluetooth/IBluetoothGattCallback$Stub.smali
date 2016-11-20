.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x4

.field static final TRANSACTION_onCharacteristicRead:I = 0x6

.field static final TRANSACTION_onCharacteristicWrite:I = 0x7

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0xf

.field static final TRANSACTION_onDescriptorRead:I = 0x9

.field static final TRANSACTION_onDescriptorWrite:I = 0xa

.field static final TRANSACTION_onExecuteWrite:I = 0x8

.field static final TRANSACTION_onFoundOrLost:I = 0x10

.field static final TRANSACTION_onMultiAdvertiseCallback:I = 0xd

.field static final TRANSACTION_onNotify:I = 0xb

.field static final TRANSACTION_onReadRemoteRssi:I = 0xc

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0xe

.field static final TRANSACTION_onScanResult:I = 0x3

.field static final TRANSACTION_onSearchComplete:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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
    .line 245
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v17

    #@7
    return v17

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v17

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 47
    const/16 v17, 0x1

    #@14
    return v17

    #@15
    .line 51
    :sswitch_1
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v17

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v2

    #@23
    .line 55
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v7

    #@27
    .line 56
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v2, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    #@2c
    .line 57
    const/16 v17, 0x1

    #@2e
    return v17

    #@2f
    .line 61
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_2
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@32
    move-object/from16 v0, p2

    #@34
    move-object/from16 v1, v17

    #@36
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v2

    #@3d
    .line 65
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v7

    #@41
    .line 67
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v17

    #@45
    if-eqz v17, :cond_0

    #@47
    const/4 v13, 0x1

    #@48
    .line 69
    .local v13, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v15

    #@4c
    .line 70
    .local v15, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v2, v7, v13, v15}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    #@51
    .line 71
    const/16 v17, 0x1

    #@53
    return v17

    #@54
    .line 67
    .end local v13    # "_arg2":Z
    .end local v15    # "_arg3":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    #@55
    .restart local v13    # "_arg2":Z
    goto :goto_0

    #@56
    .line 75
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v13    # "_arg2":Z
    :sswitch_3
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v17

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v17

    #@64
    if-eqz v17, :cond_1

    #@66
    .line 78
    sget-object v17, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@68
    move-object/from16 v0, v17

    #@6a
    move-object/from16 v1, p2

    #@6c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v3

    #@70
    check-cast v3, Landroid/bluetooth/le/ScanResult;

    #@72
    .line 83
    :goto_1
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    #@77
    .line 84
    const/16 v17, 0x1

    #@79
    return v17

    #@7a
    .line 81
    :cond_1
    const/4 v3, 0x0

    #@7b
    .local v3, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_1

    #@7c
    .line 88
    .end local v3    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :sswitch_4
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@7f
    move-object/from16 v0, p2

    #@81
    move-object/from16 v1, v17

    #@83
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 90
    sget-object v17, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    move-object/from16 v0, p2

    #@8a
    move-object/from16 v1, v17

    #@8c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@8f
    move-result-object v5

    #@90
    .line 91
    .local v5, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    move-object/from16 v0, p0

    #@92
    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    #@95
    .line 92
    const/16 v17, 0x1

    #@97
    return v17

    #@98
    .line 96
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :sswitch_5
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@9b
    move-object/from16 v0, p2

    #@9d
    move-object/from16 v1, v17

    #@9f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    .line 100
    .local v4, "_arg0":Ljava/lang/String;
    sget-object v17, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a8
    move-object/from16 v0, p2

    #@aa
    move-object/from16 v1, v17

    #@ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@af
    move-result-object v9

    #@b0
    .line 102
    .local v9, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v11

    #@b4
    .line 103
    .local v11, "_arg2":I
    move-object/from16 v0, p0

    #@b6
    invoke-virtual {v0, v4, v9, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    #@b9
    .line 104
    const/16 v17, 0x1

    #@bb
    return v17

    #@bc
    .line 108
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v11    # "_arg2":I
    :sswitch_6
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@bf
    move-object/from16 v0, p2

    #@c1
    move-object/from16 v1, v17

    #@c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c9
    move-result-object v4

    #@ca
    .line 112
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v7

    #@ce
    .line 114
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d1
    move-result v11

    #@d2
    .line 116
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@d5
    move-result-object v16

    #@d6
    .line 117
    .local v16, "_arg3":[B
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, v16

    #@da
    invoke-virtual {v0, v4, v7, v11, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;II[B)V

    #@dd
    .line 118
    const/16 v17, 0x1

    #@df
    return v17

    #@e0
    .line 122
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v16    # "_arg3":[B
    :sswitch_7
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@e3
    move-object/from16 v0, p2

    #@e5
    move-object/from16 v1, v17

    #@e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ed
    move-result-object v4

    #@ee
    .line 126
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f1
    move-result v7

    #@f2
    .line 128
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f5
    move-result v11

    #@f6
    .line 129
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;II)V

    #@fb
    .line 130
    const/16 v17, 0x1

    #@fd
    return v17

    #@fe
    .line 134
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_8
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@101
    move-object/from16 v0, p2

    #@103
    move-object/from16 v1, v17

    #@105
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@108
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10b
    move-result-object v4

    #@10c
    .line 138
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v7

    #@110
    .line 139
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    #@112
    invoke-virtual {v0, v4, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    #@115
    .line 140
    const/16 v17, 0x1

    #@117
    return v17

    #@118
    .line 144
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_9
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@11b
    move-object/from16 v0, p2

    #@11d
    move-object/from16 v1, v17

    #@11f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@125
    move-result-object v4

    #@126
    .line 148
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@129
    move-result v7

    #@12a
    .line 150
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v11

    #@12e
    .line 152
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@131
    move-result-object v16

    #@132
    .line 153
    .restart local v16    # "_arg3":[B
    move-object/from16 v0, p0

    #@134
    move-object/from16 v1, v16

    #@136
    invoke-virtual {v0, v4, v7, v11, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;II[B)V

    #@139
    .line 154
    const/16 v17, 0x1

    #@13b
    return v17

    #@13c
    .line 158
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v16    # "_arg3":[B
    :sswitch_a
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@13f
    move-object/from16 v0, p2

    #@141
    move-object/from16 v1, v17

    #@143
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@149
    move-result-object v4

    #@14a
    .line 162
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v7

    #@14e
    .line 164
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@151
    move-result v11

    #@152
    .line 165
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    #@154
    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;II)V

    #@157
    .line 166
    const/16 v17, 0x1

    #@159
    return v17

    #@15a
    .line 170
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_b
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@15d
    move-object/from16 v0, p2

    #@15f
    move-object/from16 v1, v17

    #@161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@167
    move-result-object v4

    #@168
    .line 174
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v7

    #@16c
    .line 176
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@16f
    move-result-object v14

    #@170
    .line 177
    .local v14, "_arg2":[B
    move-object/from16 v0, p0

    #@172
    invoke-virtual {v0, v4, v7, v14}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;I[B)V

    #@175
    .line 178
    const/16 v17, 0x1

    #@177
    return v17

    #@178
    .line 182
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":[B
    :sswitch_c
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@17b
    move-object/from16 v0, p2

    #@17d
    move-object/from16 v1, v17

    #@17f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@182
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@185
    move-result-object v4

    #@186
    .line 186
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@189
    move-result v7

    #@18a
    .line 188
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18d
    move-result v11

    #@18e
    .line 189
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    #@190
    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    #@193
    .line 190
    const/16 v17, 0x1

    #@195
    return v17

    #@196
    .line 194
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_d
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@199
    move-object/from16 v0, p2

    #@19b
    move-object/from16 v1, v17

    #@19d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3
    move-result v2

    #@1a4
    .line 198
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v17

    #@1a8
    if-eqz v17, :cond_2

    #@1aa
    const/4 v10, 0x1

    #@1ab
    .line 200
    .local v10, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v17

    #@1af
    if-eqz v17, :cond_3

    #@1b1
    .line 201
    sget-object v17, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b3
    move-object/from16 v0, v17

    #@1b5
    move-object/from16 v1, p2

    #@1b7
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ba
    move-result-object v12

    #@1bb
    check-cast v12, Landroid/bluetooth/le/AdvertiseSettings;

    #@1bd
    .line 206
    :goto_3
    move-object/from16 v0, p0

    #@1bf
    invoke-virtual {v0, v2, v10, v12}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    #@1c2
    .line 207
    const/16 v17, 0x1

    #@1c4
    return v17

    #@1c5
    .line 198
    .end local v10    # "_arg1":Z
    :cond_2
    const/4 v10, 0x0

    #@1c6
    .restart local v10    # "_arg1":Z
    goto :goto_2

    #@1c7
    .line 204
    :cond_3
    const/4 v12, 0x0

    #@1c8
    .local v12, "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_3

    #@1c9
    .line 211
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Z
    .end local v12    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_e
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    move-object/from16 v1, v17

    #@1d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d3
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d6
    move-result v2

    #@1d7
    .line 214
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1d9
    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanManagerErrorCallback(I)V

    #@1dc
    .line 215
    const/16 v17, 0x1

    #@1de
    return v17

    #@1df
    .line 219
    .end local v2    # "_arg0":I
    :sswitch_f
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@1e2
    move-object/from16 v0, p2

    #@1e4
    move-object/from16 v1, v17

    #@1e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ec
    move-result-object v4

    #@1ed
    .line 223
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0
    move-result v7

    #@1f1
    .line 225
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v11

    #@1f5
    .line 226
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    #@1f7
    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    #@1fa
    .line 227
    const/16 v17, 0x1

    #@1fc
    return v17

    #@1fd
    .line 231
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_10
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    #@200
    move-object/from16 v0, p2

    #@202
    move-object/from16 v1, v17

    #@204
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20a
    move-result v17

    #@20b
    if-eqz v17, :cond_4

    #@20d
    const/4 v6, 0x1

    #@20e
    .line 235
    .local v6, "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@211
    move-result v17

    #@212
    if-eqz v17, :cond_5

    #@214
    .line 236
    sget-object v17, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@216
    move-object/from16 v0, v17

    #@218
    move-object/from16 v1, p2

    #@21a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21d
    move-result-object v8

    #@21e
    check-cast v8, Landroid/bluetooth/le/ScanResult;

    #@220
    .line 241
    :goto_5
    move-object/from16 v0, p0

    #@222
    invoke-virtual {v0, v6, v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    #@225
    .line 242
    const/16 v17, 0x1

    #@227
    return v17

    #@228
    .line 233
    .end local v6    # "_arg0":Z
    :cond_4
    const/4 v6, 0x0

    #@229
    .restart local v6    # "_arg0":Z
    goto :goto_4

    #@22a
    .line 239
    :cond_5
    const/4 v8, 0x0

    #@22b
    .local v8, "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_5

    #@22c
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
