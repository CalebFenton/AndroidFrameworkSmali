.class public abstract Landroid/media/midi/IMidiManager$Stub;
.super Landroid/os/Binder;
.source "IMidiManager.java"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiManager"

.field static final greylist-max-o TRANSACTION_closeDevice:I = 0x7

.field static final greylist-max-o TRANSACTION_getDeviceStatus:I = 0xb

.field static final greylist-max-o TRANSACTION_getDevices:I = 0x1

.field static final blacklist TRANSACTION_getDevicesForTransport:I = 0x2

.field static final greylist-max-o TRANSACTION_getServiceDeviceInfo:I = 0xa

.field static final greylist-max-o TRANSACTION_openBluetoothDevice:I = 0x6

.field static final greylist-max-o TRANSACTION_openDevice:I = 0x5

.field static final greylist-max-o TRANSACTION_registerDeviceServer:I = 0x8

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceStatus:I = 0xc

.field static final greylist-max-o TRANSACTION_unregisterDeviceServer:I = 0x9

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x4

.field static final blacklist TRANSACTION_updateTotalBytes:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_4
    const-string v0, "android.media.midi.IMidiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/midi/IMidiManager;

    if-eqz v1, :cond_14

    .line 94
    move-object v1, v0

    check-cast v1, Landroid/media/midi/IMidiManager;

    return-object v1

    .line 96
    :cond_14
    new-instance v1, Landroid/media/midi/IMidiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/midi/IMidiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 105
    packed-switch p0, :pswitch_data_2c

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 157
    :pswitch_5
    const-string v0, "updateTotalBytes"

    return-object v0

    .line 153
    :pswitch_8
    const-string v0, "setDeviceStatus"

    return-object v0

    .line 149
    :pswitch_b
    const-string v0, "getDeviceStatus"

    return-object v0

    .line 145
    :pswitch_e
    const-string v0, "getServiceDeviceInfo"

    return-object v0

    .line 141
    :pswitch_11
    const-string v0, "unregisterDeviceServer"

    return-object v0

    .line 137
    :pswitch_14
    const-string v0, "registerDeviceServer"

    return-object v0

    .line 133
    :pswitch_17
    const-string v0, "closeDevice"

    return-object v0

    .line 129
    :pswitch_1a
    const-string v0, "openBluetoothDevice"

    return-object v0

    .line 125
    :pswitch_1d
    const-string v0, "openDevice"

    return-object v0

    .line 121
    :pswitch_20
    const-string v0, "unregisterListener"

    return-object v0

    .line 117
    :pswitch_23
    const-string v0, "registerListener"

    return-object v0

    .line 113
    :pswitch_26
    const-string v0, "getDevicesForTransport"

    return-object v0

    .line 109
    :pswitch_29
    const-string v0, "getDevices"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
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

    .line 100
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 614
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 168
    invoke-static {p1}, Landroid/media/midi/IMidiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 172
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.media.midi.IMidiManager"

    .line 173
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_13

    const v5, 0xffffff

    if-gt v0, v5, :cond_13

    .line 174
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    :cond_13
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1c

    .line 177
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v4

    .line 180
    :cond_1c
    packed-switch v0, :pswitch_data_16e

    .line 339
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 327
    :pswitch_24
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v5

    .line 329
    .local v5, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 331
    .local v6, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 332
    .local v7, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v5, v6, v7}, Landroid/media/midi/IMidiManager$Stub;->updateTotalBytes(Landroid/media/midi/IMidiDeviceServer;II)V

    .line 334
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_16c

    .line 316
    .end local v5    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :pswitch_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v5

    .line 318
    .restart local v5    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    sget-object v6, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/midi/MidiDeviceStatus;

    .line 319
    .local v6, "_arg1":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v5, v6}, Landroid/media/midi/IMidiManager$Stub;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 321
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    goto/16 :goto_16c

    .line 306
    .end local v5    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v6    # "_arg1":Landroid/media/midi/MidiDeviceStatus;
    :pswitch_5a
    sget-object v5, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/midi/MidiDeviceInfo;

    .line 307
    .local v5, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v5}, Landroid/media/midi/IMidiManager$Stub;->getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;

    move-result-object v6

    .line 309
    .local v6, "_result":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v2, v6, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    goto/16 :goto_16c

    .line 294
    .end local v5    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .end local v6    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :pswitch_71
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v5, v6}, Landroid/media/midi/IMidiManager$Stub;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v7

    .line 299
    .local v7, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v2, v7, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_16c

    .line 285
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :pswitch_88
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v5

    .line 286
    .local v5, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v5}, Landroid/media/midi/IMidiManager$Stub;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto/16 :goto_16c

    .line 261
    .end local v5    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    :pswitch_9b
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v7

    .line 263
    .local v7, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 265
    .local v8, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 267
    .local v9, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "_arg3":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, "_arg4":[Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/os/Bundle;

    .line 273
    .local v12, "_arg5":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 275
    .local v13, "_arg6":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 276
    .local v14, "_arg7":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    move-object v6, p0

    invoke-virtual/range {v6 .. v14}, Landroid/media/midi/IMidiManager$Stub;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    .line 278
    .local v5, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    goto/16 :goto_16c

    .line 250
    .end local v5    # "_result":Landroid/media/midi/MidiDeviceInfo;
    .end local v7    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[Ljava/lang/String;
    .end local v11    # "_arg4":[Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/os/Bundle;
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    :pswitch_d4
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 252
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 253
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v5, v7}, Landroid/media/midi/IMidiManager$Stub;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 255
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_16c

    .line 237
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    :pswitch_e7
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 239
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 241
    .local v7, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v8

    .line 242
    .local v8, "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v5, v7, v8}, Landroid/media/midi/IMidiManager$Stub;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_16c

    .line 224
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :pswitch_105
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 226
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    sget-object v7, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/midi/MidiDeviceInfo;

    .line 228
    .local v7, "_arg1":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v8

    .line 229
    .restart local v8    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v5, v7, v8}, Landroid/media/midi/IMidiManager$Stub;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 231
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto :goto_16c

    .line 213
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    .end local v8    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :pswitch_123
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 215
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v7

    .line 216
    .local v7, "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v5, v7}, Landroid/media/midi/IMidiManager$Stub;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 218
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_16c

    .line 202
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :pswitch_139
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 204
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v7

    .line 205
    .restart local v7    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v5, v7}, Landroid/media/midi/IMidiManager$Stub;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 207
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_16c

    .line 192
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :pswitch_14f
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 193
    .local v5, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v5}, Landroid/media/midi/IMidiManager$Stub;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v7

    .line 195
    .local v7, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v2, v7, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 197
    goto :goto_16c

    .line 184
    .end local v5    # "_arg0":I
    .end local v7    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :pswitch_161
    invoke-virtual {p0}, Landroid/media/midi/IMidiManager$Stub;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    .line 185
    .local v5, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 187
    nop

    .line 342
    .end local v5    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :goto_16c
    return v4

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_161
        :pswitch_14f
        :pswitch_139
        :pswitch_123
        :pswitch_105
        :pswitch_e7
        :pswitch_d4
        :pswitch_9b
        :pswitch_88
        :pswitch_71
        :pswitch_5a
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
