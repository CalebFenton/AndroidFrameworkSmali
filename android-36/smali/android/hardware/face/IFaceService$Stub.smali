.class public abstract Landroid/hardware/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x1e

.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x1a

.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0xe

.field static final blacklist TRANSACTION_cancelFaceDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFace:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final blacklist TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_enrollRemotely:I = 0xd

.field static final blacklist TRANSACTION_generateChallenge:I = 0x13

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x18

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x11

.field static final blacklist TRANSACTION_getFeature:I = 0x1c

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x16

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0x15

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x17

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x12

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0x1f

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x1d

.field static final blacklist TRANSACTION_registerBiometricStateListener:I = 0x21

.field static final blacklist TRANSACTION_remove:I = 0xf

.field static final blacklist TRANSACTION_removeAll:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x19

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x14

.field static final blacklist TRANSACTION_scheduleWatchdog:I = 0x22

.field static final blacklist TRANSACTION_setFeature:I = 0x1b

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0x20


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    nop

    .line 197
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/face/IFaceService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 186
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 187
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 188
    if-eqz p1, :cond_d

    .line 191
    iput-object p1, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 192
    return-void

    .line 189
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 205
    if-nez p0, :cond_4

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_4
    const-string v0, "android.hardware.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 209
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_14

    .line 210
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceService;

    return-object v1

    .line 212
    :cond_14
    new-instance v1, Landroid/hardware/face/IFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 221
    packed-switch p0, :pswitch_data_6c

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 357
    :pswitch_5
    const-string v0, "scheduleWatchdog"

    return-object v0

    .line 353
    :pswitch_8
    const-string v0, "registerBiometricStateListener"

    return-object v0

    .line 349
    :pswitch_b
    const-string v0, "unregisterAuthenticationStateListener"

    return-object v0

    .line 345
    :pswitch_e
    const-string v0, "registerAuthenticationStateListener"

    return-object v0

    .line 341
    :pswitch_11
    const-string v0, "addAuthenticatorsRegisteredCallback"

    return-object v0

    .line 337
    :pswitch_14
    const-string v0, "registerAuthenticators"

    return-object v0

    .line 333
    :pswitch_17
    const-string v0, "getFeature"

    return-object v0

    .line 329
    :pswitch_1a
    const-string v0, "setFeature"

    return-object v0

    .line 325
    :pswitch_1d
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 321
    :pswitch_20
    const-string v0, "resetLockout"

    return-object v0

    .line 317
    :pswitch_23
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 313
    :pswitch_26
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 309
    :pswitch_29
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 305
    :pswitch_2c
    const-string v0, "hasEnrolledFaces"

    return-object v0

    .line 301
    :pswitch_2f
    const-string v0, "revokeChallenge"

    return-object v0

    .line 297
    :pswitch_32
    const-string v0, "generateChallenge"

    return-object v0

    .line 293
    :pswitch_35
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 289
    :pswitch_38
    const-string v0, "getEnrolledFaces"

    return-object v0

    .line 285
    :pswitch_3b
    const-string v0, "removeAll"

    return-object v0

    .line 281
    :pswitch_3e
    const-string v0, "remove"

    return-object v0

    .line 277
    :pswitch_41
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 273
    :pswitch_44
    const-string v0, "enrollRemotely"

    return-object v0

    .line 269
    :pswitch_47
    const-string v0, "enroll"

    return-object v0

    .line 265
    :pswitch_4a
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 261
    :pswitch_4d
    const-string v0, "cancelFaceDetect"

    return-object v0

    .line 257
    :pswitch_50
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 253
    :pswitch_53
    const-string v0, "startPreparedClient"

    return-object v0

    .line 249
    :pswitch_56
    const-string v0, "prepareForAuthentication"

    return-object v0

    .line 245
    :pswitch_59
    const-string v0, "detectFace"

    return-object v0

    .line 241
    :pswitch_5c
    const-string v0, "authenticate"

    return-object v0

    .line 237
    :pswitch_5f
    const-string v0, "getSensorProperties"

    return-object v0

    .line 233
    :pswitch_62
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 229
    :pswitch_65
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 225
    :pswitch_68
    const-string v0, "createTestSession"

    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
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
.method protected blacklist addLockoutResetCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1664
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1665
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 216
    return-object p0
.end method

.method protected blacklist authenticate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1560
    return-void
.end method

.method protected blacklist cancelAuthenticationFromService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1589
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1590
    return-void
.end method

.method protected blacklist cancelAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1580
    return-void
.end method

.method protected blacklist cancelEnrollment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1605
    return-void
.end method

.method protected blacklist cancelFaceDetect_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1585
    return-void
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1540
    return-void
.end method

.method protected blacklist detectFace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1565
    return-void
.end method

.method protected blacklist dumpSensorServiceStateProto_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1545
    return-void
.end method

.method protected blacklist enrollRemotely_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1600
    return-void
