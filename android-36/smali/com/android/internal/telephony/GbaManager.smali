.class public Lcom/android/internal/telephony/GbaManager;
.super Ljava/lang/Object;
.source "GbaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;,
        Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;,
        Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field public static final blacklist MAX_RETRY:I = 0x5

.field public static final blacklist REQUEST_TIMEOUT_MS:I = 0x1388

.field public static final blacklist RETRY_TIME_MS:I = 0xbb8

.field private static final blacklist sGbaManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/GbaManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/IBootstrapAuthenticationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIGbaService:Landroid/telephony/gba/IGbaService;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

.field private blacklist mReleaseTime:I

.field private final blacklist mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/telephony/gba/GbaAuthRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRetryTimes:I

.field private final blacklist mServiceCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

.field private blacklist mServicePackageName:Ljava/lang/String;

.field private final blacklist mSubId:I

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/GbaManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRcsStats(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/metrics/RcsStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestQueue(Lcom/android/internal/telephony/GbaManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryTimes(Lcom/android/internal/telephony/GbaManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/GbaManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/GbaManager;Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIGbaService(Lcom/android/internal/telephony/GbaManager;Landroid/telephony/gba/IGbaService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryTimes(Lcom/android/internal/telephony/GbaManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCallbacksAndNotifyFailure(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->clearCallbacksAndNotifyFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misServiceConnetable(Lcom/android/internal/telephony/GbaManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->isServiceConnetable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogv(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessRequests(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->processRequests()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrebindService(Lcom/android/internal/telephony/GbaManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->rebindService(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseServiceAsNeeded(Lcom/android/internal/telephony/GbaManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->releaseServiceAsNeeded(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mretryBind(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->retryBind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->unbindService()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/GbaManager;->DBG:Z

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/internal/telephony/metrics/RcsStats;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 8

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    .line 84
    iput p6, p0, Lcom/android/internal/telephony/GbaManager;->mUserId:I

    .line 87
    iput p6, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    .line 90
    new-instance p6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p6, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 93
    new-instance p6, Landroid/util/SparseArray;

    invoke-direct {p6}, Landroid/util/SparseArray;-><init>()V

    iput-object p6, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    .line 286
    new-instance p6, Lcom/android/internal/telephony/GbaManager$1;

    invoke-direct {p6, p0}, Lcom/android/internal/telephony/GbaManager$1;-><init>(Lcom/android/internal/telephony/GbaManager;)V

    iput-object p6, p0, Lcom/android/internal/telephony/GbaManager;->mServiceCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    .line 211
    iput p2, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "GbaManager["

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    .line 215
    iput p4, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    .line 217
    iput-object p7, p0, Lcom/android/internal/telephony/GbaManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 222
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance p1, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;-><init>(Lcom/android/internal/telephony/GbaManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    .line 227
    iget p2, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    if-gez p2, :cond_5a

    const/4 p2, 0x1

    .line 228
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    :cond_5a
    iput-object p5, p0, Lcom/android/internal/telephony/GbaManager;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    return-void
.end method

.method private blacklist bindService()V
    .registers 7

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_77

    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_77

    .line 436
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getServicePackage()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 438
    const-string v0, "Can\'t find the binding package"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.gba.GbaService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 447
    new-instance v2, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;-><init>(Lcom/android/internal/telephony/GbaManager;Lcom/android/internal/telephony/GbaManager-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    .line 448
    iget-object v3, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/GbaManager;->mUserId:I

    .line 450
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const v5, 0x4000001

    .line 448
    invoke-virtual {v3, v1, v2, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 451
    const-string v0, "Cannot bind to the service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->retryBind()V

    return-void

    :catch_5d
    move-exception v0

    goto :goto_62

    .line 455
    :cond_5f
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_61} :catch_5d

    return-void

    .line 457
    :goto_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_77
    :goto_77
    const-string v0, "Can\'t bind service with invalid sub Id."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist clearCallbacksAndNotifyFailure()V
    .registers 7

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 386
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 387
    iget-object v3, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/IBootstrapAuthenticationCallback;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1f

    .line 389
    :try_start_15
    iget-object v4, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4, v1}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_21
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_36

    :catchall_1f
    move-exception p0

    goto :goto_40

    :catch_21
    move-exception v3

    .line 392
    :try_start_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 395
    :cond_39
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 396
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_1f

    throw p0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/GbaManager;
    .registers 2

    .line 257
    sget-object v0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 258
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GbaManager;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 259
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method private blacklist isServiceConnetable()Z
    .registers 2

    .line 410
    monitor-enter p0

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    if-gez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_16

    :catchall_12
    move-exception v0

    goto :goto_19

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    monitor-exit p0

    return v0

    .line 413
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_12

    throw v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 558
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 3

    .line 552
    sget-boolean v0, Lcom/android/internal/telephony/GbaManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 553
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static blacklist make(Landroid/content/Context;ILjava/lang/String;ILcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/GbaManager;
    .registers 13

    .line 243
    new-instance v0, Lcom/android/internal/telephony/GbaManager;

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/GbaManager;-><init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/internal/telephony/metrics/RcsStats;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 246
    sget-object p0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    monitor-enter p0

    .line 247
    :try_start_12
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_17

    throw p1
.end method

.method private blacklist processRequests()V
    .registers 6

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 341
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 342
    new-instance v0, Landroid/telephony/gba/GbaAuthRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/gba/GbaAuthRequest;

    invoke-direct {v0, v1}, Landroid/telephony/gba/GbaAuthRequest;-><init>(Landroid/telephony/gba/GbaAuthRequest;)V

    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_3c

    .line 344
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_3e

    .line 346
    :try_start_2c
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mServiceCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/gba/GbaAuthRequest;->setCallback(Landroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    invoke-interface {v1, v0}, Landroid/telephony/gba/IGbaService;->authenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_3c

    goto :goto_6

    :catch_3c
    move-exception v0

    goto :goto_41

    :catchall_3e
    move-exception v0

    .line 345
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_41} :catch_3c

    .line 352
    :goto_41
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->binderDied()V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    goto :goto_8e

    .line 356
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gba/GbaAuthRequest;

    .line 359
    :try_start_6b
    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_77} :catch_78

    goto :goto_5b

    :catch_78
    move-exception v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    goto :goto_5b

    :cond_8e
    :goto_8e
    const/16 v0, 0x1388

    .line 367
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->releaseServiceAsNeeded(I)V

    return-void
.end method

.method private blacklist rebindService(Z)V
    .registers 3

    if-nez p1, :cond_26

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getServicePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    return-void

    .line 480
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->unbindService()V

    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->bindService()V

    return-void
.end method

.method private blacklist releaseServiceAsNeeded(I)V
    .registers 6

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getReleaseTime()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    if-le v0, p1, :cond_a

    move p1, v0

    .line 378
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist retryBind()V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 464
    const-string v0, "wait for pending retry."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting retry:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist unbindService()V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {v0}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->unlinkToDeath()V

    .line 420
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    if-eqz v0, :cond_17

    .line 421
    const-string v0, "unbind service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_17
    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    .line 425
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    .line 426
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    .line 427
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist bootstrapAuthenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V
    .registers 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bootstrapAuthenticationRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getServicePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 270
    const-string v0, "do not support!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    .line 272
    :try_start_23
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception to call service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    goto :goto_59

    .line 280
    :cond_46
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 281
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_59

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->unbindService()V

    .line 546
    sget-object v0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 547
    :try_start_1f
    iget p0, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 548
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist getReleaseTime()I
    .registers 2

    .line 526
    monitor-enter p0

    .line 527
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 528
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getServicePackage()Ljava/lang/String;
    .registers 2

    .line 503
    monitor-enter p0

    .line 504
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 505
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist isServiceConnected()Z
    .registers 3

    .line 403
    monitor-enter p0

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Landroid/telephony/gba/IGbaService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    .line 405
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :catchall_1b
    move-exception v0

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    monitor-exit p0

    return v0

    .line 406
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1b

    throw v0
.end method

.method public blacklist overrideReleaseTime(I)Z
    .registers 4

    .line 510
    monitor-enter p0

    .line 511
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    if-eq v0, p1, :cond_39

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service release time is changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 514
    iput p1, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    .line 515
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_36

    .line 516
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_36

    :catchall_34
    move-exception p1

    goto :goto_3c

    :cond_36
    :goto_36
    const/4 p1, 0x1

    .line 518
    monitor-exit p0

    return p1

    .line 520
    :cond_39
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_34

    throw p1
.end method

.method public blacklist overrideServicePackage(Ljava/lang/String;I)Z
    .registers 5

    .line 486
    monitor-enter p0

    .line 487
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mUserId:I

    if-eq p2, v0, :cond_e

    goto :goto_13

    .line 497
    :cond_e
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_11
    move-exception p1

    goto :goto_58

    .line 488
    :cond_13
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service package name is changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user id from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GbaManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 490
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    .line 491
    iput p2, p0, Lcom/android/internal/telephony/GbaManager;->mUserId:I

    .line 492
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_55

    .line 493
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_55
    const/4 p1, 0x1

    .line 495
    monitor-exit p0

    return p1

    .line 497
    :goto_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_11

    throw p1
.end method
