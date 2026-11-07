.class public Lcom/android/internal/telephony/ims/ImsServiceController;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
    }
.end annotation


# instance fields
.field private final blacklist mAnomalyUUID:Ljava/util/UUID;

.field private blacklist mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mBoundUser:Landroid/os/UserHandle;

.field private blacklist mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

.field private blacklist mChangedPackages:Landroid/content/pm/ChangedPackages;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mFeatureStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

.field private final blacklist mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

.field private blacklist mImsFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mLastSequenceNumber:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private blacklist mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

.field private blacklist mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

.field private blacklist mRestartImsServiceRunnable:Ljava/lang/Runnable;

.field private blacklist mServiceCapabilities:J

.field private blacklist mSlotIdToSubIdMap:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$87otLPw00bqJ_RdIHTz9rD1S5vA(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .registers 1

    .line 969
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LLemOMUF5n3Dke_YfbQqH3ljOCg(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    .line 479
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TffSz4GDYLjUWxV_T7ETIfCEBUE(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .registers 4

    .line 898
    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v0

    if-ne v0, p0, :cond_e

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmFeatureType(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$UaIEhazVRcU9doBR_ZVgIZe73Xs(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 2

    .line 801
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 802
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 804
    :cond_a
    const-string p0, "ImsServiceController"

    const-string p1, "Failed to grant permissions to service."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aidQFL7FUKEOm5Dw3v21K2VDaZQ(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 585
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$hUjzyDx8iCYJkdywAqsv5mfEYm8(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .registers 1

    .line 515
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vbEjzEYY6bxqBtyCa8XckQ5uyXM(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 969
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundUser(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/UserHandle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepo(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/ims/ImsFeatureBinderRepository;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsServiceFeature(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndReportAnomaly(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->checkAndReportAnomaly(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupAllFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanupAllFeatures()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmodifyCapabiltiesForSlot(Lcom/android/internal/telephony/ims/ImsServiceController;Ljava/util/Set;IJ)J
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mretrieveStaticImsServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->retrieveStaticImsServiceCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->startDelayedRebindToService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindService()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 17

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "e93b05e4-6d0a-4755-a6da-a2d2dbfb10d6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 277
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 278
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 289
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 290
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 292
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 337
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 349
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 404
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 405
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 406
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 407
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    .line 408
    new-instance v1, Lcom/android/internal/telephony/ExponentialBackoff;

    .line 409
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    .line 410
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 414
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    move-object v1, p6

    .line 415
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    move-object/from16 v1, p7

    .line 416
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 417
    new-instance v1, Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;-><init>(Landroid/os/Looper;Landroid/content/ComponentName;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    .line 418
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 15

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "e93b05e4-6d0a-4755-a6da-a2d2dbfb10d6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 277
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 278
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 289
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 290
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 349
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 364
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 365
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 366
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 373
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "ImsServiceControllerHandler"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 374
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 375
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    .line 376
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    .line 378
    new-instance v1, Lcom/android/internal/telephony/ExponentialBackoff;

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 379
    invoke-interface {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 380
    invoke-interface {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 384
    const-string v0, "legacy_permission"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 386
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    .line 387
    new-instance p4, Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-direct {p4, p3, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;-><init>(Landroid/os/Looper;Landroid/content/ComponentName;)V

    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    .line 388
    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_a5

    .line 391
    iget p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mChangedPackages:Landroid/content/pm/ChangedPackages;

    if-eqz p1, :cond_a5

    .line 393
    invoke-virtual {p1}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    :cond_a5
    return-void
.end method

.method private blacklist addImsFeatureBinder(IIILandroid/os/IInterface;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_43

    .line 934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addImsFeatureBinder: null IInterface reported for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 935
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 934
    const-string p5, "ImsServiceController"

    invoke-static {p5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 940
    :cond_43
    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;

    move-result-object p0

    .line 941
    iget-object p1, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p1, v1, v2, p3, p0}, Lcom/android/ims/ImsFeatureBinderRepository;->addConnection(IIILcom/android/ims/ImsFeatureContainer;)V

    return-void
.end method

.method private blacklist addImsFeatureStatusCallback(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method private blacklist addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    const-string v2, "ImsServiceController"

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v1, :cond_d

    goto :goto_4b

    .line 821
    :cond_d
    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v3, :cond_2b

    .line 822
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    move-object v0, p0

    move-wide v4, p2

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->createImsFeature(IIIJ)Landroid/os/IInterface;

    move-result-object v1

    move-object v4, v1

    .line 824
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureBinder(IIILandroid/os/IInterface;J)V

    .line 826
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureStatusCallback(II)V

    goto :goto_41

    .line 829
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supports emergency calling on slot "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_41
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v1, v2, p4, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureCreated(IIILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void

    .line 818
    :cond_4b
    :goto_4b
    const-string v0, "addImsServiceFeature called with null values."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist checkAndReportAnomaly(Landroid/content/ComponentName;)V
    .registers 5

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "ImsServiceController"

    if-nez v0, :cond_c

    .line 984
    const-string p0, "mPackageManager null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 987
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 988
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 990
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 991
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 992
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 993
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore due to updated, package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 997
    :cond_41
    const-string p1, "IMS Service Crashed"

    .line 998
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cleanupAllFeatures()V
    .registers 5

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const/4 v3, 0x0

    .line 977
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_9

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 979
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method private blacklist createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 952
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v3

    if-eqz v2, :cond_19

    if-nez v3, :cond_d

    goto :goto_19

    .line 963
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v4

    .line 964
    new-instance v0, Lcom/android/ims/ImsFeatureContainer;

    move-object v1, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/ims/ImsFeatureContainer;-><init>(Landroid/os/IBinder;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;J)V

    return-object v0

    .line 956
    :cond_19
    :goto_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createFeatureContainer: invalid state. Reporting as not available. componentName= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 956
    const-string p2, "ImsServiceController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "createFeatureContainer: invalid state. Reporting as not available."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getFeaturesForSlot(ILjava/util/Set;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 969
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 970
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private blacklist grantPermissionsToService(Landroid/os/UserHandle;)V
    .registers 7

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grant permissions to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting Runtime permissions to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 797
    :try_start_3e
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    if-eqz v2, :cond_62

    .line 798
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 799
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    new-instance v3, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0, p1, v3, v4}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 p0, 0x3a98

    .line 807
    invoke-static {v2, p0, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_5c} :catch_5d

    return-void

    .line 810
    :catch_5d
    const-string p0, "Unable to grant permissions, binder died."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void
.end method

.method private blacklist modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;IJ)J"
        }
    .end annotation

    .line 770
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getFeaturesForSlot(ILjava/util/Set;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 771
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-wide/16 p0, 0x1

    or-long/2addr p3, p0

    .line 785
    :cond_12
    const-string p0, "ImsServiceController"

    const-string p1, "skipping single service enforce check..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3
.end method

.method private blacklist removeImsFeatureBinder(II)V
    .registers 3

    .line 945
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->removeConnection(II)Lcom/android/ims/ImsFeatureContainer;

    return-void
.end method

.method private blacklist removeImsFeatureStatusCallback(II)V
    .registers 5

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 898
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    if-eqz v0, :cond_28

    .line 901
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_28
    return-void
.end method

.method private blacklist removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V
    .registers 7

    .line 839
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    const-string v1, "ImsServiceController"

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_d

    goto :goto_73

    .line 844
    :cond_d
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v0, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 845
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_5c

    .line 846
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureStatusCallback(II)V

    .line 847
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureBinder(II)V

    .line 849
    :try_start_24
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeature(IIZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    .line 853
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t remove feature {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}, connection is down: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 853
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 859
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doesn\'t support emergency calling on slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_73
    :goto_73
    const-string p0, "removeImsServiceFeature called with null values."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist retrieveStaticImsServiceCapabilities()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getStaticServiceCapabilities()J

    move-result-wide v0

    .line 709
    const-string v2, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStaticImsServiceCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStaticImsServiceCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 714
    :try_start_3b
    iput-wide v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    .line 715
    monitor-exit v2

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private blacklist sanitizeFeatureConfig(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 478
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;-><init>()V

    .line 479
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 480
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 481
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 482
    new-instance v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    iget v2, v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 484
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_39
    return-void
.end method

.method private blacklist startDelayedRebindToService()V
    .registers 1

    .line 741
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void
.end method

.method private blacklist unbindService()V
    .registers 5

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-eqz v1, :cond_44

    .line 747
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 750
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    goto :goto_74

    :catchall_42
    move-exception p0

    goto :goto_76

    .line 752
    :cond_44
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService called on already unbound ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Note: unbindService called with no ServiceConnection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 757
    :goto_74
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_42

    throw p0
.end method


# virtual methods
.method public blacklist bind(Landroid/os/UserHandle;Ljava/util/Set;Landroid/util/SparseIntArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")Z"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_10f

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    if-nez v1, :cond_10f

    const/4 v1, 0x1

    .line 434
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 435
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 436
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 437
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    .line 438
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setNumOfSlots(I)V

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->grantPermissionsToService(Landroid/os/UserHandle;)V

    .line 442
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getServiceInterface()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    .line 444
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 448
    const-string p2, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding ImsService:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_9e

    .line 450
    :try_start_68
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const v3, 0x4000041

    invoke-virtual {p2, p3, v1, v3, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_a2

    .line 453
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    binding failed, retrying in "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 454
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mS"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 453
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 455
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 456
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_9d} :catch_a0
    .catchall {:try_start_68 .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception p0

    goto :goto_111

    :catch_a0
    move-exception p1

    goto :goto_a4

    .line 458
    :cond_a2
    :goto_a2
    :try_start_a2
    monitor-exit v0

    return p1

    .line 460
    :goto_a4
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 461
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    binding exception="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retrying in "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 462
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mS"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 461
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 463
    const-string p2, "ImsServiceController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") with exception: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rebinding in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v0

    return v2

    .line 469
    :cond_10f
    monitor-exit v0

    return v2

    .line 471
    :goto_111
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_a2 .. :try_end_112} :catchall_9e

    throw p0
.end method

.method public blacklist changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_6
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;-><init>()V

    .line 516
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 515
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 520
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setNumOfSlots(I)V

    .line 524
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 525
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 527
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_38

    .line 529
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 530
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subId changed for slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 532
    const-string v7, "ImsServiceController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subId changed for slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v4, :cond_38

    .line 540
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->subIdChangedToInvalid(I)V

    goto/16 :goto_38

    :catchall_ba
    move-exception p0

    goto/16 :goto_215

    .line 544
    :cond_bd
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 546
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cf

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-nez p2, :cond_cf

    .line 547
    monitor-exit v0

    return-void

    .line 549
    :cond_cf
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 550
    const-string p2, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for ImsService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance p2, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 555
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    .line 556
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-eqz p1, :cond_213

    .line 558
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 560
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 561
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 562
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v6, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v5

    .line 564
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    iget v8, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    goto :goto_139

    .line 567
    :cond_15b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 569
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 570
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_169
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_17a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 571
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_169

    .line 574
    :cond_17a
    new-instance p2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 576
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 577
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 579
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_1ef

    .line 580
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    array-length v1, p1

    :goto_192
    if-ge v5, v1, :cond_1ef

    aget v3, p1, v5

    .line 581
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 584
    invoke-virtual {p2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 585
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;-><init>()V

    .line 586
    invoke-static {v7}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v7

    .line 585
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 587
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1ba
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1cb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const/4 v9, 0x1

    .line 588
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_1ba

    .line 590
    :cond_1cb
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1cf
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 591
    iget-object v9, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v10, v8, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v11, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v9

    .line 593
    invoke-direct {p0, v8, v9, v10, v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    goto :goto_1cf

    .line 595
    :cond_1e9
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_192

    .line 598
    :cond_1ef
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_213

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v1

    .line 601
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    iget v4, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v3, v4, p2, v1, v2}, Lcom/android/ims/ImsFeatureBinderRepository;->notifyFeatureCapabilitiesChanged(IIJ)V

    goto :goto_1f3

    .line 604
    :cond_213
    monitor-exit v0

    return-void

    :goto_215
    monitor-exit v0
    :try_end_216
    .catchall {:try_start_6 .. :try_end_216} :catchall_ba

    throw p0
.end method

.method protected blacklist createImsFeature(IIIJ)Landroid/os/IInterface;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_f

    const/4 p4, 0x2

    if-eq p3, p4, :cond_8

    return-object v1

    .line 881
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p3, -0x1

    if-ne p2, p3, :cond_23

    const-wide/16 p2, 0x1

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_22

    .line 873
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0

    :cond_22
    return-object v1

    .line 878
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableIms(II)V
    .registers 3

    .line 646
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->disableIms(II)V

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1013
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist enableIms(II)V
    .registers 3

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->enableIms(II)V

    return-void
.end method

.method public blacklist getBoundUser()Landroid/os/UserHandle;
    .registers 1

    .line 630
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 623
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 673
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    .line 674
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method public blacklist getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;
    .registers 1

    .line 609
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-object p0
.end method

.method public blacklist getRebindDelay()J
    .registers 3

    .line 614
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 663
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    .line 664
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method protected blacklist getServiceInterface()Ljava/lang/String;
    .registers 1

    .line 719
    const-string p0, "android.telephony.ims.ImsService"

    return-object p0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 683
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object p0

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    .line 684
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method protected blacklist getStaticServiceCapabilities()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 690
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsServiceController;->getImsServiceCapabilities()J

    move-result-wide v1

    goto :goto_14

    :catchall_10
    move-exception p0

    goto :goto_16

    :cond_12
    const-wide/16 v1, 0x0

    :goto_14
    monitor-exit v0

    return-wide v1

    .line 691
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_10

    throw p0
.end method

.method protected blacklist isServiceControllerAvailable()Z
    .registers 1

    .line 736
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist notifyImsServiceReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 700
    const-string v1, "ImsServiceController"

    const-string v2, "notifyImsServiceReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsServiceController;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 702
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsServiceController;->notifyImsServiceReadyForFeatureCreation()V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 704
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method protected blacklist registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method protected blacklist removeImsFeature(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeImsFeature(IIZ)V

    return-void
.end method

.method public blacklist resetIms(II)V
    .registers 3

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->resetIms(II)V

    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .registers 3

    .line 727
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    .line 728
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setServiceController(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist stopBackoffTimerForTesting()V
    .registers 1

    .line 619
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsServiceController: componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", boundUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", serviceController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rebindDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRebindDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", slotToSubIdMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_69
    move-exception p0

    .line 1009
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public blacklist unbind()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 497
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V

    const/4 v1, 0x0

    .line 498
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 499
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v1, 0x0

    .line 500
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 501
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindService()V

    .line 503
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method protected blacklist unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 918
    :catch_6
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterImsFeatureStatusCallback - couldn\'t remove "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
