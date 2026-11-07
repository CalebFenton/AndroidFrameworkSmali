.class public abstract Landroid/hardware/gnss/IGnss$Stub;
.super Landroid/os/Binder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnss$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_deleteAidingData:I = 0x13

.field static final blacklist TRANSACTION_getExtensionAGnss:I = 0xa

.field static final blacklist TRANSACTION_getExtensionAGnssRil:I = 0xb

.field static final blacklist TRANSACTION_getExtensionGnssAntennaInfo:I = 0x15

.field static final blacklist TRANSACTION_getExtensionGnssBatching:I = 0x7

.field static final blacklist TRANSACTION_getExtensionGnssConfiguration:I = 0x4

.field static final blacklist TRANSACTION_getExtensionGnssDebug:I = 0xc

.field static final blacklist TRANSACTION_getExtensionGnssGeofence:I = 0x8

.field static final blacklist TRANSACTION_getExtensionGnssMeasurement:I = 0x5

.field static final blacklist TRANSACTION_getExtensionGnssNavigationMessage:I = 0x9

.field static final blacklist TRANSACTION_getExtensionGnssPowerIndication:I = 0x6

.field static final blacklist TRANSACTION_getExtensionGnssVisibilityControl:I = 0xd

.field static final blacklist TRANSACTION_getExtensionMeasurementCorrections:I = 0x16

.field static final blacklist TRANSACTION_getExtensionPsds:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_injectBestLocation:I = 0x12

.field static final blacklist TRANSACTION_injectLocation:I = 0x11

.field static final blacklist TRANSACTION_injectTime:I = 0x10

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setPositionMode:I = 0x14

.field static final blacklist TRANSACTION_start:I = 0xe

.field static final blacklist TRANSACTION_startNmea:I = 0x19

.field static final blacklist TRANSACTION_startSvStatus:I = 0x17

.field static final blacklist TRANSACTION_stop:I = 0xf

.field static final blacklist TRANSACTION_stopNmea:I = 0x1a

