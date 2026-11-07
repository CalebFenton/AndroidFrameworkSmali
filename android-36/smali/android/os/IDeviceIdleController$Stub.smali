.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistApp:I = 0x12

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0x13

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x14

.field static final greylist-max-o TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final blacklist TRANSACTION_addPowerSaveWhitelistApps:I = 0x2

.field static final greylist-max-o TRANSACTION_exitIdle:I = 0x16

.field static final greylist-max-o TRANSACTION_getAppIdTempWhitelist:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppIdUserWhitelist:I = 0xe

.field static final greylist-max-o TRANSACTION_getAppIdWhitelist:I = 0xd

.field static final greylist-max-o TRANSACTION_getAppIdWhitelistExceptIdle:I = 0xc

.field static final greylist-max-o TRANSACTION_getFullPowerWhitelist:I = 0xb

.field static final greylist-max-o TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0xa

.field static final greylist-max-o TRANSACTION_getRemovedSystemPowerWhitelistApps:I = 0x6

.field static final greylist-max-o TRANSACTION_getSystemPowerWhitelist:I = 0x8

.field static final greylist-max-o TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x7

.field static final greylist-max-o TRANSACTION_getUserPowerWhitelist:I = 0x9

.field static final greylist-max-o TRANSACTION_isPowerSaveWhitelistApp:I = 0x11

.field static final greylist-max-o TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0x10

.field static final greylist-max-o TRANSACTION_removePowerSaveWhitelistApp:I = 0x3

.field static final greylist-max-o TRANSACTION_removeSystemPowerWhitelistApp:I = 0x4

.field static final greylist-max-o TRANSACTION_restoreSystemPowerWhitelistApp:I = 0x5

.field static final blacklist TRANSACTION_whitelistAppTemporarily:I = 0x15


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    nop

    .line 124
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/IDeviceIdleController$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_d

    .line 118
    iput-object p1, p0, Landroid/os/IDeviceIdleController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 119
    return-void

    .line 116
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_4
    const-string v0, "android.os.IDeviceIdleController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_14

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/os/IDeviceIdleController;

    return-object v1

    .line 139
    :cond_14
    new-instance v1, Landroid/os/IDeviceIdleController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 148
    packed-switch p0, :pswitch_data_50

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 236
    :pswitch_5
    const-string v0, "exitIdle"

    return-object v0

    .line 232
    :pswitch_8
    const-string/jumbo v0, "whitelistAppTemporarily"

    return-object v0

    .line 228
    :pswitch_c
    const-string v0, "addPowerSaveTempWhitelistAppForSms"

    return-object v0

    .line 224
    :pswitch_f
    const-string v0, "addPowerSaveTempWhitelistAppForMms"

    return-object v0

    .line 220
    :pswitch_12
    const-string v0, "addPowerSaveTempWhitelistApp"

    return-object v0

    .line 216
    :pswitch_15
    const-string/jumbo v0, "isPowerSaveWhitelistApp"

    return-object v0

    .line 212
    :pswitch_19
    const-string/jumbo v0, "isPowerSaveWhitelistExceptIdleApp"

    return-object v0

    .line 208
    :pswitch_1d
    const-string v0, "getAppIdTempWhitelist"

    return-object v0

    .line 204
    :pswitch_20
    const-string v0, "getAppIdUserWhitelist"

    return-object v0

    .line 200
    :pswitch_23
    const-string v0, "getAppIdWhitelist"

    return-object v0

    .line 196
    :pswitch_26
    const-string v0, "getAppIdWhitelistExceptIdle"

    return-object v0

    .line 192
    :pswitch_29
    const-string v0, "getFullPowerWhitelist"

    return-object v0

    .line 188
    :pswitch_2c
    const-string v0, "getFullPowerWhitelistExceptIdle"

    return-object v0

    .line 184
    :pswitch_2f
    const-string/jumbo v0, "getUserPowerWhitelist"

    return-object v0

    .line 180
    :pswitch_33
    const-string/jumbo v0, "getSystemPowerWhitelist"

    return-object v0

    .line 176
    :pswitch_37
    const-string/jumbo v0, "getSystemPowerWhitelistExceptIdle"

    return-object v0

    .line 172
    :pswitch_3b
    const-string v0, "getRemovedSystemPowerWhitelistApps"

    return-object v0

    .line 168
    :pswitch_3e
    const-string/jumbo v0, "restoreSystemPowerWhitelistApp"

    return-object v0

    .line 164
    :pswitch_42
    const-string/jumbo v0, "removeSystemPowerWhitelistApp"

    return-object v0

    .line 160
    :pswitch_46
    const-string/jumbo v0, "removePowerSaveWhitelistApp"

    return-object v0

    .line 156
    :pswitch_4a
    const-string v0, "addPowerSaveWhitelistApps"

    return-object v0

    .line 152
    :pswitch_4d
    const-string v0, "addPowerSaveWhitelistApp"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 143
    return-object p0
