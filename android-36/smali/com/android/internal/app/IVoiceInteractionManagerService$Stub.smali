.class public abstract Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionManagerService"

.field static final greylist-max-o TRANSACTION_activeServiceSupportsAssist:I = 0x18

.field static final greylist-max-o TRANSACTION_activeServiceSupportsLaunchFromKeyguard:I = 0x19

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x8

.field static final blacklist TRANSACTION_createSoundTriggerSessionAsOriginator:I = 0x21

.field static final greylist-max-o TRANSACTION_deleteKeyphraseSoundModel:I = 0xf

.field static final greylist-max-o TRANSACTION_deliverNewSession:I = 0x2

.field static final blacklist TRANSACTION_destroyDetector:I = 0x25

.field static final blacklist TRANSACTION_disableVisualQueryDetection:I = 0x29

.field static final blacklist TRANSACTION_enableVisualQueryDetection:I = 0x28

.field static final greylist-max-o TRANSACTION_finish:I = 0x9

.field static final blacklist TRANSACTION_getAccessibilityDetectionEnabled:I = 0x34

.field static final greylist-max-o TRANSACTION_getActiveServiceComponentName:I = 0x13

.field static final blacklist TRANSACTION_getActiveServiceSupportedActions:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDisabledShowContext:I = 0xb

.field static final blacklist TRANSACTION_getEnrolledKeyphraseMetadata:I = 0x12

.field static final greylist-max-o TRANSACTION_getKeyphraseSoundModel:I = 0xd

.field static final greylist-max-o TRANSACTION_getUserDisabledShowContext:I = 0xc

.field static final greylist-max-o TRANSACTION_hideCurrentSession:I = 0x15

.field static final greylist-max-o TRANSACTION_hideSessionFromSession:I = 0x4

.field static final blacklist TRANSACTION_initAndVerifyDetector:I = 0x24

.field static final greylist-max-o TRANSACTION_isEnrolledForKeyphrase:I = 0x11

.field static final greylist-max-o TRANSACTION_isSessionRunning:I = 0x17

.field static final greylist-max-o TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x16

.field static final blacklist TRANSACTION_listModuleProperties:I = 0x22

.field static final blacklist TRANSACTION_notifyActivityEventChanged:I = 0x33

.field static final greylist-max-o TRANSACTION_onLockscreenShown:I = 0x1a

.field static final blacklist TRANSACTION_performDirectAction:I = 0x1f

.field static final blacklist TRANSACTION_registerAccessibilityDetectionSettingsListener:I = 0x35

.field static final greylist-max-o TRANSACTION_registerVoiceInteractionSessionListener:I = 0x1b

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x1e

.field static final blacklist TRANSACTION_setDisabled:I = 0x20

.field static final greylist-max-o TRANSACTION_setDisabledShowContext:I = 0xa

.field static final greylist-max-o TRANSACTION_setKeepAwake:I = 0x7

.field static final blacklist TRANSACTION_setModelDatabaseForTestEnabled:I = 0x10

.field static final blacklist TRANSACTION_setSessionWindowVisible:I = 0x32

.field static final blacklist TRANSACTION_setUiHints:I = 0x1d

.field static final greylist-max-o TRANSACTION_showSession:I = 0x1

.field static final greylist-max-o TRANSACTION_showSessionForActiveService:I = 0x14

.field static final greylist-max-o TRANSACTION_showSessionFromSession:I = 0x3

.field static final blacklist TRANSACTION_shutdownHotwordDetectionService:I = 0x26

.field static final greylist-max-o TRANSACTION_startAssistantActivity:I = 0x6

.field static final blacklist TRANSACTION_startListeningFromExternalSource:I = 0x2e

.field static final blacklist TRANSACTION_startListeningFromMic:I = 0x2c

.field static final blacklist TRANSACTION_startListeningVisibleActivityChanged:I = 0x30

.field static final blacklist TRANSACTION_startPerceiving:I = 0x2a

.field static final greylist-max-o TRANSACTION_startVoiceActivity:I = 0x5

