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

.field static final TRANSACTION_onCharacteristicRead:I = 0xa

.field static final TRANSACTION_onCharacteristicWrite:I = 0xb

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0x13

.field static final TRANSACTION_onDescriptorRead:I = 0xd

.field static final TRANSACTION_onDescriptorWrite:I = 0xe

.field static final TRANSACTION_onExecuteWrite:I = 0xc

.field static final TRANSACTION_onFoundOrLost:I = 0x14

.field static final TRANSACTION_onGetCharacteristic:I = 0x7

.field static final TRANSACTION_onGetDescriptor:I = 0x8

.field static final TRANSACTION_onGetIncludedService:I = 0x6

.field static final TRANSACTION_onGetService:I = 0x5

.field static final TRANSACTION_onMultiAdvertiseCallback:I = 0x11

.field static final TRANSACTION_onNotify:I = 0xf

.field static final TRANSACTION_onReadRemoteRssi:I = 0x10

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0x12

.field static final TRANSACTION_onScanResult:I = 0x3

.field static final TRANSACTION_onSearchComplete:I = 0x9


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
    .line 467
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

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
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v41

    #@1e
    .line 55
    .local v41, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    .line 56
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v41

    #@26
    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    #@29
    .line 57
    const/4 v4, 0x1

    #@2a
    return v4

    #@2b
    .line 61
    .end local v6    # "_arg1":I
    .end local v41    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v41

    #@37
    .line 65
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v6

    #@3b
    .line 67
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_0

    #@41
    const/16 v48, 0x1

    #@43
    .line 69
    .local v48, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46
    move-result-object v49

    #@47
    .line 70
    .local v49, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@49
    move/from16 v1, v41

    #@4b
    move/from16 v2, v48

    #@4d
    move-object/from16 v3, v49

    #@4f
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    #@52
    .line 71
    const/4 v4, 0x1

    #@53
    return v4

    #@54
    .line 67
    .end local v48    # "_arg2":Z
    .end local v49    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v48, 0x0

    #@56
    .restart local v48    # "_arg2":Z
    goto :goto_0

    #@57
    .line 75
    .end local v6    # "_arg1":I
    .end local v41    # "_arg0":I
    .end local v48    # "_arg2":Z
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_1

    #@65
    .line 78
    sget-object v4, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67
    move-object/from16 v0, p2

    #@69
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6c
    move-result-object v42

    #@6d
    check-cast v42, Landroid/bluetooth/le/ScanResult;

    #@6f
    .line 83
    :goto_1
    move-object/from16 v0, p0

    #@71
    move-object/from16 v1, v42

    #@73
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    #@76
    .line 84
    const/4 v4, 0x1

    #@77
    return v4

    #@78
    .line 81
    :cond_1
    const/16 v42, 0x0

    #@7a
    .local v42, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_1

    #@7b
    .line 88
    .end local v42    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 90
    sget-object v4, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@85
    move-object/from16 v0, p2

    #@87
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@8a
    move-result-object v43

    #@8b
    .line 91
    .local v43, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, v43

    #@8f
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    #@92
    .line 92
    const/4 v4, 0x1

    #@93
    return v4

    #@94
    .line 96
    .end local v43    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    .line 100
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v6

    #@a4
    .line 102
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v7

    #@a8
    .line 104
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_2

    #@ae
    .line 105
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v8

    #@b6
    check-cast v8, Landroid/os/ParcelUuid;

    #@b8
    .line 110
    :goto_2
    move-object/from16 v0, p0

    #@ba
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    #@bd
    .line 111
    const/4 v4, 0x1

    #@be
    return v4

    #@bf
    .line 108
    :cond_2
    const/4 v8, 0x0

    #@c0
    .local v8, "_arg3":Landroid/os/ParcelUuid;
    goto :goto_2

    #@c1
    .line 115
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cc
    move-result-object v5

    #@cd
    .line 119
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d0
    move-result v6

    #@d1
    .line 121
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d4
    move-result v7

    #@d5
    .line 123
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v4

    #@d9
    if-eqz v4, :cond_3

    #@db
    .line 124
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e2
    move-result-object v8

    #@e3
    check-cast v8, Landroid/os/ParcelUuid;

    #@e5
    .line 130
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v9

    #@e9
    .line 132
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v10

    #@ed
    .line 134
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v4

    #@f1
    if-eqz v4, :cond_4

    #@f3
    .line 135
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f5
    move-object/from16 v0, p2

    #@f7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fa
    move-result-object v11

    #@fb
    check-cast v11, Landroid/os/ParcelUuid;

    #@fd
    :goto_4
    move-object/from16 v4, p0

    #@ff
    .line 140
    invoke-virtual/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    #@102
    .line 141
    const/4 v4, 0x1

    #@103
    return v4

    #@104
    .line 127
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    :cond_3
    const/4 v8, 0x0

    #@105
    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_3

    #@106
    .line 138
    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    .restart local v10    # "_arg5":I
    :cond_4
    const/4 v11, 0x0

    #@107
    .local v11, "_arg6":Landroid/os/ParcelUuid;
    goto :goto_4

    #@108
    .line 145
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@10b
    move-object/from16 v0, p2

    #@10d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@113
    move-result-object v5

    #@114
    .line 149
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v6

    #@118
    .line 151
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11b
    move-result v7

    #@11c
    .line 153
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v4

    #@120
    if-eqz v4, :cond_5

    #@122
    .line 154
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@124
    move-object/from16 v0, p2

    #@126
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@129
    move-result-object v8

    #@12a
    check-cast v8, Landroid/os/ParcelUuid;

    #@12c
    .line 160
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f
    move-result v9

    #@130
    .line 162
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@133
    move-result v4

    #@134
    if-eqz v4, :cond_6

    #@136
    .line 163
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13d
    move-result-object v18

    #@13e
    check-cast v18, Landroid/os/ParcelUuid;

    #@140
    .line 169
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v19

    #@144
    .local v19, "_arg6":I
    move-object/from16 v12, p0

    #@146
    move-object v13, v5

    #@147
    move v14, v6

    #@148
    move v15, v7

    #@149
    move-object/from16 v16, v8

    #@14b
    move/from16 v17, v9

    #@14d
    .line 170
    invoke-virtual/range {v12 .. v19}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    #@150
    .line 171
    const/4 v4, 0x1

    #@151
    return v4

    #@152
    .line 157
    .end local v9    # "_arg4":I
    .end local v19    # "_arg6":I
    :cond_5
    const/4 v8, 0x0

    #@153
    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_5

    #@154
    .line 166
    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    :cond_6
    const/16 v18, 0x0

    #@156
    .local v18, "_arg5":Landroid/os/ParcelUuid;
    goto :goto_6

    #@157
    .line 175
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@15a
    move-object/from16 v0, p2

    #@15c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15f
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@162
    move-result-object v5

    #@163
    .line 179
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v6

    #@167
    .line 181
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v7

    #@16b
    .line 183
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v4

    #@16f
    if-eqz v4, :cond_7

    #@171
    .line 184
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@173
    move-object/from16 v0, p2

    #@175
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@178
    move-result-object v8

    #@179
    check-cast v8, Landroid/os/ParcelUuid;

    #@17b
    .line 190
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17e
    move-result v9

    #@17f
    .line 192
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v4

    #@183
    if-eqz v4, :cond_8

    #@185
    .line 193
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@187
    move-object/from16 v0, p2

    #@189
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18c
    move-result-object v18

    #@18d
    check-cast v18, Landroid/os/ParcelUuid;

    #@18f
    .line 199
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@192
    move-result v19

    #@193
    .line 201
    .restart local v19    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v4

    #@197
    if-eqz v4, :cond_9

    #@199
    .line 202
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a0
    move-result-object v20

    #@1a1
    check-cast v20, Landroid/os/ParcelUuid;

    #@1a3
    :goto_9
    move-object/from16 v12, p0

    #@1a5
    move-object v13, v5

    #@1a6
    move v14, v6

    #@1a7
    move v15, v7

    #@1a8
    move-object/from16 v16, v8

    #@1aa
    move/from16 v17, v9

    #@1ac
    .line 207
    invoke-virtual/range {v12 .. v20}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    #@1af
    .line 208
    const/4 v4, 0x1

    #@1b0
    return v4

    #@1b1
    .line 187
    .end local v9    # "_arg4":I
    .end local v19    # "_arg6":I
    :cond_7
    const/4 v8, 0x0

    #@1b2
    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_7

    #@1b3
    .line 196
    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    :cond_8
    const/16 v18, 0x0

    #@1b5
    .restart local v18    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_8

    #@1b6
    .line 205
    .end local v18    # "_arg5":Landroid/os/ParcelUuid;
    .restart local v19    # "_arg6":I
    :cond_9
    const/16 v20, 0x0

    #@1b8
    .local v20, "_arg7":Landroid/os/ParcelUuid;
    goto :goto_9

    #@1b9
    .line 212
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v19    # "_arg6":I
    .end local v20    # "_arg7":Landroid/os/ParcelUuid;
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@1bc
    move-object/from16 v0, p2

    #@1be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c1
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c4
    move-result-object v5

    #@1c5
    .line 216
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c8
    move-result v6

    #@1c9
    .line 217
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1cb
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;I)V

    #@1ce
    .line 218
    const/4 v4, 0x1

    #@1cf
    return v4

    #@1d0
    .line 222
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@1d3
    move-object/from16 v0, p2

    #@1d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d8
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1db
    move-result-object v5

    #@1dc
    .line 226
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1df
    move-result v6

    #@1e0
    .line 228
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e3
    move-result v7

    #@1e4
    .line 230
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v25

    #@1e8
    .line 232
    .local v25, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1eb
    move-result v4

    #@1ec
    if-eqz v4, :cond_a

    #@1ee
    .line 233
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f0
    move-object/from16 v0, p2

    #@1f2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f5
    move-result-object v26

    #@1f6
    check-cast v26, Landroid/os/ParcelUuid;

    #@1f8
    .line 239
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v10

    #@1fc
    .line 241
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v4

    #@200
    if-eqz v4, :cond_b

    #@202
    .line 242
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@204
    move-object/from16 v0, p2

    #@206
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@209
    move-result-object v11

    #@20a
    check-cast v11, Landroid/os/ParcelUuid;

    #@20c
    .line 248
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@20f
    move-result-object v29

    #@210
    .local v29, "_arg7":[B
    move-object/from16 v21, p0

    #@212
    move-object/from16 v22, v5

    #@214
    move/from16 v23, v6

    #@216
    move/from16 v24, v7

    #@218
    move/from16 v27, v10

    #@21a
    move-object/from16 v28, v11

    #@21c
    .line 249
    invoke-virtual/range {v21 .. v29}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    #@21f
    .line 250
    const/4 v4, 0x1

    #@220
    return v4

    #@221
    .line 236
    .end local v10    # "_arg5":I
    .end local v29    # "_arg7":[B
    :cond_a
    const/16 v26, 0x0

    #@223
    .local v26, "_arg4":Landroid/os/ParcelUuid;
    goto :goto_a

    #@224
    .line 245
    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_b
    const/4 v11, 0x0

    #@225
    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_b

    #@226
    .line 254
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .end local v25    # "_arg3":I
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@229
    move-object/from16 v0, p2

    #@22b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22e
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@231
    move-result-object v5

    #@232
    .line 258
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@235
    move-result v6

    #@236
    .line 260
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@239
    move-result v7

    #@23a
    .line 262
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23d
    move-result v25

    #@23e
    .line 264
    .restart local v25    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@241
    move-result v4

    #@242
    if-eqz v4, :cond_c

    #@244
    .line 265
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@246
    move-object/from16 v0, p2

    #@248
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24b
    move-result-object v26

    #@24c
    check-cast v26, Landroid/os/ParcelUuid;

    #@24e
    .line 271
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@251
    move-result v10

    #@252
    .line 273
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@255
    move-result v4

    #@256
    if-eqz v4, :cond_d

    #@258
    .line 274
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25a
    move-object/from16 v0, p2

    #@25c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25f
    move-result-object v11

    #@260
    check-cast v11, Landroid/os/ParcelUuid;

    #@262
    :goto_d
    move-object/from16 v21, p0

    #@264
    move-object/from16 v22, v5

    #@266
    move/from16 v23, v6

    #@268
    move/from16 v24, v7

    #@26a
    move/from16 v27, v10

    #@26c
    move-object/from16 v28, v11

    #@26e
    .line 279
    invoke-virtual/range {v21 .. v28}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    #@271
    .line 280
    const/4 v4, 0x1

    #@272
    return v4

    #@273
    .line 268
    .end local v10    # "_arg5":I
    :cond_c
    const/16 v26, 0x0

    #@275
    .restart local v26    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_c

    #@276
    .line 277
    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_d
    const/4 v11, 0x0

    #@277
    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_d

    #@278
    .line 284
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .end local v25    # "_arg3":I
    :sswitch_c
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@27b
    move-object/from16 v0, p2

    #@27d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@280
    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@283
    move-result-object v5

    #@284
    .line 288
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@287
    move-result v6

    #@288
    .line 289
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@28a
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    #@28d
    .line 290
    const/4 v4, 0x1

    #@28e
    return v4

    #@28f
    .line 294
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@292
    move-object/from16 v0, p2

    #@294
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@297
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29a
    move-result-object v5

    #@29b
    .line 298
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29e
    move-result v6

    #@29f
    .line 300
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a2
    move-result v7

    #@2a3
    .line 302
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a6
    move-result v25

    #@2a7
    .line 304
    .restart local v25    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2aa
    move-result v4

    #@2ab
    if-eqz v4, :cond_e

    #@2ad
    .line 305
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2af
    move-object/from16 v0, p2

    #@2b1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b4
    move-result-object v26

    #@2b5
    check-cast v26, Landroid/os/ParcelUuid;

    #@2b7
    .line 311
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ba
    move-result v10

    #@2bb
    .line 313
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2be
    move-result v4

    #@2bf
    if-eqz v4, :cond_f

    #@2c1
    .line 314
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c3
    move-object/from16 v0, p2

    #@2c5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c8
    move-result-object v11

    #@2c9
    check-cast v11, Landroid/os/ParcelUuid;

    #@2cb
    .line 320
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ce
    move-result v38

    #@2cf
    .line 322
    .local v38, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d2
    move-result v4

    #@2d3
    if-eqz v4, :cond_10

    #@2d5
    .line 323
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d7
    move-object/from16 v0, p2

    #@2d9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2dc
    move-result-object v39

    #@2dd
    check-cast v39, Landroid/os/ParcelUuid;

    #@2df
    .line 329
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@2e2
    move-result-object v40

    #@2e3
    .local v40, "_arg9":[B
    move-object/from16 v30, p0

    #@2e5
    move-object/from16 v31, v5

    #@2e7
    move/from16 v32, v6

    #@2e9
    move/from16 v33, v7

    #@2eb
    move/from16 v34, v25

    #@2ed
    move-object/from16 v35, v26

    #@2ef
    move/from16 v36, v10

    #@2f1
    move-object/from16 v37, v11

    #@2f3
    .line 330
    invoke-virtual/range {v30 .. v40}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    #@2f6
    .line 331
    const/4 v4, 0x1

    #@2f7
    return v4

    #@2f8
    .line 308
    .end local v10    # "_arg5":I
    .end local v38    # "_arg7":I
    .end local v40    # "_arg9":[B
    :cond_e
    const/16 v26, 0x0

    #@2fa
    .restart local v26    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_e

    #@2fb
    .line 317
    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_f
    const/4 v11, 0x0

    #@2fc
    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_f

    #@2fd
    .line 326
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v38    # "_arg7":I
    :cond_10
    const/16 v39, 0x0

    #@2ff
    .local v39, "_arg8":Landroid/os/ParcelUuid;
    goto :goto_10

    #@300
    .line 335
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v25    # "_arg3":I
    .end local v38    # "_arg7":I
    .end local v39    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_e
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@303
    move-object/from16 v0, p2

    #@305
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@308
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30b
    move-result-object v5

    #@30c
    .line 339
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30f
    move-result v6

    #@310
    .line 341
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@313
    move-result v7

    #@314
    .line 343
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@317
    move-result v25

    #@318
    .line 345
    .restart local v25    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31b
    move-result v4

    #@31c
    if-eqz v4, :cond_11

    #@31e
    .line 346
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@320
    move-object/from16 v0, p2

    #@322
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@325
    move-result-object v26

    #@326
    check-cast v26, Landroid/os/ParcelUuid;

    #@328
    .line 352
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32b
    move-result v10

    #@32c
    .line 354
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32f
    move-result v4

    #@330
    if-eqz v4, :cond_12

    #@332
    .line 355
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@334
    move-object/from16 v0, p2

    #@336
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@339
    move-result-object v11

    #@33a
    check-cast v11, Landroid/os/ParcelUuid;

    #@33c
    .line 361
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33f
    move-result v38

    #@340
    .line 363
    .restart local v38    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@343
    move-result v4

    #@344
    if-eqz v4, :cond_13

    #@346
    .line 364
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@348
    move-object/from16 v0, p2

    #@34a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34d
    move-result-object v39

    #@34e
    check-cast v39, Landroid/os/ParcelUuid;

    #@350
    :goto_13
    move-object/from16 v30, p0

    #@352
    move-object/from16 v31, v5

    #@354
    move/from16 v32, v6

    #@356
    move/from16 v33, v7

    #@358
    move/from16 v34, v25

    #@35a
    move-object/from16 v35, v26

    #@35c
    move/from16 v36, v10

    #@35e
    move-object/from16 v37, v11

    #@360
    .line 369
    invoke-virtual/range {v30 .. v39}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    #@363
    .line 370
    const/4 v4, 0x1

    #@364
    return v4

    #@365
    .line 349
    .end local v10    # "_arg5":I
    .end local v38    # "_arg7":I
    :cond_11
    const/16 v26, 0x0

    #@367
    .restart local v26    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_11

    #@368
    .line 358
    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_12
    const/4 v11, 0x0

    #@369
    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_12

    #@36a
    .line 367
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v38    # "_arg7":I
    :cond_13
    const/16 v39, 0x0

    #@36c
    .restart local v39    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_13

    #@36d
    .line 374
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v25    # "_arg3":I
    .end local v38    # "_arg7":I
    .end local v39    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@370
    move-object/from16 v0, p2

    #@372
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@375
    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@378
    move-result-object v5

    #@379
    .line 378
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v6

    #@37d
    .line 380
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@380
    move-result v7

    #@381
    .line 382
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@384
    move-result v4

    #@385
    if-eqz v4, :cond_14

    #@387
    .line 383
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@389
    move-object/from16 v0, p2

    #@38b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38e
    move-result-object v8

    #@38f
    check-cast v8, Landroid/os/ParcelUuid;

    #@391
    .line 389
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@394
    move-result v9

    #@395
    .line 391
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@398
    move-result v4

    #@399
    if-eqz v4, :cond_15

    #@39b
    .line 392
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39d
    move-object/from16 v0, p2

    #@39f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a2
    move-result-object v18

    #@3a3
    check-cast v18, Landroid/os/ParcelUuid;

    #@3a5
    .line 398
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@3a8
    move-result-object v37

    #@3a9
    .local v37, "_arg6":[B
    move-object/from16 v30, p0

    #@3ab
    move-object/from16 v31, v5

    #@3ad
    move/from16 v32, v6

    #@3af
    move/from16 v33, v7

    #@3b1
    move-object/from16 v34, v8

    #@3b3
    move/from16 v35, v9

    #@3b5
    move-object/from16 v36, v18

    #@3b7
    .line 399
    invoke-virtual/range {v30 .. v37}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    #@3ba
    .line 400
    const/4 v4, 0x1

    #@3bb
    return v4

    #@3bc
    .line 386
    .end local v9    # "_arg4":I
    .end local v37    # "_arg6":[B
    :cond_14
    const/4 v8, 0x0

    #@3bd
    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_14

    #@3be
    .line 395
    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    :cond_15
    const/16 v18, 0x0

    #@3c0
    .restart local v18    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_15

    #@3c1
    .line 404
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_10
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@3c4
    move-object/from16 v0, p2

    #@3c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c9
    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3cc
    move-result-object v5

    #@3cd
    .line 408
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d0
    move-result v6

    #@3d1
    .line 410
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d4
    move-result v7

    #@3d5
    .line 411
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@3d7
    invoke-virtual {v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    #@3da
    .line 412
    const/4 v4, 0x1

    #@3db
    return v4

    #@3dc
    .line 416
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_11
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@3df
    move-object/from16 v0, p2

    #@3e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e4
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e7
    move-result v41

    #@3e8
    .line 420
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3eb
    move-result v4

    #@3ec
    if-eqz v4, :cond_16

    #@3ee
    const/16 v46, 0x1

    #@3f0
    .line 422
    .local v46, "_arg1":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f3
    move-result v4

    #@3f4
    if-eqz v4, :cond_17

    #@3f6
    .line 423
    sget-object v4, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f8
    move-object/from16 v0, p2

    #@3fa
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3fd
    move-result-object v47

    #@3fe
    check-cast v47, Landroid/bluetooth/le/AdvertiseSettings;

    #@400
    .line 428
    :goto_17
    move-object/from16 v0, p0

    #@402
    move/from16 v1, v41

    #@404
    move/from16 v2, v46

    #@406
    move-object/from16 v3, v47

    #@408
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    #@40b
    .line 429
    const/4 v4, 0x1

    #@40c
    return v4

    #@40d
    .line 420
    .end local v46    # "_arg1":Z
    :cond_16
    const/16 v46, 0x0

    #@40f
    .restart local v46    # "_arg1":Z
    goto :goto_16

    #@410
    .line 426
    :cond_17
    const/16 v47, 0x0

    #@412
    .local v47, "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_17

    #@413
    .line 433
    .end local v41    # "_arg0":I
    .end local v46    # "_arg1":Z
    .end local v47    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@416
    move-object/from16 v0, p2

    #@418
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41b
    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41e
    move-result v41

    #@41f
    .line 436
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    #@421
    move/from16 v1, v41

    #@423
    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanManagerErrorCallback(I)V

    #@426
    .line 437
    const/4 v4, 0x1

    #@427
    return v4

    #@428
    .line 441
    .end local v41    # "_arg0":I
    :sswitch_13
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@42b
    move-object/from16 v0, p2

    #@42d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@430
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@433
    move-result-object v5

    #@434
    .line 445
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@437
    move-result v6

    #@438
    .line 447
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43b
    move-result v7

    #@43c
    .line 448
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@43e
    invoke-virtual {v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    #@441
    .line 449
    const/4 v4, 0x1

    #@442
    return v4

    #@443
    .line 453
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_14
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattCallback"

    #@446
    move-object/from16 v0, p2

    #@448
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44b
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44e
    move-result v4

    #@44f
    if-eqz v4, :cond_18

    #@451
    const/16 v44, 0x1

    #@453
    .line 457
    .local v44, "_arg0":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@456
    move-result v4

    #@457
    if-eqz v4, :cond_19

    #@459
    .line 458
    sget-object v4, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45b
    move-object/from16 v0, p2

    #@45d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@460
    move-result-object v45

    #@461
    check-cast v45, Landroid/bluetooth/le/ScanResult;

    #@463
    .line 463
    :goto_19
    move-object/from16 v0, p0

    #@465
    move/from16 v1, v44

    #@467
    move-object/from16 v2, v45

    #@469
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    #@46c
    .line 464
    const/4 v4, 0x1

    #@46d
    return v4

    #@46e
    .line 455
    .end local v44    # "_arg0":Z
    :cond_18
    const/16 v44, 0x0

    #@470
    .restart local v44    # "_arg0":Z
    goto :goto_18

    #@471
    .line 461
    :cond_19
    const/16 v45, 0x0

    #@473
    .local v45, "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_19

    #@474
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
