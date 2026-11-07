.class public Landroid/hardware/biometrics/BiometricManager;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricManager$Authenticators;,
        Landroid/hardware/biometrics/BiometricManager$Strings;,
        Landroid/hardware/biometrics/BiometricManager$BiometricError;
    }
.end annotation


# static fields
.field public static final whitelist BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist BIOMETRIC_ERROR_IDENTITY_CHECK_NOT_ACTIVE:I = 0x14

.field public static final blacklist BIOMETRIC_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field public static final whitelist BIOMETRIC_ERROR_NOT_ENABLED_FOR_APPS:I = 0x15

.field public static final whitelist BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc

.field public static final whitelist BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final whitelist BIOMETRIC_NO_AUTHENTICATION:J = -0x1L

.field public static final whitelist BIOMETRIC_SUCCESS:I = 0x0

.field public static final blacklist EXTRA_ENROLL_REASON:Ljava/lang/String; = "enroll_reason"

.field private static final blacklist GET_LAST_AUTH_TIME_ALLOWED_AUTHENTICATORS:I = 0x800f

.field private static final blacklist TAG:Ljava/lang/String; = "BiometricManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method public static synthetic blacklist $r8$lambda$rNhzStGx9AjYXKh7DINpugLYd8g(Landroid/hardware/biometrics/BiometricManager;Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricManager;->lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/biometrics/IAuthService;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 414
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 415
    return-void
.end method

.method public static blacklist authenticatorToStr(I)Ljava/lang/String;
    .registers 3
    .param p0, "authenticatorType"    # I

    .line 269
    sparse-switch p0, :sswitch_data_24

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown authenticator type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :sswitch_17
    const-string v0, "DEVICE_CREDENTIAL"

    return-object v0

    .line 275
    :sswitch_1a
    const-string v0, "BIOMETRIC_CONVENIENCE"

    return-object v0

    .line 273
    :sswitch_1d
    const-string v0, "BIOMETRIC_WEAK"

    return-object v0

    .line 271
    :sswitch_20
    const-string v0, "BIOMETRIC_STRONG"

    return-object v0

    nop

    :sswitch_data_24
    .sparse-switch
        0xf -> :sswitch_20
        0xff -> :sswitch_1d
        0xfff -> :sswitch_1a
        0x8000 -> :sswitch_17
    .end sparse-switch
.end method

.method private synthetic blacklist lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId1"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Landroid/hardware/biometrics/IAuthService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 448
    return-object v0
.end method


# virtual methods
.method public whitelist canAuthenticate()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(II)I

    move-result v0

    .line 490
    .local v0, "result":I
    const/16 v1, 0x162

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    .line 492
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 494
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 495
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 492
    const/16 v3, 0x164

    const/4 v4, 0x4

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 497
    return v0
.end method

.method public whitelist canAuthenticate(I)I
    .registers 5
    .param p1, "authenticators"    # I

    .line 528
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(II)I

    move-result v0

    .line 530
    .local v0, "result":I
    const/16 v1, 0x162

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    .line 533
    return v0
.end method

