.class public abstract Landroid/hardware/biometrics/IAuthService$Stub;
.super Landroid/os/Binder;
.source "IAuthService.java"

# interfaces
.implements Landroid/hardware/biometrics/IAuthService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IAuthService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x4

.field static final blacklist TRANSACTION_canAuthenticate:I = 0x6

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x5

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorIds:I = 0xd

.field static final blacklist TRANSACTION_getButtonLabel:I = 0x10

.field static final blacklist TRANSACTION_getLastAuthenticationTime:I = 0x7

.field static final blacklist TRANSACTION_getPromptMessage:I = 0x11

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_getSettingName:I = 0x12

.field static final blacklist TRANSACTION_getUiPackage:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledBiometrics:I = 0x8

.field static final blacklist TRANSACTION_invalidateAuthenticatorIds:I = 0xc

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0xa

.field static final blacklist TRANSACTION_registerEnabledOnKeyguardCallback:I = 0x9

.field static final blacklist TRANSACTION_resetLockout:I = 0xf

.field static final blacklist TRANSACTION_resetLockoutTimeBound:I = 0xe

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0xb


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    nop

    .line 139
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string v0, "android.hardware.biometrics.IAuthService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IAuthService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_d

    .line 133
    iput-object p1, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 134
    return-void

    .line 131
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_4
    const-string v0, "android.hardware.biometrics.IAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IAuthService;

    if-eqz v1, :cond_14

    .line 152
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IAuthService;

    return-object v1

    .line 154
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IAuthService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_44

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 235
    :pswitch_5
    const-string v0, "getSettingName"

    return-object v0

    .line 231
    :pswitch_8
    const-string v0, "getPromptMessage"

    return-object v0

    .line 227
    :pswitch_b
    const-string v0, "getButtonLabel"

    return-object v0

    .line 223
    :pswitch_e
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 219
    :pswitch_12
    const-string/jumbo v0, "resetLockoutTimeBound"

    return-object v0

    .line 215
    :pswitch_16
    const-string v0, "getAuthenticatorIds"

    return-object v0

    .line 211
    :pswitch_19
    const-string/jumbo v0, "invalidateAuthenticatorIds"

    return-object v0

    .line 207
    :pswitch_1d
    const-string/jumbo v0, "unregisterAuthenticationStateListener"

    return-object v0

    .line 203
    :pswitch_21
    const-string/jumbo v0, "registerAuthenticationStateListener"

    return-object v0

    .line 199
    :pswitch_25
    const-string/jumbo v0, "registerEnabledOnKeyguardCallback"

    return-object v0

    .line 195
    :pswitch_29
    const-string/jumbo v0, "hasEnrolledBiometrics"

    return-object v0

    .line 191
    :pswitch_2d
    const-string v0, "getLastAuthenticationTime"

    return-object v0

    .line 187
    :pswitch_30
    const-string v0, "canAuthenticate"

    return-object v0

    .line 183
    :pswitch_33
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 179
    :pswitch_36
    const-string v0, "authenticate"

    return-object v0

    .line 175
    :pswitch_39
    const-string/jumbo v0, "getUiPackage"

    return-object v0

    .line 171
    :pswitch_3d
    const-string v0, "getSensorProperties"

    return-object v0

    .line 167
    :pswitch_40
    const-string v0, "createTestSession"

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 885
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 914
    const/16 v0, 0x11

    return v0
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 890
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 246
    invoke-static {p1}, Landroid/hardware/biometrics/IAuthService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getUiPackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Landroid/hardware/biometrics/IAuthService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IAuthService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 895
    return-void
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

    .line 250
    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.hardware.biometrics.IAuthService"

    .line 251
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_13

    const v1, 0xffffff

    if-gt v8, v1, :cond_13

    .line 252
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    :cond_13
    const v1, 0x5f4e5446

    if-ne v8, v1, :cond_1c

    .line 255
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    return v12

    .line 258
    :cond_1c
    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_1f8

    .line 502
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 483
    :pswitch_25
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 485
    .local v2, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 488
    .local v4, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/IAuthService$Stub;->getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 490
    .local v5, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v5, :cond_45

    .line 492
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    invoke-static {v5, v10, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1f7

    .line 496
    :cond_45
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    goto/16 :goto_1f7

    .line 463
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_4a
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 465
    .restart local v2    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 468
    .restart local v4    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/IAuthService$Stub;->getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 470
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v5, :cond_6a

    .line 472
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-static {v5, v10, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1f7

    .line 476
    :cond_6a
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    goto/16 :goto_1f7

    .line 443
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_6f
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    .restart local v2    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 447
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 448
    .restart local v4    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/IAuthService$Stub;->getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 450
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v5, :cond_8f

    .line 452
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-static {v5, v10, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1f7

    .line 456
    :cond_8f
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    goto/16 :goto_1f7

    .line 432
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_94
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 435
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->resetLockout(I[B)V

    .line 437
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_1f7

    .line 415
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_a7
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 417
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 421
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 423
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 424
    .local v5, "_arg4":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/IAuthService$Stub;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 426
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    goto/16 :goto_1f7

    .line 405
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    :pswitch_c7
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->getAuthenticatorIds(I)[J

    move-result-object v2

    .line 408
    .local v2, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 410
    goto/16 :goto_1f7

    .line 392
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[J
    :pswitch_da
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 397
    .local v3, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 399
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_1f7

    .line 383
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_f5
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 384
    .local v1, "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 386
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_1f7

    .line 374
    .end local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    :pswitch_108
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 375
    .restart local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 377
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_1f7

    .line 365
    .end local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    :pswitch_11b
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    move-result-object v1

    .line 366
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 368
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_1f7

    .line 353
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    :pswitch_12e
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v3

    .line 358
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    goto/16 :goto_1f7

    .line 341
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_145
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IAuthService$Stub;->getLastAuthenticationTime(II)J

    move-result-wide v3

    .line 346
    .local v3, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {v10, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    goto/16 :goto_1f7

    .line 327
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_15c
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->canAuthenticate(Ljava/lang/String;II)I

    move-result v4

    .line 334
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto/16 :goto_1f7

    .line 314
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_177
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 316
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 319
    .local v3, "_arg2":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/biometrics/IAuthService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 321
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    goto :goto_1f7

    .line 294
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_18d
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 296
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 298
    .local v2, "_arg1":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 300
    .local v4, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v5

    .line 302
    .local v5, "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "_arg4":Ljava/lang/String;
    sget-object v7, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/biometrics/PromptInfo;

    .line 305
    .local v7, "_arg5":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/biometrics/IAuthService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v13

    .line 307
    .local v13, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v10, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    goto :goto_1f7

    .line 286
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Landroid/hardware/biometrics/PromptInfo;
    .end local v13    # "_result":J
    :pswitch_1bc
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getUiPackage()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    goto :goto_1f7

    .line 277
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1c7
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IAuthService$Stub;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 280
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 282
    goto :goto_1f7

    .line 263
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    :pswitch_1d9
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 267
    .local v2, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IAuthService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v4

    .line 270
    .local v4, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 272
    nop

    .line 505
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_1f7
    return v12

    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_1d9
        :pswitch_1c7
        :pswitch_1bc
        :pswitch_18d
        :pswitch_177
        :pswitch_15c
        :pswitch_145
        :pswitch_12e
        :pswitch_11b
        :pswitch_108
        :pswitch_f5
        :pswitch_da
        :pswitch_c7
        :pswitch_a7
        :pswitch_94
        :pswitch_6f
        :pswitch_4a
        :pswitch_25
    .end packed-switch
.end method