.field static final blacklist TRANSACTION_stopSvStatus:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->markVintfStability()V

    .line 136
    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnss$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnss;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 144
    if-nez p0, :cond_4

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnss;

    if-eqz v1, :cond_14

    .line 149
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnss;

    return-object v1

    .line 151
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnss$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnss$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 160
    sparse-switch p0, :sswitch_data_5a

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 268
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 272
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 264
    :sswitch_b
    const-string v0, "stopNmea"

    return-object v0

    .line 260
    :sswitch_e
    const-string v0, "startNmea"

    return-object v0

    .line 256
    :sswitch_11
    const-string v0, "stopSvStatus"

    return-object v0

    .line 252
    :sswitch_14
    const-string v0, "startSvStatus"

    return-object v0

    .line 248
    :sswitch_17
    const-string v0, "getExtensionMeasurementCorrections"

    return-object v0

    .line 244
    :sswitch_1a
    const-string v0, "getExtensionGnssAntennaInfo"

    return-object v0

    .line 240
    :sswitch_1d
    const-string v0, "setPositionMode"

    return-object v0

    .line 236
    :sswitch_20
    const-string v0, "deleteAidingData"

    return-object v0

    .line 232
    :sswitch_23
    const-string v0, "injectBestLocation"

    return-object v0

    .line 228
    :sswitch_26
    const-string v0, "injectLocation"

    return-object v0

    .line 224
    :sswitch_29
    const-string v0, "injectTime"

    return-object v0

    .line 220
    :sswitch_2c
    const-string v0, "stop"

    return-object v0

    .line 216
    :sswitch_2f
    const-string v0, "start"

    return-object v0

    .line 212
    :sswitch_32
    const-string v0, "getExtensionGnssVisibilityControl"

    return-object v0

    .line 208
    :sswitch_35
    const-string v0, "getExtensionGnssDebug"

    return-object v0

    .line 204
    :sswitch_38
    const-string v0, "getExtensionAGnssRil"

    return-object v0

    .line 200
    :sswitch_3b
    const-string v0, "getExtensionAGnss"

    return-object v0

    .line 196
    :sswitch_3e
    const-string v0, "getExtensionGnssNavigationMessage"

    return-object v0

    .line 192
    :sswitch_41
    const-string v0, "getExtensionGnssGeofence"

    return-object v0

    .line 188
    :sswitch_44
    const-string v0, "getExtensionGnssBatching"

    return-object v0

    .line 184
    :sswitch_47
    const-string v0, "getExtensionGnssPowerIndication"

    return-object v0

    .line 180
    :sswitch_4a
    const-string v0, "getExtensionGnssMeasurement"

    return-object v0

    .line 176
    :sswitch_4d
    const-string v0, "getExtensionGnssConfiguration"

    return-object v0

    .line 172
    :sswitch_50
    const-string v0, "getExtensionPsds"

    return-object v0

    .line 168
    :sswitch_53
    const-string v0, "close"

    return-object v0

    .line 164
    :sswitch_56
    const-string v0, "setCallback"

    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_53
        0x3 -> :sswitch_50
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_4a
        0x6 -> :sswitch_47
        0x7 -> :sswitch_44
        0x8 -> :sswitch_41
        0x9 -> :sswitch_3e
        0xa -> :sswitch_3b
        0xb -> :sswitch_38
        0xc -> :sswitch_35
        0xd -> :sswitch_32
        0xe -> :sswitch_2f
        0xf -> :sswitch_2c
        0x10 -> :sswitch_29
        0x11 -> :sswitch_26
        0x12 -> :sswitch_23
        0x13 -> :sswitch_20
        0x14 -> :sswitch_1d
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_17
        0x17 -> :sswitch_14
        0x18 -> :sswitch_11
        0x19 -> :sswitch_e
        0x1a -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 155
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1077
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 283
    invoke-static {p1}, Landroid/hardware/gnss/IGnss$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 287
    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 288
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 289
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    return v2

    .line 295
    :cond_16
    if-ne p1, v1, :cond_23

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    return v2

    .line 300
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    return v2

    .line 305
    :cond_33
    packed-switch p1, :pswitch_data_196

    .line 500
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 494
    :pswitch_3c
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->stopNmea()V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object v3, p0

    goto/16 :goto_194

    .line 488
    :pswitch_45
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->startNmea()V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object v3, p0

    goto/16 :goto_194

    .line 482
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->stopSvStatus()V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    move-object v3, p0

    goto/16 :goto_194

    .line 476
    :pswitch_57
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->startSvStatus()V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object v3, p0

    goto/16 :goto_194

    .line 469
    :pswitch_60
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;

    move-result-object v1

    .line 470
    .local v1, "_result":Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 472
    move-object v3, p0

    goto/16 :goto_194

    .line 462
    .end local v1    # "_result":Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;
    :pswitch_6d
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssAntennaInfo()Landroid/hardware/gnss/IGnssAntennaInfo;

    move-result-object v1

    .line 463
    .local v1, "_result":Landroid/hardware/gnss/IGnssAntennaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 465
    move-object v3, p0

    goto/16 :goto_194

    .line 454
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssAntennaInfo;
    :pswitch_7a
    sget-object v1, Landroid/hardware/gnss/IGnss$PositionModeOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/IGnss$PositionModeOptions;

    .line 455
    .local v1, "_arg0":Landroid/hardware/gnss/IGnss$PositionModeOptions;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnss$Stub;->setPositionMode(Landroid/hardware/gnss/IGnss$PositionModeOptions;)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object v3, p0

    goto/16 :goto_194

    .line 445
    .end local v1    # "_arg0":Landroid/hardware/gnss/IGnss$PositionModeOptions;
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnss$Stub;->deleteAidingData(I)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    move-object v3, p0

    goto/16 :goto_194

    .line 436
    .end local v1    # "_arg0":I
    :pswitch_9e
    sget-object v1, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/GnssLocation;

    .line 437
    .local v1, "_arg0":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/GnssLocation;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    move-object v3, p0

    goto/16 :goto_194

    .line 427
    .end local v1    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    :pswitch_b2
    sget-object v1, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/GnssLocation;

    .line 428
    .restart local v1    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnss$Stub;->injectLocation(Landroid/hardware/gnss/GnssLocation;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    move-object v3, p0

    goto/16 :goto_194

    .line 414
    .end local v1    # "_arg0":Landroid/hardware/gnss/GnssLocation;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 416
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 418
    .local v6, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 419
    .local v8, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/gnss/IGnss$Stub;->injectTime(JJI)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_194

    .line 407
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    :pswitch_de
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->stop()V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    goto/16 :goto_194

    .line 401
    :pswitch_e7
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->start()V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_194

    .line 394
    :pswitch_f0
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssVisibilityControl()Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;

    move-result-object v1

    .line 395
    .local v1, "_result":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 397
    goto/16 :goto_194

    .line 387
    .end local v1    # "_result":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
    :pswitch_fd
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/IGnssDebug;

    move-result-object v1

    .line 388
    .local v1, "_result":Landroid/hardware/gnss/IGnssDebug;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 390
    goto/16 :goto_194

    .line 380
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssDebug;
    :pswitch_10a
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/IAGnssRil;

    move-result-object v1

    .line 381
    .local v1, "_result":Landroid/hardware/gnss/IAGnssRil;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 383
    goto/16 :goto_194

    .line 373
    .end local v1    # "_result":Landroid/hardware/gnss/IAGnssRil;
    :pswitch_117
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/IAGnss;

    move-result-object v1

    .line 374
    .local v1, "_result":Landroid/hardware/gnss/IAGnss;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 376
    goto/16 :goto_194

    .line 366
    .end local v1    # "_result":Landroid/hardware/gnss/IAGnss;
    :pswitch_124
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/IGnssNavigationMessageInterface;

    move-result-object v1

    .line 367
    .local v1, "_result":Landroid/hardware/gnss/IGnssNavigationMessageInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 369
    goto/16 :goto_194

    .line 359
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssNavigationMessageInterface;
    :pswitch_131
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssGeofence()Landroid/hardware/gnss/IGnssGeofence;

    move-result-object v1

    .line 360
    .local v1, "_result":Landroid/hardware/gnss/IGnssGeofence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 362
    goto :goto_194

    .line 352
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssGeofence;
    :pswitch_13d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/IGnssBatching;

    move-result-object v1

    .line 353
    .local v1, "_result":Landroid/hardware/gnss/IGnssBatching;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 355
    goto :goto_194

    .line 345
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssBatching;
    :pswitch_149
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssPowerIndication()Landroid/hardware/gnss/IGnssPowerIndication;

    move-result-object v1

    .line 346
    .local v1, "_result":Landroid/hardware/gnss/IGnssPowerIndication;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 348
    goto :goto_194

    .line 338
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssPowerIndication;
    :pswitch_155
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/IGnssMeasurementInterface;

    move-result-object v1

    .line 339
    .local v1, "_result":Landroid/hardware/gnss/IGnssMeasurementInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 341
    goto :goto_194

    .line 331
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssMeasurementInterface;
    :pswitch_161
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/IGnssConfiguration;

    move-result-object v1

    .line 332
    .local v1, "_result":Landroid/hardware/gnss/IGnssConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 334
    goto :goto_194

    .line 324
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssConfiguration;
    :pswitch_16d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionPsds()Landroid/hardware/gnss/IGnssPsds;

    move-result-object v1

    .line 325
    .local v1, "_result":Landroid/hardware/gnss/IGnssPsds;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 327
    goto :goto_194

    .line 318
    .end local v1    # "_result":Landroid/hardware/gnss/IGnssPsds;
    :pswitch_179
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->close()V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto :goto_194

    .line 310
    :pswitch_181
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IGnssCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssCallback;

    move-result-object v1

    .line 311
    .local v1, "_arg0":Landroid/hardware/gnss/IGnssCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnss$Stub;->setCallback(Landroid/hardware/gnss/IGnssCallback;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    nop

    .line 503
    .end local v1    # "_arg0":Landroid/hardware/gnss/IGnssCallback;
    :goto_194
    return v2

    nop

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_181
        :pswitch_179
        :pswitch_16d
        :pswitch_161
        :pswitch_155
        :pswitch_149
        :pswitch_13d
        :pswitch_131
        :pswitch_124
        :pswitch_117
        :pswitch_10a
        :pswitch_fd
        :pswitch_f0
        :pswitch_e7
        :pswitch_de
        :pswitch_c6
        :pswitch_b2
        :pswitch_9e
        :pswitch_8e
        :pswitch_7a
        :pswitch_6d
        :pswitch_60
        :pswitch_57
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
    .end packed-switch
.end method