.method public blacklist canAuthenticate(II)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "authenticators"    # I

    .line 542
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_17

    .line 544
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v1, v0, p1, p2}, Landroid/hardware/biometrics/IAuthService;->canAuthenticate(Ljava/lang/String;II)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v1

    .line 546
    .end local v0    # "opPackageName":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const-string v0, "BiometricManager"

    const-string v1, "canAuthenticate(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist createTestSession(I)Landroid/hardware/biometrics/BiometricTestSession;
    .registers 6
    .param p1, "sensorId"    # I

    .line 447
    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricManager;)V

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricTestSession;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 450
    :catch_11
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAuthenticatorIds()[J
    .registers 2

    .line 672
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAuthenticatorIds(I)[J
    .registers 4
    .param p1, "userId"    # I

    .line 685
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_11

    .line 687
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->getAuthenticatorIds(I)[J

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 688
    :catch_b
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const-string v0, "BiometricManager"

    const-string v1, "getAuthenticatorIds(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public whitelist getLastAuthenticationTime(I)J
    .registers 4
    .param p1, "authenticators"    # I

    .line 781
    if-eqz p1, :cond_20

    const v0, 0x800f

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_20

    .line 787
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_1d

    .line 789
    :try_start_c
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/hardware/biometrics/IAuthService;->getLastAuthenticationTime(II)J

    move-result-wide v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    return-wide v0

    .line 790
    :catch_17
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 794
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const-wide/16 v0, -0x1

    return-wide v0

    .line 783
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only BIOMETRIC_STRONG and DEVICE_CREDENTIAL authenticators may be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;"
        }
    .end annotation

    .line 426
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IAuthService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 428
    .local v0, "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 430
    .local v3, "internalProp":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-static {v3}, Landroid/hardware/biometrics/SensorProperties;->from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorProperties;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2b

    .line 431
    nop

    .end local v3    # "internalProp":Landroid/hardware/biometrics/SensorPropertiesInternal;
    goto :goto_15

    .line 432
    :cond_2a
    return-object v1

    .line 433
    .end local v0    # "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    .end local v1    # "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties;>;"
    :catch_2b
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getStrings(I)Landroid/hardware/biometrics/BiometricManager$Strings;
    .registers 6
    .param p1, "authenticators"    # I

    .line 566
    new-instance v0, Landroid/hardware/biometrics/BiometricManager$Strings;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricManager$Strings;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;ILandroid/hardware/biometrics/BiometricManager-IA;)V

    return-object v0
.end method

.method public blacklist getUiPackage()Ljava/lang/String;
    .registers 3

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0}, Landroid/hardware/biometrics/IAuthService;->getUiPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 465
    :catch_7
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasEnrolledBiometrics(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 576
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 578
    :try_start_5
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/hardware/biometrics/IAuthService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    .line 579
    :catch_12
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in hasEnrolledBiometrics(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v1

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    return v1
.end method

.method public blacklist invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "fromSensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;

    .line 656
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 658
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IAuthService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 661
    goto :goto_10

    .line 659
    :catch_a
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 614
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 616
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 619
    goto :goto_18

    .line 617
    :catch_a
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 621
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v0, "BiometricManager"

    const-string/jumbo v1, "registerAuthenticationStateListener(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_18
    return-void
.end method

.method public blacklist registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 595
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 597
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 600
    goto :goto_18

    .line 598
    :catch_a
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v0, "BiometricManager"

    const-string/jumbo v1, "registerEnabledOnKeyguardCallback(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_18
    return-void
.end method

.method public blacklist resetLockout(I[B)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B

    .line 736
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 738
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IAuthService;->resetLockout(I[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 741
    goto :goto_10

    .line 739
    :catch_a
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 744
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "fromSensorId"    # I
    .param p4, "userId"    # I
    .param p5, "hardwareAuthToken"    # [B

    .line 717
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_1e

    .line 719
    :try_start_4
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_6} :catch_12

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "fromSensorId":I
    .end local p4    # "userId":I
    .end local p5    # "hardwareAuthToken":[B
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "opPackageName":Ljava/lang/String;
    .local v4, "fromSensorId":I
    .local v5, "userId":I
    .local v6, "hardwareAuthToken":[B
    :try_start_b
    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/IAuthService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 723
    goto :goto_23

    .line 721
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "opPackageName":Ljava/lang/String;
    .end local v4    # "fromSensorId":I
    .end local v5    # "userId":I
    .end local v6    # "hardwareAuthToken":[B
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "fromSensorId":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardwareAuthToken":[B
    :catch_12
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 722
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "fromSensorId":I
    .end local p4    # "userId":I
    .end local p5    # "hardwareAuthToken":[B
    .restart local v2    # "token":Landroid/os/IBinder;
    .restart local v3    # "opPackageName":Ljava/lang/String;
    .restart local v4    # "fromSensorId":I
    .restart local v5    # "userId":I
    .restart local v6    # "hardwareAuthToken":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 717
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "opPackageName":Ljava/lang/String;
    .end local v4    # "fromSensorId":I
    .end local v5    # "userId":I
    .end local v6    # "hardwareAuthToken":[B
    .local p1, "token":Landroid/os/IBinder;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "fromSensorId":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardwareAuthToken":[B
    :cond_1e
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 725
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "fromSensorId":I
    .end local p4    # "userId":I
    .end local p5    # "hardwareAuthToken":[B
    .restart local v2    # "token":Landroid/os/IBinder;
    .restart local v3    # "opPackageName":Ljava/lang/String;
    .restart local v4    # "fromSensorId":I
    .restart local v5    # "userId":I
    .restart local v6    # "hardwareAuthToken":[B
    :goto_23
    return-void
.end method

.method public blacklist unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 632
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_10

    .line 634
    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 637
    goto :goto_18

    .line 635
    :catch_a
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 639
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v0, "BiometricManager"

    const-string/jumbo v1, "unregisterAuthenticationStateListener(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_18
    return-void
.end method
