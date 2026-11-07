.class public Lcom/android/internal/telephony/domainselection/DomainSelectionController;
.super Ljava/lang/Object;
.source "DomainSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;,
        Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;,
        Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z


# instance fields
.field private blacklist mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mBackoffStarted:Z

.field private blacklist mBindRetry:Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;

.field private blacklist mComponentName:Landroid/content/ComponentName;

.field protected final blacklist mConnectionCounts:[I

.field private final blacklist mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIServiceController:Lcom/android/internal/telephony/IDomainSelectionServiceController;

.field private blacklist mIsBound:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRestartBindingRunnable:Ljava/lang/Runnable;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

.field private blacklist mUnbind:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBackoff(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbind(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->bind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyBindFailure(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->notifyBindFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyServiceConnected(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->notifyServiceConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyServiceDisconnected(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->notifyServiceDisconnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->unbindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBarringInfo(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->updateBarringInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateServiceState(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->updateServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;)V
    .registers 13

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoffStarted:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mUnbind:Z

    .line 108
    new-instance v1, Lcom/android/internal/telephony/domainselection/DomainSelectionController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$1;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mRestartBindingRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v1, Lcom/android/internal/telephony/domainselection/DomainSelectionController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$2;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBindRetry:Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 259
    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p2, :cond_48

    .line 264
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "DomainSelectionControllerHandler"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 265
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 266
    iget-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 269
    :cond_48
    new-instance v7, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;

    invoke-direct {v7, p0, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_53

    .line 272
    iput-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBindRetry:Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;

    .line 274
    :cond_53
    new-instance v1, Lcom/android/internal/telephony/ExponentialBackoff;

    iget-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBindRetry:Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;

    .line 275
    invoke-interface {p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;->getStartDelay()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBindRetry:Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;

    .line 276
    invoke-interface {p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$BindRetry;->getMaximumDelay()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mRestartBindingRunnable:Ljava/lang/Runnable;

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 281
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 282
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p1

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "numPhones="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V

    .line 284
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnectionCounts:[I

    move p2, v0

    :goto_8e
    if-ge p2, p1, :cond_97

    .line 286
    iget-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnectionCounts:[I

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8e

    :cond_97
    return-void
.end method

.method private blacklist addConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->registerForStateChange(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-void
.end method

.method private blacklist bind()Z
    .registers 7

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind isBindingOrBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logd(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_19
    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mUnbind:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    monitor-exit v0

    return v2

    :catchall_20
    move-exception p0

    goto/16 :goto_ae

    .line 491
    :cond_23
    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    if-nez v1, :cond_ac

    const/4 v1, 0x1

    .line 492
    iput-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    .line 493
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.telephony.DomainSelectionService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mComponentName:Landroid/content/ComponentName;

    .line 494
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 495
    new-instance v3, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/domainselection/DomainSelectionController-IA;)V

    iput-object v3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mServiceConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    .line 498
    const-string v3, "binding DomainSelectionService"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_20

    .line 500
    :try_start_44
    iget-object v3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mServiceConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    const v5, 0x4000041

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_78

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding failed retrying in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 504
    invoke-virtual {v4}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->loge(Ljava/lang/String;)V

    .line 505
    iput-boolean v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    .line 506
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->notifyBindFailure()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_75} :catch_76
    .catchall {:try_start_44 .. :try_end_75} :catchall_20

    goto :goto_78

    :catch_76
    move-exception v1

    goto :goto_7a

    .line 508
    :cond_78
    :goto_78
    :try_start_78
    monitor-exit v0

    return v1

    .line 510
    :goto_7a
    iput-boolean v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    .line 511
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->notifyBindFailure()V

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retrying in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 513
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mS"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->loge(Ljava/lang/String;)V

    .line 514
    monitor-exit v0

    return v2

    .line 517
    :cond_ac
    monitor-exit v0

    return v2

    .line 519
    :goto_ae
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_78 .. :try_end_af} :catchall_20

    throw p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 591
    const-string p0, "DomainSelectionController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 3

    .line 600
    const-string v0, "DomainSelectionController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 3

    .line 595
    const-string v0, "DomainSelectionController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyBindFailure()V
    .registers 4

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBindFailure started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoffStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unbind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mUnbind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V

    .line 565
    iget-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mUnbind:Z

    if-eqz v0, :cond_25

    return-void

    .line 566
    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoffStarted:Z

    if-eqz v0, :cond_2f

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    goto :goto_37

    :cond_2f
    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoffStarted:Z

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    .line 572
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBindFailure currentDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->getBindDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyServiceConnected()V
    .registers 6

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    .line 450
    invoke-virtual {v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onServiceConnected()V

    .line 451
    invoke-virtual {v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->updateServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    .line 453
    iget-object v4, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLastBarringInfo()Landroid/telephony/BarringInfo;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->updateBarringInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V

    goto :goto_7

    :cond_2d
    return-void
.end method

.method private blacklist notifyServiceDisconnected()V
    .registers 4

    .line 462
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    .line 463
    invoke-virtual {v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onServiceDisconnected()V

    goto :goto_7

    :cond_15
    return-void
.end method

.method private blacklist registerForStateChange(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 6

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnectionCounts:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    aget v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x0

    .line 417
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnectionCounts:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    if-lez v0, :cond_1c

    return-void

    .line 420
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p1}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForBarringInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->updateServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    .line 424
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLastBarringInfo()Landroid/telephony/BarringInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->updateBarringInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method private blacklist unbindService()V
    .registers 4

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mServiceConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    if-eqz v1, :cond_19

    .line 538
    const-string v1, "unbinding Service"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mServiceConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 540
    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mServiceConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 542
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_17

    throw p0
.end method

.method private blacklist unregisterForStateChange(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 7

    .line 433
    invoke-virtual {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnectionCounts:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    move v0, v1

    .line 437
    :cond_10
    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnectionCounts:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    aput v4, v2, v3

    if-le v0, v1, :cond_1d

    return-void

    .line 440
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 441
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForBarringInfoChanged(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updateBarringInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V
    .registers 6

    if-eqz p1, :cond_4f

    if-nez p2, :cond_5

    goto :goto_4f

    .line 393
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->DBG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBarringInfo phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logd(Ljava/lang/String;)V

    .line 395
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_24
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIServiceController:Lcom/android/internal/telephony/IDomainSelectionServiceController;

    if-eqz v1, :cond_4b

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 398
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IDomainSelectionServiceController;->updateBarringInfo(IILandroid/telephony/BarringInfo;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_36
    .catchall {:try_start_24 .. :try_end_33} :catchall_34

    goto :goto_4b

    :catchall_34
    move-exception p0

    goto :goto_4d

    :catch_36
    move-exception p1

    .line 402
    :try_start_37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBarringInfo e="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->loge(Ljava/lang/String;)V

    .line 404
    :cond_4b
    :goto_4b
    monitor-exit v0

    goto :goto_4f

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_34

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method

.method private blacklist updateServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V
    .registers 6

    if-eqz p1, :cond_4f

    if-nez p2, :cond_5

    goto :goto_4f

    .line 371
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->DBG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateServiceState phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logd(Ljava/lang/String;)V

    .line 373
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_24
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIServiceController:Lcom/android/internal/telephony/IDomainSelectionServiceController;

    if-eqz v1, :cond_4b

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 376
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IDomainSelectionServiceController;->updateServiceState(IILandroid/telephony/ServiceState;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_36
    .catchall {:try_start_24 .. :try_end_33} :catchall_34

    goto :goto_4b

    :catchall_34
    move-exception p0

    goto :goto_4d

    :catch_36
    move-exception p1

    .line 380
    :try_start_37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateServiceState e="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->loge(Ljava/lang/String;)V

    .line 382
    :cond_4b
    :goto_4b
    monitor-exit v0

    goto :goto_4f

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_34

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public blacklist bind(Landroid/content/ComponentName;)Z
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mComponentName:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 483
    iput-boolean p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mUnbind:Z

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->bind()Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 587
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist getBindDelay()J
    .registers 3

    .line 550
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    if-eqz p3, :cond_b

    .line 307
    new-instance p2, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    goto :goto_23

    .line 309
    :cond_b
    new-instance p2, Lcom/android/internal/telephony/domainselection/NormalCallDomainSelectionConnection;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/domainselection/NormalCallDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    goto :goto_23

    :cond_11
    const/4 v0, 0x2

    if-ne p2, v0, :cond_22

    if-eqz p3, :cond_1c

    .line 313
    new-instance p2, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    goto :goto_23

    .line 315
    :cond_1c
    new-instance p2, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    .line 319
    :goto_23
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->addConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-object p2
.end method

.method public blacklist getHandlerForTest()Landroid/os/Handler;
    .registers 1

    .line 580
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist removeConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->unregisterForStateChange(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-void
.end method

.method public blacklist selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 348
    :cond_4
    sget-boolean v1, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "selectDomain"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logd(Ljava/lang/String;)V

    .line 350
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIServiceController:Lcom/android/internal/telephony/IDomainSelectionServiceController;

    if-eqz v2, :cond_31

    .line 353
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IDomainSelectionServiceController;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_1c
    .catchall {:try_start_10 .. :try_end_17} :catchall_1a

    const/4 p0, 0x1

    .line 354
    :try_start_18
    monitor-exit v1

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_33

    :catch_1c
    move-exception p1

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectDomain e="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->loge(Ljava/lang/String;)V

    .line 359
    :cond_31
    monitor-exit v1

    return v0

    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_1a

    throw p0
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .registers 2

    .line 471
    invoke-static {p1}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IDomainSelectionServiceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIServiceController:Lcom/android/internal/telephony/IDomainSelectionServiceController;

    return-void
.end method

.method public blacklist stopBackoffTimer()V
    .registers 3

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBackoffTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoffStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->logi(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoffStarted:Z

    .line 560
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void
.end method

.method public blacklist unbind()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 527
    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mUnbind:Z

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->stopBackoffTimer()V

    const/4 v1, 0x0

    .line 529
    iput-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mIsBound:Z

    const/4 v1, 0x0

    .line 530
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->setServiceController(Landroid/os/IBinder;)V

    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->unbindService()V

    .line 532
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw p0
.end method
