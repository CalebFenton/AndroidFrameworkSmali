.class public abstract Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeBroadcastAssistantCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onReceiveStateChanged:I = 0xc

.field static final blacklist TRANSACTION_onSearchStartFailed:I = 0x2

.field static final blacklist TRANSACTION_onSearchStarted:I = 0x1

.field static final blacklist TRANSACTION_onSearchStopFailed:I = 0x4

.field static final blacklist TRANSACTION_onSearchStopped:I = 0x3

.field static final blacklist TRANSACTION_onSourceAddFailed:I = 0x7

.field static final blacklist TRANSACTION_onSourceAdded:I = 0x6

.field static final blacklist TRANSACTION_onSourceFound:I = 0x5

.field static final blacklist TRANSACTION_onSourceLost:I = 0xd

.field static final blacklist TRANSACTION_onSourceModified:I = 0x8

.field static final blacklist TRANSACTION_onSourceModifyFailed:I = 0x9

.field static final blacklist TRANSACTION_onSourceRemoveFailed:I = 0xb

.field static final blacklist TRANSACTION_onSourceRemoved:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistantCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistantCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_2c

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 147
    :pswitch_5
    const-string v0, "onSourceLost"

    return-object v0

    .line 143
    :pswitch_8
    const-string v0, "onReceiveStateChanged"

    return-object v0

    .line 139
    :pswitch_b
    const-string v0, "onSourceRemoveFailed"

    return-object v0

    .line 135
    :pswitch_e
    const-string v0, "onSourceRemoved"

    return-object v0

    .line 131
    :pswitch_11
    const-string v0, "onSourceModifyFailed"

    return-object v0

    .line 127
    :pswitch_14
    const-string v0, "onSourceModified"

    return-object v0

    .line 123
    :pswitch_17
    const-string v0, "onSourceAddFailed"

    return-object v0

    .line 119
    :pswitch_1a
    const-string v0, "onSourceAdded"

    return-object v0

    .line 115
    :pswitch_1d
    const-string v0, "onSourceFound"

    return-object v0

    .line 111
    :pswitch_20
    const-string v0, "onSearchStopFailed"

    return-object v0

    .line 107
    :pswitch_23
    const-string v0, "onSearchStopped"

    return-object v0

    .line 103
    :pswitch_26
    const-string v0, "onSearchStartFailed"

    return-object v0

    .line 99
    :pswitch_29
    const-string v0, "onSearchStarted"

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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 565
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 158
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistantCallback"

    .line 163
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v1

    .line 170
    :cond_16
    packed-switch p1, :pswitch_data_13c

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 311
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceLost(I)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_13a

    .line 298
    .end local v2    # "_arg0":I
    :pswitch_2d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 300
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "_arg1":I
    sget-object v4, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 303
    .local v4, "_arg2":Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_13a

    .line 285
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    :pswitch_4c
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 287
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 290
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_13a

    .line 272
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_67
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 274
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto/16 :goto_13a

    .line 259
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_82
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 263
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 264
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_13a

    .line 246
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_9d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 248
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_13a

    .line 233
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_b8
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 235
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 237
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto :goto_13a

    .line 220
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .end local v4    # "_arg2":I
    :pswitch_d6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 222
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 225
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_13a

    .line 211
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_f0
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 212
    .local v2, "_arg0":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_13a

    .line 202
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStopFailed(I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_13a

    .line 193
    .end local v2    # "_arg0":I
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStopped(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_13a

    .line 184
    .end local v2    # "_arg0":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStartFailed(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_13a

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStarted(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    nop

    .line 322
    .end local v2    # "_arg0":I
    :goto_13a
    return v1

    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_12c
        :pswitch_11e
        :pswitch_110
        :pswitch_102
        :pswitch_f0
        :pswitch_d6
        :pswitch_b8
        :pswitch_9d
        :pswitch_82
        :pswitch_67
        :pswitch_4c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
