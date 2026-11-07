.class public abstract Landroid/devicelock/IDeviceLockService$Stub;
.super Landroid/os/Binder;
.source "IDeviceLockService.java"

# interfaces
.implements Landroid/devicelock/IDeviceLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/devicelock/IDeviceLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devicelock/IDeviceLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addFinancedDeviceKioskRole:I = 0x7

.field static final blacklist TRANSACTION_clearDeviceRestrictions:I = 0x4

.field static final blacklist TRANSACTION_disableControllerKeepalive:I = 0xf

.field static final blacklist TRANSACTION_disableKioskKeepalive:I = 0xd

.field static final blacklist TRANSACTION_enableControllerKeepalive:I = 0xe

.field static final blacklist TRANSACTION_enableKioskKeepalive:I = 0xc

.field static final blacklist TRANSACTION_getDeviceId:I = 0x5

.field static final blacklist TRANSACTION_getKioskApps:I = 0x6

.field static final blacklist TRANSACTION_isDeviceLocked:I = 0x3

.field static final blacklist TRANSACTION_lockDevice:I = 0x1

.field static final blacklist TRANSACTION_removeFinancedDeviceKioskRole:I = 0x8

.field static final blacklist TRANSACTION_setCallerAllowedToSendUndismissibleNotifications:I = 0xa

.field static final blacklist TRANSACTION_setCallerExemptFromActivityBgStartRestrictionState:I = 0x9

.field static final blacklist TRANSACTION_setDeviceFinalized:I = 0x10

.field static final blacklist TRANSACTION_setPostNotificationsSystemFixed:I = 0x11

.field static final blacklist TRANSACTION_setUidExemptFromRestrictionsState:I = 0xb

