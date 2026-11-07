.class public abstract Landroid/hardware/biometrics/IBiometricService$Stub;
.super Landroid/os/Binder;
.source "IBiometricService.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x3

.field static final blacklist TRANSACTION_canAuthenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x4

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorIds:I = 0xc

.field static final blacklist TRANSACTION_getCurrentModality:I = 0x10

.field static final blacklist TRANSACTION_getCurrentStrength:I = 0xf

.field static final blacklist TRANSACTION_getLastAuthenticationTime:I = 0x6

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_getSupportedModalities:I = 0x11

.field static final blacklist TRANSACTION_hasEnrolledBiometrics:I = 0x7

.field static final blacklist TRANSACTION_invalidateAuthenticatorIds:I = 0xb

.field static final blacklist TRANSACTION_onReadyForAuthentication:I = 0xa

.field static final blacklist TRANSACTION_registerAuthenticator:I = 0x8

.field static final blacklist TRANSACTION_registerEnabledOnKeyguardCallback:I = 0x9

.field static final blacklist TRANSACTION_resetLockout:I = 0xe

.field static final blacklist TRANSACTION_resetLockoutTimeBound:I = 0xd


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    nop

    .line 127
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "android.hardware.biometrics.IBiometricService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    if-eqz p1, :cond_d

    .line 121
    iput-object p1, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 122
    return-void

    .line 119
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricService;

    if-eqz v1, :cond_14

    .line 140
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricService;

    return-object v1

    .line 142
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 151
    packed-switch p0, :pswitch_data_40

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 219
    :pswitch_5
    const-string/jumbo v0, "getSupportedModalities"

    return-object v0

    .line 215
    :pswitch_9
    const-string v0, "getCurrentModality"

    return-object v0

    .line 211
    :pswitch_c
    const-string v0, "getCurrentStrength"

    return-object v0

    .line 207
    :pswitch_f
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 203
    :pswitch_13
    const-string/jumbo v0, "resetLockoutTimeBound"

    return-object v0

    .line 199
    :pswitch_17
    const-string v0, "getAuthenticatorIds"

    return-object v0

    .line 195
    :pswitch_1a
    const-string/jumbo v0, "invalidateAuthenticatorIds"

    return-object v0

    .line 191
    :pswitch_1e
    const-string/jumbo v0, "onReadyForAuthentication"

    return-object v0

    .line 187
    :pswitch_22
    const-string/jumbo v0, "registerEnabledOnKeyguardCallback"

    return-object v0

    .line 183
    :pswitch_26
    const-string/jumbo v0, "registerAuthenticator"

    return-object v0

    .line 179
    :pswitch_2a
    const-string/jumbo v0, "hasEnrolledBiometrics"

    return-object v0

    .line 175
    :pswitch_2e
    const-string v0, "getLastAuthenticationTime"

    return-object v0

    .line 171
    :pswitch_31
    const-string v0, "canAuthenticate"

    return-object v0

    .line 167
    :pswitch_34
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 163
    :pswitch_37
    const-string v0, "authenticate"

    return-object v0

    .line 159
    :pswitch_3a
    const-string v0, "getSensorProperties"

    return-object v0

    .line 155
    :pswitch_3d
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 146
    return-object p0
.end method

.method protected blacklist authenticate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 838
    return-void
.end method

.method protected blacklist canAuthenticate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 848
    return-void
.end method

.method protected blacklist cancelAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 843
    return-void
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 828
    return-void
.end method

.method protected blacklist getAuthenticatorIds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 883
    return-void
.end method

.method protected blacklist getCurrentModality_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 903
    return-void
.end method

.method protected blacklist getCurrentStrength_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 898
    return-void
.end method

.method protected blacklist getLastAuthenticationTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 853
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 912
    const/16 v0, 0x10

    return v0
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 833
    return-void
.end method

.method protected blacklist getSupportedModalities_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 908
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 230
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hasEnrolledBiometrics_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 857
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 858
    return-void
.end method

