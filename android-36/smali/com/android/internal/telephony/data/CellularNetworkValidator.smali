.class public Lcom/android/internal/telephony/data/CellularNetworkValidator;
.super Ljava/lang/Object;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;,
        Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;,
        Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;
    }
.end annotation


# static fields
.field public static final blacklist MAX_VALIDATION_CACHE_TTL:J

.field private static blacklist sInstance:Lcom/android/internal/telephony/data/CellularNetworkValidator;


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field public blacklist mHandler:Landroid/os/Handler;

.field public blacklist mNetworkCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;

.field private blacklist mRequireTestPass:Z

.field private blacklist mState:I

.field private blacklist mSubId:I

.field private final blacklist mValidatedNetworkCache:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

.field private blacklist mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$FIEr6kA014C_oBfioBw4YZ9rqjE(Lcom/android/internal/telephony/data/CellularNetworkValidator;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->lambda$validate$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValidatedNetworkCache(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mValidatedNetworkCache:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreportNetworkAvailable(Lcom/android/internal/telephony/data/CellularNetworkValidator;Landroid/net/Network;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->reportNetworkAvailable(Landroid/net/Network;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportValidationResult(Lcom/android/internal/telephony/data/CellularNetworkValidator;ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->reportValidationResult(ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->MAX_VALIDATION_CACHE_TTL:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mState:I

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;-><init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;Lcom/android/internal/telephony/data/CellularNetworkValidator-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mValidatedNetworkCache:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    .line 238
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mContext:Landroid/content/Context;

    .line 239
    iput-object p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 240
    const-string p2, "connectivity"

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private blacklist createNetworkRequest(I)Landroid/net/NetworkRequest;
    .registers 3

    .line 317
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 318
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    new-instance v0, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 321
    invoke-virtual {v0, p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v0

    .line 320
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 324
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 326
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    if-eqz p1, :cond_40

    const/16 p1, 0xa

    .line 328
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 v0, 0xd

    .line 329
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 331
    :cond_40
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/data/CellularNetworkValidator;
    .registers 1

    .line 225
    sget-object v0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    return-object v0
.end method

.method private synthetic blacklist lambda$validate$0(I)V
    .registers 2

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->onValidationTimeout(I)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 426
    const-string v0, "NetworkValidator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/CellularNetworkValidator;
    .registers 3

    .line 212
    sget-object v0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    if-eqz v0, :cond_a

    .line 213
    const-string p0, "createCellularNetworkValidator failed. Instance already exists."

    invoke-static {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    goto :goto_11

    .line 215
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 218
    :goto_11
    sget-object p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    return-object p0
.end method

.method private declared-synchronized blacklist onValidationTimeout(I)V
    .registers 4

    monitor-enter p0

    .line 280
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " validation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mValidatedNetworkCache:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->storeLastValidationResult(IZ)V

    .line 283
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->reportValidationResult(ZI)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 284
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private declared-synchronized blacklist reportNetworkAvailable(Landroid/net/Network;I)V
    .registers 4

    monitor-enter p0

    .line 361
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eq v0, p2, :cond_7

    monitor-exit p0

    return-void

    .line 362
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;->onNetworkAvailable(Landroid/net/Network;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 363
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private declared-synchronized blacklist reportValidationResult(ZI)V
    .registers 7

    monitor-enter p0

    .line 336
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eq v0, p2, :cond_7

    monitor-exit p0

    return-void

    .line 338
    :cond_7
    :try_start_7
    iget-object p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    iget p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mState:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3f

    .line 343
    iget-object p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I

    invoke-interface {p2, p1, v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;->onValidationDone(ZI)V

    const/4 p2, 0x2

    .line 344
    iput p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mState:I

    if-nez p1, :cond_29

    .line 345
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mRequireTestPass:Z

    if-nez v0, :cond_23

    goto :goto_29

    .line 350
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    goto :goto_35

    :catchall_27
    move-exception p1

    goto :goto_41

    .line 348
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :goto_35
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    if-eqz p1, :cond_3c

    const/4 p2, 0x3

    :cond_3c
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNetworkValidate(I)V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_27

    .line 357
    :cond_3f
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_27

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist getSubIdInValidation()I
    .registers 2

    monitor-enter p0

    .line 306
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist isValidating()Z
    .registers 2

    monitor-enter p0

    .line 313
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public blacklist isValidationFeatureSupported()Z
    .registers 1

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getCurrentPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->isNetworkValidationBeforeSwitchSupported()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist stopValidation()V
    .registers 3

    monitor-enter p0

    .line 290
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-nez v0, :cond_10

    .line 291
    const-string v0, "No need to stop validation."

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->logd(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 292
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_27

    .line 294
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;

    if-eqz v0, :cond_19

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_19
    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mState:I

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_e

    .line 300
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_e

    throw v0
.end method

.method public declared-synchronized blacklist validate(IJZLcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;)V
    .registers 8

    monitor-enter p0

    .line 250
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-ne p1, v0, :cond_7

    monitor-exit p0

    return-void

    .line 252
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 254
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_75

    .line 260
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->stopValidation()V

    goto :goto_24

    :catchall_22
    move-exception p1

    goto :goto_8f

    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 264
    iput v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mState:I

    .line 265
    iput p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I

    .line 266
    iput-object p5, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mValidationCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;

    .line 267
    iput-boolean p4, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mRequireTestPass:Z

    .line 269
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Start validating subId "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mSubId:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " timeoutInMs "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, " mRequireTestPass "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mRequireTestPass:Z

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    .line 272
    new-instance p4, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;

    invoke-direct {p4, p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;-><init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;

    .line 274
    iget-object p4, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 275
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->createNetworkRequest(I)Landroid/net/NetworkRequest;

    move-result-object p5

    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    .line 274
    invoke-virtual {p4, p5, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 276
    iget-object p4, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;I)V

    invoke-virtual {p4, p5, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_73
    .catchall {:try_start_7 .. :try_end_73} :catchall_22

    .line 277
    monitor-exit p0

    return-void

    .line 255
    :cond_75
    :goto_75
    :try_start_75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to start validation. Inactive subId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 256
    invoke-interface {p5, p2, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;->onValidationDone(ZI)V
    :try_end_8d
    .catchall {:try_start_75 .. :try_end_8d} :catchall_22

    .line 257
    monitor-exit p0

    return-void

    :goto_8f
    :try_start_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_22

    throw p1
.end method