.end method

.method protected blacklist exitIdle_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Landroid/os/IDeviceIdleController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IDeviceIdleController$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IDeviceIdleController$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 906
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 910
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 247
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const-string v7, "android.os.IDeviceIdleController"

    .line 252
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 253
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 256
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    return v8

    .line 259
    :cond_16
    packed-switch p1, :pswitch_data_190

    .line 473
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 465
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_18e

    .line 449
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 455
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IDeviceIdleController$Stub;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v5

    .line 458
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 460
    goto/16 :goto_18e

    .line 433
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 440
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v5

    .line 442
    .restart local v5    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    goto/16 :goto_18e

    .line 417
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 421
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 423
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 424
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v5

    .line 426
    .restart local v5    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    goto/16 :goto_18e

    .line 400
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 404
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 406
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 408
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_18e

    .line 390
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Ljava/lang/String;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v2

    .line 393
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 395
    goto/16 :goto_18e

    .line 380
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v2

    .line 383
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 385
    goto/16 :goto_18e

    .line 372
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d0
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object v1

    .line 373
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 375
    goto/16 :goto_18e

    .line 365
    .end local v1    # "_result":[I
    :pswitch_dc
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    move-result-object v1

    .line 366
    .restart local v1    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 368
    goto/16 :goto_18e

    .line 358
    .end local v1    # "_result":[I
    :pswitch_e8
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object v1

    .line 359
    .restart local v1    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    goto/16 :goto_18e

    .line 351
    .end local v1    # "_result":[I
    :pswitch_f4
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object v1

    .line 352
    .restart local v1    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 354
    goto/16 :goto_18e

    .line 344
    .end local v1    # "_result":[I
    :pswitch_100
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 347
    goto/16 :goto_18e

    .line 337
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v1

    .line 338
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 340
    goto/16 :goto_18e

    .line 330
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_118
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 331
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 333
    goto :goto_18e

    .line 323
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_123
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 324
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 326
    goto :goto_18e

    .line 316
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_12e
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 319
    goto :goto_18e

    .line 309
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_139
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 312
    goto :goto_18e

    .line 301
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->restoreSystemPowerWhitelistApp(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto :goto_18e

    .line 292
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->removeSystemPowerWhitelistApp(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_18e

    .line 283
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_18e

    .line 273
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 274
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApps(Ljava/util/List;)I

    move-result v2

    .line 276
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto :goto_18e

    .line 264
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_result":I
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    nop

    .line 476
    .end local v1    # "_arg0":Ljava/lang/String;
    :goto_18e
    return v8

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_180
        :pswitch_16e
        :pswitch_160
        :pswitch_152
        :pswitch_144
        :pswitch_139
        :pswitch_12e
        :pswitch_123
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
        :pswitch_bd
        :pswitch_aa
        :pswitch_8a
        :pswitch_6b
        :pswitch_4c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
