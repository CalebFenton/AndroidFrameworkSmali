.class public abstract Landroid/hardware/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintService"

.field static final blacklist TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x21

.field static final greylist-max-o TRANSACTION_addClientActiveCallback:I = 0x1e

.field static final greylist-max-o TRANSACTION_addLockoutResetCallback:I = 0x1c

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x5

.field static final greylist-max-o TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final greylist-max-o TRANSACTION_cancelEnrollment:I = 0xd

.field static final blacklist TRANSACTION_cancelFingerprintDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFingerprint:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final greylist-max-o TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_generateChallenge:I = 0x14

.field static final greylist-max-o TRANSACTION_getAuthenticatorId:I = 0x1a

.field static final greylist-max-o TRANSACTION_getEnrolledFingerprints:I = 0x11

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x18

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final greylist-max-o TRANSACTION_hasEnrolledFingerprints:I = 0x17

.field static final blacklist TRANSACTION_hasEnrolledFingerprintsDeprecated:I = 0x16

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x19

.field static final greylist-max-o TRANSACTION_isClientActive:I = 0x1d

.field static final greylist-max-o TRANSACTION_isHardwareDetected:I = 0x13

.field static final blacklist TRANSACTION_isHardwareDetectedDeprecated:I = 0x12

.field static final blacklist TRANSACTION_onPointerDown:I = 0x22

.field static final blacklist TRANSACTION_onPointerUp:I = 0x23

.field static final blacklist TRANSACTION_onPowerPressed:I = 0x2a

.field static final blacklist TRANSACTION_onUdfpsUiEvent:I = 0x24

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0x27

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x20

.field static final blacklist TRANSACTION_registerBiometricStateListener:I = 0x29

.field static final greylist-max-o TRANSACTION_remove:I = 0xe

.field static final blacklist TRANSACTION_removeAll:I = 0xf

.field static final greylist-max-o TRANSACTION_removeClientActiveCallback:I = 0x1f

.field static final greylist-max-o TRANSACTION_rename:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x1b

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x15

.field static final blacklist TRANSACTION_scheduleWatchdog:I = 0x2b

.field static final blacklist TRANSACTION_setIgnoreDisplayTouches:I = 0x25