.method protected blacklist invalidateAuthenticatorIds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 878
    return-void
.end method

.method protected blacklist onReadyForAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 873
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

    .line 234
    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.hardware.biometrics.IBiometricService"

    .line 235
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_13

    const v1, 0xffffff

    if-gt v8, v1, :cond_13

    .line 236
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    :cond_13
    const v1, 0x5f4e5446

    if-ne v8, v1, :cond_1c

    .line 239
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    return v12

    .line 242
    :cond_1c
    packed-switch v8, :pswitch_data_1d2

    .line 465
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 456
    :pswitch_24
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSupportedModalities(I)I

    move-result v2

    .line 459
    .local v2, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    goto/16 :goto_1d1

    .line 440
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_37
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 447
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentModality(Ljava/lang/String;III)I

    move-result v5

    .line 449
    .local v5, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    goto/16 :goto_1d1

    .line 430
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_56
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentStrength(I)I

    move-result v2

    .line 433
    .local v2, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto/16 :goto_1d1

    .line 419
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_69
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 422
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->resetLockout(I[B)V

    .line 424
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    goto/16 :goto_1d1

    .line 402
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_7c
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 404
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 408
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 410
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 411
    .local v5, "_arg4":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/IBiometricService$Stub;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 413
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_1d1

    .line 392
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    :pswitch_9c
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getAuthenticatorIds(I)[J

    move-result-object v2

    .line 395
    .local v2, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 397
    goto/16 :goto_1d1

    .line 379
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[J
    :pswitch_af
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 384
    .local v3, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 386
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_1d1

    .line 368
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_ca
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 370
    .local v1, "_arg0":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    .local v3, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->onReadyForAuthentication(JI)V

    .line 373
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    goto/16 :goto_1d1

    .line 359
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    :pswitch_dd
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    move-result-object v1

    .line 360
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 362
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_1d1

    .line 344
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    :pswitch_f0
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;

    move-result-object v4

    .line 351
    .local v4, "_arg3":Landroid/hardware/biometrics/IBiometricAuthenticator;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 353
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_1d1

    .line 332
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/biometrics/IBiometricAuthenticator;
    :pswitch_10f
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v3

    .line 337
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    goto/16 :goto_1d1

    .line 320
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_126
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->getLastAuthenticationTime(II)J

    move-result-wide v3

    .line 325
    .local v3, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {v10, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 327
    goto/16 :goto_1d1

    .line 304
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_13d
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 310
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 311
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricService$Stub;->canAuthenticate(Ljava/lang/String;III)I

    move-result v5

    .line 313
    .local v5, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto/16 :goto_1d1

    .line 291
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_15c
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 293
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 296
    .local v3, "_arg2":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 298
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto :goto_1d1

    .line 271
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_172
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 273
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 275
    .local v2, "_arg1":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .local v4, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v5

    .line 279
    .local v5, "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "_arg4":Ljava/lang/String;
    sget-object v7, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/biometrics/PromptInfo;

    .line 282
    .local v7, "_arg5":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/biometrics/IBiometricService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v13

    .line 284
    .local v13, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v10, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    goto :goto_1d1

    .line 261
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Landroid/hardware/biometrics/PromptInfo;
    .end local v13    # "_result":J
    :pswitch_1a1
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 266
    goto :goto_1d1

    .line 247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    :pswitch_1b3
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v4

    .line 254
    .local v4, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 256
    nop

    .line 468
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_1d1
    return v12

    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_1b3
        :pswitch_1a1
        :pswitch_172
        :pswitch_15c
        :pswitch_13d
        :pswitch_126
        :pswitch_10f
        :pswitch_f0
        :pswitch_dd
        :pswitch_ca
        :pswitch_af
        :pswitch_9c
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist registerAuthenticator_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 863
    return-void
.end method

.method protected blacklist registerEnabledOnKeyguardCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 868
    return-void
.end method

.method protected blacklist resetLockoutTimeBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 888
    return-void
.end method

.method protected blacklist resetLockout_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 893
    return-void
.end method
