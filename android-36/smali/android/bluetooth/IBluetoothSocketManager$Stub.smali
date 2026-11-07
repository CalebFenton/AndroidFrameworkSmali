.class public abstract Landroid/bluetooth/IBluetoothSocketManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSocketManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSocketManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSocketManager"

.field static final blacklist TRANSACTION_connectSocket:I = 0x1

.field static final blacklist TRANSACTION_connectSocketWithOffload:I = 0x2

.field static final blacklist TRANSACTION_createSocketChannel:I = 0x3

.field static final blacklist TRANSACTION_createSocketChannelWithOffload:I = 0x4

.field static final blacklist TRANSACTION_getL2capLocalChannelId:I = 0x6

.field static final blacklist TRANSACTION_getL2capRemoteChannelId:I = 0x7

.field static final blacklist TRANSACTION_requestMaximumTxDataLength:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocketManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSocketManager;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothSocketManager;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_1a

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_5
    const-string v0, "getL2capRemoteChannelId"

    return-object v0

    .line 107
    :pswitch_8
    const-string v0, "getL2capLocalChannelId"

    return-object v0

    .line 103
    :pswitch_b
    const-string v0, "requestMaximumTxDataLength"

    return-object v0

    .line 99
    :pswitch_e
    const-string v0, "createSocketChannelWithOffload"

    return-object v0

    .line 95
    :pswitch_11
    const-string v0, "createSocketChannel"

    return-object v0

    .line 91
    :pswitch_14
    const-string v0, "connectSocketWithOffload"

    return-object v0

    .line 87
    :pswitch_17
    const-string v0, "connectSocket"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 447
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 122
    invoke-static {p1}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v1, "android.bluetooth.IBluetoothSocketManager"

    .line 127
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v13, v2, :cond_15

    const v3, 0xffffff

    if-gt v13, v3, :cond_15

    .line 128
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_15
    const v3, 0x5f4e5446

    if-ne v13, v3, :cond_1e

    .line 131
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v2

    .line 134
    :cond_1e
    packed-switch v13, :pswitch_data_172

    .line 263
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 252
    :pswitch_26
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 254
    .local v3, "_arg0":Landroid/os/ParcelUuid;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 255
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->getL2capRemoteChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I

    move-result v5

    .line 257
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    move-object/from16 v17, v1

    move v11, v2

    goto/16 :goto_170

    .line 240
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_48
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 242
    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 243
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->getL2capLocalChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I

    move-result v5

    .line 245
    .restart local v5    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    move-object/from16 v17, v1

    move v11, v2

    goto/16 :goto_170

    .line 231
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_6a
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 232
    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V

    .line 234
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v17, v1

    move v11, v2

    goto/16 :goto_170

    .line 203
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_80
    move-object v3, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .local v3, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .local v1, "_arg0":I
    move v4, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 209
    .local v5, "_arg2":Landroid/os/ParcelUuid;
    move v6, v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .local v4, "_arg3":I
    move-object v7, v3

    move-object v3, v5

    .end local v5    # "_arg2":Landroid/os/ParcelUuid;
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    .local v7, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 213
    .local v5, "_arg4":I
    move v8, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 215
    .local v6, "_arg5":I
    move-object v9, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "_arg6":Ljava/lang/String;
    move v11, v8

    move-object v10, v9

    .end local v9    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 219
    .local v8, "_arg7":J
    move-object v12, v10

    move/from16 v16, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 221
    .local v10, "_arg8":J
    move-object/from16 v17, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 222
    .local v12, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual/range {v0 .. v12}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->createSocketChannelWithOffload(ILjava/lang/String;Landroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 224
    .local v13, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {v15, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 226
    const/4 v11, 0x1

    goto/16 :goto_170

    .line 185
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":J
    .end local v10    # "_arg8":J
    .end local v12    # "_arg9":I
    .end local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    :pswitch_cb
    move-object/from16 v17, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelUuid;

    .line 191
    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 196
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v11, 0x1

    invoke-virtual {v15, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 198
    const/4 v11, 0x1

    goto/16 :goto_170

    .line 157
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    :pswitch_f9
    move-object/from16 v17, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 159
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg1":I
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelUuid;

    .line 163
    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 167
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 169
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .restart local v7    # "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 173
    .restart local v8    # "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 175
    .restart local v10    # "_arg8":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 176
    .restart local v12    # "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->connectSocketWithOffload(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 178
    .restart local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {v15, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    const/4 v11, 0x1

    goto :goto_170

    .line 139
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":J
    .end local v10    # "_arg8":J
    .end local v12    # "_arg9":I
    .end local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    :pswitch_13f
    move-object/from16 v17, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .restart local v17    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 141
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg1":I
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelUuid;

    .line 145
    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 148
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 150
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v11, 0x1

    invoke-virtual {v15, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    nop

    .line 266
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_170
    return v11

    nop

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_f9
        :pswitch_cb
        :pswitch_80
        :pswitch_6a
        :pswitch_48
        :pswitch_26
    .end packed-switch
.end method
