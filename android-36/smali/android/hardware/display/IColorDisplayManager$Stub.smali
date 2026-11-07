.class public abstract Landroid/hardware/display/IColorDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IColorDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IColorDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IColorDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorMode:I = 0x11

.field static final blacklist TRANSACTION_getNightDisplayAutoMode:I = 0xa

.field static final blacklist TRANSACTION_getNightDisplayAutoModeRaw:I = 0xb

.field static final blacklist TRANSACTION_getNightDisplayColorTemperature:I = 0x8

.field static final blacklist TRANSACTION_getNightDisplayCustomEndTime:I = 0xf

.field static final blacklist TRANSACTION_getNightDisplayCustomStartTime:I = 0xd

.field static final blacklist TRANSACTION_getReduceBrightColorsOffsetFactor:I = 0x19

.field static final blacklist TRANSACTION_getReduceBrightColorsStrength:I = 0x17

.field static final blacklist TRANSACTION_getTransformCapabilities:I = 0x5

.field static final blacklist TRANSACTION_isDeviceColorManaged:I = 0x1

.field static final blacklist TRANSACTION_isDisplayWhiteBalanceEnabled:I = 0x13

.field static final blacklist TRANSACTION_isNightDisplayActivated:I = 0x6

.field static final blacklist TRANSACTION_isReduceBrightColorsActivated:I = 0x15

.field static final blacklist TRANSACTION_isSaturationActivated:I = 0x4

.field static final blacklist TRANSACTION_setAppSaturationLevel:I = 0x3

.field static final blacklist TRANSACTION_setColorMode:I = 0x12

.field static final blacklist TRANSACTION_setDisplayWhiteBalanceEnabled:I = 0x14

.field static final blacklist TRANSACTION_setNightDisplayActivated:I = 0x7

.field static final blacklist TRANSACTION_setNightDisplayAutoMode:I = 0xc

.field static final blacklist TRANSACTION_setNightDisplayColorTemperature:I = 0x9

.field static final blacklist TRANSACTION_setNightDisplayCustomEndTime:I = 0x10

.field static final blacklist TRANSACTION_setNightDisplayCustomStartTime:I = 0xe

.field static final blacklist TRANSACTION_setReduceBrightColorsActivated:I = 0x16

.field static final blacklist TRANSACTION_setReduceBrightColorsStrength:I = 0x18

.field static final blacklist TRANSACTION_setSaturationLevel:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    nop

    .line 137
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_d

    .line 131
    iput-object p1, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 132
    return-void

    .line 129
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 145
    if-nez p0, :cond_4

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_4
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 149
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IColorDisplayManager;

    if-eqz v1, :cond_14

    .line 150
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IColorDisplayManager;

    return-object v1

    .line 152
    :cond_14
    new-instance v1, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 161
    packed-switch p0, :pswitch_data_50

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 261
    :pswitch_5
    const-string v0, "getReduceBrightColorsOffsetFactor"

    return-object v0

    .line 257
    :pswitch_8
    const-string v0, "setReduceBrightColorsStrength"

    return-object v0

    .line 253
    :pswitch_b
    const-string v0, "getReduceBrightColorsStrength"

    return-object v0

    .line 249
    :pswitch_e
    const-string v0, "setReduceBrightColorsActivated"

    return-object v0

    .line 245
    :pswitch_11
    const-string v0, "isReduceBrightColorsActivated"

    return-object v0

    .line 241
    :pswitch_14
    const-string v0, "setDisplayWhiteBalanceEnabled"

    return-object v0

    .line 237
    :pswitch_17
    const-string v0, "isDisplayWhiteBalanceEnabled"

    return-object v0

    .line 233
    :pswitch_1a
    const-string v0, "setColorMode"

    return-object v0

    .line 229
    :pswitch_1d
    const-string v0, "getColorMode"

    return-object v0

    .line 225
    :pswitch_20
    const-string v0, "setNightDisplayCustomEndTime"

    return-object v0

    .line 221
    :pswitch_23
    const-string v0, "getNightDisplayCustomEndTime"

    return-object v0

    .line 217
    :pswitch_26
    const-string v0, "setNightDisplayCustomStartTime"

    return-object v0

    .line 213
    :pswitch_29
    const-string v0, "getNightDisplayCustomStartTime"

    return-object v0

    .line 209
    :pswitch_2c
    const-string v0, "setNightDisplayAutoMode"

    return-object v0

    .line 205
    :pswitch_2f
    const-string v0, "getNightDisplayAutoModeRaw"

    return-object v0

    .line 201
    :pswitch_32
    const-string v0, "getNightDisplayAutoMode"

    return-object v0

    .line 197
    :pswitch_35
    const-string v0, "setNightDisplayColorTemperature"

    return-object v0

    .line 193
    :pswitch_38
    const-string v0, "getNightDisplayColorTemperature"

    return-object v0

    .line 189
    :pswitch_3b
    const-string v0, "setNightDisplayActivated"

    return-object v0

    .line 185
    :pswitch_3e
    const-string v0, "isNightDisplayActivated"

    return-object v0

    .line 181
    :pswitch_41
    const-string v0, "getTransformCapabilities"

    return-object v0

    .line 177
    :pswitch_44
    const-string v0, "isSaturationActivated"

    return-object v0

    .line 173
    :pswitch_47
    const-string v0, "setAppSaturationLevel"

    return-object v0

    .line 169
    :pswitch_4a
    const-string v0, "setSaturationLevel"

    return-object v0

    .line 165
    :pswitch_4d
    const-string v0, "isDeviceColorManaged"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
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

    .line 156
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1032
    const/16 v0, 0x18

    return v0
.end method