.field static final blacklist TRANSACTION_setUdfpsOverlayController:I = 0x26

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0x28


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    nop

    .line 238
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 239
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 227
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 228
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_d

    .line 232
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 233
    return-void

    .line 230
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 246
    if-nez p0, :cond_4

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_4
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 250
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_14

    .line 251
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintService;

    return-object v1

    .line 253
    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 262
    packed-switch p0, :pswitch_data_86

    .line 438
    const/4 v0, 0x0

    return-object v0

    .line 434
    :pswitch_5
    const-string v0, "scheduleWatchdog"

    return-object v0

    .line 430
    :pswitch_8
    const-string v0, "onPowerPressed"

    return-object v0

    .line 426
    :pswitch_b
    const-string v0, "registerBiometricStateListener"

    return-object v0

    .line 422
    :pswitch_e
    const-string v0, "unregisterAuthenticationStateListener"

    return-object v0

    .line 418
    :pswitch_11
    const-string v0, "registerAuthenticationStateListener"

    return-object v0

    .line 414
    :pswitch_14
    const-string v0, "setUdfpsOverlayController"

    return-object v0

    .line 410
    :pswitch_17
    const-string v0, "setIgnoreDisplayTouches"

    return-object v0

    .line 406
    :pswitch_1a
    const-string v0, "onUdfpsUiEvent"

    return-object v0

    .line 402
    :pswitch_1d
    const-string v0, "onPointerUp"

    return-object v0

    .line 398
    :pswitch_20
    const-string v0, "onPointerDown"

    return-object v0

    .line 394
    :pswitch_23
    const-string v0, "addAuthenticatorsRegisteredCallback"

    return-object v0

    .line 390
    :pswitch_26
    const-string v0, "registerAuthenticators"

    return-object v0

    .line 386
    :pswitch_29
    const-string v0, "removeClientActiveCallback"

    return-object v0

    .line 382
    :pswitch_2c
    const-string v0, "addClientActiveCallback"

    return-object v0

    .line 378
    :pswitch_2f
    const-string v0, "isClientActive"

    return-object v0

    .line 374
    :pswitch_32
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 370
    :pswitch_35
    const-string v0, "resetLockout"

    return-object v0

    .line 366
    :pswitch_38
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 362
    :pswitch_3b
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 358
    :pswitch_3e
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 354
    :pswitch_41
    const-string v0, "hasEnrolledFingerprints"

    return-object v0

    .line 350
    :pswitch_44
    const-string v0, "hasEnrolledFingerprintsDeprecated"

    return-object v0

    .line 346
    :pswitch_47
    const-string v0, "revokeChallenge"

    return-object v0

    .line 342
    :pswitch_4a
    const-string v0, "generateChallenge"

    return-object v0

    .line 338
    :pswitch_4d
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 334
    :pswitch_50
    const-string v0, "isHardwareDetectedDeprecated"

    return-object v0

    .line 330
    :pswitch_53
    const-string v0, "getEnrolledFingerprints"

    return-object v0

    .line 326
    :pswitch_56
    const-string v0, "rename"

    return-object v0

    .line 322
    :pswitch_59
    const-string v0, "removeAll"

    return-object v0

    .line 318
    :pswitch_5c
    const-string v0, "remove"

    return-object v0

    .line 314
    :pswitch_5f
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 310
    :pswitch_62
    const-string v0, "enroll"

    return-object v0

    .line 306
    :pswitch_65
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 302
    :pswitch_68
    const-string v0, "cancelFingerprintDetect"

    return-object v0

    .line 298
    :pswitch_6b
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 294
    :pswitch_6e
    const-string v0, "startPreparedClient"

    return-object v0

    .line 290
    :pswitch_71
    const-string v0, "prepareForAuthentication"

    return-object v0

    .line 286
    :pswitch_74
    const-string v0, "detectFingerprint"

    return-object v0

    .line 282
    :pswitch_77
    const-string v0, "authenticate"

    return-object v0

    .line 278
    :pswitch_7a
    const-string v0, "getSensorProperties"

    return-object v0

    .line 274
    :pswitch_7d
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 270
    :pswitch_80
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 266
    :pswitch_83
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
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
.method protected blacklist addAuthenticatorsRegisteredCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1971
    return-void
.end method

.method protected blacklist addClientActiveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1956
    return-void
.end method

.method protected blacklist addLockoutResetCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1945
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1946
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 257
    return-object p0
.end method

.method protected blacklist cancelAuthenticationFromService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1872
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1873
    return-void
.end method

.method protected blacklist cancelEnrollment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1883
    return-void
.end method

.method protected blacklist cancelFingerprintDetect_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1868
    return-void
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1835
    return-void
.end method

.method protected blacklist detectFingerprint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1851
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1852
    return-void
.end method

.method protected blacklist dumpSensorServiceStateProto_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1839
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1840
    return-void
.end method

.method protected blacklist enroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1877
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1878
    return-void
.end method

.method protected blacklist generateChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1909
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1910
    return-void
.end method

.method protected blacklist getAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1935
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1936
    return-void
.end method

.method protected blacklist getLockoutModeForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1925
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1926
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2025
    const/16 v0, 0x2a

    return v0
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1846
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 445
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hasEnrolledFingerprints_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1921
    return-void
.end method

.method protected blacklist invalidateAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1931
    return-void
.end method

.method protected blacklist isClientActive_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1950
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1951
    return-void
.end method

.method protected blacklist isHardwareDetected_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1905
    return-void
.end method

.method protected blacklist onPointerDown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1976
    return-void
.end method

.method protected blacklist onPointerUp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1981
    return-void
.end method