.field static final blacklist TRANSACTION_stopListeningFromMic:I = 0x2d

.field static final blacklist TRANSACTION_stopListeningVisibleActivityChanged:I = 0x31

.field static final blacklist TRANSACTION_stopPerceiving:I = 0x2b

.field static final blacklist TRANSACTION_subscribeVisualQueryRecognitionStatus:I = 0x27

.field static final blacklist TRANSACTION_triggerHardwareRecognitionEventForTest:I = 0x2f

.field static final blacklist TRANSACTION_unregisterAccessibilityDetectionSettingsListener:I = 0x36

.field static final greylist-max-o TRANSACTION_updateKeyphraseSoundModel:I = 0xe

.field static final blacklist TRANSACTION_updateState:I = 0x23


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    nop

    .line 407
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 408
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 396
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 397
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 398
    if-eqz p1, :cond_d

    .line 401
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 402
    return-void

    .line 399
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 415
    if-nez p0, :cond_4

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 419
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_14

    .line 420
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object v1

    .line 422
    :cond_14
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 431
    packed-switch p0, :pswitch_data_c2

    .line 651
    const/4 v0, 0x0

    return-object v0

    .line 647
    :pswitch_5
    const-string/jumbo v0, "unregisterAccessibilityDetectionSettingsListener"

    return-object v0

    .line 643
    :pswitch_9
    const-string/jumbo v0, "registerAccessibilityDetectionSettingsListener"

    return-object v0

    .line 639
    :pswitch_d
    const-string v0, "getAccessibilityDetectionEnabled"

    return-object v0

    .line 635
    :pswitch_10
    const-string v0, "notifyActivityEventChanged"

    return-object v0

    .line 631
    :pswitch_13
    const-string/jumbo v0, "setSessionWindowVisible"

    return-object v0

    .line 627
    :pswitch_17
    const-string/jumbo v0, "stopListeningVisibleActivityChanged"

    return-object v0

    .line 623
    :pswitch_1b
    const-string/jumbo v0, "startListeningVisibleActivityChanged"

    return-object v0

    .line 619
    :pswitch_1f
    const-string/jumbo v0, "triggerHardwareRecognitionEventForTest"

    return-object v0

    .line 615
    :pswitch_23
    const-string/jumbo v0, "startListeningFromExternalSource"

    return-object v0

    .line 611
    :pswitch_27
    const-string/jumbo v0, "stopListeningFromMic"

    return-object v0

    .line 607
    :pswitch_2b
    const-string/jumbo v0, "startListeningFromMic"

    return-object v0

    .line 603
    :pswitch_2f
    const-string/jumbo v0, "stopPerceiving"

    return-object v0

    .line 599
    :pswitch_33
    const-string/jumbo v0, "startPerceiving"

    return-object v0

    .line 595
    :pswitch_37
    const-string v0, "disableVisualQueryDetection"

    return-object v0

    .line 591
    :pswitch_3a
    const-string v0, "enableVisualQueryDetection"

    return-object v0

    .line 587
    :pswitch_3d
    const-string/jumbo v0, "subscribeVisualQueryRecognitionStatus"

    return-object v0

    .line 583
    :pswitch_41
    const-string/jumbo v0, "shutdownHotwordDetectionService"

    return-object v0

    .line 579
    :pswitch_45
    const-string v0, "destroyDetector"

    return-object v0

    .line 575
    :pswitch_48
    const-string v0, "initAndVerifyDetector"

    return-object v0

    .line 571
    :pswitch_4b
    const-string/jumbo v0, "updateState"

    return-object v0

    .line 567
    :pswitch_4f
    const-string v0, "listModuleProperties"

    return-object v0

    .line 563
    :pswitch_52
    const-string v0, "createSoundTriggerSessionAsOriginator"

    return-object v0

    .line 559
    :pswitch_55
    const-string/jumbo v0, "setDisabled"

    return-object v0

    .line 555
    :pswitch_59
    const-string v0, "performDirectAction"

    return-object v0

    .line 551
    :pswitch_5c
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    .line 547
    :pswitch_60
    const-string/jumbo v0, "setUiHints"

    return-object v0

    .line 543
    :pswitch_64
    const-string v0, "getActiveServiceSupportedActions"

    return-object v0

    .line 539
    :pswitch_67
    const-string/jumbo v0, "registerVoiceInteractionSessionListener"

    return-object v0

    .line 535
    :pswitch_6b
    const-string v0, "onLockscreenShown"

    return-object v0

    .line 531
    :pswitch_6e
    const-string v0, "activeServiceSupportsLaunchFromKeyguard"

    return-object v0

    .line 527
    :pswitch_71
    const-string v0, "activeServiceSupportsAssist"

    return-object v0

    .line 523
    :pswitch_74
    const-string v0, "isSessionRunning"

    return-object v0

    .line 519
    :pswitch_77
    const-string v0, "launchVoiceAssistFromKeyguard"

    return-object v0

    .line 515
    :pswitch_7a
    const-string v0, "hideCurrentSession"

    return-object v0

    .line 511
    :pswitch_7d
    const-string/jumbo v0, "showSessionForActiveService"

    return-object v0

    .line 507
    :pswitch_81
    const-string v0, "getActiveServiceComponentName"

    return-object v0

    .line 503
    :pswitch_84
    const-string v0, "getEnrolledKeyphraseMetadata"

    return-object v0

    .line 499
    :pswitch_87
    const-string v0, "isEnrolledForKeyphrase"

    return-object v0

    .line 495
    :pswitch_8a
    const-string/jumbo v0, "setModelDatabaseForTestEnabled"

    return-object v0

    .line 491
    :pswitch_8e
    const-string v0, "deleteKeyphraseSoundModel"

    return-object v0

    .line 487
    :pswitch_91
    const-string/jumbo v0, "updateKeyphraseSoundModel"

    return-object v0

    .line 483
    :pswitch_95
    const-string v0, "getKeyphraseSoundModel"

    return-object v0

    .line 479
    :pswitch_98
    const-string v0, "getUserDisabledShowContext"

    return-object v0

    .line 475
    :pswitch_9b
    const-string v0, "getDisabledShowContext"

    return-object v0

    .line 471
    :pswitch_9e
    const-string/jumbo v0, "setDisabledShowContext"

    return-object v0

    .line 467
    :pswitch_a2
    const-string v0, "finish"

    return-object v0

    .line 463
    :pswitch_a5
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 459
    :pswitch_a8
    const-string/jumbo v0, "setKeepAwake"

    return-object v0

    .line 455
    :pswitch_ac
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 451
    :pswitch_b0
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 447
    :pswitch_b4
    const-string v0, "hideSessionFromSession"

    return-object v0

    .line 443
    :pswitch_b7
    const-string/jumbo v0, "showSessionFromSession"

    return-object v0

    .line 439
    :pswitch_bb
    const-string v0, "deliverNewSession"

    return-object v0

    .line 435
    :pswitch_be
    const-string/jumbo v0, "showSession"

    return-object v0

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_91
        :pswitch_8e
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_67
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist activeServiceSupportsAssist_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2396
    return-void
