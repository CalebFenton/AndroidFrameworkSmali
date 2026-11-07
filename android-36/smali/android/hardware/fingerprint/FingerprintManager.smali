.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFingerprintConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$UdfpsUiEvent;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollReason;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist ENROLL_ENROLL:I = 0x2

.field public static final blacklist ENROLL_FIND_SENSOR:I = 0x1

.field public static final blacklist SENSOR_ID_ANY:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FingerprintManager"

.field public static final blacklist UDFPS_UI_OVERLAY_SHOWN:I = 0x1

.field public static final blacklist UDFPS_UI_READY:I = 0x2


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mEnrollStageThresholds:[F

.field private blacklist mExecutor:Landroid/os/HandlerExecutor;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$5Da4jp82AOhztEyvWco9Eqc6L7w(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->lambda$onPowerPressed$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Bj1O2CSrc96vaxnZfdz5ILz7smI(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProps(Landroid/hardware/fingerprint/FingerprintManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFingerprintDetect(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelFingerprintDetect(J)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/fingerprint/IFingerprintService;

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;

    .line 1344
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1345
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 1346
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_20

    .line 1347
    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_20
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_30

    .line 1351
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 1360
    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 1361
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 1362
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 10
    .param p1, "requestId"    # J

    .line 1387
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_24

    .line 1388
    :try_start_4
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1390
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1391
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_1c

    .line 1388
    move-wide v5, p1

    .end local p1    # "requestId":J
    .local v5, "requestId":J
    :try_start_15
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 1395
    goto :goto_25

    .line 1393
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v5    # "requestId":J
    .restart local p1    # "requestId":J
    :catch_1c
    move-exception v0

    move-wide v5, p1

    move-object p1, v0

    .line 1394
    .restart local v5    # "requestId":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1387
    .end local v5    # "requestId":J
    .local p1, "requestId":J
    :cond_24
    move-wide v5, p1

    .line 1396
    .end local p1    # "requestId":J
    .restart local v5    # "requestId":J
    :goto_25
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .registers 5
    .param p1, "requestId"    # J

    .line 1379
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_12

    .line 1380
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1383
    goto :goto_12

    .line 1381
    :catch_c
    move-exception v0

    .line 1382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist cancelFingerprintDetect(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 1399
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_5

    .line 1400
    return-void

    .line 1404
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 1407
    nop

    .line 1408
    return-void

    .line 1405
    :catch_14
    move-exception v0

    .line 1406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist createEnrollStageThresholds(Landroid/content/Context;)[F
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1442
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isPowerbuttonFps()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "enrollStageThresholdStrings":[Ljava/lang/String;
    goto :goto_1d

    .line 1446
    .end local v0    # "enrollStageThresholdStrings":[Ljava/lang/String;
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1450
    .restart local v0    # "enrollStageThresholdStrings":[Ljava/lang/String;
    :goto_1d
    array-length v1, v0

    new-array v1, v1, [F

    .line 1451
    .local v1, "enrollStageThresholds":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    .line 1452
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 1451
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1454
    .end local v2    # "i":I
    :cond_2f
    return-object v1
.end method

.method public static blacklist getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1519
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_82

    :pswitch_4
    goto :goto_5f

    .line 1544
    :pswitch_5
    const v0, 0x104042e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1541
    :pswitch_d
    const v0, 0x104042f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1538
    :pswitch_15
    const v0, 0x104042b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1547
    :pswitch_1d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "msgArray":[Ljava/lang/String;
    array-length v2, v1

    if-ge p2, v2, :cond_5f

    aget-object v2, v1, p2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1550
    aget-object v0, v1, p2

    return-object v0

    .line 1535
    .end local v1    # "msgArray":[Ljava/lang/String;
    :pswitch_36
    const v0, 0x1040430

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1532
    :pswitch_3e
    const v0, 0x1040431

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1529
    :pswitch_46
    const v0, 0x1040429

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1526
    :pswitch_4e
    const v0, 0x104042c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1523
    :pswitch_56
    const v0, 0x104042d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1521
    :pswitch_5e
    return-object v0

    .line 1554
    :cond_5f
    :goto_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-object v0

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_1d
        :pswitch_5e
        :pswitch_4
        :pswitch_15
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getCurrentUserId()I
    .registers 3

    .line 1366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1367
    :catch_b
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 1461
    packed-switch p1, :pswitch_data_a8

    :pswitch_3
    goto :goto_7d

    .line 1496
    :pswitch_4
    const v0, 0x1040445

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1493
    :pswitch_c
    const v0, 0x104043c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1490
    :pswitch_14
    const v0, 0x1040446

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1487
    :pswitch_1c
    const v0, 0x104043f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1484
    :pswitch_24
    const v0, 0x1040442

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1481
    :pswitch_2c
    const v0, 0x1040449

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1478
    :pswitch_34
    const v0, 0x1040441

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1499
    :pswitch_3c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v1, v0

    if-ge p2, v1, :cond_7d

    .line 1502
    aget-object v1, v0, p2

    return-object v1

    .line 1476
    .end local v0    # "msgArray":[Ljava/lang/String;
    :pswitch_4d
    const v0, 0x1040440

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1474
    :pswitch_55
    const v0, 0x104043d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1471
    :pswitch_5d
    const v0, 0x1040443

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1469
    :pswitch_65
    const v0, 0x1040447

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1466
    :pswitch_6d
    const v0, 0x1040448

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1463
    :pswitch_75
    const v0, 0x104043e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1510
    :cond_7d
    :goto_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const v0, 0x104044a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_3
        :pswitch_4d
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_3
        :pswitch_3
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 3

    .line 1374
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 1375
    .local v0, "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    :goto_13
    return-object v1
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

    .line 176
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Landroid/hardware/fingerprint/IFingerprintService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method private synthetic blacklist lambda$onPowerPressed$1()V
    .registers 1

    .line 1144
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->sendPowerPressed()V

    return-void
.end method

.method private blacklist sendPowerPressed()V
    .registers 4

    .line 1334
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPowerPressed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1337
    goto :goto_e

    .line 1335
    :catch_6
    move-exception v0

    .line 1336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Error sending power press"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private greylist-max-o useHandler(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 555
    if-eqz p1, :cond_e

    .line 556
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 557
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    goto :goto_29

    .line 558
    :cond_e
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    if-eq v0, v1, :cond_29

    .line 559
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 560
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 562
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public blacklist addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1254
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_10

    .line 1256
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1259
    goto :goto_17

    .line 1257
    :catch_a
    move-exception v0

    .line 1258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1261
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v0, "FingerprintManager"

    const-string v1, "addProvidersAvailableCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :goto_17
    return-void
.end method

.method public greylist-max-o addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 1299
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_25

    .line 1301
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1302
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1323
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1302
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    .line 1326
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_2c

    .line 1324
    :catch_1f
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    const-string v0, "FingerprintManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_2c
    return-void
.end method

.method public whitelist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .registers 15
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "crypto":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .end local p3    # "flags":I
    .end local p4    # "callback":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .end local p5    # "handler":Landroid/os/Handler;
    .local v2, "crypto":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .local v3, "cancel":Landroid/os/CancellationSignal;
    .local v4, "callback":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .local v5, "handler":Landroid/os/Handler;
    .local v8, "flags":I
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 592
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 14
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 603
    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .end local p1    # "crypto":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .end local p3    # "callback":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "userId":I
    .local v1, "crypto":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .local v2, "cancel":Landroid/os/CancellationSignal;
    .local v3, "callback":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .local v4, "handler":Landroid/os/Handler;
    .local v6, "userId":I
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 604
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V
    .registers 15
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "sensorId"    # I
    .param p6, "userId"    # I
    .param p7, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    .line 617
    invoke-virtual {v0, p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p6}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object v0

    if-eqz p7, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 619
    :goto_12
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object v6

    .line 616
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "crypto":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .end local p2    # "cancel":Landroid/os/CancellationSignal;
    .end local p3    # "callback":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "crypto":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .local v3, "cancel":Landroid/os/CancellationSignal;
    .local v4, "callback":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .local v5, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V

    .line 621
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V
    .registers 15
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "options"    # Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 631
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 633
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 634
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 631
    const/16 v2, 0x164

    const/4 v6, 0x1

    invoke-static {v2, v6, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 636
    if-eqz p3, :cond_7b

    .line 640
    const-string v7, "FingerprintManager"

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 641
    const-string v0, "authentication already canceled"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 645
    :cond_28
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 646
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 648
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_7a

    .line 650
    :try_start_3e
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p3, p1}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    move-object v8, v0

    .line 652
    .local v8, "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    invoke-direct {p0, p4}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 653
    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v0

    goto :goto_50

    :cond_4e
    const-wide/16 v0, 0x0

    :goto_50
    move-wide v2, v0

    .line 654
    .local v2, "operationId":J
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v4, p0, v8}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v0

    .line 656
    .local v0, "authId":J
    if-eqz p2, :cond_69

    .line 657
    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v4, p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;J)V

    invoke-virtual {p2, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_69} :catch_6a

    .line 666
    .end local v0    # "authId":J
    .end local v2    # "operationId":J
    .end local v8    # "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    :cond_69
    goto :goto_7a

    .line 659
    :catch_6a
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Remote exception while authenticating: "

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 664
    const/4 v2, 0x0

    invoke-static {v1, v6, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-virtual {p3, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 668
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7a
    :goto_7a
    return-void

    .line 637
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createTestSession(I)Landroid/hardware/biometrics/BiometricTestSession;
    .registers 6
    .param p1, "sensorId"    # I

    .line 175
    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricTestSession;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 178
    :catch_11
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V
    .registers 9
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;
    .param p3, "options"    # Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 678
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_5

    .line 679
    return-void

    .line 682
    :cond_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FingerprintManager"

    if-eqz v0, :cond_13

    .line 683
    const-string v0, "Detection already cancelled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 687
    :cond_13
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 688
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 690
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p2}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;)V

    .line 693
    .local v0, "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    :try_start_2a
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v4, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    invoke-interface {v2, v3, v4, p3}, Landroid/hardware/fingerprint/IFingerprintService;->detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v2

    .line 695
    .local v2, "authId":J
    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;

    invoke-direct {v4, p0, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;J)V

    invoke-virtual {p1, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3f} :catch_40

    .line 698
    .end local v2    # "authId":J
    goto :goto_46

    .line 696
    :catch_40
    move-exception v2

    .line 697
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception when requesting finger detect"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_46
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V
    .registers 19
    .param p1, "hardwareAuthToken"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .param p5, "enrollReason"    # I
    .param p6, "options"    # Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 741
    move-object/from16 v1, p4

    const/4 v0, -0x2

    if-ne p3, v0, :cond_b

    .line 742
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v0

    move v5, v0

    .end local p3    # "userId":I
    .local v0, "userId":I
    goto :goto_c

    .line 741
    .end local v0    # "userId":I
    .restart local p3    # "userId":I
    :cond_b
    move v5, p3

    .line 744
    .end local p3    # "userId":I
    .local v5, "userId":I
    :goto_c
    if-eqz v1, :cond_6a

    .line 748
    const-string v10, "FingerprintManager"

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 749
    const-string v0, "enrollment already canceled"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 753
    :cond_1e
    const/4 v11, 0x0

    if-nez p1, :cond_2c

    .line 754
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 755
    const/4 v2, 0x2

    invoke-static {v0, v2, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {v1, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 757
    return-void

    .line 760
    :cond_2c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_69

    .line 762
    :try_start_30
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 763
    .local v0, "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v6, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v6, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 763
    move-object v4, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    move-result-wide v2

    .line 766
    .local v2, "enrollId":J
    if-eqz p2, :cond_58

    .line 767
    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v2, v3, v6}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;JLandroid/hardware/fingerprint/FingerprintManager-IA;)V

    invoke-virtual {p2, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_58} :catch_59

    .line 776
    .end local v0    # "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    .end local v2    # "enrollId":J
    :cond_58
    goto :goto_69

    .line 769
    :catch_59
    move-exception v0

    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in enroll: "

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 774
    const/4 v3, 0x1

    invoke-static {v2, v3, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-virtual {v1, v3, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 778
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_69
    :goto_69
    return-void

    .line 745
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an enrollment callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateChallenge(IILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .registers 11
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 794
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2a

    .line 795
    :try_start_4
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p3}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 796
    .local v0, "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 798
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21

    .line 796
    move v3, p1

    move v4, p2

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .local v3, "sensorId":I
    .local v4, "userId":I
    :try_start_1a
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 801
    .end local v0    # "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    goto :goto_2c

    .line 799
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .restart local p1    # "sensorId":I
    .restart local p2    # "userId":I
    :catch_21
    move-exception v0

    move v3, p1

    move v4, p2

    move-object p1, v0

    .line 800
    .end local p2    # "userId":I
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 794
    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .local p1, "sensorId":I
    .restart local p2    # "userId":I
    :cond_2a
    move v3, p1

    move v4, p2

    .line 802
    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    :goto_2c
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 811
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 812
    .local v0, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    if-nez v0, :cond_e

    .line 813
    const-string v1, "FingerprintManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 816
    :cond_e
    iget v1, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(IILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 817
    return-void
.end method

.method public blacklist getEnrollStageCount()I
    .registers 2

    .line 1414
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    if-nez v0, :cond_c

    .line 1415
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->createEnrollStageThresholds(Landroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    .line 1417
    :cond_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist getEnrollStageThreshold(I)F
    .registers 5
    .param p1, "index"    # I

    .line 1424
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    if-nez v0, :cond_c

    .line 1425
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->createEnrollStageThresholds(Landroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    .line 1428
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p1, :cond_21

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v1, v1

    if-le p1, v1, :cond_16

    goto :goto_21

    .line 1434
    :cond_16
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v1, v1

    if-ne p1, v1, :cond_1c

    goto :goto_20

    :cond_1c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    aget v0, v0, p1

    :goto_20
    return v0

    .line 1429
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported enroll stage index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    if-gez p1, :cond_3c

    const/4 v0, 0x0

    :cond_3c
    return v0
.end method

.method public greylist getEnrolledFingerprints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getEnrolledFingerprints(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1d

    .line 933
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 934
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 933
    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return-object v0

    .line 935
    :catch_17
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 938
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLockoutModeForUser(II)I
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 1271
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_f

    .line 1273
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 1274
    :catch_b
    move-exception v0

    .line 1275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1278
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v0, 0x0

    return v0
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

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties;>;"
    nop

    .line 159
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 161
    .local v3, "internalProp":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    invoke-static {v3}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->from(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Landroid/hardware/fingerprint/FingerprintSensorProperties;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "internalProp":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_e

    .line 163
    :cond_22
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1221
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 1224
    :cond_d
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1222
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    .line 1225
    :catch_1d
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasEnrolledFingerprints()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1157
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1159
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1160
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1157
    const/16 v2, 0x164

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1162
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasEnrolledFingerprints(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1172
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1d

    .line 1173
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1174
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1173
    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return v0

    .line 1175
    :catch_17
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1178
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .registers 2

    .line 957
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 964
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isHardwareDetected()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1191
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1193
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1194
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1191
    const/16 v2, 0x164

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1196
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_33

    .line 1198
    :try_start_1a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1199
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1198
    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2c} :catch_2d

    return v0

    .line 1200
    :catch_2d
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    const-string v0, "FingerprintManager"

    const-string v1, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPowerbuttonFps()Z
    .registers 5

    .line 1236
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 1237
    .local v0, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    :cond_7
    goto :goto_e

    :cond_8
    iget v2, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public blacklist onPointerDown(JIIFFFFFJJZ)V
    .registers 32
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "pointerId"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "minor"    # F
    .param p8, "major"    # F
    .param p9, "orientation"    # F
    .param p10, "time"    # J
    .param p12, "gestureStart"    # J
    .param p14, "isAod"    # Z

    .line 1057
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_e

    .line 1058
    const-string v0, "FingerprintManager"

    const-string v2, "onPointerDown: no fingerprint service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void

    .line 1062
    :cond_e
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    move-object v2, v0

    .line 1063
    .local v2, "pc":Landroid/hardware/biometrics/fingerprint/PointerContext;
    move/from16 v3, p4

    iput v3, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 1064
    move/from16 v4, p5

    iput v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 1065
    move/from16 v5, p6

    iput v5, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 1066
    move/from16 v6, p7

    iput v6, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 1067
    move/from16 v7, p8

    iput v7, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 1068
    move/from16 v8, p9

    iput v8, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 1069
    move-wide/from16 v9, p10

    iput-wide v9, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 1070
    move-wide/from16 v11, p12

    iput-wide v11, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    .line 1071
    move/from16 v13, p14

    iput-boolean v13, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 1074
    :try_start_38
    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3a} :catch_45

    move-wide/from16 v14, p1

    move/from16 v1, p3

    :try_start_3e
    invoke-interface {v0, v14, v15, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_43

    .line 1077
    nop

    .line 1078
    return-void

    .line 1075
    :catch_43
    move-exception v0

    goto :goto_4a

    :catch_45
    move-exception v0

    move-wide/from16 v14, p1

    move/from16 v1, p3

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16
.end method

.method public blacklist onPointerDown(JIIIFF)V
    .registers 11
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "minor"    # F
    .param p7, "major"    # F

    .line 1003
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1004
    const-string v0, "FingerprintManager"

    const-string v1, "onPointerDown: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void

    .line 1008
    :cond_c
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 1009
    .local v0, "pc":Landroid/hardware/biometrics/fingerprint/PointerContext;
    int-to-float v1, p4

    iput v1, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 1010
    int-to-float v1, p5

    iput v1, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 1011
    iput p6, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 1012
    iput p7, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 1015
    :try_start_1b
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_22

    .line 1018
    nop

    .line 1019
    return-void

    .line 1016
    :catch_22
    move-exception v1

    .line 1017
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onPointerUp(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1026
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1027
    const-string v0, "FingerprintManager"

    const-string v1, "onPointerUp: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void

    .line 1031
    :cond_c
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 1034
    .local v0, "pc":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :try_start_11
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    .line 1037
    nop

    .line 1038
    return-void

    .line 1035
    :catch_18
    move-exception v1

    .line 1036
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onPointerUp(JIIFFFFFJJZ)V
    .registers 32
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "pointerId"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "minor"    # F
    .param p8, "major"    # F
    .param p9, "orientation"    # F
    .param p10, "time"    # J
    .param p12, "gestureStart"    # J
    .param p14, "isAod"    # Z

    .line 1097
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_e

    .line 1098
    const-string v0, "FingerprintManager"

    const-string v2, "onPointerUp: no fingerprint service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void

    .line 1102
    :cond_e
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    move-object v2, v0

    .line 1103
    .local v2, "pc":Landroid/hardware/biometrics/fingerprint/PointerContext;
    move/from16 v3, p4

    iput v3, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 1104
    move/from16 v4, p5

    iput v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 1105
    move/from16 v5, p6

    iput v5, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 1106
    move/from16 v6, p7

    iput v6, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 1107
    move/from16 v7, p8

    iput v7, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 1108
    move/from16 v8, p9

    iput v8, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 1109
    move-wide/from16 v9, p10

    iput-wide v9, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 1110
    move-wide/from16 v11, p12

    iput-wide v11, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    .line 1111
    move/from16 v13, p14

    iput-boolean v13, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 1114
    :try_start_38
    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3a} :catch_45

    move-wide/from16 v14, p1

    move/from16 v1, p3

    :try_start_3e
    invoke-interface {v0, v14, v15, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_43

    .line 1117
    nop

    .line 1118
    return-void

    .line 1115
    :catch_43
    move-exception v0

    goto :goto_4a

    :catch_45
    move-exception v0

    move-wide/from16 v14, p1

    move/from16 v1, p3

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16
.end method

.method public blacklist onPowerPressed()V
    .registers 3

    .line 1143
    const-string v0, "FingerprintManager"

    const-string v1, "onPowerPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method public blacklist onUdfpsUiEvent(IJI)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "requestId"    # J
    .param p4, "sensorId"    # I

    .line 1125
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1126
    const-string v0, "FingerprintManager"

    const-string v1, "onUdfpsUiEvent: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1131
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintService;->onUdfpsUiEvent(IJI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1134
    nop

    .line 1135
    return-void

    .line 1132
    :catch_13
    move-exception v0

    .line 1133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/biometrics/BiometricStateListener;

    .line 991
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 994
    nop

    .line 995
    return-void

    .line 992
    :catch_7
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .registers 11
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 871
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2d

    .line 872
    :try_start_4
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1, p1}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V

    .line 874
    .local v0, "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    new-instance v5, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 876
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_25

    .line 874
    move v4, p2

    .end local p2    # "userId":I
    .local v4, "userId":I
    :try_start_1e
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    .line 879
    .end local v0    # "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    goto :goto_2e

    .line 877
    :catch_22
    move-exception v0

    move-object p2, v0

    goto :goto_28

    .end local v4    # "userId":I
    .restart local p2    # "userId":I
    :catch_25
    move-exception v0

    move v4, p2

    move-object p2, v0

    .line 878
    .restart local v4    # "userId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_28
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 871
    .end local v4    # "userId":I
    .local p2, "userId":I
    :cond_2d
    move v4, p2

    .line 880
    .end local p2    # "userId":I
    .restart local v4    # "userId":I
    :goto_2e
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 888
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_24

    .line 890
    :try_start_4
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V

    .line 892
    .local v0, "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v3, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 894
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 892
    invoke-interface {v1, v2, p1, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 897
    .end local v0    # "fingerprintCallback":Landroid/hardware/fingerprint/FingerprintCallback;
    goto :goto_24

    .line 895
    :catch_1e
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 899
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    :goto_24
    return-void
.end method

.method public greylist-max-o rename(IILjava/lang/String;)V
    .registers 6
    .param p1, "fpId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 912
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_10

    .line 914
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 917
    goto :goto_17

    .line 915
    :catch_a
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 919
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v0, "FingerprintManager"

    const-string v1, "rename(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :goto_17
    return-void
.end method

.method public blacklist resetLockout(II[B)V
    .registers 11
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 850
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_22

    .line 852
    :try_start_4
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 853
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_18

    .line 852
    move v3, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "hardwareAuthToken":[B
    .local v3, "sensorId":I
    .local v4, "userId":I
    .local v5, "hardwareAuthToken":[B
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 856
    goto :goto_25

    .line 854
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .end local v5    # "hardwareAuthToken":[B
    .restart local p1    # "sensorId":I
    .restart local p2    # "userId":I
    .restart local p3    # "hardwareAuthToken":[B
    :catch_18
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 855
    .end local p2    # "userId":I
    .end local p3    # "hardwareAuthToken":[B
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .restart local v5    # "hardwareAuthToken":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 850
    .end local v3    # "sensorId":I
    .end local v4    # "userId":I
    .end local v5    # "hardwareAuthToken":[B
    .local p1, "sensorId":I
    .restart local p2    # "userId":I
    .restart local p3    # "hardwareAuthToken":[B
    :cond_22
    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 858
    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "hardwareAuthToken":[B
    .restart local v3    # "sensorId":I
    .restart local v4    # "userId":I
    .restart local v5    # "hardwareAuthToken":[B
    :goto_25
    return-void
.end method

.method public blacklist revokeChallenge(IJ)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "challenge"    # J

    .line 825
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_32

    .line 827
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_2a

    .line 828
    .local v0, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    if-nez v0, :cond_16

    .line 829
    :try_start_a
    const-string v1, "FingerprintManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 830
    return-void

    .line 834
    .end local v0    # "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :catch_12
    move-exception v0

    move v4, p1

    move-wide v6, p2

    goto :goto_2d

    .line 832
    .restart local v0    # "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget v3, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 833
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_2a

    .line 832
    move v4, p1

    move-wide v6, p2

    .end local p1    # "userId":I
    .end local p2    # "challenge":J
    .local v4, "userId":I
    .local v6, "challenge":J
    :try_start_24
    invoke-interface/range {v1 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 836
    .end local v0    # "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_34

    .line 834
    :catch_28
    move-exception v0

    goto :goto_2d

    .end local v4    # "userId":I
    .end local v6    # "challenge":J
    .restart local p1    # "userId":I
    .restart local p2    # "challenge":J
    :catch_2a
    move-exception v0

    move v4, p1

    move-wide v6, p2

    .line 835
    .end local p1    # "userId":I
    .end local p2    # "challenge":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "userId":I
    .restart local v6    # "challenge":J
    :goto_2d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 825
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "userId":I
    .end local v6    # "challenge":J
    .restart local p1    # "userId":I
    .restart local p2    # "challenge":J
    :cond_32
    move v4, p1

    move-wide v6, p2

    .line 838
    .end local p1    # "userId":I
    .end local p2    # "challenge":J
    .restart local v4    # "userId":I
    .restart local v6    # "challenge":J
    :goto_34
    return-void
.end method

.method public blacklist scheduleWatchdog()V
    .registers 3

    .line 1289
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->scheduleWatchdog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1292
    nop

    .line 1293
    return-void

    .line 1290
    :catch_7
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setIgnoreDisplayTouches(JIZ)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "ignoreTouch"    # Z

    .line 708
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 709
    const-string v0, "FingerprintManager"

    const-string v1, "setIgnoreDisplayTouches: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 714
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintService;->setIgnoreDisplayTouches(JIZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 717
    nop

    .line 718
    return-void

    .line 715
    :catch_13
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4
    .param p1, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 972
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 973
    const-string v0, "FingerprintManager"

    const-string v1, "setUdfpsOverlayController: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void

    .line 978
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 981
    nop

    .line 982
    return-void

    .line 979
    :catch_13
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
