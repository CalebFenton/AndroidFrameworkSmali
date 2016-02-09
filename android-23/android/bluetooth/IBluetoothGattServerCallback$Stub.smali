.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final TRANSACTION_onCharacteristicReadRequest:I = 0x5

.field static final TRANSACTION_onCharacteristicWriteRequest:I = 0x7

.field static final TRANSACTION_onDescriptorReadRequest:I = 0x6

.field static final TRANSACTION_onDescriptorWriteRequest:I = 0x8

.field static final TRANSACTION_onExecuteWrite:I = 0x9

.field static final TRANSACTION_onMtuChanged:I = 0xb

.field static final TRANSACTION_onNotificationSent:I = 0xa

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onServerConnectionState:I = 0x3

.field static final TRANSACTION_onServerRegistered:I = 0x1

.field static final TRANSACTION_onServiceAdded:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattServerCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 47
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
    .line 299
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

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
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v42

    #@1e
    .line 55
    .local v42, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    .line 56
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v42

    #@26
    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    #@29
    .line 57
    const/4 v4, 0x1

    #@2a
    return v4

    #@2b
    .line 61
    .end local v6    # "_arg1":I
    .end local v42    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 65
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v6

    #@3b
    .line 67
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@3e
    move-result-object v44

    #@3f
    .line 68
    .local v44, "_arg2":[B
    move-object/from16 v0, p0

    #@41
    move-object/from16 v1, v44

    #@43
    invoke-virtual {v0, v5, v6, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onScanResult(Ljava/lang/String;I[B)V

    #@46
    .line 69
    const/4 v4, 0x1

    #@47
    return v4

    #@48
    .line 73
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v44    # "_arg2":[B
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v42

    #@54
    .line 77
    .restart local v42    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v6

    #@58
    .line 79
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_0

    #@5e
    const/16 v43, 0x1

    #@60
    .line 81
    .local v43, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v46

    #@64
    .line 82
    .local v46, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v42

    #@68
    move/from16 v2, v43

    #@6a
    move-object/from16 v3, v46

    #@6c
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    #@6f
    .line 83
    const/4 v4, 0x1

    #@70
    return v4

    #@71
    .line 79
    .end local v43    # "_arg2":Z
    .end local v46    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v43, 0x0

    #@73
    .restart local v43    # "_arg2":Z
    goto :goto_0

    #@74
    .line 87
    .end local v6    # "_arg1":I
    .end local v42    # "_arg0":I
    .end local v43    # "_arg2":Z
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v42

    #@80
    .line 91
    .restart local v42    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v6

    #@84
    .line 93
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v7

    #@88
    .line 95
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_1

    #@8e
    .line 96
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@90
    move-object/from16 v0, p2

    #@92
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@95
    move-result-object v45

    #@96
    check-cast v45, Landroid/os/ParcelUuid;

    #@98
    .line 101
    :goto_1
    move-object/from16 v0, p0

    #@9a
    move/from16 v1, v42

    #@9c
    move-object/from16 v2, v45

    #@9e
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    #@a1
    .line 102
    const/4 v4, 0x1

    #@a2
    return v4

    #@a3
    .line 99
    :cond_1
    const/16 v45, 0x0

    #@a5
    .local v45, "_arg3":Landroid/os/ParcelUuid;
    goto :goto_1

    #@a6
    .line 106
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v42    # "_arg0":I
    .end local v45    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@a9
    move-object/from16 v0, p2

    #@ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b1
    move-result-object v5

    #@b2
    .line 110
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v6

    #@b6
    .line 112
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v7

    #@ba
    .line 114
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v4

    #@be
    if-eqz v4, :cond_2

    #@c0
    const/4 v8, 0x1

    #@c1
    .line 116
    .local v8, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v9

    #@c5
    .line 118
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8
    move-result v10

    #@c9
    .line 120
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v4

    #@cd
    if-eqz v4, :cond_3

    #@cf
    .line 121
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d6
    move-result-object v11

    #@d7
    check-cast v11, Landroid/os/ParcelUuid;

    #@d9
    .line 127
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v12

    #@dd
    .line 129
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v4

    #@e1
    if-eqz v4, :cond_4

    #@e3
    .line 130
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ea
    move-result-object v13

    #@eb
    check-cast v13, Landroid/os/ParcelUuid;

    #@ed
    :goto_4
    move-object/from16 v4, p0

    #@ef
    .line 135
    invoke-virtual/range {v4 .. v13}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    #@f2
    .line 136
    const/4 v4, 0x1

    #@f3
    return v4

    #@f4
    .line 114
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    :cond_2
    const/4 v8, 0x0

    #@f5
    .restart local v8    # "_arg3":Z
    goto :goto_2

    #@f6
    .line 124
    .restart local v9    # "_arg4":I
    .restart local v10    # "_arg5":I
    :cond_3
    const/4 v11, 0x0

    #@f7
    .local v11, "_arg6":Landroid/os/ParcelUuid;
    goto :goto_3

    #@f8
    .line 133
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v12    # "_arg7":I
    :cond_4
    const/4 v13, 0x0

    #@f9
    .local v13, "_arg8":Landroid/os/ParcelUuid;
    goto :goto_4

    #@fa
    .line 140
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@105
    move-result-object v5

    #@106
    .line 144
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v6

    #@10a
    .line 146
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v7

    #@10e
    .line 148
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v4

    #@112
    if-eqz v4, :cond_5

    #@114
    const/4 v8, 0x1

    #@115
    .line 150
    .restart local v8    # "_arg3":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@118
    move-result v9

    #@119
    .line 152
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v10

    #@11d
    .line 154
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v4

    #@121
    if-eqz v4, :cond_6

    #@123
    .line 155
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@125
    move-object/from16 v0, p2

    #@127
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a
    move-result-object v11

    #@12b
    check-cast v11, Landroid/os/ParcelUuid;

    #@12d
    .line 161
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@130
    move-result v12

    #@131
    .line 163
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v4

    #@135
    if-eqz v4, :cond_7

    #@137
    .line 164
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@139
    move-object/from16 v0, p2

    #@13b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13e
    move-result-object v13

    #@13f
    check-cast v13, Landroid/os/ParcelUuid;

    #@141
    .line 170
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v4

    #@145
    if-eqz v4, :cond_8

    #@147
    .line 171
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@149
    move-object/from16 v0, p2

    #@14b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14e
    move-result-object v14

    #@14f
    check-cast v14, Landroid/os/ParcelUuid;

    #@151
    :goto_8
    move-object/from16 v4, p0

    #@153
    .line 176
    invoke-virtual/range {v4 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    #@156
    .line 177
    const/4 v4, 0x1

    #@157
    return v4

    #@158
    .line 148
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    :cond_5
    const/4 v8, 0x0

    #@159
    .restart local v8    # "_arg3":Z
    goto :goto_5

    #@15a
    .line 158
    .restart local v9    # "_arg4":I
    .restart local v10    # "_arg5":I
    :cond_6
    const/4 v11, 0x0

    #@15b
    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_6

    #@15c
    .line 167
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v12    # "_arg7":I
    :cond_7
    const/4 v13, 0x0

    #@15d
    .restart local v13    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_7

    #@15e
    .line 174
    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    :cond_8
    const/4 v14, 0x0

    #@15f
    .local v14, "_arg9":Landroid/os/ParcelUuid;
    goto :goto_8

    #@160
    .line 181
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    .end local v14    # "_arg9":Landroid/os/ParcelUuid;
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@168
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16b
    move-result-object v5

    #@16c
    .line 185
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v6

    #@170
    .line 187
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v7

    #@174
    .line 189
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v19

    #@178
    .line 191
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17b
    move-result v4

    #@17c
    if-eqz v4, :cond_9

    #@17e
    const/16 v20, 0x1

    #@180
    .line 193
    .local v20, "_arg4":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@183
    move-result v4

    #@184
    if-eqz v4, :cond_a

    #@186
    const/16 v21, 0x1

    #@188
    .line 195
    .local v21, "_arg5":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v22

    #@18c
    .line 197
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18f
    move-result v12

    #@190
    .line 199
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v4

    #@194
    if-eqz v4, :cond_b

    #@196
    .line 200
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19d
    move-result-object v13

    #@19e
    check-cast v13, Landroid/os/ParcelUuid;

    #@1a0
    .line 206
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3
    move-result v25

    #@1a4
    .line 208
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v4

    #@1a8
    if-eqz v4, :cond_c

    #@1aa
    .line 209
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ac
    move-object/from16 v0, p2

    #@1ae
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b1
    move-result-object v26

    #@1b2
    check-cast v26, Landroid/os/ParcelUuid;

    #@1b4
    .line 215
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@1b7
    move-result-object v27

    #@1b8
    .local v27, "_arg11":[B
    move-object/from16 v15, p0

    #@1ba
    move-object/from16 v16, v5

    #@1bc
    move/from16 v17, v6

    #@1be
    move/from16 v18, v7

    #@1c0
    move/from16 v23, v12

    #@1c2
    move-object/from16 v24, v13

    #@1c4
    .line 216
    invoke-virtual/range {v15 .. v27}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    #@1c7
    .line 217
    const/4 v4, 0x1

    #@1c8
    return v4

    #@1c9
    .line 191
    .end local v12    # "_arg7":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v27    # "_arg11":[B
    :cond_9
    const/16 v20, 0x0

    #@1cb
    .restart local v20    # "_arg4":Z
    goto :goto_9

    #@1cc
    .line 193
    :cond_a
    const/16 v21, 0x0

    #@1ce
    .restart local v21    # "_arg5":Z
    goto :goto_a

    #@1cf
    .line 203
    .restart local v12    # "_arg7":I
    .restart local v22    # "_arg6":I
    :cond_b
    const/4 v13, 0x0

    #@1d0
    .restart local v13    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_b

    #@1d1
    .line 212
    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    .restart local v25    # "_arg9":I
    :cond_c
    const/16 v26, 0x0

    #@1d3
    .local v26, "_arg10":Landroid/os/ParcelUuid;
    goto :goto_c

    #@1d4
    .line 221
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg7":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dc
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1df
    move-result-object v5

    #@1e0
    .line 225
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e3
    move-result v6

    #@1e4
    .line 227
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v7

    #@1e8
    .line 229
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1eb
    move-result v19

    #@1ec
    .line 231
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ef
    move-result v4

    #@1f0
    if-eqz v4, :cond_d

    #@1f2
    const/16 v20, 0x1

    #@1f4
    .line 233
    .restart local v20    # "_arg4":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f7
    move-result v4

    #@1f8
    if-eqz v4, :cond_e

    #@1fa
    const/16 v21, 0x1

    #@1fc
    .line 235
    .restart local v21    # "_arg5":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v22

    #@200
    .line 237
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v12

    #@204
    .line 239
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v4

    #@208
    if-eqz v4, :cond_f

    #@20a
    .line 240
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20c
    move-object/from16 v0, p2

    #@20e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@211
    move-result-object v13

    #@212
    check-cast v13, Landroid/os/ParcelUuid;

    #@214
    .line 246
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v25

    #@218
    .line 248
    .restart local v25    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v4

    #@21c
    if-eqz v4, :cond_10

    #@21e
    .line 249
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@225
    move-result-object v26

    #@226
    check-cast v26, Landroid/os/ParcelUuid;

    #@228
    .line 255
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22b
    move-result v4

    #@22c
    if-eqz v4, :cond_11

    #@22e
    .line 256
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@230
    move-object/from16 v0, p2

    #@232
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@235
    move-result-object v40

    #@236
    check-cast v40, Landroid/os/ParcelUuid;

    #@238
    .line 262
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@23b
    move-result-object v41

    #@23c
    .local v41, "_arg12":[B
    move-object/from16 v28, p0

    #@23e
    move-object/from16 v29, v5

    #@240
    move/from16 v30, v6

    #@242
    move/from16 v31, v7

    #@244
    move/from16 v32, v19

    #@246
    move/from16 v33, v20

    #@248
    move/from16 v34, v21

    #@24a
    move/from16 v35, v22

    #@24c
    move/from16 v36, v12

    #@24e
    move-object/from16 v37, v13

    #@250
    move/from16 v38, v25

    #@252
    move-object/from16 v39, v26

    #@254
    .line 263
    invoke-virtual/range {v28 .. v41}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    #@257
    .line 264
    const/4 v4, 0x1

    #@258
    return v4

    #@259
    .line 231
    .end local v12    # "_arg7":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v41    # "_arg12":[B
    :cond_d
    const/16 v20, 0x0

    #@25b
    .restart local v20    # "_arg4":Z
    goto :goto_d

    #@25c
    .line 233
    :cond_e
    const/16 v21, 0x0

    #@25e
    .restart local v21    # "_arg5":Z
    goto :goto_e

    #@25f
    .line 243
    .restart local v12    # "_arg7":I
    .restart local v22    # "_arg6":I
    :cond_f
    const/4 v13, 0x0

    #@260
    .restart local v13    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_f

    #@261
    .line 252
    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    .restart local v25    # "_arg9":I
    :cond_10
    const/16 v26, 0x0

    #@263
    .restart local v26    # "_arg10":Landroid/os/ParcelUuid;
    goto :goto_10

    #@264
    .line 259
    .end local v26    # "_arg10":Landroid/os/ParcelUuid;
    :cond_11
    const/16 v40, 0x0

    #@266
    .local v40, "_arg11":Landroid/os/ParcelUuid;
    goto :goto_11

    #@267
    .line 268
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg7":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v40    # "_arg11":Landroid/os/ParcelUuid;
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@26a
    move-object/from16 v0, p2

    #@26c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26f
    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@272
    move-result-object v5

    #@273
    .line 272
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@276
    move-result v6

    #@277
    .line 274
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27a
    move-result v4

    #@27b
    if-eqz v4, :cond_12

    #@27d
    const/16 v43, 0x1

    #@27f
    .line 275
    .restart local v43    # "_arg2":Z
    :goto_12
    move-object/from16 v0, p0

    #@281
    move/from16 v1, v43

    #@283
    invoke-virtual {v0, v5, v6, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    #@286
    .line 276
    const/4 v4, 0x1

    #@287
    return v4

    #@288
    .line 274
    .end local v43    # "_arg2":Z
    :cond_12
    const/16 v43, 0x0

    #@28a
    .restart local v43    # "_arg2":Z
    goto :goto_12

    #@28b
    .line 280
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_arg2":Z
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@28e
    move-object/from16 v0, p2

    #@290
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@293
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@296
    move-result-object v5

    #@297
    .line 284
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29a
    move-result v6

    #@29b
    .line 285
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@29d
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    #@2a0
    .line 286
    const/4 v4, 0x1

    #@2a1
    return v4

    #@2a2
    .line 290
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ad
    move-result-object v5

    #@2ae
    .line 294
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b1
    move-result v6

    #@2b2
    .line 295
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@2b4
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    #@2b7
    .line 296
    const/4 v4, 0x1

    #@2b8
    return v4

    #@2b9
    .line 42
    nop

    #@2ba
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
