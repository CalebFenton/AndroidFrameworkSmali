.class public Lcom/android/internal/telephony/satellite/PointingAppController;
.super Ljava/lang/Object;
.source "PointingAppController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;,
        Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;,
        Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/PointingAppController;


# instance fields
.field private blacklist mActivityManager:Landroid/app/ActivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mLastIsDemoMode:Z

.field private blacklist mLastIsEmergency:Z

.field private blacklist mLastNeedFullScreenPointingUI:Z

.field private blacklist mListenerForPointingUIRegistered:Z

.field private final blacklist mListenerForPointingUIRegisteredLock:Ljava/lang/Object;

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private blacklist mPointingUiClassName:Ljava/lang/String;

.field private blacklist mPointingUiPackageName:Ljava/lang/String;

.field private final blacklist mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartedSatelliteTransmissionUpdates:Z

.field public blacklist mUidImportanceListener:Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/PointingAppController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastIsDemoMode(Lcom/android/internal/telephony/satellite/PointingAppController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastIsDemoMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastIsEmergency(Lcom/android/internal/telephony/satellite/PointingAppController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastIsEmergency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastNeedFullScreenPointingUI(Lcom/android/internal/telephony/satellite/PointingAppController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastNeedFullScreenPointingUI:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPointingUiPackageName(Lcom/android/internal/telephony/satellite/PointingAppController;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->getPointingUiPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/PointingAppController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/satellite/PointingAppController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegisteredLock:Ljava/lang/Object;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiPackageName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiClassName:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mUidImportanceListener:Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    const/4 p2, 0x0

    .line 122
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mStartedSatelliteTransmissionUpdates:Z

    .line 123
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastNeedFullScreenPointingUI:Z

    .line 124
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastIsDemoMode:Z

    .line 125
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastIsEmergency:Z

    .line 126
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegistered:Z

    .line 127
    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mActivityManager:Landroid/app/ActivityManager;

    .line 128
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/PointingAppController;
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/telephony/satellite/PointingAppController;->sInstance:Lcom/android/internal/telephony/satellite/PointingAppController;

    if-nez v0, :cond_9

    .line 93
    const-string v0, "PointingAppController was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->loge(Ljava/lang/String;)V

    .line 95
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/satellite/PointingAppController;->sInstance:Lcom/android/internal/telephony/satellite/PointingAppController;

    return-object v0
.end method

.method private blacklist getPointingUiClassName()Ljava/lang/String;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 555
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiClassName:Ljava/lang/String;

    return-object p0

    .line 557
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402b0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPointingUiPackageName()Ljava/lang/String;
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 547
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiPackageName:Ljava/lang/String;

    return-object p0

    .line 549
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isMockModemAllowed()Z
    .registers 2

    .line 562
    sget-boolean p0, Lcom/android/internal/telephony/satellite/PointingAppController;->DEBUG:Z

    if-nez p0, :cond_f

    const-string p0, "persist.radio.allow_mock_modem"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    return v0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 566
    const-string v0, "PointingAppController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 570
    const-string v0, "PointingAppController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/satellite/PointingAppController;
    .registers 3

    .line 106
    sget-object v0, Lcom/android/internal/telephony/satellite/PointingAppController;->sInstance:Lcom/android/internal/telephony/satellite/PointingAppController;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/PointingAppController;->sInstance:Lcom/android/internal/telephony/satellite/PointingAppController;

    .line 109
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/satellite/PointingAppController;->sInstance:Lcom/android/internal/telephony/satellite/PointingAppController;

    return-object p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .registers 3

    .line 574
    const-string v0, "PointingAppController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 576
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .registers 3

    .line 581
    const-string v0, "PointingAppController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 583
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist getStartedSatelliteTransmissionUpdates()Z
    .registers 1

    .line 148
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mStartedSatelliteTransmissionUpdates:Z

    return p0
.end method

.method public blacklist onSendDatagramRequested(II)V
    .registers 5

    .line 478
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const v0, 0x7fffffff

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    if-eqz p1, :cond_1e

    .line 483
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x5

    .line 481
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 486
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SatelliteTransmissionUpdateHandler not found for subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForSatelliteTransmissionUpdates(ILandroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 5

    .line 315
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const v0, 0x7fffffff

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    if-eqz p1, :cond_15

    .line 318
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->addListener(Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    return-void

    .line 320
    :cond_15
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;-><init>(Landroid/os/Looper;)V

    .line 321
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->addListener(Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->registerForSatellitePositionInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->registerForDatagramTransferStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist removeListenerForPointingUI()V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegisteredLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegistered:Z

    if-eqz v1, :cond_14

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mUidImportanceListener:Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    const/4 v1, 0x0

    .line 446
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegistered:Z

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 448
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method blacklist setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->isMockModemAllowed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 521
    const-string p1, "setSatellitePointingUiClassName: modifying satellite pointing UI package and class name is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 526
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatellitePointingUiClassName: config_pointing_ui_package is updated, new packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", config_pointing_ui_class new className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->plogd(Ljava/lang/String;)V

    .line 530
    const-string v0, ""

    if-eqz p1, :cond_47

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_47

    .line 534
    :cond_36
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiPackageName:Ljava/lang/String;

    if-eqz p2, :cond_44

    .line 535
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_44

    .line 538
    :cond_41
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiClassName:Ljava/lang/String;

    goto :goto_4b

    .line 536
    :cond_44
    :goto_44
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiClassName:Ljava/lang/String;

    goto :goto_4b

    .line 531
    :cond_47
    :goto_47
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiPackageName:Ljava/lang/String;

    .line 532
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mPointingUiClassName:Ljava/lang/String;

    :goto_4b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setStartedSatelliteTransmissionUpdates(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mStartedSatelliteTransmissionUpdates:Z

    return-void
.end method

.method public blacklist startPointingUI(ZZZ)V
    .registers 9

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->getPointingUiPackageName()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 398
    const-string p1, "startPointingUI: config_pointing_ui_package is not set. Ignore the request"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->plogd(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->getPointingUiClassName()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 405
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_39

    .line 409
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_39
    if-nez v0, :cond_41

    .line 412
    const-string p1, "startPointingUI: launchIntent is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->ploge(Ljava/lang/String;)V

    return-void

    .line 415
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPointingUI: needFullScreenPointingUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDemoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isEmergency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/PointingAppController;->plogd(Ljava/lang/String;)V

    .line 417
    const-string v1, "needFullScreen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const-string v1, "isDemoMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v1, "isEmergency"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    :try_start_74
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegisteredLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_77
    .catch Landroid/content/ActivityNotFoundException; {:try_start_74 .. :try_end_77} :catch_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_77} :catch_99

    .line 423
    :try_start_77
    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegistered:Z

    if-nez v2, :cond_8a

    .line 424
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mUidImportanceListener:Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    const/4 v2, 0x1

    .line 426
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mListenerForPointingUIRegistered:Z

    goto :goto_8a

    :catchall_88
    move-exception p1

    goto :goto_9b

    .line 428
    :cond_8a
    :goto_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_88

    .line 429
    :try_start_8b
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastNeedFullScreenPointingUI:Z

    .line 430
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastIsDemoMode:Z

    .line 431
    iput-boolean p3, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mLastIsEmergency:Z

    .line 432
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_98
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8b .. :try_end_98} :catch_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_98} :catch_99

    return-void

    :catch_99
    move-exception p1

    goto :goto_9d

    .line 428
    :goto_9b
    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_88

    :try_start_9c
    throw p1
    :try_end_9d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9c .. :try_end_9d} :catch_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_9d} :catch_99

    .line 434
    :goto_9d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startPointingUI: Unable to start Pointing UI activity due to an exception, ex="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startSatelliteTransmissionUpdates(Landroid/os/Message;)V
    .registers 3

    .line 369
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mStartedSatelliteTransmissionUpdates:Z

    if-eqz v0, :cond_17

    .line 370
    const-string v0, "startSatelliteTransmissionUpdates: already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->plogd(Ljava/lang/String;)V

    .line 371
    new-instance p0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 373
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 376
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->startSendingSatellitePointingInfo(Landroid/os/Message;)V

    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mStartedSatelliteTransmissionUpdates:Z

    return-void
.end method

.method public blacklist stopSatelliteTransmissionUpdates(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->setStartedSatelliteTransmissionUpdates(Z)V

    .line 387
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->stopSendingSatellitePointingInfo(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteTransmissionUpdates(ILjava/util/function/Consumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 344
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const v0, 0x7fffffff

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    if-eqz p1, :cond_32

    .line 347
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->removeListener(Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 348
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->hasListeners()Z

    move-result p3

    if-eqz p3, :cond_23

    const/4 p0, 0x0

    .line 349
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 352
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unregisterForSatellitePositionInfoChanged(Landroid/os/Handler;)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unregisterForDatagramTransferStateChanged(Landroid/os/Handler;)V

    :cond_32
    return-void
.end method

.method public blacklist updateReceiveDatagramTransferState(IIII)V
    .registers 6

    .line 493
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;-><init>(IIII)V

    .line 497
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const p3, 0x7fffffff

    .line 498
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    if-eqz p2, :cond_20

    const/4 p0, 0x3

    .line 501
    invoke-virtual {p2, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 504
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 506
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " SatelliteTransmissionUpdateHandler not found for subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateSendDatagramTransferState(IIIII)V
    .registers 6

    .line 455
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;-><init>(IIII)V

    .line 458
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController;->mSatelliteTransmissionUpdateHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const p3, 0x7fffffff

    .line 459
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;

    if-eqz p2, :cond_1f

    const/4 p0, 0x2

    .line 462
    invoke-virtual {p2, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 467
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SatelliteTransmissionUpdateHandler not found for subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->ploge(Ljava/lang/String;)V

    return-void
.end method