.end method

.method protected blacklist activeServiceSupportsLaunchFromKeyguard_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2400
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2401
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 426
    return-object p0
.end method

.method protected blacklist disableVisualQueryDetection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2452
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2453
    return-void
.end method

.method protected blacklist enableVisualQueryDetection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2447
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2448
    return-void
.end method

.method protected blacklist getActiveServiceSupportedActions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2415
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2416
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2470
    const/16 v0, 0x35

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 658
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hideCurrentSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2380
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2381
    return-void
.end method

.method protected blacklist initAndVerifyDetector_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2435
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_HOTWORD_DETECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2436
    return-void
.end method

.method protected blacklist isSessionRunning_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2390
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2391
    return-void
.end method

.method protected blacklist launchVoiceAssistFromKeyguard_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2385
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2386
    return-void
.end method

.method protected blacklist onLockscreenShown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2405
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2406
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    move-object v8, p3

    const-string v9, "com.android.internal.app.IVoiceInteractionManagerService"

    .line 663
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 664
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 667
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    return v10

    .line 670
    :cond_17
    packed-switch p1, :pswitch_data_4a2

    .line 1239
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1232
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;

    move-result-object v1

    .line 1233
    .local v1, "_arg0":Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->unregisterAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    .line 1235
    goto/16 :goto_4a1

    .line 1224
    .end local v1    # "_arg0":Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;

    move-result-object v1

    .line 1225
    .restart local v1    # "_arg0":Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->registerAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    .line 1227
    goto/16 :goto_4a1

    .line 1216
    .end local v1    # "_arg0":Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getAccessibilityDetectionEnabled()Z

    move-result v1

    .line 1217
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1219
    goto/16 :goto_4a1

    .line 1207
    .end local v1    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1209
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1210
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->notifyActivityEventChanged(Landroid/os/IBinder;I)V

    .line 1212
    goto/16 :goto_4a1

    .line 1196
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1198
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1199
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setSessionWindowVisible(Landroid/os/IBinder;Z)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    goto/16 :goto_4a1

    .line 1187
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1188
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopListeningVisibleActivityChanged(Landroid/os/IBinder;)V

    .line 1190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    goto/16 :goto_4a1

    .line 1178
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1179
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningVisibleActivityChanged(Landroid/os/IBinder;)V

    .line 1181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    goto/16 :goto_4a1

    .line 1167
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_8c
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 1169
    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v2

    .line 1170
    .local v2, "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_4a1

    .line 1150
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .end local v2    # "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    :pswitch_a7
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1152
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFormat;

    .line 1154
    .local v2, "_arg1":Landroid/media/AudioFormat;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 1156
    .local v3, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1158
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v5

    .line 1159
    .local v5, "_arg4":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    goto/16 :goto_4a1

    .line 1143
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/media/AudioFormat;
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :pswitch_d7
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopListeningFromMic()V

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_4a1

    .line 1133
    :pswitch_df
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 1135
    .local v1, "_arg0":Landroid/media/AudioFormat;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v2

    .line 1136
    .local v2, "_arg1":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    goto/16 :goto_4a1

    .line 1126
    .end local v1    # "_arg0":Landroid/media/AudioFormat;
    .end local v2    # "_arg1":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :pswitch_fa
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopPerceiving()V

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_4a1

    .line 1118
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    move-result-object v1

    .line 1119
    .local v1, "_arg0":Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startPerceiving(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    goto/16 :goto_4a1

    .line 1111
    .end local v1    # "_arg0":Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
    :pswitch_115
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->disableVisualQueryDetection()V

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    goto/16 :goto_4a1

    .line 1103
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v1

    .line 1104
    .local v1, "_arg0":Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    goto/16 :goto_4a1

    .line 1094
    .end local v1    # "_arg0":Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    move-result-object v1

    .line 1095
    .local v1, "_arg0":Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    goto/16 :goto_4a1

    .line 1087
    .end local v1    # "_arg0":Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;
    :pswitch_143
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->shutdownHotwordDetectionService()V

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    goto/16 :goto_4a1

    .line 1079
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1080
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->destroyDetector(Landroid/os/IBinder;)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_4a1

    .line 1060
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_15a
    sget-object v1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 1062
    .local v1, "_arg0":Landroid/media/permission/Identity;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 1064
    .local v2, "_arg1":Landroid/os/PersistableBundle;
    sget-object v3, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    .line 1066
    .local v3, "_arg2":Landroid/os/SharedMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1068
    .restart local v4    # "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v5

    .line 1070
    .local v5, "_arg4":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1071
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->initAndVerifyDetector(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_4a1

    .line 1047
    .end local v1    # "_arg0":Landroid/media/permission/Identity;
    .end local v2    # "_arg1":Landroid/os/PersistableBundle;
    .end local v3    # "_arg2":Landroid/os/SharedMemory;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v6    # "_arg5":I
    :pswitch_18e
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 1049
    .local v1, "_arg0":Landroid/os/PersistableBundle;
    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    .line 1051
    .local v2, "_arg1":Landroid/os/SharedMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1052
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_4a1

    .line 1037
    .end local v1    # "_arg0":Landroid/os/PersistableBundle;
    .end local v2    # "_arg1":Landroid/os/SharedMemory;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_1ad
    sget-object v1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 1038
    .local v1, "_arg0":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v2

    .line 1040
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1042
    goto/16 :goto_4a1

    .line 1023
    .end local v1    # "_arg0":Landroid/media/permission/Identity;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    :pswitch_1c4
    sget-object v1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 1025
    .restart local v1    # "_arg0":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1027
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 1028
    .local v3, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v4

    .line 1030
    .local v4, "_result":Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1032
    goto/16 :goto_4a1

    .line 1014
    .end local v1    # "_arg0":Landroid/media/permission/Identity;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local v4    # "_result":Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1015
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabled(Z)V

    .line 1017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    goto/16 :goto_4a1

    .line 993
    .end local v1    # "_arg0":Z
    :pswitch_1f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 995
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 999
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1001
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1003
    .local v5, "_arg4":Landroid/os/IBinder;
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 1005
    .local v6, "_arg5":Landroid/os/RemoteCallback;
    sget-object v7, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallback;

    .line 1006
    .local v7, "_arg6":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_4a1

    .line 976
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Landroid/os/RemoteCallback;
    .end local v7    # "_arg6":Landroid/os/RemoteCallback;
    :pswitch_22a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 978
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 982
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/RemoteCallback;

    .line 984
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/RemoteCallback;

    .line 985
    .local v5, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_4a1

    .line 967
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    .end local v5    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_254
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 968
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setUiHints(Landroid/os/Bundle;)V

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_4a1

    .line 956
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :pswitch_267
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 958
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;

    move-result-object v2

    .line 959
    .local v2, "_arg1":Lcom/android/internal/app/IVoiceActionCheckCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    goto/16 :goto_4a1

    .line 947
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceActionCheckCallback;
    :pswitch_27e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v1

    .line 948
    .local v1, "_arg0":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    goto/16 :goto_4a1

    .line 940
    .end local v1    # "_arg0":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :pswitch_291
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onLockscreenShown()V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_4a1

    .line 933
    :pswitch_299
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v1

    .line 934
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 936
    goto/16 :goto_4a1

    .line 926
    .end local v1    # "_result":Z
    :pswitch_2a5
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsAssist()Z

    move-result v1

    .line 927
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 929
    goto/16 :goto_4a1

    .line 919
    .end local v1    # "_result":Z
    :pswitch_2b1
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isSessionRunning()Z

    move-result v1

    .line 920
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    goto/16 :goto_4a1

    .line 913
    .end local v1    # "_result":Z
    :pswitch_2bd
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->launchVoiceAssistFromKeyguard()V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_4a1

    .line 907
    :pswitch_2c5
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideCurrentSession()V

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    goto/16 :goto_4a1

    .line 890
    :pswitch_2cd
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 892
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 894
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v4

    .line 898
    .local v4, "_arg3":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 899
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v6

    .line 901
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 903
    goto/16 :goto_4a1

    .line 882
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :pswitch_2f9
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 883
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 885
    goto/16 :goto_4a1

    .line 871
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getEnrolledKeyphraseMetadata(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v3

    .line 876
    .local v3, "_result":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 878
    goto/16 :goto_4a1

    .line 859
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :pswitch_31c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 862
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isEnrolledForKeyphrase(ILjava/lang/String;)Z

    move-result v3

    .line 864
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 866
    goto/16 :goto_4a1

    .line 848
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_333
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 850
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 851
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setModelDatabaseForTestEnabled(ZLandroid/os/IBinder;)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_4a1

    .line 836
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 838
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 839
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result v3

    .line 841
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    goto/16 :goto_4a1

    .line 826
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_35d
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 827
    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v2

    .line 829
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    goto/16 :goto_4a1

    .line 814
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v2    # "_result":I
    :pswitch_374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v3

    .line 819
    .local v3, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 821
    goto/16 :goto_4a1

    .line 806
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :pswitch_38b
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getUserDisabledShowContext()I

    move-result v1

    .line 807
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    goto/16 :goto_4a1

    .line 799
    .end local v1    # "_result":I
    :pswitch_397
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDisabledShowContext()I

    move-result v1

    .line 800
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    goto/16 :goto_4a1

    .line 791
    .end local v1    # "_result":I
    :pswitch_3a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 792
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabledShowContext(I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_4a1

    .line 782
    .end local v1    # "_arg0":I
    :pswitch_3b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 783
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->finish(Landroid/os/IBinder;)V

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    goto/16 :goto_4a1

    .line 773
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 774
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->closeSystemDialogs(Landroid/os/IBinder;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    goto/16 :goto_4a1

    .line 762
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 764
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 765
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setKeepAwake(Landroid/os/IBinder;Z)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_4a1

    .line 744
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_3e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 748
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 752
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 753
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    .line 755
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    goto/16 :goto_4a1

    .line 728
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :pswitch_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 730
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 732
    .restart local v2    # "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 734
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 735
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 737
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    goto :goto_4a1

    .line 718
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_431
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 719
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideSessionFromSession(Landroid/os/IBinder;)Z

    move-result v2

    .line 721
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 723
    goto :goto_4a1

    .line 702
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 704
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 706
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 708
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 709
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v5

    .line 711
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 713
    goto :goto_4a1

    .line 688
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 690
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v2

    .line 692
    .local v2, "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v3

    .line 693
    .local v3, "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result v4

    .line 695
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    goto :goto_4a1

    .line 675
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    .end local v3    # "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    .end local v4    # "_result":Z
    :pswitch_487
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 677
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSession(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    nop

    .line 1242
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :goto_4a1
    return v10

    :pswitch_data_4a2
    .packed-switch 0x1
        :pswitch_487
        :pswitch_465
        :pswitch_443
        :pswitch_431
        :pswitch_40f
        :pswitch_3e3
        :pswitch_3d0
        :pswitch_3c1
        :pswitch_3b2
        :pswitch_3a3
        :pswitch_397
        :pswitch_38b
        :pswitch_374
        :pswitch_35d
        :pswitch_346
        :pswitch_333
        :pswitch_31c
        :pswitch_305
        :pswitch_2f9
        :pswitch_2cd
        :pswitch_2c5
        :pswitch_2bd
        :pswitch_2b1
        :pswitch_2a5
        :pswitch_299
        :pswitch_291
        :pswitch_27e
        :pswitch_267
        :pswitch_254
        :pswitch_22a
        :pswitch_1f6
        :pswitch_1e7
        :pswitch_1c4
        :pswitch_1ad
        :pswitch_18e
        :pswitch_15a
        :pswitch_14b
        :pswitch_143
        :pswitch_130
        :pswitch_11d
        :pswitch_115
        :pswitch_102
        :pswitch_fa
        :pswitch_df
        :pswitch_d7
        :pswitch_a7
        :pswitch_8c
        :pswitch_7d
        :pswitch_6e
        :pswitch_5b
        :pswitch_4b
        :pswitch_3f
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerVoiceInteractionSessionListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2410
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2411
    return-void
.end method

.method protected blacklist setDisabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2423
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2424
    return-void
.end method

.method protected blacklist setModelDatabaseForTestEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2367
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2368
    return-void
.end method

.method protected blacklist showSessionForActiveService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2375
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2376
    return-void
.end method

.method protected blacklist subscribeVisualQueryRecognitionStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2442
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2443
    return-void
.end method

.method protected blacklist updateState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2430
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_HOTWORD_DETECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2431
    return-void
.end method