.field static final blacklist TRANSACTION_unlockDevice:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.devicelock.IDeviceLockService"

    invoke-virtual {p0, p0, v0}, Landroid/devicelock/IDeviceLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/devicelock/IDeviceLockService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "android.devicelock.IDeviceLockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/devicelock/IDeviceLockService;

    if-eqz v1, :cond_14

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/devicelock/IDeviceLockService;

    return-object v1

    .line 117
    :cond_14
    new-instance v1, Landroid/devicelock/IDeviceLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/devicelock/IDeviceLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_38

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 194
    :pswitch_5
    const-string v0, "setPostNotificationsSystemFixed"

    return-object v0

    .line 190
    :pswitch_8
    const-string v0, "setDeviceFinalized"

    return-object v0

    .line 186
    :pswitch_b
    const-string v0, "disableControllerKeepalive"

    return-object v0

    .line 182
    :pswitch_e
    const-string v0, "enableControllerKeepalive"

    return-object v0

    .line 178
    :pswitch_11
    const-string v0, "disableKioskKeepalive"

    return-object v0

    .line 174
    :pswitch_14
    const-string v0, "enableKioskKeepalive"

    return-object v0

    .line 170
    :pswitch_17
    const-string v0, "setUidExemptFromRestrictionsState"

    return-object v0

    .line 166
    :pswitch_1a
    const-string v0, "setCallerAllowedToSendUndismissibleNotifications"

    return-object v0

    .line 162
    :pswitch_1d
    const-string v0, "setCallerExemptFromActivityBgStartRestrictionState"

    return-object v0

    .line 158
    :pswitch_20
    const-string v0, "removeFinancedDeviceKioskRole"

    return-object v0

    .line 154
    :pswitch_23
    const-string v0, "addFinancedDeviceKioskRole"

    return-object v0

    .line 150
    :pswitch_26
    const-string v0, "getKioskApps"

    return-object v0

    .line 146
    :pswitch_29
    const-string v0, "getDeviceId"

    return-object v0

    .line 142
    :pswitch_2c
    const-string v0, "clearDeviceRestrictions"

    return-object v0

    .line 138
    :pswitch_2f
    const-string v0, "isDeviceLocked"

    return-object v0

    .line 134
    :pswitch_32
    const-string v0, "unlockDevice"

    return-object v0

    .line 130
    :pswitch_35
    const-string v0, "lockDevice"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
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

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 649
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 205
    invoke-static {p1}, Landroid/devicelock/IDeviceLockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 209
    const-string v0, "android.devicelock.IDeviceLockService"

    .line 210
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v1

    .line 217
    :cond_16
    packed-switch p1, :pswitch_data_14c

    .line 375
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 366
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 368
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 369
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->setPostNotificationsSystemFixed(ZLandroid/os/RemoteCallback;)V

    .line 371
    goto/16 :goto_14a

    .line 356
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 358
    .restart local v2    # "_arg0":Z
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 359
    .restart local v3    # "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->setDeviceFinalized(ZLandroid/os/RemoteCallback;)V

    .line 361
    goto/16 :goto_14a

    .line 348
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_46
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 349
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->disableControllerKeepalive(Landroid/os/RemoteCallback;)V

    .line 351
    goto/16 :goto_14a

    .line 340
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_56
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 341
    .restart local v2    # "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->enableControllerKeepalive(Landroid/os/RemoteCallback;)V

    .line 343
    goto/16 :goto_14a

    .line 332
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_66
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 333
    .restart local v2    # "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->disableKioskKeepalive(Landroid/os/RemoteCallback;)V

    .line 335
    goto/16 :goto_14a

    .line 322
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 325
    .restart local v3    # "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->enableKioskKeepalive(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 327
    goto/16 :goto_14a

    .line 310
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 314
    .local v3, "_arg1":Z
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 315
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3, v4}, Landroid/devicelock/IDeviceLockService$Stub;->setUidExemptFromRestrictionsState(IZLandroid/os/RemoteCallback;)V

    .line 317
    goto/16 :goto_14a

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 302
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 303
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->setCallerAllowedToSendUndismissibleNotifications(ZLandroid/os/RemoteCallback;)V

    .line 305
    goto/16 :goto_14a

    .line 290
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 292
    .restart local v2    # "_arg0":Z
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 293
    .restart local v3    # "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->setCallerExemptFromActivityBgStartRestrictionState(ZLandroid/os/RemoteCallback;)V

    .line 295
    goto/16 :goto_14a

    .line 280
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 283
    .restart local v3    # "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->removeFinancedDeviceKioskRole(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 285
    goto :goto_14a

    .line 270
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 273
    .restart local v3    # "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2, v3}, Landroid/devicelock/IDeviceLockService$Stub;->addFinancedDeviceKioskRole(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 275
    goto :goto_14a

    .line 262
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/devicelock/IGetKioskAppsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IGetKioskAppsCallback;

    move-result-object v2

    .line 263
    .local v2, "_arg0":Landroid/devicelock/IGetKioskAppsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->getKioskApps(Landroid/devicelock/IGetKioskAppsCallback;)V

    .line 265
    goto :goto_14a

    .line 254
    .end local v2    # "_arg0":Landroid/devicelock/IGetKioskAppsCallback;
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/devicelock/IGetDeviceIdCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IGetDeviceIdCallback;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Landroid/devicelock/IGetDeviceIdCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->getDeviceId(Landroid/devicelock/IGetDeviceIdCallback;)V

    .line 257
    goto :goto_14a

    .line 246
    .end local v2    # "_arg0":Landroid/devicelock/IGetDeviceIdCallback;
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/devicelock/IVoidResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IVoidResultCallback;

    move-result-object v2

    .line 247
    .local v2, "_arg0":Landroid/devicelock/IVoidResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->clearDeviceRestrictions(Landroid/devicelock/IVoidResultCallback;)V

    .line 249
    goto :goto_14a

    .line 238
    .end local v2    # "_arg0":Landroid/devicelock/IVoidResultCallback;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/devicelock/IIsDeviceLockedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IIsDeviceLockedCallback;

    move-result-object v2

    .line 239
    .local v2, "_arg0":Landroid/devicelock/IIsDeviceLockedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->isDeviceLocked(Landroid/devicelock/IIsDeviceLockedCallback;)V

    .line 241
    goto :goto_14a

    .line 230
    .end local v2    # "_arg0":Landroid/devicelock/IIsDeviceLockedCallback;
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/devicelock/IVoidResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IVoidResultCallback;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Landroid/devicelock/IVoidResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->unlockDevice(Landroid/devicelock/IVoidResultCallback;)V

    .line 233
    goto :goto_14a

    .line 222
    .end local v2    # "_arg0":Landroid/devicelock/IVoidResultCallback;
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/devicelock/IVoidResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/devicelock/IVoidResultCallback;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Landroid/devicelock/IVoidResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/devicelock/IDeviceLockService$Stub;->lockDevice(Landroid/devicelock/IVoidResultCallback;)V

    .line 225
    nop

    .line 378
    .end local v2    # "_arg0":Landroid/devicelock/IVoidResultCallback;
    :goto_14a
    return v1

    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_13b
        :pswitch_12c
        :pswitch_11d
        :pswitch_10e
        :pswitch_ff
        :pswitch_f0
        :pswitch_dd
        :pswitch_ca
        :pswitch_b6
        :pswitch_a2
        :pswitch_8a
        :pswitch_76
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
