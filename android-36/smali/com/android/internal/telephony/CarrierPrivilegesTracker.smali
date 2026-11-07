.class public Lcom/android/internal/telephony/CarrierPrivilegesTracker;
.super Landroid/os/Handler;
.source "CarrierPrivilegesTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;
    }
.end annotation


# static fields
.field private static final blacklist CLEAR_UICC_RULES_DELAY_MILLIS:J

.field private static final blacklist TAG:Ljava/lang/String; = "CarrierPrivilegesTracker"


# instance fields
.field private final blacklist mCachedUids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mCarrierConfigRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClearUiccRulesUptimeMillis:J

.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mCurrentHandler:Landroid/os/Handler;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mInstalledPackageCertHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

.field private final blacklist mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private blacklist mSimIsReadyButNotLoaded:Z

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final blacklist mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

.field private blacklist mTestOverrideCarrierServicePackage:Ljava/lang/String;

.field private blacklist mTestOverrideRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUiccRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$BUG9f5Dd0V4Ppvzb0mCn5MJgYN4(Lcom/android/internal/telephony/CarrierPrivilegesTracker;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Handler;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetApplicationEnabledSetting(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInitializeTracker(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleInitializeTracker()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetObfuscatedPackages(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getObfuscatedPackages(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 119
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->CLEAR_UICC_RULES_DELAY_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 19

    move-object/from16 v0, p3

    .line 352
    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    const/4 v1, 0x0

    .line 200
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    .line 201
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideCarrierServicePackage:Ljava/lang/String;

    .line 203
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mInstalledPackageCertHashes:Ljava/util/Map;

    .line 205
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCachedUids:Ljava/util/Map;

    .line 210
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 212
    new-instance v1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    const-wide/16 v1, -0x1

    .line 217
    iput-wide v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z

    .line 285
    new-instance v1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;-><init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v1, p2

    .line 353
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 354
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    move-object/from16 v1, p4

    .line 355
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 356
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 357
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUserManager:Landroid/os/UserManager;

    .line 358
    const-string v1, "carrier_config"

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_7e

    .line 362
    new-instance v2, Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V

    new-instance v3, Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V

    invoke-virtual {v1, v2, v3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 366
    :cond_7e
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 367
    const-string v1, "telephony_registry"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

    .line 372
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$3;

    const-string v2, "CarrierPrivilegesTracker Initializer"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$3;-><init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    monitor-enter v1

    .line 406
    :try_start_9f
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_10b

    .line 409
    :catch_a2
    :try_start_a2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a5} :catch_a2
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_10b

    .line 414
    :try_start_a5
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_10b

    .line 415
    new-instance v1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$4;-><init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Landroid/os/Looper;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 449
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 456
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 457
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v0, "package"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 466
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 467
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 466
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_10b
    move-exception v0

    move-object p0, v0

    .line 414
    :try_start_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10b

    throw p0
.end method

.method private blacklist getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 4

    .line 1243
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    .line 1244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1243
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1246
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private blacklist getCarrierConfigRules(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    const-string v1, "carrier_certificate_string_array"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-static {v0, p1, v2}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 546
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_29

    .line 547
    invoke-static {p1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_29

    .line 552
    :cond_17
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_20

    .line 554
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 556
    :cond_20
    invoke-static {p0}, Landroid/telephony/UiccAccessRule;->decodeRulesFromCarrierConfig([Ljava/lang/String;)[Landroid/telephony/UiccAccessRule;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 548
    :cond_29
    :goto_29
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private blacklist getCarrierService(Ljava/util/Set;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1218
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1215
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1224
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideCarrierServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_32

    .line 1226
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_16

    .line 1230
    :cond_32
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    if-nez v1, :cond_47

    .line 1236
    new-instance p0, Landroid/util/Pair;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 1237
    :cond_47
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getPackageUid(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private blacklist getCertsForPackage(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "[B>;"
        }
    .end annotation

    .line 692
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getPackageInfoForPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_9

    .line 693
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 695
    :cond_9
    invoke-static {p0}, Landroid/telephony/UiccAccessRule;->getSignatures(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object p0

    .line 697
    new-instance p1, Landroid/util/ArraySet;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 698
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    .line 699
    const-string v1, "SHA-1"

    invoke-static {v0, v1}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 700
    const-string v1, "SHA-256"

    invoke-static {v0, v1}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    return-object p1
.end method

.method private blacklist getCurrentPrivilegedPackagesForAllUsers()Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;
    .registers 8

    .line 842
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 843
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 844
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 845
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mInstalledPackageCertHashes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 846
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->isPackageMaybePrivileged(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_19

    .line 848
    :cond_38
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCertsForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 850
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getPackagePrivilegedStatus(Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_56

    const/4 v6, 0x3

    if-eq v5, v6, :cond_56

    goto :goto_19

    .line 854
    :cond_56
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_5f
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getUidsForPackage(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v4

    .line 858
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 863
    :cond_77
    new-instance v3, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    .line 866
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierService(Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p0

    invoke-direct {v3, v1, v2, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/util/Pair;)V

    return-object v3
.end method

.method private static blacklist getObfuscatedPackages(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 766
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 767
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 768
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_f

    .line 770
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPackageInfoForPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 647
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 650
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const v2, 0x28008000

    .line 647
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 654
    sget-object v1, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting installed package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static blacklist getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 2

    .line 1205
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_7

    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 1206
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 1207
    :cond_e
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_15

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getPackagePrivilegedStatus(Ljava/lang/String;Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;)I"
        }
    .end annotation

    .line 905
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 907
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    const/4 v2, 0x2

    if-eqz v1, :cond_2c

    .line 908
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 909
    invoke-virtual {v3, v0, p1}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    return v2

    .line 914
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 915
    invoke-virtual {v3, v0, p1}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    return v2

    .line 919
    :cond_45
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 920
    invoke-virtual {v2, v0, p1}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashAndPackageName([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 921
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideCarrierServicePackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    const/4 p0, 0x3

    return p0

    :cond_67
    const/4 p0, 0x1

    return p0

    :cond_69
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getPackageUid(Ljava/lang/String;)I
    .registers 4

    .line 959
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    .line 962
    :catch_b
    sget-object p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find uid for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getSimRules()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 620
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 623
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    if-nez v0, :cond_38

    .line 625
    sget-object v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null UiccPort, but hasIccCard was present for phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 625
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 631
    :cond_38
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 633
    sget-object v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null UiccProfile, but hasIccCard was true for phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 633
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 638
    :cond_5d
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeAccessRules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getUidsForPackage(Ljava/lang/String;Z)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 934
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCachedUids:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_7
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCachedUids:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 937
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCachedUids:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    .line 940
    :cond_18
    new-instance p2, Landroid/util/ArraySet;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 943
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 945
    :try_start_3c
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_49} :catch_4a

    goto :goto_28

    .line 948
    :catch_4a
    sget-object v2, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find uid for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 951
    :cond_69
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCachedUids:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private blacklist handleCarrierConfigUpdated(II)V
    .registers 7

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p2, v0, :cond_9

    return-void

    .line 524
    :cond_9
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_12

    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierConfigRules(I)Ljava/util/List;

    move-result-object v0

    .line 533
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarrierConfigUpdated: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " slotIndex="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " updated CarrierConfig rules="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdateRulesAndNotifyRegistrants(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private blacklist handleClearUiccRules()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 612
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    const/16 v0, 0x9

    .line 613
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdateRulesAndNotifyRegistrants(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private blacklist handleInitializeTracker()V
    .registers 3

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierConfigRules(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getSimRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 730
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->refreshInstalledPackageCache()V

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing state: CarrierConfig rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " SIM-loaded rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handlePackageAddedReplacedOrChanged(Ljava/lang/String;)V
    .registers 3

    .line 660
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getPackageInfoForPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 663
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->updateCertHashHashesForPackage(Landroid/content/pm/PackageInfo;)V

    .line 667
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getUidsForPackage(Ljava/lang/String;Z)Ljava/util/Set;

    .line 674
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V

    return-void
.end method

.method private blacklist handlePackageRemovedOrDisabledByUser(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mInstalledPackageCertHashes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCachedUids:Ljava/util/Map;

    .line 710
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_18

    .line 719
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V

    return-void

    .line 711
    :cond_18
    :goto_18
    sget-object p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package was uninstalled or disabled by user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleSetTestOverrideCarrierServicePackage(Ljava/lang/String;)V
    .registers 2

    .line 1030
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideCarrierServicePackage:Ljava/lang/String;

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->refreshInstalledPackageCache()V

    .line 1032
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V

    return-void
.end method

.method private blacklist handleSetTestOverrideRules(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1037
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    goto :goto_22

    .line 1038
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1039
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    goto :goto_22

    .line 1041
    :cond_11
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/UiccAccessRule;->decodeRulesFromCarrierConfig([Ljava/lang/String;)[Landroid/telephony/UiccAccessRule;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    .line 1047
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->refreshInstalledPackageCache()V

    .line 1049
    :goto_22
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V

    return-void
.end method

.method private blacklist handleSimStateChanged(II)V
    .registers 10

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_9

    return-void

    .line 563
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimStateChanged: slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " simState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 567
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    .line 569
    :goto_38
    :try_start_38
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_a8

    .line 571
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 p1, 0xa

    if-ne p2, p1, :cond_50

    .line 576
    const-string p1, "handleSimStateChanged: SIM fully loaded."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleUiccAccessRulesLoaded()V

    return-void

    .line 579
    :cond_50
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a2

    iget-wide v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_a2

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->CLEAR_UICC_RULES_DELAY_MILLIS:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    .line 583
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleSimStateChanged: SIM is gone, simState="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Delay "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 587
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds to clear UICC rules."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 590
    :cond_a2
    const-string p0, "handleSimStateChanged: Ignore SIM gone event while UiccRules is empty or waiting to be emptied."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_a8
    move-exception p1

    .line 571
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 572
    throw p1
.end method

.method private blacklist handleUiccAccessRulesLoaded()V
    .registers 5

    const-wide/16 v0, -0x1

    .line 597
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    const/16 v0, 0x9

    .line 598
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getSimRules()Ljava/util/List;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccAccessRules loaded: updated SIM-loaded rules="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdateRulesAndNotifyRegistrants(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private blacklist isPackageMaybePrivileged(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 871
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    .line 874
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 875
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashHashAndPackageName(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    return v2

    .line 880
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 881
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashHashAndPackageName(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    return v2

    .line 885
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 886
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/telephony/UiccAccessRule;->hasMatchingCertificateHashHashAndPackageName(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    return v2

    :cond_6a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 363
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleCarrierConfigUpdated(II)V

    return-void
.end method

.method private blacklist maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V
    .registers 6

    .line 785
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCurrentPrivilegedPackagesForAllUsers()Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 793
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_f2

    if-eqz v1, :cond_1f

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 795
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Privileged packages info changed. New state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 798
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    .line 799
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 801
    iget-object v2, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    .line 802
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 803
    iget-object v3, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    invoke-virtual {v3, v4}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_53
    .catchall {:try_start_1f .. :try_end_53} :catchall_f2

    .line 806
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 809
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 811
    :try_start_65
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_e7

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz v1, :cond_7d

    if-nez v2, :cond_98

    .line 819
    :cond_7d
    :try_start_7d
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 820
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    .line 821
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    .line 822
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 819
    invoke-virtual {v0, v1, v2, v4}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierPrivilegesChanged(ILjava/util/Set;Ljava/util/Set;)V

    :cond_98
    if-nez v3, :cond_b8

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 828
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 826
    invoke-virtual {v0, v1, v3, v2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierServiceChanged(ILjava/lang/String;I)V
    :try_end_b5
    .catchall {:try_start_7d .. :try_end_b5} :catchall_b6

    goto :goto_b8

    :catchall_b6
    move-exception v0

    goto :goto_dd

    .line 831
    :cond_b8
    :goto_b8
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 837
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mContext:Landroid/content/Context;

    .line 836
    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    return-void

    .line 831
    :goto_dd
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 832
    throw v0

    :catchall_e7
    move-exception v0

    .line 813
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 814
    throw v0

    :catchall_f2
    move-exception v0

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 807
    throw v0
.end method

.method private blacklist maybeUpdateRulesAndNotifyRegistrants(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 775
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 777
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 778
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 780
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->maybeUpdatePrivilegedPackagesAndNotifyRegistrants()V

    return-void
.end method

.method private blacklist refreshInstalledPackageCache()V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 753
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const v2, 0x28008000

    .line 750
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 755
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 756
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->updateCertHashHashesForPackage(Landroid/content/pm/PackageInfo;)V

    .line 759
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getUidsForPackage(Ljava/lang/String;Z)Ljava/util/Set;

    goto :goto_11

    :cond_27
    return-void
.end method

.method private blacklist updateCertHashHashesForPackage(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 678
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 679
    invoke-static {p1}, Landroid/telephony/UiccAccessRule;->getSignatures(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v1

    .line 680
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    .line 681
    const-string v3, "SHA-1"

    invoke-static {v2, v3}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v3

    .line 682
    invoke-static {v3}, Landroid/telephony/UiccAccessRule;->getCertificateHashHashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 684
    const-string v3, "SHA-256"

    invoke-static {v2, v3}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v2

    .line 685
    invoke-static {v2}, Landroid/telephony/UiccAccessRule;->getCertificateHashHashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 688
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mInstalledPackageCertHashes:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierPrivilegesTracker - phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    const-string v0, "CarrierPrivilegesTracker - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 974
    const-string p1, "CarrierPrivilegesTracker - Log End ----"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 977
    :try_start_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CarrierPrivilegesTracker - Privileged package info: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSimIsReadyButNotLoaded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_32 .. :try_end_5e} :catchall_c0

    .line 982
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CarrierPrivilegesTracker - Test-override rules: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mTestOverrideRules:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CarrierPrivilegesTracker - SIM-loaded rules: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mUiccRules:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CarrierPrivilegesTracker - Carrier config rules: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCarrierConfigRules:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mClearUiccRulesUptimeMillis: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mClearUiccRulesUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_c0
    move-exception p1

    .line 982
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 983
    throw p1
.end method

.method public blacklist getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1153
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z

    if-eqz v0, :cond_1c

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 1155
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    goto/16 :goto_b7

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1164
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    .line 1163
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1162
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1165
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1167
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1166
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1165
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1168
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1170
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1169
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1168
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1173
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1172
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 1171
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1182
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1186
    :try_start_68
    iget-boolean p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z

    if-eqz p1, :cond_7a

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_78

    .line 1198
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_78
    move-exception p1

    goto :goto_ad

    .line 1188
    :cond_7a
    :try_start_7a
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_83
    :goto_83
    if-ge v3, v1, :cond_9e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1190
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 1192
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierPrivilegeStatusForPackage(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_83

    .line 1193
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 1196
    :cond_9e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a3
    .catchall {:try_start_7a .. :try_end_a3} :catchall_78

    .line 1198
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :goto_ad
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1199
    throw p1

    .line 1155
    :goto_b7
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1156
    throw p1
.end method

.method public blacklist getCarrierPrivilegeStatusForPackage(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1061
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1063
    :try_start_d
    iget-boolean v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_3b

    if-eqz v1, :cond_1c

    .line 1071
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, -0x1

    return p0

    .line 1065
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_3b

    if-eqz p1, :cond_31

    .line 1071
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x1

    return p0

    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_3b
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1072
    throw p1
.end method

.method public blacklist getCarrierPrivilegeStatusForUid(I)I
    .registers 3

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1098
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_3c

    if-eqz v0, :cond_18

    .line 1106
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, -0x1

    return p0

    .line 1100
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_3c

    if-eqz p1, :cond_31

    .line 1106
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x1

    return p0

    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x0

    return p0

    :catchall_3c
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1107
    throw p1
.end method

.method public blacklist getCarrierServicePackageName()Ljava/lang/String;
    .registers 2

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1121
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_2a

    if-eqz v0, :cond_18

    .line 1125
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    .line 1123
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2a

    .line 1125
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_2a
    move-exception v0

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1126
    throw v0
.end method

.method public blacklist getCarrierServicePackageUid()I
    .registers 2

    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1137
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_2e

    if-eqz v0, :cond_18

    .line 1141
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, -0x1

    return p0

    .line 1139
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mCarrierService:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_2e

    .line 1141
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_2e
    move-exception v0

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1142
    throw v0
.end method

.method public blacklist getPackagesWithCarrierPrivileges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1080
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mSimIsReadyButNotLoaded:Z

    if-eqz v0, :cond_12

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_1a

    :catchall_10
    move-exception v0

    goto :goto_24

    .line 1081
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfo:Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$PrivilegedPackageInfo;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_10

    .line 1083
    :goto_1a
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :goto_24
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mPrivilegedPackageInfoLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1084
    throw v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 515
    sget-object p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown msg type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleSetTestOverrideCarrierServicePackage(Ljava/lang/String;)V

    return-void

    .line 506
    :pswitch_26
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleUiccAccessRulesLoaded()V

    return-void

    .line 502
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleClearUiccRules()V

    return-void

    .line 497
    :pswitch_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 498
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleSetTestOverrideRules(Ljava/lang/String;)V

    return-void

    .line 493
    :pswitch_36
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleInitializeTracker()V

    return-void

    .line 488
    :pswitch_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 489
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handlePackageRemovedOrDisabledByUser(Ljava/lang/String;)V

    return-void

    .line 483
    :pswitch_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handlePackageAddedReplacedOrChanged(Ljava/lang/String;)V

    return-void

    .line 479
    :pswitch_4a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->handleSimStateChanged(II)V

    return-void

    :pswitch_data_52
    .packed-switch 0x4
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_36
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public blacklist onUiccAccessRulesLoaded()V
    .registers 2

    const/16 v0, 0xa

    .line 608
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist setTestOverrideCarrierPrivilegeRules(Ljava/lang/String;)V
    .registers 4

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 1008
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1007
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setTestOverrideCarrierServicePackage(Ljava/lang/String;)V
    .registers 4

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->mCurrentHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