.method protected blacklist onPowerPressed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2016
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.hardware.fingerprint.IFingerprintService"

    .line 450
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    const v1, 0xffffff

    if-gt v11, v1, :cond_15

    .line 451
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    :cond_15
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1e

    .line 454
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    return v15

    .line 457
    :cond_1e
    packed-switch v11, :pswitch_data_458

    .line 1000
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 995
    :pswitch_26
    invoke-virtual {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->scheduleWatchdog()V

    .line 996
    goto/16 :goto_457

    .line 990
    :pswitch_2b
    invoke-virtual {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPowerPressed()V

    .line 991
    goto/16 :goto_457

    .line 982
    :pswitch_30
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v1

    .line 983
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 985
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    goto/16 :goto_457

    .line 973
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    :pswitch_43
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 974
    .local v1, "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 976
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    goto/16 :goto_457

    .line 964
    .end local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    :pswitch_56
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 965
    .restart local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 967
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_457

    .line 955
    .end local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    :pswitch_69
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    .line 956
    .local v1, "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 958
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_457

    .line 942
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    :pswitch_7c
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 944
    .local v1, "_arg0":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 946
    .local v3, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 947
    .local v4, "_arg2":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setIgnoreDisplayTouches(JIZ)V

    .line 949
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_457

    .line 929
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_93
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 931
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 933
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 934
    .local v4, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onUdfpsUiEvent(IJI)V

    .line 936
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    goto/16 :goto_457

    .line 916
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_aa
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 918
    .local v1, "_arg0":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 920
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 921
    .local v4, "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 923
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_457

    .line 903
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_c5
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 905
    .restart local v1    # "_arg0":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 907
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 908
    .restart local v4    # "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 910
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_457

    .line 894
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_e0
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    move-result-object v1

    .line 895
    .local v1, "_arg0":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 897
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_457

    .line 885
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    :pswitch_f3
    sget-object v1, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    .line 886
    .local v1, "_arg0":Landroid/hardware/fingerprint/FingerprintSensorConfigurations;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V

    .line 888
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_457

    .line 876
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/FingerprintSensorConfigurations;
    :pswitch_106
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v1

    .line 877
    .local v1, "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 879
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_457

    .line 867
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    :pswitch_119
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v1

    .line 868
    .restart local v1    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 870
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_457

    .line 859
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    :pswitch_12c
    invoke-virtual {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isClientActive()Z

    move-result v1

    .line 860
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 862
    goto/16 :goto_457

    .line 849
    .end local v1    # "_result":Z
    :pswitch_138
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v1

    .line 851
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_457

    .line 832
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_14f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 834
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 836
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 838
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 840
    .local v4, "_arg3":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 843
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_457

    .line 820
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_16e
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 822
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(II)J

    move-result-wide v3

    .line 825
    .local v3, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 827
    goto/16 :goto_457

    .line 807
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_185
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 811
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 812
    .local v3, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 814
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_457

    .line 795
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_1a0
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getLockoutModeForUser(II)I

    move-result v3

    .line 800
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    goto/16 :goto_457

    .line 781
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_1b7
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 785
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result v4

    .line 788
    .local v4, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 790
    goto/16 :goto_457

    .line 767
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1d2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 772
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 774
    .restart local v4    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 776
    goto/16 :goto_457

    .line 750
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1ed
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 752
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 756
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 759
    .local v5, "_arg4":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 761
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p0

    goto/16 :goto_457

    .line 733
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":J
    :pswitch_20e
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 735
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 737
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 739
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 741
    .local v4, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_457

    .line 721
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_233
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 723
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v3

    .line 726
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 728
    goto/16 :goto_457

    .line 709
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_24a
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 714
    .restart local v3    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_457

    .line 695
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_261
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 702
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {v13, v4, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 704
    goto/16 :goto_457

    .line 682
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :pswitch_27c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    .line 689
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    goto/16 :goto_457

    .line 667
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_293
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 669
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v3

    .line 673
    .local v3, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_457

    .line 650
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2b2
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 652
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 656
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 658
    .local v4, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 659
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_457

    .line 639
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_2d5
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 641
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 642
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 644
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_457

    .line 617
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    :pswitch_2e8
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 619
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 621
    .local v2, "_arg1":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 623
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 625
    .restart local v4    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 629
    .local v6, "_arg5":I
    sget-object v7, Landroid/hardware/fingerprint/FingerprintEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 630
    .local v7, "_arg6":Landroid/hardware/fingerprint/FingerprintEnrollOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    move-result-wide v8

    .line 632
    .local v8, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v13, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    move-object/from16 v0, p0

    goto/16 :goto_457

    .line 602
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/hardware/fingerprint/FingerprintEnrollOptions;
    .end local v8    # "_result":J
    :pswitch_31d
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 606
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 609
    .local v4, "_arg3":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 611
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_457

    .line 589
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":J
    :pswitch_33a
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 591
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 594
    .local v3, "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 596
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_457

    .line 574
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_351
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 576
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 581
    .restart local v4    # "_arg3":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 583
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_457

    .line 563
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":J
    :pswitch_36c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->startPreparedClient(II)V

    .line 568
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto/16 :goto_457

    .line 540
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_37f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 542
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 544
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v4

    .line 546
    .local v4, "_arg2":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    sget-object v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 548
    .local v5, "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 550
    .local v6, "_arg4":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 552
    .local v8, "_arg5":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 554
    .local v9, "_arg6":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 555
    .local v10, "_arg7":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual/range {v0 .. v10}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V

    .line 557
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_457

    .line 526
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v5    # "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .end local v6    # "_arg4":J
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Z
    .end local v10    # "_arg7":Z
    :pswitch_3b2
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 528
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    .line 530
    .local v2, "_arg1":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    sget-object v3, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 531
    .local v3, "_arg2":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v4

    .line 533
    .local v4, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v13, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 535
    goto/16 :goto_457

    .line 510
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v3    # "_arg2":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .end local v4    # "_result":J
    :pswitch_3d5
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 512
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 514
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 516
    .local v4, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    sget-object v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 517
    .restart local v5    # "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v6

    .line 519
    .local v6, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {v13, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    goto :goto_457

    .line 498
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v5    # "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .end local v6    # "_result":J
    :pswitch_3fb
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v3

    .line 503
    .local v3, "_result":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v13, v3, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 505
    goto :goto_457

    .line 488
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :pswitch_411
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 491
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 493
    goto :goto_457

    .line 476
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :pswitch_423
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 479
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v3

    .line 481
    .local v3, "_result":[B
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 483
    goto :goto_457

    .line 462
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":[B
    :pswitch_439
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 466
    .local v2, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v4

    .line 469
    .local v4, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 471
    nop

    .line 1003
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_457
    return v15

    :pswitch_data_458
    .packed-switch 0x1
        :pswitch_439
        :pswitch_423
        :pswitch_411
        :pswitch_3fb
        :pswitch_3d5
        :pswitch_3b2
        :pswitch_37f
        :pswitch_36c
        :pswitch_351
        :pswitch_33a
        :pswitch_31d
        :pswitch_2e8
        :pswitch_2d5
        :pswitch_2b2
        :pswitch_293
        :pswitch_27c
        :pswitch_261
        :pswitch_24a
        :pswitch_233
        :pswitch_20e
        :pswitch_1ed
        :pswitch_1d2
        :pswitch_1b7
        :pswitch_1a0
        :pswitch_185
        :pswitch_16e
        :pswitch_14f
        :pswitch_138
        :pswitch_12c
        :pswitch_119
        :pswitch_106
        :pswitch_f3
        :pswitch_e0
        :pswitch_c5
        :pswitch_aa
        :pswitch_93
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_43
        :pswitch_30
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist onUdfpsUiEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1985
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1986
    return-void
.end method

.method protected blacklist prepareForAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1856
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1857
    return-void
.end method

.method protected blacklist registerAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2001
    return-void
.end method

.method protected blacklist registerAuthenticators_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1965
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1966
    return-void
.end method

.method protected blacklist registerBiometricStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2011
    return-void
.end method

.method protected blacklist removeAll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1893
    return-void
.end method

.method protected blacklist removeClientActiveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1960
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1961
    return-void
.end method

.method protected blacklist remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1887
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1888
    return-void
.end method

.method protected blacklist rename_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1898
    return-void
.end method

.method protected blacklist resetLockout_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1940
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1941
    return-void
.end method

.method protected blacklist revokeChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1914
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1915
    return-void
.end method

.method protected blacklist scheduleWatchdog_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2020
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2021
    return-void
.end method

.method protected blacklist setIgnoreDisplayTouches_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1991
    return-void
.end method

.method protected blacklist setUdfpsOverlayController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1995
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1996
    return-void
.end method

.method protected blacklist startPreparedClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1862
    return-void
.end method

.method protected blacklist unregisterAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2005
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2006
    return-void
.end method