.method protected blacklist getNightDisplayAutoMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 985
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 272
    invoke-static {p1}, Landroid/hardware/display/IColorDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getTransformCapabilities_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 967
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 968
    return-void
.end method

.method protected blacklist isSaturationActivated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 963
    return-void
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

    .line 276
    const-string v0, "android.hardware.display.IColorDisplayManager"

    .line 277
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 278
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 281
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    return v1

    .line 284
    :cond_16
    packed-switch p1, :pswitch_data_198

    .line 497
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 490
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsOffsetFactor()F

    move-result v2

    .line 491
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 493
    goto/16 :goto_197

    .line 481
    .end local v2    # "_result":F
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength(I)Z

    move-result v3

    .line 484
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    goto/16 :goto_197

    .line 473
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3d
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsStrength()I

    move-result v2

    .line 474
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    goto/16 :goto_197

    .line 464
    .end local v2    # "_result":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 465
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated(Z)Z

    move-result v3

    .line 467
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    goto/16 :goto_197

    .line 456
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_5c
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isReduceBrightColorsActivated()Z

    move-result v2

    .line 457
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 459
    goto/16 :goto_197

    .line 447
    .end local v2    # "_result":Z
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 448
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v3

    .line 450
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 452
    goto/16 :goto_197

    .line 439
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7b
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDisplayWhiteBalanceEnabled()Z

    move-result v2

    .line 440
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 442
    goto/16 :goto_197

    .line 431
    .end local v2    # "_result":Z
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 432
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode(I)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_197

    .line 423
    .end local v2    # "_arg0":I
    :pswitch_96
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getColorMode()I

    move-result v2

    .line 424
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_197

    .line 414
    .end local v2    # "_result":I
    :pswitch_a2
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    .line 415
    .local v2, "_arg0":Landroid/hardware/display/Time;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v3

    .line 417
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    goto/16 :goto_197

    .line 406
    .end local v2    # "_arg0":Landroid/hardware/display/Time;
    .end local v3    # "_result":Z
    :pswitch_b9
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v2

    .line 407
    .local v2, "_result":Landroid/hardware/display/Time;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 409
    goto/16 :goto_197

    .line 397
    .end local v2    # "_result":Landroid/hardware/display/Time;
    :pswitch_c5
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    .line 398
    .local v2, "_arg0":Landroid/hardware/display/Time;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v3

    .line 400
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    goto/16 :goto_197

    .line 389
    .end local v2    # "_arg0":Landroid/hardware/display/Time;
    .end local v3    # "_result":Z
    :pswitch_dc
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v2

    .line 390
    .local v2, "_result":Landroid/hardware/display/Time;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 392
    goto/16 :goto_197

    .line 380
    .end local v2    # "_result":Landroid/hardware/display/Time;
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 381
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode(I)Z

    move-result v3

    .line 383
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 385
    goto/16 :goto_197

    .line 372
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_fb
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoModeRaw()I

    move-result v2

    .line 373
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    goto/16 :goto_197

    .line 365
    .end local v2    # "_result":I
    :pswitch_107
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode()I

    move-result v2

    .line 366
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto/16 :goto_197

    .line 356
    .end local v2    # "_result":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature(I)Z

    move-result v3

    .line 359
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    goto/16 :goto_197

    .line 348
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_126
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayColorTemperature()I

    move-result v2

    .line 349
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    goto :goto_197

    .line 339
    .end local v2    # "_result":I
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 340
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated(Z)Z

    move-result v3

    .line 342
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    goto :goto_197

    .line 331
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_143
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isNightDisplayActivated()Z

    move-result v2

    .line 332
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    goto :goto_197

    .line 324
    .end local v2    # "_result":Z
    :pswitch_14e
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities()I

    move-result v2

    .line 325
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    goto :goto_197

    .line 317
    .end local v2    # "_result":I
    :pswitch_159
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated()Z

    move-result v2

    .line 318
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto :goto_197

    .line 306
    .end local v2    # "_result":Z
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v4

    .line 311
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    goto :goto_197

    .line 296
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setSaturationLevel(I)Z

    move-result v3

    .line 299
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    goto :goto_197

    .line 288
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_18c
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDeviceColorManaged()Z

    move-result v2

    .line 289
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    nop

    .line 500
    .end local v2    # "_result":Z
    :goto_197
    return v1

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_18c
        :pswitch_17a
        :pswitch_164
        :pswitch_159
        :pswitch_14e
        :pswitch_143
        :pswitch_131
        :pswitch_126
        :pswitch_113
        :pswitch_107
        :pswitch_fb
        :pswitch_e8
        :pswitch_dc
        :pswitch_c5
        :pswitch_b9
        :pswitch_a2
        :pswitch_96
        :pswitch_87
        :pswitch_7b
        :pswitch_68
        :pswitch_5c
        :pswitch_49
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setAppSaturationLevel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 958
    return-void
.end method

.method protected blacklist setColorMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1009
    return-void
.end method

.method protected blacklist setDisplayWhiteBalanceEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1015
    return-void
.end method

.method protected blacklist setNightDisplayActivated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 974
    return-void
.end method

.method protected blacklist setNightDisplayAutoMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 991
    return-void
.end method

.method protected blacklist setNightDisplayColorTemperature_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 980
    return-void
.end method

.method protected blacklist setNightDisplayCustomEndTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1003
    return-void
.end method

.method protected blacklist setNightDisplayCustomStartTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 997
    return-void
.end method

.method protected blacklist setReduceBrightColorsActivated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1021
    return-void
.end method

.method protected blacklist setReduceBrightColorsStrength_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1027
    return-void
.end method
