.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final greylist-max-o TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x4

.field static final blacklist TRANSACTION_dismissKeyguardToLaunch:I = 0x17

.field static final greylist-max-o TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final greylist-max-o TRANSACTION_onBootCompleted:I = 0x14

.field static final greylist-max-o TRANSACTION_onDreamingStarted:I = 0x5

.field static final greylist-max-o TRANSACTION_onDreamingStopped:I = 0x6

.field static final greylist-max-o TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final greylist-max-o TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final greylist-max-o TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final greylist-max-o TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final greylist-max-o TRANSACTION_onScreenTurningOff:I = 0xd

.field static final greylist-max-o TRANSACTION_onScreenTurningOn:I = 0xb

.field static final greylist-max-o TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final greylist-max-o TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final greylist-max-o TRANSACTION_onStartedWakingUp:I = 0x9

.field static final blacklist TRANSACTION_onSystemKeyPressed:I = 0x18

.field static final greylist-max-o TRANSACTION_onSystemReady:I = 0x10

.field static final greylist-max-o TRANSACTION_setCurrentUser:I = 0x13

.field static final greylist-max-o TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_setOccluded:I = 0x1

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x12

.field static final blacklist TRANSACTION_showDismissibleKeyguard:I = 0x19

.field static final greylist-max-o TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final greylist-max-o TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_4
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_14

    .line 174
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    .line 176
    :cond_14
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 185
    packed-switch p0, :pswitch_data_58

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 285
    :pswitch_5
    const-string/jumbo v0, "showDismissibleKeyguard"

    return-object v0

    .line 281
    :pswitch_9
    const-string v0, "onSystemKeyPressed"

    return-object v0

    .line 277
    :pswitch_c
    const-string v0, "dismissKeyguardToLaunch"

    return-object v0

    .line 273
    :pswitch_f
    const-string v0, "onShortPowerPressedGoHome"

    return-object v0

    .line 269
    :pswitch_12
    const-string/jumbo v0, "startKeyguardExitAnimation"

    return-object v0

    .line 265
    :pswitch_16
    const-string v0, "onBootCompleted"

    return-object v0

    .line 261
    :pswitch_19
    const-string/jumbo v0, "setCurrentUser"

    return-object v0

    .line 257
    :pswitch_1d
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 253
    :pswitch_21
    const-string v0, "doKeyguardTimeout"

    return-object v0

    .line 249
    :pswitch_24
    const-string v0, "onSystemReady"

    return-object v0

    .line 245
    :pswitch_27
    const-string/jumbo v0, "setKeyguardEnabled"

    return-object v0

    .line 241
    :pswitch_2b
    const-string v0, "onScreenTurnedOff"

    return-object v0

    .line 237
    :pswitch_2e
    const-string v0, "onScreenTurningOff"

    return-object v0

    .line 233
    :pswitch_31
    const-string v0, "onScreenTurnedOn"

    return-object v0

    .line 229
    :pswitch_34
    const-string v0, "onScreenTurningOn"

    return-object v0

    .line 225
    :pswitch_37
    const-string v0, "onFinishedWakingUp"

    return-object v0

    .line 221
    :pswitch_3a
    const-string v0, "onStartedWakingUp"

    return-object v0

    .line 217
    :pswitch_3d
    const-string v0, "onFinishedGoingToSleep"

    return-object v0

    .line 213
    :pswitch_40
    const-string v0, "onStartedGoingToSleep"

    return-object v0

    .line 209
    :pswitch_43
    const-string v0, "onDreamingStopped"

    return-object v0

    .line 205
    :pswitch_46
    const-string v0, "onDreamingStarted"

    return-object v0

    .line 201
    :pswitch_49
    const-string v0, "dismiss"

    return-object v0

    .line 197
    :pswitch_4c
    const-string/jumbo v0, "verifyUnlock"

    return-object v0

    .line 193
    :pswitch_50
    const-string v0, "addStateMonitorCallback"

    return-object v0

    .line 189
    :pswitch_53
    const-string/jumbo v0, "setOccluded"

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 180
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 903
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 296
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    const-string v0, "com.android.internal.policy.IKeyguardService"

    .line 301
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 302
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 305
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    return v1

    .line 308
    :cond_16
    packed-switch p1, :pswitch_data_12c

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 487
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->showDismissibleKeyguard()V

    .line 488
    goto/16 :goto_12b

    .line 480
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    .line 483
    goto/16 :goto_12b

    .line 472
    .end local v2    # "_arg0":I
    :pswitch_2f
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 473
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 475
    goto/16 :goto_12b

    .line 466
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    .line 467
    goto/16 :goto_12b

    .line 457
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 459
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 460
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    .line 462
    goto/16 :goto_12b

    .line 451
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    .line 452
    goto/16 :goto_12b

    .line 444
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    .line 447
    goto/16 :goto_12b

    .line 436
    .end local v2    # "_arg0":I
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 437
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    .line 439
    goto/16 :goto_12b

    .line 428
    .end local v2    # "_arg0":Z
    :pswitch_71
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 429
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 431
    goto/16 :goto_12b

    .line 422
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    .line 423
    goto/16 :goto_12b

    .line 415
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 416
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    .line 418
    goto/16 :goto_12b

    .line 409
    .end local v2    # "_arg0":Z
    :pswitch_92
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    .line 410
    goto/16 :goto_12b

    .line 404
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    .line 405
    goto/16 :goto_12b

    .line 399
    :pswitch_9c
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    .line 400
    goto/16 :goto_12b

    .line 392
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    .line 393
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 395
    goto/16 :goto_12b

    .line 386
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :pswitch_b1
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    .line 387
    goto/16 :goto_12b

    .line 377
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 380
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    .line 382
    goto :goto_12b

    .line 367
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 370
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    .line 372
    goto :goto_12b

    .line 359
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    .line 362
    goto :goto_12b

    .line 353
    .end local v2    # "_arg0":I
    :pswitch_df
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    .line 354
    goto :goto_12b

    .line 348
    :pswitch_e3
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    .line 349
    goto :goto_12b

    .line 339
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 341
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 342
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 344
    goto :goto_12b

    .line 331
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v2

    .line 332
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 334
    goto :goto_12b

    .line 323
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v2

    .line 324
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 326
    goto :goto_12b

    .line 313
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 315
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 316
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    .line 318
    nop

    .line 495
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :goto_12b
    return v1

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_10d
        :pswitch_fe
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_d4
        :pswitch_c5
        :pswitch_b6
        :pswitch_b1
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
        :pswitch_92
        :pswitch_86
        :pswitch_81
        :pswitch_71
        :pswitch_65
        :pswitch_59
        :pswitch_54
        :pswitch_44
        :pswitch_3f
        :pswitch_2f
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