.end method

.method protected blacklist enroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1594
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1595
    return-void
.end method

.method protected blacklist generateChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1629
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1630
    return-void
.end method

.method protected blacklist getAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1655
    return-void
.end method

.method protected blacklist getEnrolledFaces_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1620
    return-void
.end method

.method protected blacklist getFeature_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1675
    return-void
.end method

.method protected blacklist getLockoutModeForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1645
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1701
    const/16 v0, 0x21

    return v0
.end method

.method protected blacklist getSensorPropertiesInternal_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1550
    return-void
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1555
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 368
    invoke-static {p1}, Landroid/hardware/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hasEnrolledFaces_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1639
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1640
    return-void
.end method

.method protected blacklist invalidateAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1650
    return-void
.end method

.method protected blacklist isHardwareDetected_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1624
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1625
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

    .line 372
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.hardware.face.IFaceService"

    .line 373
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    const v1, 0xffffff

    if-gt v11, v1, :cond_15

    .line 374
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    :cond_15
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1e

    .line 377
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    return v15

    .line 380
    :cond_1e
    packed-switch v11, :pswitch_data_3ea

    .line 853
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 848
    :pswitch_26
    invoke-virtual {v0}, Landroid/hardware/face/IFaceService$Stub;->scheduleWatchdog()V

    .line 849
    goto/16 :goto_3e9

    .line 840
    :pswitch_2b
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v1

    .line 841
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 843
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_3e9

    .line 831
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    :pswitch_3e
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 832
    .local v1, "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {v0, v1}, Landroid/hardware/face/IFaceService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 834
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    goto/16 :goto_3e9

    .line 822
    .end local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    :pswitch_51
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    .line 823
    .restart local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {v0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 825
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    goto/16 :goto_3e9

    .line 813
    .end local v1    # "_arg0":Landroid/hardware/biometrics/AuthenticationStateListener;
    :pswitch_64
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;

    move-result-object v1

    .line 814
    .local v1, "_arg0":Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {v0, v1}, Landroid/hardware/face/IFaceService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 816
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    goto/16 :goto_3e9

    .line 804
    .end local v1    # "_arg0":Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;
    :pswitch_77
    sget-object v1, Landroid/hardware/face/FaceSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorConfigurations;

    .line 805
    .local v1, "_arg0":Landroid/hardware/face/FaceSensorConfigurations;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators(Landroid/hardware/face/FaceSensorConfigurations;)V

    .line 807
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_3e9

    .line 787
    .end local v1    # "_arg0":Landroid/hardware/face/FaceSensorConfigurations;
    :pswitch_8a
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 789
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 791
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 793
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 795
    .local v4, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 798
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    move-object/from16 v0, p0

    goto/16 :goto_3e9

    .line 766
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_af
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 774
    .local v4, "_arg3":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 776
    .local v5, "_arg4":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v6

    .line 778
    .local v6, "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_3e9

    .line 755
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v7    # "_arg6":Ljava/lang/String;
    :pswitch_dc
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v1

    .line 757
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_3e9

    .line 738
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_f3
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 740
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 742
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 744
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 746
    .local v4, "_arg3":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 749
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_3e9

    .line 726
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_112
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId(II)J

    move-result-wide v3

    .line 731
    .local v3, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 733
    goto/16 :goto_3e9

    .line 713
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_129
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 715
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    .line 718
    .local v3, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 720
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_3e9

    .line 701
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_144
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 703
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 704
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser(II)I

    move-result v3

    .line 706
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    goto/16 :goto_3e9

    .line 687
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_15b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 691
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v4

    .line 694
    .local v4, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 696
    goto/16 :goto_3e9

    .line 670
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_176
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 672
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 679
    .local v5, "_arg4":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 681
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    move-object/from16 v0, p0

    goto/16 :goto_3e9

    .line 653
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":J
    :pswitch_197
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 655
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 661
    .local v4, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    goto/16 :goto_3e9

    .line 641
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_1bc
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 643
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v3

    .line 646
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 648
    goto/16 :goto_3e9

    .line 627
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1d3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 634
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v13, v4, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 636
    goto/16 :goto_3e9

    .line 612
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    :pswitch_1ee
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 614
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v3

    .line 618
    .local v3, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_3e9

    .line 595
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_20d
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 597
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 603
    .local v4, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 604
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_3e9

    .line 584
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_230
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 586
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 587
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 589
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    goto/16 :goto_3e9

    .line 564
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    :pswitch_243
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 568
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 570
    .local v3, "_arg2":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 572
    .restart local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 574
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 575
    .local v6, "_arg5":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v7

    .line 577
    .local v7, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {v13, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 579
    move-object/from16 v0, p0

    goto/16 :goto_3e9

    .line 538
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":[I
    .end local v7    # "_result":J
    :pswitch_270
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 542
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 544
    .restart local v3    # "_arg2":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 546
    .restart local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 548
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 550
    .restart local v6    # "_arg5":[I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/Surface;

    .line 552
    .local v7, "_arg6":Landroid/view/Surface;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 554
    .local v8, "_arg7":Z
    sget-object v0, Landroid/hardware/face/FaceEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/face/FaceEnrollOptions;

    .line 555
    .local v9, "_arg8":Landroid/hardware/face/FaceEnrollOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/face/IFaceService$Stub;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    move-result-wide v10

    .line 557
    .local v10, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {v13, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    goto/16 :goto_3e9

    .line 523
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":[I
    .end local v7    # "_arg6":Landroid/view/Surface;
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":Landroid/hardware/face/FaceEnrollOptions;
    .end local v10    # "_result":J
    :pswitch_2b3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 525
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 527
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 530
    .local v4, "_arg3":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 532
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_3e9

    .line 510
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":J
    :pswitch_2d0
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 512
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 515
    .local v3, "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 517
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_3e9

    .line 497
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_2e7
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 499
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 502
    .restart local v3    # "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 504
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_3e9

    .line 486
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_2fe
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient(II)V

    .line 491
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_3e9

    .line 463
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_311
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 465
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 467
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 469
    .restart local v3    # "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v5

    .line 471
    .local v5, "_arg3":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    sget-object v6, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 473
    .local v6, "_arg4":Landroid/hardware/face/FaceAuthenticateOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 475
    .local v7, "_arg5":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 477
    .local v9, "_arg6":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 478
    .local v10, "_arg7":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual/range {v0 .. v10}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/face/FaceAuthenticateOptions;JIZ)V

    .line 480
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_3e9

    .line 449
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v6    # "_arg4":Landroid/hardware/face/FaceAuthenticateOptions;
    .end local v7    # "_arg5":J
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":Z
    :pswitch_344
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 451
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 453
    .local v2, "_arg1":Landroid/hardware/face/IFaceServiceReceiver;
    sget-object v3, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 454
    .local v3, "_arg2":Landroid/hardware/face/FaceAuthenticateOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->detectFace(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v4

    .line 456
    .local v4, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v13, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 458
    goto/16 :goto_3e9

    .line 433
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg2":Landroid/hardware/face/FaceAuthenticateOptions;
    .end local v4    # "_result":J
    :pswitch_367
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 435
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 437
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    .line 439
    .local v4, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    sget-object v5, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 440
    .local v5, "_arg3":Landroid/hardware/face/FaceAuthenticateOptions;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v6

    .line 442
    .local v6, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v13, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    goto :goto_3e9

    .line 421
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v5    # "_arg3":Landroid/hardware/face/FaceAuthenticateOptions;
    .end local v6    # "_result":J
    :pswitch_38d
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v3

    .line 426
    .local v3, "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {v13, v3, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 428
    goto :goto_3e9

    .line 411
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    :pswitch_3a3
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 414
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 416
    goto :goto_3e9

    .line 399
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    :pswitch_3b5
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 402
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v3

    .line 404
    .local v3, "_result":[B
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 406
    goto :goto_3e9

    .line 385
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":[B
    :pswitch_3cb
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    .line 389
    .local v2, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v4

    .line 392
    .local v4, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 394
    nop

    .line 856
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_3e9
    return v15

    :pswitch_data_3ea
    .packed-switch 0x1
        :pswitch_3cb
        :pswitch_3b5
        :pswitch_3a3
        :pswitch_38d
        :pswitch_367
        :pswitch_344
        :pswitch_311
        :pswitch_2fe
        :pswitch_2e7
        :pswitch_2d0
        :pswitch_2b3
        :pswitch_270
        :pswitch_243
        :pswitch_230
        :pswitch_20d
        :pswitch_1ee
        :pswitch_1d3
        :pswitch_1bc
        :pswitch_197
        :pswitch_176
        :pswitch_15b
        :pswitch_144
        :pswitch_129
        :pswitch_112
        :pswitch_f3
        :pswitch_dc
        :pswitch_af
        :pswitch_8a
        :pswitch_77
        :pswitch_64
        :pswitch_51
        :pswitch_3e
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist prepareForAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1569
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1570
    return-void
.end method

.method protected blacklist registerAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1685
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1686
    return-void
.end method

.method protected blacklist registerAuthenticators_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1680
    return-void
.end method

.method protected blacklist removeAll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1615
    return-void
.end method

.method protected blacklist remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1610
    return-void
.end method

.method protected blacklist resetLockout_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1659
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1660
    return-void
.end method

.method protected blacklist revokeChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1635
    return-void
.end method

.method protected blacklist scheduleWatchdog_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1697
    return-void
.end method

.method protected blacklist setFeature_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1670
    return-void
.end method

.method protected blacklist startPreparedClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1575
    return-void
.end method

.method protected blacklist unregisterAuthenticationStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1690
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1691
    return-void
.end method
