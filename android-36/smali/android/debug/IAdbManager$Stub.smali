.class public abstract Landroid/debug/IAdbManager$Stub;
.super Landroid/os/Binder;
.source "IAdbManager.java"

# interfaces
.implements Landroid/debug/IAdbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/IAdbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allowDebugging:I = 0x1

.field static final blacklist TRANSACTION_allowWirelessDebugging:I = 0x4

.field static final blacklist TRANSACTION_clearDebuggingKeys:I = 0x3

.field static final blacklist TRANSACTION_denyDebugging:I = 0x2

.field static final blacklist TRANSACTION_denyWirelessDebugging:I = 0x5

.field static final blacklist TRANSACTION_disablePairing:I = 0xb

.field static final blacklist TRANSACTION_enablePairingByPairingCode:I = 0x8

.field static final blacklist TRANSACTION_enablePairingByQrCode:I = 0x9

.field static final blacklist TRANSACTION_getAdbWirelessPort:I = 0xa

.field static final blacklist TRANSACTION_getPairedDevices:I = 0x6

.field static final blacklist TRANSACTION_isAdbWifiQrSupported:I = 0xd

.field static final blacklist TRANSACTION_isAdbWifiSupported:I = 0xc

.field static final blacklist TRANSACTION_registerCallback:I = 0xe

.field static final blacklist TRANSACTION_unpairDevice:I = 0x7

.field static final blacklist TRANSACTION_unregisterCallback:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    const-string v0, "android.debug.IAdbManager"

    invoke-virtual {p0, p0, v0}, Landroid/debug/IAdbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 141
    if-nez p0, :cond_4

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_4
    const-string v0, "android.debug.IAdbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 145
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/debug/IAdbManager;

    if-eqz v1, :cond_14

    .line 146
    move-object v1, v0

    check-cast v1, Landroid/debug/IAdbManager;

    return-object v1

    .line 148
    :cond_14
    new-instance v1, Landroid/debug/IAdbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/debug/IAdbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 157
    packed-switch p0, :pswitch_data_38

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 217
    :pswitch_5
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 213
    :pswitch_9
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 209
    :pswitch_d
    const-string/jumbo v0, "isAdbWifiQrSupported"

    return-object v0

    .line 205
    :pswitch_11
    const-string/jumbo v0, "isAdbWifiSupported"

    return-object v0

    .line 201
    :pswitch_15
    const-string v0, "disablePairing"

    return-object v0

    .line 197
    :pswitch_18
    const-string v0, "getAdbWirelessPort"

    return-object v0

    .line 193
    :pswitch_1b
    const-string v0, "enablePairingByQrCode"

    return-object v0

    .line 189
    :pswitch_1e
    const-string v0, "enablePairingByPairingCode"

    return-object v0

    .line 185
    :pswitch_21
    const-string/jumbo v0, "unpairDevice"

    return-object v0

    .line 181
    :pswitch_25
    const-string v0, "getPairedDevices"

    return-object v0

    .line 177
    :pswitch_28
    const-string v0, "denyWirelessDebugging"

    return-object v0

    .line 173
    :pswitch_2b
    const-string v0, "allowWirelessDebugging"

    return-object v0

    .line 169
    :pswitch_2e
    const-string v0, "clearDebuggingKeys"

    return-object v0

    .line 165
    :pswitch_31
    const-string v0, "denyDebugging"

    return-object v0

    .line 161
    :pswitch_34
    const-string v0, "allowDebugging"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 152
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 684
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 228
    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    const-string v0, "android.debug.IAdbManager"

    .line 233
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 234
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 237
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    return v1

    .line 240
    :cond_16
    packed-switch p1, :pswitch_data_dc

    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 354
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object v2

    .line 355
    .local v2, "_arg0":Landroid/debug/IAdbCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->unregisterCallback(Landroid/debug/IAdbCallback;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto/16 :goto_da

    .line 345
    .end local v2    # "_arg0":Landroid/debug/IAdbCallback;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object v2

    .line 346
    .restart local v2    # "_arg0":Landroid/debug/IAdbCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->registerCallback(Landroid/debug/IAdbCallback;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_da

    .line 337
    .end local v2    # "_arg0":Landroid/debug/IAdbCallback;
    :pswitch_44
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiQrSupported()Z

    move-result v2

    .line 338
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 340
    goto/16 :goto_da

    .line 330
    .end local v2    # "_result":Z
    :pswitch_50
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiSupported()Z

    move-result v2

    .line 331
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 333
    goto/16 :goto_da

    .line 324
    .end local v2    # "_result":Z
    :pswitch_5c
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->disablePairing()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_da

    .line 317
    :pswitch_64
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getAdbWirelessPort()I

    move-result v2

    .line 318
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto :goto_da

    .line 307
    .end local v2    # "_result":I
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto :goto_da

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_81
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->enablePairingByPairingCode()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto :goto_da

    .line 292
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->unpairDevice(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_da

    .line 284
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_96
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;

    move-result-object v2

    .line 285
    .local v2, "_result":[Landroid/debug/FingerprintAndPairDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 287
    goto :goto_da

    .line 278
    .end local v2    # "_result":[Landroid/debug/FingerprintAndPairDevice;
    :pswitch_a1
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyWirelessDebugging()V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto :goto_da

    .line 268
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 270
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->allowWirelessDebugging(ZLjava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto :goto_da

    .line 261
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_ba
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->clearDebuggingKeys()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_da

    .line 255
    :pswitch_c1
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyDebugging()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_da

    .line 245
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 247
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->allowDebugging(ZLjava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    nop

    .line 365
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_da
    return v1

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_c1
        :pswitch_ba
        :pswitch_a8
        :pswitch_a1
        :pswitch_96
        :pswitch_88
        :pswitch_81
        :pswitch_6f
        :pswitch_64
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
